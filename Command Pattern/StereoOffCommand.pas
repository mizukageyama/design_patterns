unit StereoOffCommand;

interface

uses CommandIntf, Stereo;

type
  TStereoOffCommand = class(TInterfacedObject, ICommand)
  private
    FStereo : TStereo;
  public
    constructor Create(AStereo: TStereo);
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TStereoOnForCDCommand }

constructor TStereoOffCommand.Create(AStereo: TStereo);
begin
  FStereo := AStereo;
end;

procedure TStereoOffCommand.Execute;
begin
  FStereo.OffStereo;
end;

procedure TStereoOffCommand.Undo;
begin
  FStereo.OnStereo;
end;

end.

