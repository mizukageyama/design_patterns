unit ViewFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, System.Math,
  BeatObserverIntf, BPMObserverIntf, BeatModelIntf, ControllerIntf;

type
  TViewForm = class(TForm)
    pnlBeat: TPanel;
    pnlInfo: TPanel;
    pbBeatBar: TProgressBar;
    lblBeatInfo: TLabel;
    tmrPerBeat: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure tmrPerBeatTimer(Sender: TObject);
  end;

var
  ViewForm: TViewForm;

implementation

{$R *.dfm}

procedure TViewForm.FormCreate(Sender: TObject);
begin
  tmrPerBeat.Enabled := True;
  tmrPerBeat.Interval := Round((60/120) * 1000);
end;

procedure TViewForm.tmrPerBeatTimer(Sender: TObject);
begin
  pbBeatBar.StepBy(4);
  pbBeatBar.StepIt;
end;

end.
