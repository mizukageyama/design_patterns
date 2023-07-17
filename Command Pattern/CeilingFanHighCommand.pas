unit CeilingFanHighCommand;

interface

uses
  CommandIntf, CeilingFan;

type
  TCeilingFanHighCommand = class(TInterfacedObject, ICommand)
  private
    FCeilingFan: TCeilingFan;
    FPrevSpeed: Integer;
  public
    constructor Create(ACeilingFan: TCeilingFan);
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TCeilingFanHighCommand }

constructor TCeilingFanHighCommand.Create(ACeilingFan: TCeilingFan);
begin
  FCeilingFan := ACeilingFan;
end;

procedure TCeilingFanHighCommand.Execute;
begin
  FPrevSpeed := FCeilingFan.GetSpeed;
  FCeilingFan.High;
end;

procedure TCeilingFanHighCommand.Undo;
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
