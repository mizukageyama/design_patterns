unit ControllerFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, BeatModelIntf, BeatObserverIntf,
  BPMObserverIntf, ControllerIntf, BeatModel, ViewFrm;

type
  TControllerForm = class(TForm)
    pnlInput: TPanel;
    lblEnter: TLabel;
    edtBPM: TEdit;
    btnSet: TButton;
    pnlButton: TPanel;
    btnIncrease: TButton;
    btnDecrease: TButton;
    mmDJControl: TMainMenu;
    DJControl1: TMenuItem;
    Start1: TMenuItem;
    Stop1: TMenuItem;
    Quit1: TMenuItem;
    procedure Start1Click(Sender: TObject);
    procedure Stop1Click(Sender: TObject);
    procedure Quit1Click(Sender: TObject);
    procedure btnSetClick(Sender: TObject);
    procedure btnIncreaseClick(Sender: TObject);
    procedure btnDecreaseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
   private
    { Private declarations }
    FController: IController;
    FModel: IBeatModel;
    FBeatViewForm: TViewForm;
  public
    { Public declarations }
    procedure EnableStop;
    procedure DisableStop;
    procedure EnableStart;
    procedure DisableStart;
    procedure DisableSet;
    procedure EnableSet;
  end;

implementation

{$R *.dfm}

uses BeatController;

procedure TControllerForm.btnDecreaseClick(Sender: TObject);
begin
  try
    if (edtBPM.Text = '') or ((StrToInt(edtBPM.Text) - 1) = 0) then
      edtBPM.Text := '0'
    else
      edtBPM.Text := (StrToInt(edtBPM.Text) - 1).ToString;
  except
    ShowMessage('Invalid Input');
  end;
  FController.DecreaseBPM;
end;

procedure TControllerForm.btnIncreaseClick(Sender: TObject);
begin
  try
    if edtBPM.Text = '' then
      edtBPM.Text := '1'
    else
      edtBPM.Text := (StrToInt(edtBPM.Text) + 1).ToString;
  except
    ShowMessage('Invalid Input');
  end;
  FController.IncreaseBPM;
end;

procedure TControllerForm.btnSetClick(Sender: TObject);
var
  BPM: Integer;
  Input: string;
begin
  Input := edtBPM.Text;
  try
    BPM := Input.ToInteger;
    FController.SetBPM(BPM);
  except
    ShowMessage('Invalid Input');
  end;
end;

procedure TControllerForm.DisableSet;
begin
  btnSet.Enabled := False;
  btnDecrease.Enabled := False;
  btnIncrease.Enabled := False;
  edtBPM.Enabled := False;
end;

procedure TControllerForm.DisableStart;
begin
  Start1.Enabled := False;
end;

procedure TControllerForm.DisableStop;
begin
  Stop1.Enabled := False;
end;

procedure TControllerForm.EnableSet;
begin
  btnSet.Enabled := True;
  btnDecrease.Enabled := True;
  btnIncrease.Enabled := True;
  edtBPM.Enabled := True;
end;

procedure TControllerForm.EnableStart;
begin
  Start1.Enabled := True;
end;

procedure TControllerForm.EnableStop;
begin
  Stop1.Enabled := True;
end;

procedure TControllerForm.FormCreate(Sender: TObject);
begin
  FModel := TBeatModel.Create;
  FController := TBeatController.Create(Self, FModel);
  FBeatViewForm := TViewForm.Create(Self);
  FBeatViewForm.Initialize(FModel);
  var Temp: IBPMObserver :=  FBeatViewForm;
  FModel.RegisterObserver(FBeatViewForm as IBeatObserver);
  FModel.RegisterObserver(Temp);
end;

procedure TControllerForm.Quit1Click(Sender: TObject);
begin
  Close;
end;

procedure TControllerForm.Start1Click(Sender: TObject);
begin
  edtBPM.Text := '90';
  FBeatViewForm.Show;
  FController.Start;
end;

procedure TControllerForm.Stop1Click(Sender: TObject);
begin
  FController.Stop;
end;

end.
