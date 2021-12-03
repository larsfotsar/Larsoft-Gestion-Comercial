unit Sample5;

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
  F:        File Of Byte;
  NameStr:  String;
  TextAsc:  Array [1..120] Of Byte;
  TextLen,
  Count:    Byte;
  Finished: Boolean;
begin
  if(IsConnected)then
   begin
//    AssignFile(F, 'C:\OnlineCommManager\Delphi\Sample.txt');
    AssignFile(F, 'C:\OnlineCommManager\Planilla.txt');

    {$I-} Rewrite(F); {$I+}
    if IOResult = 0 then
     begin
   //   NameStr  := 'Sample.txt';
      NameStr  := 'Planilla.txt';

//      Result   := Online_ESC_U(pCommData, Word('A'), @NameStr[1], 10);
      Result   := Online_ESC_U(pCommData, Word('A'), @NameStr[1], 12);

      If Result = 4 Then
//    CmdACK is a constant = 4
       begin
        Finished := False;
        Repeat
         Result  := Online_ESC_Y(pCommData, Word('A'), @TextAsc, TextLen);
         If Result = 1 Then
//        CmdOK is a constant = 1
          begin
           Online_ACK(pCommData, Word('A'));
          end else
         If Result = 3 Then
//        CmdEOF is a constant = 3
          begin
           Online_ACK(pCommData, Word('A'));
           TextLen := 0;
           Finished:=True;
          end else
          begin
           Online_NAK(pCommData, Word('A'));
           TextLen := 0;
           Finished:=True;
          end;
          For Count:=1 to TextLen Do
           {$I-} Write(F, TextAsc[Count]); {$I+}
           TextLen:=TextLen+1;
        Until Finished;
        Application.MessageBox('File Upload', 'Sample.Txt', MB_OK);
       end;
      {$I-} CloseFile(F); {$I+}
     end
   end
end;

end.
