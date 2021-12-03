unit Sample3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  OnlineDll, OnlineHandle, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  Result: Word;
  szResult: String[15];
begin
  if(IsConnected=False) then
   begin
    Result := Online_SetupEx(pCommData, 1, Word('7'), Word('1'), Word('N'));
    if(Result<>0) then
    Result := Online_Connect(pCommData);
    IsConnected := Result<>0;
    Str(Result, szResult);
    szResult[Length(szResult)+1]:=Chr(0);
    Application.MessageBox(@szResult[1], 'Result', MB_OK);
   end
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if(IsConnected=True ) then
   begin
    Online_Disconnect(pCommData);
    IsConnected:=False;
    Application.MessageBox('0', 'Result', MB_OK);
   end
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Result:   Word;
  FindStru: Array [0..279] Of Byte;
  Name:     Array [0..15] Of Byte;
  Len:      Byte;
  NameStr:  String[15] Absolute Name;
begin
   ListBox1.Clear;
   if(IsConnected)then
    begin
     Result  := Online_FindFirst(pCommData, Word('A'), @FindStru, @Name[1], Len);
     while (Result=1)and(Len>0) do
      begin
       Name[0] := Len;
       ListBox1.Items.Add(NameStr);
       Result  := Online_FindNext (pCommData, Word('A'), @FindStru, @Name[1], Len);
      end
    end
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Result:     Word;
  szResult:   String[15];
  SystemTime: TSystemTime;
  DateTimeStr: String;
  Function GetStr(V, W: Word):String;
   Var S: String;
   Begin
     Str(V, S);
     While Length(S)<W Do
     S:='0'+S;
     GetStr:=S;
   End;
begin
  if(IsConnected)then
   begin
    GetLocalTime(SystemTime);
    DateTimeStr:=
    GetStr(SystemTime.wYear,   4)+
    GetStr(SystemTime.wMonth,  2)+
    GetStr(SystemTime.wDay,    2)+
    GetStr(SystemTime.wHour,   2)+
    GetStr(SystemTime.wMinute, 2)+
    GetStr(SystemTime.wSecond, 2);
    Result := Online_ESC_M(pCommData, Word('A'), @DateTimeStr[1]);
    Str(Result, szResult);
    szResult[Length(szResult)+1]:=Chr(0);
    Application.MessageBox(@szResult[1], 'Result', MB_OK);
   end
end;

end.
