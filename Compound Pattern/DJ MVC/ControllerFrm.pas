unit ControllerFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TControllerForm = class(TForm)
    lblTitle: TLabel;
    pnlInput: TPanel;
    lblEnter: TLabel;
    edtBPM: TEdit;
    btnSet: TButton;
    pnlTitle: TPanel;
    pnlButton: TPanel;
    btnIncrease: TButton;
    btnDecrease: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ControllerForm: TControllerForm;

implementation

{$R *.dfm}

end.