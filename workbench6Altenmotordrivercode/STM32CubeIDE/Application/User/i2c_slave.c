/*
* i2c_slave.c
*
*  Created on: Mar 13, 2024
*      Author: Asus
*/
#include "main.h"
#include "i2c_slave.h"

uint8_t I2C_REGISTERS[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

uint8_t SendBuffer[6] = {0, 0, 0, 0, 0, 0};

extern I2C_HandleTypeDef hi2c1;

//#define RxSIZE
uint8_t RecieveBuffer[RxSIZE];
uint8_t rxcounter =0;
uint8_t txcounter =0;

//Writes all the recieved data to another buffer
void process_data(void){
	for(int i=0; i<RxSIZE; i++){
		I2C_REGISTERS[i] = RecieveBuffer[i];
	}
}

//Listen callback enables listen mode interrupt
void HAL_I2C_ListenCpltCallback(I2C_HandleTypeDef *hi2c){
	HAL_I2C_EnableListen_IT(hi2c);
}

//Adress callback checks the direction the master wants to communicate
void HAL_I2C_AddrCallback(I2C_HandleTypeDef *hi2c, uint8_t TransferDirection, uint16_t AddrMatchCode){
	if(TransferDirection == I2C_DIRECTION_TRANSMIT){
		rxcounter =0;
		HAL_I2C_Slave_Sequential_Receive_IT(hi2c, RecieveBuffer+rxcounter, 1, I2C_FIRST_FRAME);//waarom niet HAL_I2C_Slave_Seq_Receive_IT
	}
	else{
		txcounter =0;
		HAL_I2C_Slave_Seq_Transmit_IT(hi2c, SendBuffer+txcounter, 1, I2C_FIRST_FRAME);
	}
}

//Transmission complete callback sends encoder values
void HAL_I2C_SlaveTxCpltCallback(I2C_HandleTypeDef *hi2c){
	txcounter++;
	HAL_I2C_Slave_Seq_Transmit_IT(hi2c, SendBuffer+txcounter, 1, I2C_NEXT_FRAME);
}


//Recieve complete callback recieves speedvalues and fills the buffer
void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c){
	rxcounter++;
	if(rxcounter < RxSIZE){
		if(rxcounter ==RxSIZE-1){ //rxcounter is always one higher
			HAL_I2C_Slave_Seq_Receive_IT(hi2c, RecieveBuffer+rxcounter, 1, I2C_LAST_FRAME);
		}
		else{
			HAL_I2C_Slave_Seq_Receive_IT(hi2c, RecieveBuffer+rxcounter, 1, I2C_NEXT_FRAME);
		}
	}
	if(rxcounter == RxSIZE){ //Everything is recieved
		process_data();
	}
}

//Error callback
void HAL_I2C_ErrorCallback(I2C_HandleTypeDef *hi2c){
	uint32_t errorcode = HAL_I2C_GetError(hi2c);
	if(errorcode == 4){ //Check if ACK flag is set
		__HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
		if(txcounter ==0){ //Error occured during recieving
			process_data();
		}
		else{//Otherwise the error occured during transmission
			txcounter = txcounter -1; //txcounter is altijd 1 hoger dan daadwerkelijk ontvangen data
		}
	}
	HAL_I2C_EnableListen_IT(hi2c);
}
