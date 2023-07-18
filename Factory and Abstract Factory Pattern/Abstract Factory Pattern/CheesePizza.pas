unit CheesePizza;

interface

uses
  DoughIntf, SauceIntf, CheeseIntf, VeggiesIntf, PepperoniIntf, ClamsIntf,
  PizzaIngredientFactory, PizzaVer2U;

type
  TCheesePizza = class(TPizzaVer2)
  private
    FIngredientFactory: IPizzaIngredientFactory;
  public
    constructor Create(AIngredientFactory: IPizzaIngredientFactory);
    procedure Prepare; override;
  end;

implementation

{ TCheezePizza }

constructor TCheesePizza.Create(AIngredientFactory: IPizzaIngredientFactory);
begin
  FIngredientFactory := AIngredientFactory;
end;

procedure TCheesePizza.Prepare;
begin
  WriteLn('Preparing' + FName);
  FDough := FIngredientFactory.CreateDough;
  FSauce := FIngredientFactory.CreateSauce;
  FCheese := FIngredientFactory.CreateCheese;
end;

end.
