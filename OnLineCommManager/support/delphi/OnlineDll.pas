{
It is assumed that you have installed
Online Comm Manager in the folder of
C:\OnlineCommManager

Otherwise, you have to

1. Copy OnlineDll.Dll to Windows or Windows\System folder,
   and remove the path specification
or

2. Copy OnlineDll.Dll to the same folder of your Exe file,
   and remove the path specification

or

3. Manual modify the path in
   External 'C:\OnlineCommManager\OnlineDll.Dll'
}
unit OnlineDll;

interface

uses
  Windows;

Const
    CmdOK        = 1; { Command OK }
    CmdEOT       = 2;
    CmdEOF       = 3;
    CmdACK       = 4;
    CmdNAK       = 5;
    CmdYES       = 6;
    CmdNO        = 7;
    CmdUSE       = 8;
    CmdNONE      = 9;
    CmdErr       = 128;
    CmdErrLen    = 129;
    CmdErrTime   = 130;
    CmdErrSocket = 131;

Type
    PBARCFG =^TBARCFG;
    TBARCFG = Record  { for ESC B Command }
        code39,       { 'N' = Enable  barcode decoding of Code 39 }
                      { 'F' = Disable barcode decoding of Code 39 }
        i2of5,        { 'N' = Enable  barcode decoding of Interleaved 2 of 5 }
                      { 'F' = Disable barcode decoding of Interleaved 2 of 5 }
        codabar,      { 'N' = Enable  barcode decoding of CODABAR }
                      { 'F' = Disable barcode decoding of CODABAR }
        ean_upc,      { 'N' = Enable  barcode decoding of UPC/EAN }
                      { 'F' = Disable barcode decoding of UPC/EAN }
        code128,      { 'N' = Enable  barcode decoding of Code 128}
                      { 'F' = Disable barcode decoding of Code 128}
        ean128,       { 'N' = Enable  barcode decoding of EAN 128 }
                      { 'F' = Enable  barcode decoding of EAN 128 }
        code93: Byte; { 'N' = Enable  barcode decoding of Code 93 }
                      { 'F' = Disable barcode decoding of Code 93 }
    End;

    PBARCFG5=^TBARCFG5;
    TBARCFG5= Record  { for ESC B Command on PT500 }
        code39,       { 'N' = Enable  barcode decoding of Code 39 }
                      { 'a'..'h'                                  }
                      { 'F' = Disable barcode decoding of Code 39 }
        i2of5,        { 'N' = Enable  barcode decoding of Interleaved 2 of 5 }
                      { 'a'..'h'                                             }
                      { 'F' = Disable barcode decoding of Interleaved 2 of 5 }
        codabar,      { 'N' = Enable  barcode decoding of CODABAR }
                      { 'a'..'h'                                  }
                      { 'F' = Disable barcode decoding of CODABAR }
        ean_upc,      { 'N' = Enable  barcode decoding of UPC/EAN }
                      { 'a'..'p'                                  }
                      { 'F' = Disable barcode decoding of UPC/EAN }
        code128,      { 'N' = Enable  barcode decoding of Code 128}
                      { 'F' = Disable barcode decoding of Code 128}
        ean128,       { 'N' = Enable  barcode decoding of EAN 128 }
                      {  msi, 'a'..'c'                            }
                      { 'F' = Enable  barcode decoding of EAN 128 }
        code93,       { 'N' = Enable  barcode decoding of Code 93 }
                      { 'F' = Disable barcode decoding of Code 93 }
        code32,       { 'N' = Enable  barcode decoding of Code 32 }
                      { 'a'..'d'                                  }
                      { 'F' = Disable barcode decoding of Code 32 }
        chnpost:Byte; { 'N' = Enable  barcode decoding of China Postal Code }
                      { 'a'..'h'                                            }
                      { 'F' = Disable barcode decoding of China Postal Code }
    End;

    PBARCFG6=^TBARCFG6;
    TBARCFG6= Record  { for ESC B Command on PT600 }
        code39,       { 'E' = Enable  barcode decoding of Code 39             }
                      { 'F' = Enable  barcode decoding of Code 39, Full ASCII }
                      { 'D' = Disable barcode decoding of Code 39             }
        i2of5,        { 'E' = Enable  barcode decoding of Interleaved 2 of 5 }
                      { 'D' = Disable barcode decoding of Interleaved 2 of 5 }
        codabar,      { 'E' = Enable  barcode decoding of CODABAR }
                      { 'D' = Disable barcode decoding of CODABAR }
        ean_upc,      { 'E' = Enable  barcode decoding of UPC/EAN }
                      { 'D' = Disable barcode decoding of UPC/EAN }
        code128,      { 'E' = Enable  barcode decoding of Code 128}
                      { 'D' = Disable barcode decoding of Code 128}
        ean128,       { 'E' = Enable  barcode decoding of EAN 128 }
                      { 'D' = Enable  barcode decoding of EAN 128 }
        code93: Byte; { 'E' = Enable  barcode decoding of Code 93 }
                      { 'D' = Disable barcode decoding of Code 93 }
    End;

    PCOMCFG =^TCOMCFG;
    TCOMCFG = Record  { for ESC C Command
                       Always set 'M' to Protocol,
                       '04' to TimeOut, and 'C' to FlowCtrl. }
        BaudRate,     { '0' =   110 bps }
                      { '1' =   150     }
                      { '2' =   300     }
                      { '3' =   600     }
                      { '4' =  1200     }
                      { '5' =  2400     }
                      { '6' =  4800     }
                      { '7' =  9600     }
                      { '8' = 19200     }
                      { '9' = 38400     }
                      { 'A' = 57600     }
        StopBits,     { '1' = 1 Stop Bit  }
                      { '2' = 2 Stop Bits }
        DataBits,     { '7' = 7 Data Bits }
                      { '8' = 8 Data Bits }
        Parity,       { 'N' = None Parity }
                      { 'O' = Odd  Parity }
                      { 'E' = Even Parity }
        Protocol,     { 'M' = Multi-point protocol }
                      { 'F' = None protocol        }
        Address:      { 'A'..'Y', or '0'..'6' }
                      Byte;
        TimeOut:      { '00' = reserved }
                      Array [0..1] Of Byte;
        FlowCtrl:     { 'N' = None     }
                      { 'X' = Xon/Xoff }
                      { 'C' = CTS/RTS (effect with RS232 only)}
                      Byte;
    End;

    PCOMCFG6=^TCOMCFG6;
    TCOMCFG6= Record  { for ESC C Command on PT600 }
        BaudRate,     { '0' =   110 bps }
                      { '1' =   150     }
                      { '2' =   300     }
                      { '3' =   600     }
                      { '4' =  1200     }
                      { '5' =  2400     }
                      { '6' =  4800     }
                      { '7' =  9600     }
                      { '8' = 19200     }
                      { '9' = 38400     }
                      { 'A' = 57600     }
        StopBits,     { '1' = 1 Stop Bit  }
                      { '2' = 2 Stop Bits }
        DataBits,     { '7' = 7 Data Bits }
                      { '8' = 8 Data Bits }
        Parity,       { 'N' = None Parity }
                      { 'O' = Odd  Parity }
                      { 'E' = Even Parity }
        FlowCtrl:     { 'N' = None     }
                      { 'X' = Xon/Xoff }
                      { 'C' = CTS/RTS  }
                      Byte;
        Protocol,     { 'M' = Multi-point protocol }
                      { 'F' = None protocol        }
        Address:      { 'A'..'Y', or '0'..'6' }
                      Byte;
        TimeOut:      { '000'= reserved }
                      Array [0..2] Of Byte;
    End;

    PTRMCFG =^TTRMCFG;
    TTRMCFG = Record  { for ESC T Command
                       ID is always 8 characters.
                       So Pad space character to ID
                       if its length less than 8.}
        ID:           { Terminal ID }
                      Array [0..7] Of Byte;
        Online,       { 'R' = Remote. Transmit the data to host port. }
                      { 'L' = Local.  No transmit.                    }
        Echo,         { 'N' = Display data on LCD. }
                      { 'F' = No Display.          }
        AutoLF,       { 'N' = Append a LF with Data. }
                      { 'F' = No Append.             }
        Mode,         { 'C' = Set to Character Mode. Transmit the data }
                      {       to the host port one character each time.}
                      { 'B' = Set to Block Mode.     Transmit the data }
                      {       to the host port one block each time.    }
        Block_Def,    { 'L' = Set to line block mode.               }
                      { 'P' = Set to page block mode.               }
                      { 'B' = Set to both line and page block modes.}
        Line,         { Line = end of line character. }
        Page:         { Page = end of page character. }
                      Byte;
    End;

    PDEVCFG2 =^TDEVCFG2;
    TDEVCFG2 = Record { for ESC V Command on MR320 }
        Scanner,      { 'A' = Auto Scanner }
        Badge,        { 'B' = Slot Reader  }
        LCDBkLt,      { 'N' = On }
                      { 'F' = Off}
        Buzzer,       { 'N' = On }
        BuzzerVol,    { '0'..'7', '7' = Off }
        Interval,     { 'N' = On }
                      { 'F' = Off}
        Reserved:     { '00'  Reserved }
                      Array [0..1] Of Byte;
    End;

    PDEVCFG5 =^TDEVCFG5;
    TDEVCFG5 = Record { for ESC V Command On MR350 }
        Scanner,      { 'N' = reserved.}
        Badge,        { 'B' = Enable  the badge. }
                      { 'D' = Disable the badge. }
        LCDBkLt,      { 'N' = reserved. }
        Buzzer,       { 'N' = Set buzzer on. }
                      { 'F' = Set Buzzer off.}
        KeyLock,      { 'N' = Set keyboard unlocked.}
                      { 'K' = Set keyboard locked.  }
                      { 'P' = Set keyboard partial locked. }
        BuzzerVol:    { '0' = Low volumn. }
                      { '5' = Mid volumn. }
                      { '9' = Hi  volumn. }
                      Byte;
    End;

    PDEVCFG8 =^TDEVCFG8;
    TDEVCFG8 = Record { for ESC V Command On MR380 }
        Ext_Scanner,  { 'P' = Pen.    }
                      { 'A' = Auto    }
                      { 'M' = MSR     }
                      { 'D' = Disable }
        Int_Scanner,  { 'B' = Bar code }
                      { 'M' = MSR      }
                      { 'D' = Disable  }
        LCDBkLt,      { 'N' = On }
                      { 'F' = Off}
        Buzzer,       { 'N' = Set buzzer on. }
                      { 'F' = Set Buzzer off.}
        KeyLock,      { 'N' = Set keyboard unlocked.      }
                      { 'K' = Set keyboard locked.        }
                      { 'P' = Set keyboard partial locked.}
        BuzzerVol:    { '0' = Low volumn.}
                      { '5' = Mid volumn.}
                      { '9' = Hi  volumn.}
                      Byte;
    End;

    PDEVCFG6 =^TDEVCFG6;
    TDEVCFG6 = Record { for ESC V Command On PT600 }
        Scanner,      { 'P' = Pen     }
                      { 'A' = Auto    }
                      { 'D' = Disable }
        LCDBkLt,      { 'N' = reserved. }
        Buzzer,       { 'N' = Set buzzer on. }
                      { 'F' = Set Buzzer off.}
        KeyLock,      { 'N' = reserved. }
        BuzzerVol:    { '0' = Low volumn. }
                      { '5' = Mid volumn. }
                      { '9' = Hi  volumn. }
                      Byte;
    End;

Function                 Online_Create
:                        Pointer
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_Alloc
(Var HGlobal: LongInt):  Pointer
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_Init
(CommData: Pointer):     Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Procedure                Online_Destroy
(CommData: Pointer);
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Procedure                Online_Done
(CommData: Pointer); 
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Procedure                Online_Release
(Var HGlobal: LongInt); 
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_Connect
(CommData: Pointer):     Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Procedure                Online_Disconnect
(CommData: Pointer); 
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_Delay
(CommData: Pointer; 
 Delay: LongInt):        Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_SetupEx
(CommData: Pointer; 
 Port, 
 BaudRate, 
 StopBits,
 Parity: Word):          Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_Setup  
(CommData: Pointer;
 Port, 
 BaudRate, 
 StopBits, 
 Parity: Word):          Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_TcpIpEx
(CommData: Pointer; 
 Host, 
 Port,
 Time: PChar):           Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_TcpIp  
(CommData: Pointer; 
 Host, 
 Port,
 Time: PChar):           Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ModemInit
(CommData: Pointer; 
 Delay: LongInt; 
 hList: HWND; 
 Msg:   PChar; 
 nMax:  LongInt; 
 Init:  PChar):          Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ModemDialEx
(CommData: Pointer;
 Delay: LongInt; 
 hList: HWND; 
 Msg:   PChar; 
 nMax:  LongInt;
 Dial:  PChar;  
 Phone: PChar;
 Retry: Word):           Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ModemDial
(CommData: Pointer;
 Delay: LongInt; 
 hList: HWND; 
 Msg:   PChar; 
 nMax:  LongInt;
 Dial:  PChar;  
 Phone: PChar):          Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ModemHangUp
(CommData: Pointer;
 Delay:  LongInt; 
 hList:  HWND; 
 Msg:    PChar; 
 nMax:   LongInt;
 HangUp: PChar):         Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ModemWaitForCall
(CommData: Pointer;
 Delay: LongInt; 
 hList: HWND; 
 Msg:   PChar; 
 nMax:  LongInt):        Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Procedure                Online_ModemATCmd
(CommData: Pointer;
 ATCmd:    PChar)
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ModemEcho
(CommData: Pointer; 
 Msg:  PChar; 
 nMax: LongInt):         Word;
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_GetVersion
(CommData: Pointer;
 tAdd: Word;
 Msg:  PChar; 
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Procedure                Online_ACK
(CommData: Pointer;
 tAdd: Word);
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Procedure                Online_NAK
(CommData: Pointer; 
 tAdd: Word);
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_A
(CommData: Pointer; 
 tAdd: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_H
(CommData: Pointer; 
 tAdd: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_0
(CommData: Pointer;
 tAdd: Word;
 Msg:  PChar;
 bLen: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_POLL
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar;
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_BELL
(CommData: Pointer; 
 tAdd: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_9
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar; 
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_G
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar; 
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_I
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar; 
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_R
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar;
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_5
(CommData: Pointer; 
 tAdd: Word;
 nAdd: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_K
(CommData: Pointer; 
 tAdd: Word;
 Data: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_M
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar):           Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_N
(CommData: Pointer; 
 tAdd: Word;
 Data: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_O
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar;
 bLen: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_P
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar;
 bLen: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_B
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar;
 bLen: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_C
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar;
 bLen: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_T
(CommData: Pointer;
 tAdd: Word;
 Msg:  PChar;
 bLen, ISet: Word):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_V
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar;
 bLen: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_FindFirst
(CommData: Pointer; 
 tAdd: Word;
 Info: PChar;
 Msg:  PChar;
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_FindNext
(CommData: Pointer; 
 tAdd: Word;
 Info: PChar;
 Msg:  PChar; 
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_D
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar; 
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_E
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar;
 bLen: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_J
(CommData: Pointer;
 tAdd: Word;
 Msg:  PChar;
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_L
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar; 
 bLen: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_U
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar; 
 bLen: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_Y
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar; 
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_Z
(CommData: Pointer; 
 tAdd: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ESC_X
(CommData: Pointer; 
 tAdd: Word;
 Msg:  PChar; 
 bLen: Word):            Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_DBG
(CommData: Pointer;
 tAdd: Word;
 Msg:  PChar;
 Var   bLen: Byte):      Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_DnLoad
(CommData:  Pointer;
 tAdd:      Word;
 sName:     PChar;
 lName:     PChar;
 TimeOut:   LongInt;
 Retry:     Word):       Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_UpLoad
(CommData: Pointer;
 tAdd:      Word;
 lName:     PChar;
 sName:     PChar;
 TimeOut:   LongInt;
 Retry:     Word):       Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_StLoad
(CommData:  Pointer;
 Stop:      Word;
 Var sSize: LongInt;
 Var lSize: LongInt):    Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

Function                 Online_ResetMR053
(Host, 
 Port,
 Time: PChar):           Word
StdCall; External 'C:\OnlineCommManager\OnlineDll.Dll';

implementation

end.
