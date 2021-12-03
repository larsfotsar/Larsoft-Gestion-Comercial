Attribute VB_Name = "Module1"
'
'It is assumed that you have installed
'Online Comm Manager in the folder of
'C:\OnlineCommManager
'
'Otherwise, you have to
'
'1. Copy OnlineDll.Dll to Windows or Windows\System folder,
'   and remove the path specification
'or
'
'2. Copy OnlineDll.Dll to the same folder of your Exe file,
'   and remove the path specification
'
'or
'
'3. Manual modify the path in
'   Lib "C:\OnlineCommManager\OnlineDll.Dll"

Const CmdOK As Integer = 1
Const CmdEOT As Integer = 2
Const CmdEOF As Integer = 3
Const CmdACK As Integer = 4
Const CmdNAK As Integer = 5
Const CmdYES As Integer = 6
Const CmdNO As Integer = 7
Const CmdUSE As Integer = 8
Const CmdNONE As Integer = 9
Const CmdErr As Integer = 128
Const CmdErrLen As Integer = 129
Const CmdErrTime As Integer = 130
Const CmdErrSocket As Integer = 131

Const M_UNKNOWN As Integer = 0
Const M_OK As Integer = 1
Const M_CONNECT As Integer = 2
Const M_RING As Integer = 3
Const M_NOCARRIER As Integer = 4
Const M_ERROR As Integer = 5
Const M_NODIALTONE As Integer = 6
Const M_BUSY As Integer = 7
Const M_NOANSWER As Integer = 8
Const M_CARRIER As Integer = 9

'for ESC B Command
Type BARCFG
code39  As Byte
   ' "N" = Enable  barcode decoding of Code 39
   ' "F" = Disable barcode decoding of Code 39
i2of5   As Byte
   ' "N" = Enable  barcode decoding of Interleaved 2 of 5
   ' "F' = Disable barcode decoding of Interleaved 2 of 5
codabar As Byte
   ' "N" = Enable  barcode decoding of CODABAR
   ' "F" = Disable barcode decoding of CODABAR
ean_upc As Byte
   ' "N" = Enable  barcode decoding of UPC/EAN
   ' "F" = Disable barcode decoding of UPC/EAN
code128 As Byte
   ' "N" = Enable  barcode decoding of Code 128
   ' "F" = Disable barcode decoding of Code 128
ean128  As Byte
   ' "N" = Enable  barcode decoding of EAN 128
   ' "F" = Enable  barcode decoding of EAN 128
code93  As Byte
   ' "N" = Enable  barcode decoding of Code 93
   ' "F" = Disable barcode decoding of Code 93
End Type

'for PT500 only
Type BARCFG5
code39  As Byte
   ' "N" = Enable  barcode decoding of Code 39
   ' "a".."h"
   ' "F" = Disable barcode decoding of Code 39
i2of5   As Byte
   ' "N" = Enable  barcode decoding of Interleaved 2 of 5
   ' "a".."h"
   ' "F' = Disable barcode decoding of Interleaved 2 of 5
codabar As Byte
   ' "N" = Enable  barcode decoding of CODABAR
   ' "a".."h"
   ' "F" = Disable barcode decoding of CODABAR
ean_upc As Byte
   ' "N" = Enable  barcode decoding of UPC/EAN
   ' "F" = Disable barcode decoding of UPC/EAN
code128 As Byte
   ' "N" = Enable  barcode decoding of Code 128
   ' "F" = Disable barcode decoding of Code 128
ean128  As Byte
   ' "N" = Enable  barcode decoding of EAN 128
   ' msi, "a".."c"
   ' "F" = Enable  barcode decoding of EAN 128
code93  As Byte
   ' "N" = Enable  barcode decoding of Code 93
   ' "F" = Disable barcode decoding of Code 93
code32  As Byte
   ' "N" = Enable  barcode decoding of Code 32
   ' "a".."d"
   ' "F" = Disable barcode decoding of Code 32
chnpost As Byte
   ' "N" = Enable  barcode decoding of China postal code
   ' "a".."h"
   ' "F' = Disable barcode decoding of China postal code
End Type

'for PT600 only
Type BARCFG6
code39  As Byte
   ' "E" = Enable  barcode decoding of Code 39
   ' "F" = Enable  barcode decoding of Code 39, Full ASCII
   ' "D" = Disable barcode decoding of Code 39
i2of5   As Byte
   ' "E" = Enable  barcode decoding of Interleaved 2 of 5
   ' "D' = Disable barcode decoding of Interleaved 2 of 5
codabar As Byte
   ' "E" = Enable  barcode decoding of CODABAR
   ' "D" = Disable barcode decoding of CODABAR
ean_upc As Byte
   ' "E" = Enable  barcode decoding of UPC/EAN
   ' "D" = Disable barcode decoding of UPC/EAN
code128 As Byte
   ' "E" = Enable  barcode decoding of Code 128
   ' "D" = Disable barcode decoding of Code 128
ean128  As Byte
   ' "E" = Enable  barcode decoding of EAN 128
   ' "D" = Enable  barcode decoding of EAN 128
code93  As Byte
   ' "E" = Enable  barcode decoding of Code 93
   ' "D" = Disable barcode decoding of Code 93
End Type

'for ESC C Command
'Always set "M" to Protocol,
'"04" to TimeOut, and "C" to FlowCtrl.
Type COMCFG
BaudRate   As Byte
   ' "0" =   110 bps
   ' "1" =   150
   ' "2" =   300
   ' "3" =   600
   ' "4" =  1200
   ' "5" =  2400
   ' "6" =  4800
   ' "7" =  9600
   ' "8" = 19200
   ' "9" = 38400
   ' "A" = 57600
   ' "B" = 115200
StopBits   As Byte
   ' "1" = 1 Stop Bit
   ' "2" = 2 Stop Bits
DataBits   As Byte
   ' "7" = 7 Data Bits
   ' "8" = 8 Data Bits
Parity     As Byte
   ' "N" = None Parity
   ' "O" = Odd  Parity
   ' "E" = Even Parity
Protocol   As Byte
   ' "M" = Multi-point protocol
   ' "F" = None protocol
Address    As Byte
   ' "A".."Y", or "0".."6"
Timeout(1) As Byte
   ' "00" = reserved
FlowCtrl   As Byte
   ' "N" = None
   ' "X" = Xon/Xoff
   ' "C" = CTS/RTS (effect with RS232 only)
End Type

'for PT600 only
Type COMCFG6
BaudRate   As Byte
   ' "0" =   110 bps
   ' "1" =   150
   ' "2" =   300
   ' "3" =   600
   ' "4" =  1200
   ' "5" =  2400
   ' "6" =  4800
   ' "7" =  9600
   ' "8" = 19200
   ' "9" = 38400
   ' "A" = 57600
   ' "B" = 115200 (not supported by PT600/PT630
StopBits   As Byte
   ' "1" = 1 Stop Bit
   ' "2" = 2 Stop Bits
DataBits   As Byte
   ' "7" = 7 Data Bits
   ' "8" = 8 Data Bits
Parity     As Byte
   ' "N" = None Parity
   ' "O" = Odd  Parity
   ' "E" = Even Parity
FlowCtrl   As Byte
   ' "N" = None
   ' "X" = Xon/Xoff
   ' "C" = CTS/RTS
Protocol   As Byte
   ' "M" = Multi-point protocol
   ' "F" = None protocol
Address    As Byte
   ' "A".."Y", or "0".."6"
Timeout(2) As Byte
   ' "000" = reserved
End Type

'for ESC T Command
'ID is always 8 characters. So Pad space(s) character to ID
' if its length is less than 8.
Type TRMCFG
ID(7)     As Byte
Online    As Byte
   ' "R" = Remote. Transmit the data to host port.
   ' "L" = Local.  No transmit.
Echo      As Byte
   ' "N" = Display data on LCD.
   ' "F" = No Display.
AutoLF    As Byte
   ' "N" = Append a LF with Data.
   ' "F" = No Append.
Mode      As Byte
   ' "C" = Set to Character Mode. Transmit the data
   '       to the host port one character each time.
   ' "B" = Set to Block Mode.     Transmit the data
   '       to the host port one block each time.
Block As Byte
   ' "L" = Set to line block mode.
   ' "P" = Set to page block mode.
   ' "B" = Set to both line and page block modes.
Line      As Byte
   ' Line = end of line character.
   Page      As Byte
   ' Page = end of page character.
End Type

'for ESC V Command
'for MR320 Only
Type DEVCFG2
Scanner     As Byte
   ' "A" = Auto Scanner
Badge       As Byte
   ' "B" = Slot Reader
LCDBkLt     As Byte
   ' "N" = On
   ' "F" = Off
Buzzer      As Byte
   ' "N" = On
BuzzerVol   As Byte
   ' "0".."7", "7" = Off
Interval    As Byte
   ' "N" = On
   ' "F" = Off
Reserved(1) As Byte
   ' "00" Reserved
End Type

'for MR350 Only
Type DEVCFG5
Scanner   As Byte
   ' "N" = reserved.
Badge     As Byte
   ' "B" = Enable  the badge.
   ' "D" = Disable the badge.
LCDBkLt   As Byte
   ' "N" = reserved.
Buzzer    As Byte
   ' "N" = Set buzzer on.
   ' "F" = Set Buzzer off.
KeyLock   As Byte
   ' "N" = Set keyboard unlocked.
   ' "K" = Set keyboard locked.
   ' "P" = Set keyboard partial locked.
BuzzerVol As Byte
   ' "0" = Low volumn.
   ' "5" = Mid volumn.
   ' "9" = Hi  volumn.
End Type

'for MR380 Only
Type DEVCFG8
Ext_Scanner As Byte
   ' "P" = Pen.
   ' "A" = Auto
   ' "M" = MSR
   ' "D" = Disable
Int_Scanner As Byte
   ' "B" = Bar code
   ' "M" = MSR
   ' "D" = Disable
LCDBkLt     As Byte
   ' "N" = On
   ' "F" = Off
Buzzer      As Byte
   ' "N" = Set buzzer on.
   ' "F" = Set Buzzer off.
KeyLock     As Byte
   ' "N" = Set keyboard unlocked.
   ' "K" = Set keyboard locked.
   ' "P" = Set keyboard partial locked.
BuzzerVol   As Byte
   ' "0" = Low volumn.
   ' "5" = Mid volumn.
   ' "9" = Hi  volumn.
End Type

'for PT600 Only
Type DEVCFG6
Scanner   As Byte
   ' "P" = Pen
   ' "A" = Auto
   ' "D" = Disable
LCDBkLt   As Byte
   ' "N" = reserved.
Buzzer    As Byte
   ' "N" = Set buzzer on.
   ' "F" = Set Buzzer off.
KeyLock   As Byte
   ' "N" = reserved
BuzzerVol As Byte
   ' "0" = Low volumn.
   ' "5" = Mid volumn.
   ' "9" = Hi  volumn.
End Type

Declare Function Online_Create _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
() As Long

Declare Function Online_Alloc _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByRef HGlobal As Long) As Long

Declare Function Online_Init _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long) As Integer

Declare Sub Online_Destroy _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long)

Declare Sub Online_Done _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long)

Declare Sub Online_Release _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByRef HGlobal As Long)

Declare Function Online_Connect _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long) As Integer

Declare Sub Online_Disconnect _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long)

Declare Sub Online_Delay _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Delay As Long)

Declare Function Online_SetupEx _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Port As Integer, _
 ByVal BaudRate As Integer, _
 ByVal StopBits As Integer, _
 ByVal Parity As Integer) As Integer

Declare Function Online_Setup _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Port As Integer, _
 ByVal BaudRate As Integer, _
 ByVal StopBits As Integer, _
 ByVal Parity As Integer) As Integer

Declare Function Online_TcpIpEx _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Host As String, _
 ByVal Port As String, _
 ByVal Time As String) As Integer

Declare Function Online_TcpIp _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Host As String, _
 ByVal Port As String, _
 ByVal Time As String) As Integer

Declare Function Online_ModemInit _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Delay As Long, _
 ByVal hList As Long, _
 ByVal Msg As String, _
 ByVal nMax As Long, _
 ByVal Init As String) As Integer

Declare Function Online_ModemDialEx _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Delay As Long, _
 ByVal hList As Long, _
 ByVal Msg As String, _
 ByVal nMax As Long, _
 ByVal Dial As String, _
 ByVal Phone As String, _
 ByVal Retry As Integer) As Integer

Declare Function Online_ModemDial _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Delay As Long, _
 ByVal hList As Long, _
 ByVal Msg As String, _
 ByVal nMax As Long, _
 ByVal Dial As String, _
 ByVal Phone As String) As Integer

Declare Function Online_ModemHangUp _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Delay As Long, _
 ByVal hList As Long, _
 ByVal Msg As String, _
 ByVal nMax As Long, _
 ByVal HangUp As String) As Integer

Declare Function Online_ModemWaitForCall _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Delay As Long, _
 ByVal hList As Long, _
 ByVal Msg As String, _
 ByVal nMax As Long) As Integer

Declare Sub Online_ModemATCmd _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal ATCmd As String)

Declare Function Online_ModemEcho _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Msg As String, _
 ByVal nMax As Long) As Integer

Declare Function Online_GetVersion _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Sub Online_ACK _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer)

Declare Sub Online_NAK _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer)

Declare Function Online_ESC_A _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer) As Integer

Declare Function Online_ESC_H _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer) As Integer

Declare Function Online_ESC_0 _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByVal bLen As Integer) As Integer

Declare Function Online_POLL _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Function Online_BELL _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer) As Integer

Declare Function Online_ESC_9 _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Function Online_ESC_G _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Function Online_ESC_I _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal bAdd As Integer, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Function Online_ESC_R _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Function Online_ESC_5 _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal nAdd As Integer) As Integer

Declare Function Online_ESC_K _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Data As Integer) As Integer

Declare Function Online_ESC_M _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String) As Integer

Declare Function Online_ESC_N _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Data As Integer) As Integer

Declare Function Online_ESC_O _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByVal bLen As Integer) As Integer

Declare Function Online_ESC_P _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByVal bLen As Integer) As Integer

Declare Function Online_ESC_B _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByVal bLen As Integer) As Integer

Declare Function Online_ESC_C _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByVal bLen As Integer) As Integer

Declare Function Online_ESC_T _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, ByVal Addr As Integer, _
 ByVal Msg As String, _
 ByVal bLen As Integer, _
 ByVal ISet As Integer) As Integer

Declare Function Online_ESC_V _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByVal bLen As Integer) As Integer

Declare Function Online_FindFirst _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Info As String, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Function Online_FindNext _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal Addr As Integer, _
 ByVal Info As String, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Function Online_ESC_D _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Function Online_ESC_E _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByVal bLen As Integer) As Integer

Declare Function Online_ESC_J _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Function Online_ESC_L _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByVal bLen As Integer) As Integer

Declare Function Online_ESC_U _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByVal bLen As Integer) As Integer

Declare Function Online_ESC_Y _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Function Online_ESC_Z _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer) As Integer

Declare Function Online_ESC_X _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByVal bLen As Integer) As Integer

Declare Function Online_DBG _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal Msg As String, _
 ByRef bLen As Byte) As Integer

Declare Function Online_ESC_BCFG _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
Alias "Online_ESC_B" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByRef Dat As BARCFG, _
 ByVal bLen As Integer) As Integer
' bLen = 7

Declare Function Online_ESC_CCFG _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
Alias "Online_ESC_C" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByRef Dat As COMCFG, _
 ByVal bLen As Integer) As Integer
' bLen = 9

Declare Function Online_ESC_TCFG _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
Alias "Online_ESC_T" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByRef Dat As TRMCFG, _
 ByVal bLen As Integer, ByVal Setting As Integer) As Integer
' bLen = 15

Declare Function Online_ESC_VCFG2 _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
Alias "Online_ESC_V" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByRef Dat As DEVCFG2, _
 ByVal bLen As Integer) As Integer
' bLen = 8

Declare Function Online_ESC_VCFG5 _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
Alias "Online_ESC_V" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByRef Dat As DEVCFG5, _
 ByVal bLen As Integer) As Integer
' bLen = 6

Declare Function Online_ESC_VCFG8 _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
Alias "Online_ESC_V" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByRef Dat As DEVCFG8, _
 ByVal bLen As Integer) As Integer
' bLen = 6

Declare Function Online_DnLoad _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal sName As String, _
 ByVal lName As String, _
 ByVal Timeout As Long, _
 ByVal Retry As Integer) As Integer

Declare Function Online_UpLoad _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal tAdd As Integer, _
 ByVal lName As String, _
 ByVal sName As String, _
 ByVal Timeout As Long, _
 ByVal Retry As Integer) As Integer

Declare Function Online_StLoad _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal CommData As Long, _
 ByVal iStop As Integer, _
 ByRef sSize As Long, _
 ByRef lSize As Long) As Integer

Declare Function Online_ResetMR053 _
Lib "C:\OnlineCommManager\OnlineDll.Dll" _
(ByVal Host As String, _
 ByVal Port As String, _
 ByVal Time As String) As Integer

