program VirtualProxy;

uses
  Vcl.Forms,
  CDFrm in 'CDFrm.pas' {CDForm},
  Image in 'Image.pas',
  ImageIntf in 'ImageIntf.pas',
  ImageProxy in 'ImageProxy.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCDForm, CDForm);
  Application.Run;
end.
