program VirtualProxy;

uses
  Vcl.Forms,
  CDFrm in 'CDFrm.pas' {CDForm},
  ImageProxy in 'ImageProxy.pas',
  ImageIntf in 'ImageIntf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCDForm, CDForm);
  Application.Run;
end.
