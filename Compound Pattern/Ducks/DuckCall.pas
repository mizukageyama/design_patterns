unit DuckCall;

interface

uses
  QuackableIntf;

type
  TDuckCall = class(TInterfacedObject, IQuackable)
  public
    procedure Quack;
  end;

implementation

{ TDuckCall }

procedure TDuckCall.Quack;
begin
  WriteLn('Kwak');
end;

end.

