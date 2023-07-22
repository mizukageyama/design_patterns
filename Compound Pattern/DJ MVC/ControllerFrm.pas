unit ControllerFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, BeatModelIntf, BeatObserverIntf,
  BPMObserverIntf, ControllerIntf, BeatModel;

type
  TControllerForm = class(TForm, IBeatObserver, IBPMObserver)
    pnlInput: TPanel;
    lblEnter: TLabel;                             s
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
   private
    { Private declarations }
    FController: IController;
    FModel: IBeatModel;
  public
    { Public declarations }
    procedure UpdateBeat;
    procedure UpdateBPM;
    procedure EnableStop;
    procedure DisableStop;
    procedure EnableStart;
    procedure DisableStart;
    constructor Create(AController: IController; AModel: IBeatModel);
  end;

var
  ControllerForm: TControllerForm;

implementation

{$R *.dfm}

procedure TControllerForm.btnDecreaseClick(Sender: TObject);
begin
  FController.DecreaseBPM;
end;

procedure TControllerForm.btnIncreaseClick(Sender: TObject);
begin
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

constructor TControllerForm.Create(AController: IController;
  AModel: IBeatModel);
begin
  FController := AController;
  FModel := AModel;
  FModel.RegisterObserver(Self as IBeatObserver);
  FModel.RegisterObserver(Self as IBPMObserver);
end;

procedure TControllerForm.DisableStart;
begin
  Start1.Enabled := False;
end;

procedure TControllerForm.DisableStop;
begin
  Stop1.Enabled := False;
end;

procedure TControllerForm.EnableStart;
begin
  Start1.Enabled := True;
end;

procedure TControllerForm.EnableStop;
begin
  Stop1.Enabled := True;
end;

procedure TControllerForm.Quit1Click(Sender: TObject);
begin
  //
end;

procedure TControllerForm.Start1Click(Sender: TObject);
begin
  //
end;

procedure TControllerForm.Stop1Click(Sender: TObject);
begin
  //
end;


procedure TControllerForm.UpdateBeat;
begin
//beatBar.setValue(100);
end;

procedure TControllerForm.UpdateBPM;
begin
//int bpm = model.getBPM();
// if (bpm == 0) {
// bpmOutputLabel.setText(�offline�);
// } else {
// bpmOutputLabel.setText(�Current BPM: � + model.getBPM());
// }
end;

end.
