unit Coffee;

interface

uses CaffeineBeverage;

type
  TCoffee = class(TCaffeineBeverage)
  public
    procedure Brew; override;
    procedure AddCondiments; override;
  end;

implementation

{ TCoffee }

procedure TCoffee.AddCondiments;
begin
  WriteLn('Adding Sugar and Milk');
end;

procedure TCoffee.Brew;
begin
  WriteLn('Dripping Coffee through filter');
end;

end.
