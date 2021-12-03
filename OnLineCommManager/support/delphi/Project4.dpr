program Project4;

uses
  Forms,
  Sample4 in 'Sample4.pas' {Form1},
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

