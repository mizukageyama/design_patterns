unit Pizza;

interface
uses
  System.Classes, System.Generics.Collections, System.SysUtils;

type
  TPizza = class abstract
  public
    FName: string;
    FDough: string;
    FSauce: string;
    FToppings: TList<string>;
    procedure Prepare; virtual;
    procedure Bake; virtual;
    procedure Cut; virtual;
    procedure Box; virtual;
    function GetName: string;
  end;

implementation
{ TPizza }

procedure TPizza.Bake;
begin
  WriteLn('Bake for 25 minutes at 350');
end;

procedure TPizza.Box;
begin
  WriteLn('Place pizza in official PizzaStore box');
end;

procedure TPizza.Cut;
begin
  WriteLn('Cutting the pizza into diagonal slices');
end;

function TPizza.GetName: string;
begin
  Result := FName;
end;

procedure TPizza.Prepare;
var
  Topping: string;
begin
  WriteLn('Preparing ' + FName);
  WriteLn('Tossing dough...');
  WriteLn('Adding sauce...');
  WriteLn('Adding toppings: ');
  for Topping in FToppings do
    WriteLn(' ' + Topping);
end;

end.
