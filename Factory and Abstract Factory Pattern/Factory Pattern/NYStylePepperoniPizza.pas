unit NYStylePepperoniPizza;

interface
uses
  System.Classes, System.Generics.Collections, System.SysUtils, Pizza,
  PizzaStore;

type
  TNYStylePepperoniPizza = class(TPizza)
  public
    constructor Create;
  end;

implementation

{ TNYStylePepperoniPizza }

constructor TNYStylePepperoniPizza.Create;
begin
  FName := 'NY Style Pepperoni Pizza';
  FDough := 'Thin Crust Dough';
  FSauce := 'Marinara Sauce';

  FToppings := TList<string>.Create;
  FToppings.Add('Grated Reggiano Cheese');
  FToppings.Add('Sliced Pepperoni');
  FToppings.Add('Garlic');
  FToppings.Add('Onion');
  FToppings.Add('Mushrooms');
  FToppings.Add('Red Pepper');
end;

end.
