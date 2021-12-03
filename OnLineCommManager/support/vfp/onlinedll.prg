&&
&&It is assumed that you have installed
&&Online Comm Manager in the folder of
&&C:\OnlineCommManager
&&
&&Otherwise, you have to
&&
&&1. Copy OnlineDll.Dll to Windows or Windows\System folder,
&&   and remove the path specification
&&or
&&
&&2. Copy OnlineDll.Dll to the same folder of your Exe file,
&&   and remove the path specification
&&or
&&
&&3. Manual modify the path in
&&   In C:\OnlineCommManager\OnlineDll 
&&
#DEFINE CmdOK        1
#DEFINE CmdEOT       2
#DEFINE CmdEOF       3
#DEFINE CmdACK       4
#DEFINE CmdNAK       5
#DEFINE CmdYES       6
#DEFINE CmdNO        7
#DEFINE CmdUSE       8
#DEFINE CmdNONE      9
#DEFINE CmdErr       128
#DEFINE CmdErrLen    129
#DEFINE CmdErrTime   130
#DEFINE CmdErrSocket 131

#DEFINE M_UNKNOWN    0
#DEFINE M_OK         1
#DEFINE M_CONNECT    2
#DEFINE M_RING       3
#DEFINE M_NOCARRIER  4
#DEFINE M_ERROR      5
#DEFINE M_NODIALTONE 6
#DEFINE M_BUSY       7
#DEFINE M_NOANSWER   8
#DEFINE M_CARRIER    9

&& //for ESC B Command
&&typedef struct _tagBARCFG   {
&&BYTE        code39,     // 'N' = Enable  barcode decoding of Code 39
&&                        // 'F' = Disable barcode decoding of Code 39
&&            i2of5,      // 'N' = Enable  barcode decoding of Interleaved 2 of 5
&&                        // 'F' = Disable barcode decoding of Interleaved 2 of 5
&&            codabar,    // 'N' = Enable  barcode decoding of CODABAR
&&                        // 'F' = Disable barcode decoding of CODABAR
&&            ean_upc,    // 'N' = Enable  barcode decoding of UPC/EAN
&&                        // 'F' = Disable barcode decoding of UPC/EAN
&&            code128,    // 'N' = Enable  barcode decoding of Code 128
&&                        // 'F' = Disable barcode decoding of Code 128
&&            ean128,     // 'N' = Enable  barcode decoding of EAN 128
&&                        // 'F' = Enable  barcode decoding of EAN 128
&&            code93;     // 'N' = Enable  barcode decoding of Code 93
&&                        // 'F' = Disable barcode decoding of Code 93
&&}                  BARCFG,  FAR* LPBARCFG;

&&typedef struct _tagBARCFG5  {   // for PT500 only
&&BYTE        code39,     // 'N' = Enable  barcode decoding of Code 39
&&                        // 'a'..'h'
&&                        // 'F' = Disable barcode decoding of Code 39
&&            i2of5,      // 'N' = Enable  barcode decoding of Interleaved 2 of 5
&&                        // 'a'..'h'
&&                        // 'F' = Disable barcode decoding of Interleaved 2 of 5
&&            codabar,    // 'N' = Enable  barcode decoding of CODABAR
&&                        // 'a'..'h'
&&                        // 'F' = Disable barcode decoding of CODABAR
&&            ean_upc,    // 'N' = Enable  barcode decoding of UPC/EAN
&&                        // 'a'..'p'
&&                        // 'F' = Disable barcode decoding of UPC/EAN
&&            code128,    // 'N' = Enable  barcode decoding of Code 128
&&                        // 'F' = Disable barcode decoding of Code 128
&&            ean128,     // 'N' = Enable  barcode decoding of EAN 128
&&//          (msi)       // 'a'..'c'
&&                        // 'F' = Enable  barcode decoding of EAN 128
&&            code93,     // 'N' = Enable  barcode decoding of Code 93
&&                        // 'F' = Disable barcode decoding of Code 93
&&            code32,     // 'N' = Enable  barcode decoding of Code 32
&&                        // 'a'..'d'
&&                        // 'F' = Disable barcode decoding of Code 32
&&            chnpost;    // 'N' = Enable  barcode decoding of China Postal Code
&&                        // 'a'..'h'
&&                        // 'F' = Enable  barcode decoding of China Postal Code
&&}                  BARCFG5, FAR* LPBARCFG5;

&&typedef struct _tagBARCFG6  {   // for PT600 only
&&BYTE        code39,     // 'E' = Enable  barcode decoding of Code 39
&&                        // 'F' = Enable  barcode decoding of Code 39, Full ASCII
&&                        // 'D' = Disable barcode decoding of Code 39
&&            i2of5,      // 'E' = Enable  barcode decoding of Interleaved 2 of 5
&&                        // 'D' = Disable barcode decoding of Interleaved 2 of 5
&&            codabar,    // 'E' = Enable  barcode decoding of CODABAR
&&                        // 'D' = Disable barcode decoding of CODABAR
&&            ean_upc,    // 'E' = Enable  barcode decoding of UPC/EAN
&&                        // 'D' = Disable barcode decoding of UPC/EAN
&&            code128,    // 'E' = Enable  barcode decoding of Code 128
&&                        // 'D' = Disable barcode decoding of Code 128
&&            ean128,     // 'E' = Enable  barcode decoding of EAN 128
&&                        // 'D' = Enable  barcode decoding of EAN 128
&&            code93;     // 'E' = Enable  barcode decoding of Code 93
&&                        // 'D' = Disable barcode decoding of Code 93
&&}                  BARCFG6, FAR* LPBARCFG6;

&&//for ESC C Command
&&typedef struct _tagCOMCFG   {
&&BYTE        BaudRate,   // '0' =   110 bps
&&                        // '1' =   150
&&                        // '2' =   300
&&                        // '3' =   600
&&                        // '4' =  1200
&&                        // '5' =  2400
&&                        // '6' =  4800
&&                        // '7' =  9600
&&                        // '8' = 19200
&&                        // '9' = 38400
&&                        // 'A' = 57600
&&            StopBits,   // '1' = 1 Stop Bit
&&                        // '2' = 2 Stop Bits
&&            DataBits,   // '7' = 7 Data Bits
&&                        // '8' = 8 Data Bits
&&            Parity,     // 'N' = None Parity
&&                        // 'O' = Odd  Parity
&&                        // 'E' = Even Parity
&&            Protocol,   // 'M' = Multi-point protocol
&&                        // 'F' = None protocol
&&            Address,    // 'A'..'Y', or '0'..'6'
&&            TimeOut[2], // '0' = reserved.
&&            FlowCtrl;   // 'N' = None
&&                        // 'X' = Xon/Xoff
&&                        // 'C' = CTS/RTS (effect with RS232 only)
&&}                  COMCFG,  FAR* LPCOMCFG;

&&//for ESC C Command
&&typedef struct _tagCOMCFG6  {   // for PT600 only
&&BYTE        BaudRate,   // '0' =   110 bps
&&                        // '1' =   150
&&                        // '2' =   300
&&                        // '3' =   600
&&                        // '4' =  1200
&&                        // '5' =  2400
&&                        // '6' =  4800
&&                        // '7' =  9600
&&                        // '8' = 19200
&&                        // '9' = 38400
&&                        // 'A' = 57600
&&            StopBits,   // '1' = 1 Stop Bit
&&                        // '2' = 2 Stop Bits
&&            DataBits,   // '7' = 7 Data Bits
&&                        // '8' = 8 Data Bits
&&            Parity,     // 'N' = None Parity
&&                        // 'O' = Odd  Parity
&&                        // 'E' = Even Parity
&&            FlowCtrl,   // 'N' = None
&&                        // 'X' = Xon/Xoff
&&                        // 'C' = CTS/RTS (effect with RS232 only)
&&            Protocol,   // 'M' = Multi-point protocol
&&                        // 'F' = None protocol
&&            Address,    // 'A'..'Y', or '0'..'6'
&&            TimeOut[3]; // '0' = reserved.
&&}                  COMCFG6, FAR* LPCOMCFG6;

&&//for ESC T Command
&&typedef struct _tagTRMCFG   {
&&char        ID[8];      // Terminal ID
&&BYTE        Online,     // 'R' = Remote. Transmit the data to host port.
&&                        // 'L' = Local.  No transmit.
&&            Echo,       // 'N' = Display data on LCD.
&&                        // 'F' = No Display.
&&            AutoLF,     // 'N' = Append a LF with Data.
&&                        // 'F' = No Append.
&&            Mode,       // 'C' = Set to Character Mode. Transmit the data
&&                        //       to the host port one character each time.
&&                        // 'B' = Set to Block Mode.     Transmit the data
&&                        //       to the host port one block each time.
&&            Block,      // 'L' = Set to line block mode.
&&                        // 'P' = Set to page block mode.
&&                        // 'B' = Set to both line and page block modes.
&&            Line,       // Line = end of line character.
&&            Page;       // Page = end of page character.
&&}                  TRMCFG, FAR *LPTRMCFG;

&&//for ESC V Command
&&typedef struct _tagDEVCFG2  {   // for MR320 only
&&BYTE        Scanner,    //  'A' = Auto Scanner
&&            Badge,      //  'B' = Slot Reader
&&            LCDBkLt,    //  'N' = On
&&                        //  'F' = Off
&&            Buzzer,     //  'N' = On
&&            BuzzerVol,  //  '0'..'7', '7' = Off
&&            Interval,   //  'N' = On
&&                        //  'F' = Off
&&            Reserved[2];//  '00'  Reserved
&&}                  DEVCFG2,FAR *LPDEVCFG2;

&&typedef struct _tagDEVCFG5  {   // for MR350 only
&&BYTE        Scanner,    //  'N' = reserved.
&&            Badge,      //  'B' = Enable  the badge.
&&                        //  'D' = Disable the badge.
&&            LCDBkLt,    //  'N' = reserved.
&&            Buzzer,     //  'N' = Set buzzer on.
&&                        //  'F' = Set Buzzer off.
&&            KeyLock,    //  'N' = Set keyboard unlocked.
&&                        //  'K' = Set keyboard locked.
&&                        //  'P' = Set keyboard partial locked.
&&            BuzzerVol;  //  '0' = Low volumn.
&&                        //  '5' = Mid volumn.
&&                        //  '9' = Hi  volumn.
&&}                  DEVCFG5,FAR *LPDEVCFG5;

&&typedef struct _tagDEVCFG8  {   // for MR380 only
&&BYTE        Ext_Scanner,//  'P' = Pen.
&&                        //  'A' = Auto
&&                        //  'M' = MSR
&&                        //  'D' = Disable
&&            Int_Scanner,//  'B' = Bar code
&&                        //  'M' = MSR
&&                        //  'D' = Disable
&&            LCDBkLt,    //  'N' = On
&&                        //  'F' = Off
&&            Buzzer,     //  'N' = Set buzzer on.
&&                        //  'F' = Set Buzzer off.
&&            KeyLock,    //  'N' = Set keyboard unlocked.
&&                        //  'K' = Set keyboard locked.
&&                        //  'P' = Set keyboard partial locked.
&&            BuzzerVol;  //  '0' = Low volumn.
&&                        //  '5' = Mid volumn.
&&                        //  '9' = Hi  volumn.
&&}                  DEVCFG8,FAR *LPDEVCFG8;

&&typedef struct _tagDEVCFG6  {   // for PT600 only
&&BYTE        Scanner,    //  'P' = Pen
&&                        //  'A' = Auto
&&                        //  'D' = Disable
&&            LCDBkLt,    //  'N' = reserved.
&&            Buzzer,     //  'N' = Set buzzer on.
&&                        //  'F' = Set Buzzer off.
&&            KeyLock,    //  'N' = Constant 'N'
&&            BuzzerVol;  //  '0' = Low volumn.
&&                        //  '5' = Mid volumn.
&&                        //  '9' = Hi  volumn.
&&}                  DEVCFG6,FAR *LPDEVCFG6;

&& VFP should use String instead of C-Structure when call DLL.

&& For example:
&& Use "NFNFNFN" to represent BARCFG structure
&&   meaning Enable  barcode decoding of Code 39
&&           Disable barcode decoding of Interleaved 2 of 5
&&           Enable  barcode decoding of CODABAR
&&           Disable barcode decoding of UPC/EAN
&&           Enable  barcode decoding of Code 128
&&           Disable barcode decoding of EAN 128
&&           Enable  barcode decoding of Code 93

&&   Use "718NMA04N" to represent COMCFG structure
&&   meaning BaudRate = 9600 bps
&&           StopBits = 1 Stop Bit
&&           DataBits = 8 Data Bits
&&           Parity   = None Parity
&&           Protocol = Multi-point protocol
&&           Address  = A
&&           TimeOut  ='04'
&&           FlowCtrl = None

&& Use "Hello   RNFCL"+Chr(13)+Chr(10) to represent TRMCFG
&& meaning ID     = 'Hello'
&&         Online = Remote
&&         Echo   = Display data on LCD
&&         AutoLF = No Append.
&&         Mode   = Character Mode
&&         Block  = Line block mode
&&         Line   = CR (Chr(13))
&&         Page   = LF (Chr(10))

&& Use "NBNNN5" to represent DEVCFG5 structure
&& meaning Scanner   = reserved
&&         Badge     = Enable  the badge.
&&         LCDBkLt   = reserved.
&&         Buzzer    = Set buzzer on.
&&         KeyLock   = Set keyboard unlocked.
&&         BuzzerVol = Mid volumn.

Declare Long             Online_Create ;
In C:\OnlineCommManager\OnlineDll

Declare Long             Online_Alloc ;
In C:\OnlineCommManager\OnlineDll ;
Long @HGlobal

Declare Short            Online_Init ;
In C:\OnlineCommManager\OnlineDll ;
Long CommData

Declare                  Online_Destroy ;
In C:\OnlineCommManager\OnlineDll ;
Long CommData

Declare                  Online_Done ;
In C:\OnlineCommManager\OnlineDll ;
Long CommData

Declare                  Online_Release ;
In C:\OnlineCommManager\OnlineDll ;
Long @HGlobal

Declare Short            Online_Connect ;
In C:\OnlineCommManager\OnlineDll ;
Long CommData

Declare                  Online_Disconnect ;
In C:\OnlineCommManager\OnlineDll ;
Long CommData

Declare                  Online_Delay ;
In C:\OnlineCommManager\OnlineDll ;
 Long CommData, ;
 Long Delay 

Declare Short            Online_SetupEx ;
In C:\OnlineCommManager\OnlineDll ;
 Long CommData, ;
 Short Port, ;
 Short BaudRate, ;
 Short StopBits, ;
 Short Parity

Declare Short            Online_Setup   ;
In C:\OnlineCommManager\OnlineDll ;
 Long CommData, ;
 Short Port, ;
 Short BaudRate, ;
 Short StopBits, ;
 Short Parity

Declare Short            Online_TcpIpEx ;
In C:\OnlineCommManager\OnlineDll ;
 Long CommData, ;
 String @Host, ;
 String @Port, ;
 String @Time

Declare Short            Online_TcpIp   ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 String @Host, ;
 String @Port, ;
 String @Time

Declare Short            Online_ModemInit ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Long   Delay, ;
 Long   hList, ;
 String @Msg, ;
 Long   nMax, ;
 String @Init

Declare Short            Online_ModemDialEx ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Long   Delay, ;
 Long   hList, ;
 String @Msg,  ;
 Long   nMax,  ;
 String @Dial, ;
 String @Phone,;
 Short  Retry

Declare Short            Online_ModemDial ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Long   Delay, ;
 Long   hList, ;
 String @Msg,  ;
 Long   nMax,  ;
 String @Dial, ;
 String @Phone

Declare Short            Online_ModemHangUp ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Long   Delay, ;
 Long   hList, ;
 String @Msg, ;
 Long   nMax, ;
 String @HangUp

Declare Short            Online_ModemWaitForCall ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Long   Delay, ;
 Long   hList, ;
 String @Msg, ;
 Long   nMax

Declare                  Online_ModemATCmd ;
In C:\OnlineCommManager\OnlineDll ;
Long   CommData, ;
String @ATCmd

Declare Short            Online_ModemEcho ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 String @Msg, ;
 Long   nMax

Declare Short            Online_GetVersion ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short tAdd, ;
 String @Msg, ;
 String @bLen

Declare                  Online_ACK ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short tAdd

Declare                  Online_NAK ;
In C:\OnlineCommManager\OnlineDll ;
Long  CommData, ;
Short tAdd

Declare Short            Online_ESC_A ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short tAdd

Declare Short            Online_ESC_H ;
In C:\OnlineCommManager\OnlineDll ;
Long  CommData, ;
Short tAdd

Declare Short            Online_ESC_0 ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 Short  bLen 

Declare Short            Online_POLL ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short tAdd, ;
 String @Msg, ;
 String @bLen

Declare Short            Online_BELL ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short tAdd

Declare Short            Online_ESC_9 ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 String @bLen

Declare Short            Online_ESC_G ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 String @bLen

Declare Short            Online_ESC_I ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 String @bLen

Declare Short            Online_ESC_R ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 String @bLen

Declare Short            Online_ESC_5 ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short tAdd, ;
 Short nAdd

Declare Short            Online_ESC_K ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short tAdd, ;
 Short Data

Declare Short            Online_ESC_M ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short tAdd, ;
 String @Msg

Declare Short            Online_ESC_N ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short tAdd, ;
 Short Data

Declare Short            Online_ESC_O ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 Short  bLen

Declare Short            Online_ESC_P ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 Short  bLen

Declare Short            Online_ESC_B ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 Short  bLen

Declare Short            Online_ESC_C ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short tAdd, ;
 String @Msg, ;
 Short bLen

Declare Short            Online_ESC_T ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 Short  bLen, ;
 Short  ISet

Declare Short            Online_ESC_V ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 Short  bLen

Declare Short            Online_FindFirst ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Info, ;
 String @Msg, ;
 String @bLen

Declare Short            Online_FindNext ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Info, ;
 String @Msg, ;
 String @bLen

Declare Short            Online_ESC_D ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 String @bLen

Declare Short            Online_ESC_E ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 Short  bLen

Declare Short            Online_ESC_J ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 String @bLen

Declare Short            Online_ESC_L ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 Short  bLen

Declare Short            Online_ESC_U ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 Short  bLen

Declare Short            Online_ESC_Y ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 String @bLen

Declare Short            Online_ESC_Z ;
In C:\OnlineCommManager\OnlineDll ;
 Long  CommData, ;
 Short tAdd

Declare Short            Online_ESC_X ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 Short  bLen

Declare Short            Online_DBG ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @Msg, ;
 String @bLen

Declare Short            Online_DnLoad ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @sName, ;
 String @lName, ;
 Long   Timeout, ;
 Short  Retry

Declare Short            Online_UpLoad ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  tAdd, ;
 String @lName, ;
 String @sName, ;
 Long   Timeout, ;
 Short  Retry

Declare Short            Online_StLoad ;
In C:\OnlineCommManager\OnlineDll ;
 Long   CommData, ;
 Short  Stop, ;
 Long   @sSize, ;
 Long   @lSize  ;

Declare Short            Online_ResetMR053 ;
In C:\OnlineCommManager\OnlineDll ;
 String @Host, ;
 String @Port, ;
 String @Time
