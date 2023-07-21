unit GooseAdapter;

interface

uses
  Goose, QuackableIntf;

type
  TGooseAdapter = class(TInterfacedObject, IQuackable)
  private
    FGoose: TGoose;
  public
    constructor Create(AGoose: TGoose);
    procedure Quack;
  end;

implementation

{ TGooseAdapter }

constructor TGooseAdapter.Create(AGoose: TGoose);
begin
  FGoose := AGoose;
end;

procedure TGooseAdapter.Quack;
begin
  FGoose.Honk;
end;

end.
