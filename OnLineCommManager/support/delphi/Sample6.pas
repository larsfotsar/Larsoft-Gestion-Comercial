unit Sample6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,
  OnlineDll, OnlineHandle;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
    Result := Online_SetupEx(pCommData, 1, Word('A'), Word('1'), Word('N'));
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
  szResult: String[15];
  Stat:     Array [0..63] Of Byte;
  Len:      Byte;
  StatStr:  String[63] Absolute Stat;
begin
   StatStr:='Sample.TXT';
   Len    := 10;
   StatStr:='DATOS.TXT';
   Len    := 9;

   if (IsConnected) then
    begin
     Sleep(3000);
     Result := Online_ESC_J(pCommData, Word('A'), @Stat[1], Len);
   //  Sleep(3000);
     Stat[0]:= Len; Stat[Len+1]:=0;
     Str(Result, szResult);
     szResult[Length(szResult)+1]:=Chr(0);
     Application.MessageBox(@szResult[1], 'Result', MB_OK);
     Application.MessageBox(@Stat[1], 'Check File Stat Sample.Txt', MB_OK);
    end
end;

end.
