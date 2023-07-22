unit ViewFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, System.Math,
  BeatObserverIntf, BPMObserverIntf;

type
  TViewForm = class(TForm)
    pnlBeat: TPanel;
    pnlInfo: TPanel;
    pbBeatBar: TProgressBar;
    lblBeatInfo: TLabel;
    tmrPerBeat: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure tmrPerBeatTimer(Sender: TObject);
  private
    { Private declarations }
  public
    procedure TurnOn;
    procedure TurnOff;
    procedure SetBPM(BPM: Integer);
    function GetBPM: Integer;
    procedure RegisterObserver(O: IBeatObserver); overload;
    procedure RemoveObserver(O: IBPMObserver); overload;
    procedure RegisterObserver(O: IBPMObserver); overload;
    procedure RemoveObserver(O: IBeatObserver); overload;
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

function TViewForm.GetBPM: Integer;
begin
//
end;

procedure TViewForm.RegisterObserver(O: IBPMObserver);
begin
//
end;

procedure TViewForm.RegisterObserver(O: IBeatObserver);
begin
//
end;

procedure TViewForm.RemoveObserver(O: IBPMObserver);
begin
//
end;

procedure TViewForm.RemoveObserver(O: IBeatObserver);
begin
//
end;

procedure TViewForm.SetBPM(BPM: Integer);
begin
//
end;

procedure TViewForm.tmrPerBeatTimer(Sender: TObject);
begin
  pbBeatBar.StepBy(4);
  pbBeatBar.StepIt;
end;

procedure TViewForm.TurnOff;
begin
//
end;

procedure TViewForm.TurnOn;
begin
//
end;

end.
