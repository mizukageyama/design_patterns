unit PizzaStoreU;

interface
uses
  System.Classes, System.Generics.Collections, System.SysUtils;

type
  TPizza = class abstract
  private
    FName: String;
    FDough: String;
    FSauce: String;
    FToppings: TList<String>;
  public
    procedure Prepare;
    procedure Bake;
    procedure Cut;
    procedure Box;
    function GetName: String;
  end;

  TPizzaStore = class abstract
  protected
    function CreatePizza(PizzaType: String): TPizza; virtual; abstract;
  public
    function OrderPizza(PizzaType: String): TPizza;
  end;

  TNYPizzaStore = class(TPizzaStore)
  public
    function CreatePizza(PizzaType: String): TPizza; override;
  end;

  TNYStyleCheesePizza = class(TPizza)
  public
    constructor Create;
  end;

//  TNYStyleVeggiePizza = class(TPizza)
//  public
//    constructor Create;
//  end;
//
//  TNYStyleClamPizza = class(TPizza)
//  public
//    constructor Create;
//  end;
//
//  TNYStylePepperoniPizza = class(TPizza)
//  public
//    constructor Create;
//  end;

  TChicagoPizzaStore = class(TPizzaStore)
  end;

 implementation

{ TPizzaStore }

function TPizzaStore.OrderPizza(PizzaType: String): TPizza;
begin
  var Pizza: TPizza;
  Pizza := CreatePizza(PizzaType);
  Pizza.Prepare;
  Pizza.Bake;
  Pizza.Cut;
  Pizza.Box;
  Result := Pizza;
end;

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

{ TNYPizzaStore }

function TNYPizzaStore.CreatePizza(PizzaType: String): TPizza;
begin
  if PizzaType = 'Cheese' then
    Result := TNYStyleCheesePizza.Create
//  else if PizzaType = 'Veggie' then
//    Result := TNYStyleVeggiePizza.Create
//  else if PizzaType = 'Clam' then
//    Result := TNYStyleClamPizza.Create
//  else if PizzaType = 'Pepperoni' then
//    Result := TNYStylePepperoniPizza.Create
  else
    Result := nil;
  end;

{ TNYStyleCheesePizza }

constructor TNYStyleCheesePizza.Create;
begin
  FName := 'NY Style Sauce and Cheese Pizza';
  FDough := 'This Crust Dough';
  FSauce := 'Marinara Sauce';

  FToppings.Add('Grated Reggiano Cheese');
end;


end.