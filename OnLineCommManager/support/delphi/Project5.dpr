program Project5;

uses
  Forms,
  Sample5 in 'Sample5.pas' {Form1},
  OnlineDll in 'OnlineDll.pas',
  OnlineHandle in 'OnlineHandle.pas';

{$R *.RES}
label
  ExitProg;

begin
  IsConnected := False;
  pCommData := Online_Create;
  if(pCommData=NIL)then goto ExitProg;
    Application.Initialize;
    Application.CreateForm(TForm1, Form1);
    Application.Run;
    Online_Destroy(pCommData);
ExitProg:
end.

