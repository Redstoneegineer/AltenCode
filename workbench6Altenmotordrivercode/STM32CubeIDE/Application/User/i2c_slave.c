/*
 * i2c_slave.c
 *
 *  Created on: Mar 13, 2024
 *      Author: Asus
 */
#include "main.h"
#include "i2c_slave.h"

uint16_t SendBuffer[6] = {2, 5, 8, 9, 12, 34};

extern I2C_HandleTypeDef hi2c1;

//#define RxSIZE 11
uint8_t RecieveBuffer[RxSIZE];
uint8_t rxcounter =0;
uint8_t txcounter =0;

void HAL_I2C_ListenCpltCallback(I2C_HandleTypeDef *hi2c){
	HAL_I2C_EnableListen_IT(hi2c);
}

void HAL_I2C_AddrCallback(I2C_HandleTypeDef *hi2c, uint8_t TransferDirection, uint16_t AddrMatchCode){
	// moet rx niet op nul gezet worden zodat deze wordt gevuld vanaf het begin
	rxcounter =0;
	if(TransferDirection == I2C_DIRECTION_TRANSMIT){
		HAL_I2C_Slave_Sequential_Receive_IT(hi2c, RecieveBuffer+rxcounter, 1, I2C_FIRST_FRAME);//waarom niet HAL_I2C_Slave_Seq_Receive_IT
	}
	else{
		HAL_I2C_Slave_Seq_Transmit_IT(hi2c, SendBuffer+txcounter, 1, I2C_NEXT_FRAME);
	}
}
void HAL_I2C_SlaveTxCpltCallback(I2C_HandleTypeDef *hi2c){
	txcounter++;
	HAL_I2C_Slave_Seq_Transmit_IT(hi2c, SendBuffer+txcounter, 1, I2C_NEXT_FRAME);
}

void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c){
	rxcounter++;
	if(rxcounter >= RxSIZE) rxcounter =0;
	HAL_I2C_Slave_Seq_Receive_IT(hi2c, RecieveBuffer+rxcounter, 1, I2C_NEXT_FRAME);
}

void HAL_I2C_ErrorCallback(I2C_HandleTypeDef *hi2c){
	HAL_I2C_EnableListen_IT(hi2c);
}
