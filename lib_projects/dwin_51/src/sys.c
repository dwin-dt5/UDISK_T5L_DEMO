/******************************************************************************
																	
                  版权所有 (C), 2019, 北京迪文科技有限公司	
																			  
*******************************************************************************
文 件 名   : sys.c
版 本 号   : V1.0
作    者   : chenxianyue
生成日期   : 2019年6月21日
功能描述   : 系统寄存器配置相关
修改历史   :
日    期   : 
作    者   : 
修改内容   : 	
******************************************************************************/

#include "sys.h"
#include "t5los8051.h"
#include "../dwin_usb/src/usb_dgus.h"
#include "../dwin_usb/src/para_port.h"
#include "../dwin_usb/src/dgus_config.h"

UINT8 T0_Times = 0;

/********************************函数定义开始*********************************/

/*****************************************************************************
 函 数 名  : INIT_CPU
 功能描述  : 寄存器配置初始化
 输入参数  : 无 
 输出参数  : 无
 修改历史  :
 日    期  : 2019年6月21日
 作    者  : chenxianyue
 修改内容  : 创建
*****************************************************************************/
void INIT_CPU(void)
{
	EA			= 0;
	CKCON		= 0x00;
	T2CON		= 0x70;
	DPC			= 0x00;
	PAGESEL		= 0x01;
	D_PAGESEL	= 0x02;
	MUX_SEL		= 0x00;
	PORTDRV		= 0x01;		/* 驱动强度+/-8mA */
	RAMMODE		= 0x00;

	IEN0		= 0x00;     /* 关闭所有中断	*/
	IEN1		= 0x00;
	IEN2		= 0x00;
	IEN3		= 0x00;
	IP0			= 0x00;		/* 中断优先级默认 */
	IP1			= 0x00;	

	/* UART5配置8N1      115200	*/
	SCON3T = 0x80;
	SCON3R = 0x00;
	BODE3_DIV_H = 0x00;
	BODE3_DIV_L = 0xE0;


	/* 定时器0初始化 */
	TMOD |= 0x01;
	TH0 = T1MS >> 8;
	TL0 = T1MS;
	ET0 = 1;
	TR0 = 1;
	
	EA = 1;
}

void T0_Timer(void)    interrupt 1
{
	EA = 0;
    TH0 = T1MS>>8;
    TL0 = T1MS;
	T0_Times++;
	if (T0_Times == 50)
	{
		T0_Times = 0;
		CH376_PORT_INIT();
		DgusRegConfig();
		USBModule();
		DGUSDemoInit();
	}
	EA = 1;
}