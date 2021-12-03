unit Sample9;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls,
  OnlineDll, OnlineHandle;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
var
  Result: Word;
  szResult: String[15];
  Version:  Array [0..255] Of Byte;
  Len:      Byte;
begin
  if(IsConnected=False) then
   begin
    Result := Online_SetupEx(pCommData, 1, Word('7'), Word('1'), Word('N'));
    if(Result<>0) then
    Result := Online_Connect(pCommData);
    IsConnected := Result<>0;
    if(IsConnected)then
     begin
      Result := Online_GetVersion(pCommData, Word('A'), @Version[1], Len);
      Version[0]:=Len; Version[Len+1]:=0;
      Application.MessageBox(@Version[1], 'Version', MB_OK);
     end
   end
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if(IsConnected=True ) then
   begin
    Online_Disconnect(pCommData);
    IsConnected:=False;
   end
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if(IsConnected)then
   if Timer1.Enabled
    then
     begin
      Timer1.Enabled := False;
      Button1.Caption:='Polling';
     end
    else
     begin
      Timer1.Enabled := True ;
      Button1.Caption:='Pause';
     end
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  Result: Word;
  szResult: String[15];
  Data:     Array [0..255] Of Byte;
  Len:      Byte;
  DataStr:  String[255] Absolute Data;
begin
 if(IsConnected)then
  repeat
   Result := Online_POLL(pCommData, Word('A'), @Data[1], Len);
   if (Result = 1) Or (Result = 2) Then
   Online_ACK(pCommData, Word('A'));
   if Result = 1 Then
    begin
     Data[0]:=Len; Data[Len+1]:=0;
     ListBox1.Items.Add(DataStr);
     ListBox1.ItemIndex:=
     ListBox1.Items.Count-1;
    end
  until Result<>1
end;

end.
