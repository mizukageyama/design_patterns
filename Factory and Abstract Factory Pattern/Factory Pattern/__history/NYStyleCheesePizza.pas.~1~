unit NYStyleCheesePizzaU;

interface
uses
  System.Classes, System.Generics.Collections, System.SysUtils, PizzaU,
  PizzaStoreU;

type
  TNYStyleCheesePizza = class(TPizza)
  public
    constructor Create;
  end;

implementation

{ TNYStyleCheesePizza }

constructor TNYStyleCheesePizza.Create;
begin
  FName := 'NY Style Sauce and Cheese Pizza';
  FDough := 'Thin Crust Dough';
  FSauce := 'Marinara Sauce';

  FToppings := TList<String>.Create;
  FToppings.Add('Grated Reggiano Cheese');
end;

end.
