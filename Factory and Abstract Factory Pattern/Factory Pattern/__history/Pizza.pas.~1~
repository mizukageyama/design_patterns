unit PizzaU;

interface
uses
  System.Classes, System.Generics.Collections, System.SysUtils;

type
  TPizza = class abstract
  public
    FName: String;
    FDough: String;
    FSauce: String;
    FToppings: TList<String>;
    procedure Prepare; virtual;
    procedure Bake; virtual;
    procedure Cut; virtual;
    procedure Box; virtual;
    function GetName: String;
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

function TPizza.GetName: String;
begin
  Result := FName;
end;

procedure TPizza.Prepare;
var
  Topping: String;
begin
  WriteLn('Preparing ' + FName);
  WriteLn('Tossing dough...');
  WriteLn('Adding sauce...');
  WriteLn('Adding toppings: ');
  for Topping in FToppings do
    WriteLn(' ' + Topping);
end;

end.
