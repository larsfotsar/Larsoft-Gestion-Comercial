#ifndef __ONLINEDLL_H
#define __ONLINEDLL_H

#include <windows.h>

#ifdef __cplusplus
extern "C" {            /* Assume C declarations for C++ */
#endif  /* __cplusplus */

#pragma pack (1)
//for ESC B Command
typedef struct _tagBARCFG   {
BYTE        code39,     // 'N' = Enable  barcode decoding of Code 39
                        // 'F' = Disable barcode decoding of Code 39
            i2of5,      // 'N' = Enable  barcode decoding of Interleaved 2 of 5
                        // 'F' = Disable barcode decoding of Interleaved 2 of 5
            codabar,    // 'N' = Enable  barcode decoding of CODABAR
                        // 'F' = Disable barcode decoding of CODABAR
            ean_upc,    // 'N' = Enable  barcode decoding of UPC/EAN
                        // 'F' = Disable barcode decoding of UPC/EAN
            code128,    // 'N' = Enable  barcode decoding of Code 128
                        // 'F' = Disable barcode decoding of Code 128
            ean128,     // 'N' = Enable  barcode decoding of EAN 128
                        // 'F' = Enable  barcode decoding of EAN 128
            code93;     // 'N' = Enable  barcode decoding of Code 93
                        // 'F' = Disable barcode decoding of Code 93
}                  BARCFG,  FAR* LPBARCFG;

typedef struct _tagBARCFG5  {   // for PT500 only
BYTE        code39,     // 'N' = Enable  barcode decoding of Code 39
                        // 'a'..'h'
                        // 'F' = Disable barcode decoding of Code 39
            i2of5,      // 'N' = Enable  barcode decoding of Interleaved 2 of 5
                        // 'a'..'h'
                        // 'F' = Disable barcode decoding of Interleaved 2 of 5
            codabar,    // 'N' = Enable  barcode decoding of CODABAR
                        // 'a'..'h'
                        // 'F' = Disable barcode decoding of CODABAR
            ean_upc,    // 'N' = Enable  barcode decoding of UPC/EAN
                        // 'a'..'p'
                        // 'F' = Disable barcode decoding of UPC/EAN
            code128,    // 'N' = Enable  barcode decoding of Code 128
                        // 'F' = Disable barcode decoding of Code 128
            ean128,     // 'N' = Enable  barcode decoding of EAN 128
//          (msi)       // 'a'..'c'
                        // 'F' = Enable  barcode decoding of EAN 128
            code93,     // 'N' = Enable  barcode decoding of Code 93
                        // 'F' = Disable barcode decoding of Code 93
            code32,     // 'N' = Enable  barcode decoding of Code 32
                        // 'a'..'d'
                        // 'F' = Disable barcode decoding of Code 32
            chnpost;    // 'N' = Enable  barcode decoding of China Postal Code
                        // 'a'..'h'
                        // 'F' = Enable  barcode decoding of China Postal Code
}                  BARCFG5, FAR* LPBARCFG5;

typedef struct _tagBARCFG6  {   // for PT600 only
BYTE        code39,     // 'E' = Enable  barcode decoding of Code 39
                        // 'F' = Enable  barcode decoding of Code 39, Full ASCII
                        // 'D' = Disable barcode decoding of Code 39
            i2of5,      // 'E' = Enable  barcode decoding of Interleaved 2 of 5
                        // 'D' = Disable barcode decoding of Interleaved 2 of 5
            codabar,    // 'E' = Enable  barcode decoding of CODABAR
                        // 'D' = Disable barcode decoding of CODABAR
            ean_upc,    // 'E' = Enable  barcode decoding of UPC/EAN
                        // 'D' = Disable barcode decoding of UPC/EAN
            code128,    // 'E' = Enable  barcode decoding of Code 128
                        // 'D' = Disable barcode decoding of Code 128
            ean128,     // 'E' = Enable  barcode decoding of EAN 128
                        // 'D' = Enable  barcode decoding of EAN 128
            code93;     // 'E' = Enable  barcode decoding of Code 93
                        // 'D' = Disable barcode decoding of Code 93
}                  BARCFG6, FAR* LPBARCFG6;

//for ESC C Command
typedef struct _tagCOMCFG   {
BYTE        BaudRate,   // '0' =   110 bps
                        // '1' =   150
                        // '2' =   300
                        // '3' =   600
                        // '4' =  1200
                        // '5' =  2400
                        // '6' =  4800
                        // '7' =  9600
                        // '8' = 19200
                        // '9' = 38400
                        // 'A' = 57600
						// 'B' = 115200
            StopBits,   // '1' = 1 Stop Bit
                        // '2' = 2 Stop Bits
            DataBits,   // '7' = 7 Data Bits
                        // '8' = 8 Data Bits
            Parity,     // 'N' = None Parity
                        // 'O' = Odd  Parity
                        // 'E' = Even Parity
            Protocol,   // 'M' = Multi-point protocol
                        // 'F' = None protocol
            Address,    // 'A'..'Y', or '0'..'6'
            TimeOut[2], // '0' = reserved.
            FlowCtrl;   // 'N' = None
                        // 'X' = Xon/Xoff
                        // 'C' = CTS/RTS (effect with RS232 only)
}                  COMCFG,  FAR* LPCOMCFG;

//for ESC C Command
typedef struct _tagCOMCFG6  {   // for PT600 only
BYTE        BaudRate,   // '0' =   110 bps
                        // '1' =   150
                        // '2' =   300
                        // '3' =   600
                        // '4' =  1200
                        // '5' =  2400
                        // '6' =  4800
                        // '7' =  9600
                        // '8' = 19200
                        // '9' = 38400
                        // 'A' = 57600
						// 'B' = 115200
            StopBits,   // '1' = 1 Stop Bit
                        // '2' = 2 Stop Bits
            DataBits,   // '7' = 7 Data Bits
                        // '8' = 8 Data Bits
            Parity,     // 'N' = None Parity
                        // 'O' = Odd  Parity
                        // 'E' = Even Parity
            FlowCtrl,   // 'N' = None
                        // 'X' = Xon/Xoff
                        // 'C' = CTS/RTS (effect with RS232 only)
            Protocol,   // 'M' = Multi-point protocol
                        // 'F' = None protocol
            Address,    // 'A'..'Y', or '0'..'6'
            TimeOut[3]; // '0' = reserved.
}                  COMCFG6, FAR* LPCOMCFG6;

//for ESC T Command
typedef struct _tagTRMCFG   {
char        ID[8];      // Terminal ID
BYTE        Online,     // 'R' = Remote. Transmit the data to host port.
                        // 'L' = Local.  No transmit.
            Echo,       // 'N' = Display data on LCD.
                        // 'F' = No Display.
            AutoLF,     // 'N' = Append a LF with Data.
                        // 'F' = No Append.
            Mode,       // 'C' = Set to Character Mode. Transmit the data
                        //       to the host port one character each time.
                        // 'B' = Set to Block Mode.     Transmit the data
                        //       to the host port one block each time.
            Block,      // 'L' = Set to line block mode.
                        // 'P' = Set to page block mode.
                        // 'B' = Set to both line and page block modes.
            Line,       // Line = end of line character.
            Page;       // Page = end of page character.
}                  TRMCFG, FAR *LPTRMCFG;

//for ESC V Command
typedef struct _tagDEVCFG2  {   // for MR320 only
BYTE        Scanner,    //  'A' = Auto Scanner
            Badge,      //  'B' = Slot Reader
            LCDBkLt,    //  'N' = On
                        //  'F' = Off
            Buzzer,     //  'N' = On
            BuzzerVol,  //  '0'..'7', '7' = Off
            Interval,   //  'N' = On
                        //  'F' = Off
            Reserved[2];//  '00'  Reserved
}                  DEVCFG2,FAR *LPDEVCFG2;

typedef struct _tagDEVCFG5  {   // for MR350 only
BYTE        Scanner,    //  'N' = reserved.
            Badge,      //  'B' = Enable  the badge.
                        //  'D' = Disable the badge.
            LCDBkLt,    //  'N' = reserved.
            Buzzer,     //  'N' = Set buzzer on.
                        //  'F' = Set Buzzer off.
            KeyLock,    //  'N' = Set keyboard unlocked.
                        //  'K' = Set keyboard locked.
                        //  'P' = Set keyboard partial locked.
            BuzzerVol;  //  '0' = Low volumn.
                        //  '5' = Mid volumn.
                        //  '9' = Hi  volumn.
}                  DEVCFG5,FAR *LPDEVCFG5;

typedef struct _tagDEVCFG8  {   // for MR380 only
BYTE        Ext_Scanner,//  'P' = Pen.
                        //  'A' = Auto
                        //  'M' = MSR
                        //  'D' = Disable
            Int_Scanner,//  'B' = Bar code
                        //  'M' = MSR
                        //  'D' = Disable
            LCDBkLt,    //  'N' = On
                        //  'F' = Off
            Buzzer,     //  'N' = Set buzzer on.
                        //  'F' = Set Buzzer off.
            KeyLock,    //  'N' = Set keyboard unlocked.
                        //  'K' = Set keyboard locked.
                        //  'P' = Set keyboard partial locked.
            BuzzerVol;  //  '0' = Low volumn.
                        //  '5' = Mid volumn.
                        //  '9' = Hi  volumn.
}                  DEVCFG8,FAR *LPDEVCFG8;

typedef struct _tagDEVCFG6  {   // for PT600 only
BYTE        Scanner,    //  'P' = Pen
                        //  'A' = Auto
                        //  'D' = Disable
            LCDBkLt,    //  'N' = reserved.
            Buzzer,     //  'N' = Set buzzer on.
                        //  'F' = Set Buzzer off.
            KeyLock,    //  'N' = Constant 'N'
            BuzzerVol;  //  '0' = Low volumn.
                        //  '5' = Mid volumn.
                        //  '9' = Hi  volumn.
}                  DEVCFG6,FAR *LPDEVCFG6;

typedef struct _tagCOMMDATA {
BOOL        IsConnected;
BYTE        Port;
DCB         dcb;
BOOL        Modem;
BYTE        ReservedByte[720];
}                  COMMDATA, FAR* LPCOMMDATA;

//Option
#define ByUnknow    0
#define ByFile      1
#define ByMemo      2

typedef struct _tagFILESTAT {
BYTE    lName[280];
HFILE   hFile;
}                  FILESTAT, FAR* LPFILESTAT;

typedef struct _tagMEMOSTAT {
LPBYTE  pMemo;
LONG    nSize,
        nMemo;
}                  MEMOSTAT, FAR* LPMEMOSTAT;

#pragma pack ( )

#define CmdOK           1   // Command OK
#define CmdEOT          2
#define CmdEOF          3
#define CmdACK          4
#define CmdNAK          5
#define CmdYES          6
#define CmdNO           7
#define CmdUSE          8
#define CmdNONE         9

#define CmdErr          128
#define CmdErrLen       129
#define CmdErrTime      130
#define CmdErrSocket    131

LONG WINAPI OnlineEncodeData  (LPBYTE lpByte, WORD Len, LPBYTE lpData);
LONG WINAPI OnlineDecodeData  (LPBYTE lpByte, WORD Len, LPBYTE lpData);

LPCOMMDATA
     WINAPI Online_Create (void);
LONG WINAPI Online_Alloc  (LPLONG HGlobal);
WORD WINAPI Online_Init   (LPCOMMDATA CommData);
void WINAPI Online_Destroy(LPCOMMDATA CommData);
void WINAPI Online_Done   (LPCOMMDATA CommData);
void WINAPI Online_Release(LPLONG HGlobal);

WORD WINAPI Online_Connect   (LPCOMMDATA CommData);
void WINAPI Online_Disconnect(LPCOMMDATA CommData);

void WINAPI Online_Delay     (LPCOMMDATA CommData, LONG     Delay);
WORD WINAPI Online_DelayEx   (LPCOMMDATA CommData, LPLONG lpDelay);

WORD WINAPI Online_SetupEx(LPCOMMDATA CommData, WORD Port, WORD BaudRate, WORD StopBits, WORD Parity);
WORD WINAPI Online_Setup  (LPCOMMDATA CommData, WORD Port, WORD BaudRate, WORD StopBits, WORD Parity);

WORD WINAPI Online_TcpIpEx(LPCOMMDATA CommData, LPSTR Host, LPSTR Port, LPSTR Time);
WORD WINAPI Online_TcpIp  (LPCOMMDATA CommData, LPSTR Host, LPSTR Port, LPSTR Time);

WORD WINAPI Online_ModemInit       (LPCOMMDATA CommData, LONG  Delay, HWND  hList, LPSTR Msg, LONG  nMax, LPSTR Init);
WORD WINAPI Online_ModemDial       (LPCOMMDATA CommData, LONG  Delay, HWND  hList, LPSTR Msg, LONG  nMax, LPSTR Dial, LPSTR Phone);
WORD WINAPI Online_ModemDialEx     (LPCOMMDATA CommData, LONG  Delay, HWND  hList, LPSTR Msg, LONG  nMax, LPSTR Dial, LPSTR Phone, WORD Retry);
WORD WINAPI Online_ModemHangUp     (LPCOMMDATA CommData, LONG  Delay, HWND  hList, LPSTR Msg, LONG  nMax, LPSTR HangUp);
WORD WINAPI Online_ModemWaitForCall(LPCOMMDATA CommData, LONG  Delay, HWND  hList, LPSTR Msg, LONG  nMax);
void WINAPI Online_ModemATCmd      (LPCOMMDATA CommData, LPSTR  ATCmd);
WORD WINAPI Online_ModemEcho       (LPCOMMDATA CommData, LPSTR  Msg, LONG   nMax);

WORD WINAPI Online_GetVersion(LPCOMMDATA CommData, WORD   tAdd, LPBYTE Msg, LPBYTE bLen);

void WINAPI Online_ACK  (LPCOMMDATA CommData, WORD tAdd);
void WINAPI Online_NAK  (LPCOMMDATA CommData, WORD tAdd);

WORD WINAPI Online_ESC_A(LPCOMMDATA CommData, WORD tAdd);
WORD WINAPI Online_ESC_H(LPCOMMDATA CommData, WORD tAdd);
WORD WINAPI Online_ESC_0(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, WORD   bLen);
WORD WINAPI Online_POLL (LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, LPBYTE bLen);
WORD WINAPI Online_BELL (LPCOMMDATA CommData, WORD tAdd);
WORD WINAPI Online_ESC_9(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, LPBYTE bLen);
WORD WINAPI Online_ESC_G(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, LPBYTE bLen);
WORD WINAPI Online_ESC_I(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, LPBYTE bLen);
WORD WINAPI Online_ESC_R(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, LPBYTE bLen);
WORD WINAPI Online_ESC_5(LPCOMMDATA CommData, WORD tAdd, WORD   nAdd);
WORD WINAPI Online_ESC_K(LPCOMMDATA CommData, WORD tAdd, WORD   Data);
WORD WINAPI Online_ESC_M(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg);
WORD WINAPI Online_ESC_N(LPCOMMDATA CommData, WORD tAdd, WORD   Data);
WORD WINAPI Online_ESC_O(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, WORD   bLen);
WORD WINAPI Online_ESC_P(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, WORD   bLen);
WORD WINAPI Online_ESC_B(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, WORD   bLen);
WORD WINAPI Online_ESC_C(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, WORD   bLen);
WORD WINAPI Online_ESC_T(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, WORD   bLen, WORD ISet);
WORD WINAPI Online_ESC_V(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, WORD   bLen);

WORD WINAPI Online_FindFirst(LPCOMMDATA CommData, WORD tAdd, LPBYTE Info, LPBYTE Msg, LPBYTE bLen);
WORD WINAPI Online_FindNext (LPCOMMDATA CommData, WORD tAdd, LPBYTE Info, LPBYTE Msg, LPBYTE bLen);

WORD WINAPI Online_ESC_D(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, LPBYTE bLen);
WORD WINAPI Online_ESC_E(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, WORD   bLen);
WORD WINAPI Online_ESC_J(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, LPBYTE bLen);
WORD WINAPI Online_ESC_L(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, WORD   bLen);
WORD WINAPI Online_ESC_U(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, WORD   bLen);
WORD WINAPI Online_ESC_Y(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, LPBYTE bLen);
WORD WINAPI Online_ESC_Z(LPCOMMDATA CommData, WORD tAdd);

WORD WINAPI Online_ESC_X(LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, WORD   bLen);

WORD WINAPI Online_DBG  (LPCOMMDATA CommData, WORD tAdd, LPBYTE Msg, LPBYTE bLen);

WORD WINAPI Online_DnLoad   (LPCOMMDATA CommData, WORD tAdd, LPBYTE sName, LPBYTE lName, DWORD Timeout, WORD Retry);
WORD WINAPI Online_UpLoad   (LPCOMMDATA CommData, WORD tAdd, LPBYTE lName, LPBYTE sName, DWORD Timeout, WORD Retry);
WORD WINAPI Online_StLoad   (LPCOMMDATA CommData, WORD Stop, LPLONG sSize, LPLONG lSize);
WORD WINAPI Online_DnLoadEx (LPCOMMDATA CommData, WORD tAdd, DWORD Timeout, WORD Retry,
                             LPSTR sName, WORD Option, LPBYTE lpOption);
WORD WINAPI Online_UpLoadEx (LPCOMMDATA CommData, WORD tAdd, DWORD Timeout, WORD Retry,
                             LPSTR sName, WORD Option, LPBYTE lpOption);

WORD WINAPI Online_ResetMR053(LPSTR Host, LPSTR Port, LPSTR Time);

#ifdef __cplusplus
}
#endif  /* __cplusplus */
#endif
