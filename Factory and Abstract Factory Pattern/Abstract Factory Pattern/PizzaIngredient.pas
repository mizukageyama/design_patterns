unit PizzaIngredient;

interface

uses
  System.SysUtils, System.Generics.Collections, DoughIntf, SauceIntf,
  CheeseIntf, VeggiesIntf, PepperoniIntf, ClamsIntf, ThinCrustDough,
  MarinaraSauce, ReggianoCheese, SlicedPepperoni, FreshClams, Garlic, Onion,
  Mushroom, RedPepper, PizzaIngredientFactory, NYPizzaIngredientFactory,
  PizzaVer2U, CheesePizza;

type
  TClamPizza = class(TPizzaVer2)
  private
    FIngredientFactory: IPizzaIngredientFactory;
  public
    constructor Create(AIngredientFactory: IPizzaIngredientFactory);
    procedure Prepare; override;
  end;

  TPizzaStoreV2 = class abstract
  protected
    function CreatePizza(PizzaType: string): TPizzaVer2; virtual; abstract;
  public
    function OrderPizza(PizzaType: string): TPizzaVer2;
  end;

  TNYPizzaStoreVer2 = class(TPizzaStoreV2)
  protected
    function CreatePizza(PizzaType: string): TPizzaVer2; override;
  end;

implementation

{ TClamPizza }

constructor TClamPizza.Create(AIngredientFactory: IPizzaIngredientFactory);
begin
  FIngredientFactory := AIngredientFactory;
end;

procedure TClamPizza.Prepare;
begin
  WriteLn('Preparing' + FName);
  FDough := FIngredientFactory.CreateDough;
  FSauce := FIngredientFactory.CreateSauce;
  FCheese := FIngredientFactory.CreateCheese;
  FClam := FIngredientFactory.CreateClam;
end;

{ TNYPizzaStoreVer2 }

function TNYPizzaStoreVer2.CreatePizza(PizzaType: string): TPizzaVer2;
begin
  var Pizza: TPizzaVer2 := nil;
  var PizzaIngredientFactory := TNYPizzaIngredientFactory.Create;

  if PizzaType = 'cheese' then
  begin
    Pizza := TCheesePizza.Create(PizzaIngredientFactory);
    Pizza.SetName('New York Style Cheese Pizza');
  end;
//  else if PizzaType = 'Veggie' then
//  begin
//    Pizza := TCheesePizza.Create(PizzaIngredientFactory);
//    Pizza.SetName('New York Style Veggie Pizza');
//  end
//  else if PizzaType = 'Clam' then
//  begin
//    Pizza := TCheesePizza.Create(PizzaIngredientFactory);
//    Pizza.SetName('New York Style Clam Pizza');
//  end
//  else if PizzaType = 'Pepperoni' then
//  begin
//    Pizza := TCheesePizza.Create(PizzaIngredientFactory);
//    Pizza.SetName('New York Style Pepperoni Pizza');
//  end;

  Result := Pizza;
end;

{ TPizzaStoreV2 }

function TPizzaStoreV2.OrderPizza(PizzaType: string): TPizzaVer2;
begin
  var Pizza: TPizzaVer2;
  Pizza := CreatePizza(PizzaType);
  Pizza.Prepare;
  Pizza.Bake;
  Pizza.Cut;
  Pizza.Box;
  Result := Pizza;
end;

end.
