unit ViewFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TViewForm = class(TForm)
    pnlBeat: TPanel;
    pnlInfo: TPanel;
    pbBeatBar: TProgressBar;
    lblBeatInfo: TLabel;
    tmrPerBeat: TTimer;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure tmrPerBeatTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewForm: TViewForm;

implementation

{$R *.dfm}

procedure TViewForm.FormCreate(Sender: TObject);
begin
  tmrPerBeat.Enabled := True;
  Timer1.Enabled := False;
end;

procedure TViewForm.Timer1Timer(Sender: TObject);
begin
//  if pbBeatBar.Position = 95 then
//  begin
//    tmrPerBeat.Enabled := True;
//    pbBeatBar.Position := 0;
//  end;

end;

procedure TViewForm.tmrPerBeatTimer(Sender: TObject);
begin
  pbBeatBar.Step := 95;
  pbBeatBar.StepIt;
  tmrPerBeat.Enabled := False;
  Sleep(1000);
  pbBeatBar.Position := 0;
end;

end.
