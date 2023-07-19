unit NYStyleCheesePizza;

interface
uses
  System.Generics.Collections, System.SysUtils, Pizza, PizzaStore;

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

  FToppings := TList<string>.Create;
  FToppings.Add('Grated Reggiano Cheese');
end;

end.
