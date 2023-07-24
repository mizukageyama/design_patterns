unit ViewFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, System.Math,
  BeatObserverIntf, BPMObserverIntf, BeatModelIntf, ControllerIntf, BeatModel;

type
  TViewForm = class(TForm, IBeatObserver, IBPMObserver)
    pnlBeat: TPanel;
    pnlInfo: TPanel;
    pbBeatBar: TProgressBar;
    lblBeatInfo: TLabel;
    tmrPerBeat: TTimer;
    procedure tmrPerBeatTimer(Sender: TObject);
    procedure UpdateBPM;
    procedure UpdateBeat;
  private
    FModel: IBeatModel;
  public
    procedure Initialize(AModel: IBeatModel);
  end;

implementation

{$R *.dfm}

procedure TViewForm.Initialize(AModel: IBeatModel);
begin
  FModel := AModel;
  UpdateBeat;
end;

procedure TViewForm.tmrPerBeatTimer(Sender: TObject);
begin
  pbBeatBar.StepBy(4);
  pbBeatBar.StepIt;
end;

procedure TViewForm.UpdateBeat;
begin
  var BPM := FModel.GetBPM;
  if BPM <> 0 then
  begin
    tmrPerBeat.Enabled := True;
    tmrPerBeat.Interval := Round((60/BPM) * 1000);
  end
  else
  begin
    tmrPerBeat.Enabled := False;
    pbBeatBar.Position := 0;
  end;
end;

procedure TViewForm.UpdateBPM;
begin
  if FModel <> nil then
  begin
    var BPM := FModel.GetBPM;
    if BPM = 0 then
      lblBeatInfo.Caption := 'offline'
    else
      lblBeatInfo.Caption := 'Current BPM: ' + BPM.ToString;
  end;
end;

end.
