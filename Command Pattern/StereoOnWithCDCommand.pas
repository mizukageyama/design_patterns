unit StereoOnWithCDCommand;

interface

uses CommandIntf, Stereo;

type
  TStereoOnWithCDCommand = class(TInterfacedObject, ICommand)
  private
    FStereo : TStereo;
  public
    constructor Create(AStereo: TStereo);
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TStereoOnForCDCommand }

constructor TStereoOnWithCDCommand.Create(AStereo: TStereo);
begin
  FStereo := AStereo;
end;

procedure TStereoOnWithCDCommand.Execute;
begin
  FStereo.OnStereo;
  FStereo.SetCD;
  FStereo.SetVolume(11);
end;

procedure TStereoOnWithCDCommand.Undo;
begin
  FStereo.OffStereo;
end;

end.
