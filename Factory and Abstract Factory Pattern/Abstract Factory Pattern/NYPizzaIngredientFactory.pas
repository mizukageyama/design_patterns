unit NYPizzaIngredientFactory;

interface

uses
  DoughIntf, SauceIntf, CheeseIntf, VeggiesIntf, PepperoniIntf, ClamsIntf,
  ThinCrustDough, MarinaraSauce, ReggianoCheese, SlicedPepperoni, FreshClams,
  Garlic, Onion, Mushroom, RedPepper, PizzaIngredientFactory, System.SysUtils,
  System.Generics.Collections;

type
  TNYPizzaIngredientFactory = class(TInterfacedObject, IPizzaIngredientFactory)
    function CreateDough: IDough;
    function CreateSauce: ISauce;
    function CreateCheese: ICheese;
    function CreateVeggies: TArray<IVeggies>;
    function CreatePepperoni: IPepperoni;
    function CreateClam: IClams;
  end;

implementation

{ TNYPizzaIngredientFactory }

function TNYPizzaIngredientFactory.CreateCheese: ICheese;
begin
   Result := TReggianoCheese.Create;
end;

function TNYPizzaIngredientFactory.CreateClam: IClams;
begin
  Result := TFreshClams.Create;
end;

function TNYPizzaIngredientFactory.CreateDough: IDough;
begin
  Result := TThinCrustDough.Create;
end;

function TNYPizzaIngredientFactory.CreatePepperoni: IPepperoni;
begin
  Result := TSlicedPepperoni.Create;
end;

function TNYPizzaIngredientFactory.CreateSauce: ISauce;
begin
  Result := TMarinaraSauce.Create;
end;

function TNYPizzaIngredientFactory.CreateVeggies: TArray<IVeggies>;
begin
  var Veggies := TArray<IVeggies>.Create(TGarlic.Create, TOnion.Create,
    TMushroom.Create, TRedPepper.Create);
  Result := Veggies;
end;

end.
