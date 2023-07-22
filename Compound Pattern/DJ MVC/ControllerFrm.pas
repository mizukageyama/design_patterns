unit ControllerFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, BeatModelIntf, BeatObserverIntf,
  BPMObserverIntf;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ControllerForm: TControllerForm;

implementation

{$R *.dfm}

procedure TControllerForm.btnSetClick(Sender: TObject);
var
  BPM: Integer;
  Input: string;
begin
  Input := edtBPM.Text;
  try
    BPM := Input.ToInteger;
    //do the process
  except
    ShowMessage('Invalid input');
  end;
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


end.
