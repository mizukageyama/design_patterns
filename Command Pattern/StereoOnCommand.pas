unit StereoOnCommand;

interface

uses CommandIntf, Stereo;

type
  TStereoOnCommand = class(TInterfacedObject, ICommand)
  private
    FStereo : TStereo;
  public
    constructor Create(AStereo: TStereo);
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TStereoOnCommand }

constructor TStereoOnCommand.Create(AStereo: TStereo);
begin
  FStereo := AStereo;
end;

procedure TStereoOnCommand.Execute;
begin
  FStereo.OnStereo;
end;

procedure TStereoOnCommand.Undo;
begin
  FStereo.OffStereo;
end;

end.
