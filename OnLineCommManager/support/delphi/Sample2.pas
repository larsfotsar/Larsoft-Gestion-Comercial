unit Sample2;

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
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
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
  Form1:     TForm1;
  ComConfig: TCOMCFG;
  Speed:     Word;
implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComConfig.BaudRate   :=  0 ;
  ComConfig.StopBits   := Byte('1');
  ComConfig.DataBits   := Byte('8');
  ComConfig.Parity     := Byte('N');
  ComConfig.Protocol   := Byte('M');
  ComConfig.Address    := Byte('A');
  ComConfig.TimeOut[0] := Byte('0');
  ComConfig.TimeOut[1] := Byte('4');
  ComConfig.FlowCtrl   := Byte('C');
  Speed:=0;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Result: Word;
  szResult: String[15];
begin
  if(Speed=0)then
    Application.MessageBox('Press 4800 or 9600', 'Result', MB_OK)
  else
  if(IsConnected=False) then
   begin
    Result := Online_SetupEx(pCommData, 1, Speed, Word('1'), Word('N'));
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
  Result: Word;
  szResult: String[15];
begin
   Speed := Word('6'); // 4800 bps
   If(IsConnected)then
    begin
     ComConfig.BaudRate := Speed;
     Result := Online_ESC_C(pCommData, Word('A'), @ComConfig, SizeOf(ComConfig));
    end;
   Result := Online_SetupEx(pCommData, 1, Speed, 49, 78);
   Str(Result, szResult);
   szResult[Length(szResult)+1]:=Chr(0);
   Application.MessageBox(@szResult[1], 'Result', MB_OK);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Result: Word;
  szResult: String[15];
begin
   Speed := Word('7'); // 9600 bps
   If(IsConnected)then
    begin
     ComConfig.BaudRate := Speed;
     Result := Online_ESC_C(pCommData, Word('A'), @ComConfig, SizeOf(ComConfig));
    end;
   Result := Online_SetupEx(pCommData, 1, Speed, 49, 78);
   Str(Result, szResult);
   szResult[Length(szResult)+1]:=Chr(0);
   Application.MessageBox(@szResult[1], 'Result', MB_OK);
end;

end.
