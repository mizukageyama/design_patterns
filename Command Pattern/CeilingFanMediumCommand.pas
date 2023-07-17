unit CeilingFanMediumCommand;

interface

uses
  CommandIntf, CeilingFan;

type
  TCeilingFanMediumCommand = class(TInterfacedObject, ICommand)
  private
    FCeilingFan: TCeilingFan;
    FPrevSpeed: Integer;
  public
    constructor Create(ACeilingFan: TCeilingFan);
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TCeilingFanMediumCommand }

constructor TCeilingFanMediumCommand.Create(ACeilingFan: TCeilingFan);
begin
  FCeilingFan := ACeilingFan;
end;

procedure TCeilingFanMediumCommand.Execute;
begin
  FPrevSpeed := FCeilingFan.GetSpeed;
  FCeilingFan.Medium;
end;

procedure TCeilingFanMediumCommand.Undo;
begin
  case FPrevSpeed of
  FCeilingFan.FHIGH:
    FCeilingFan.High;
  FCeilingFan.FMEDIUM:
    FCeilingFan.Medium;
  FCeilingFan.FLOW:
    FCeilingFan.Low;
  FCeilingFan.FOFF:
    FCeilingFan.Off;
  end;
end;

end.
