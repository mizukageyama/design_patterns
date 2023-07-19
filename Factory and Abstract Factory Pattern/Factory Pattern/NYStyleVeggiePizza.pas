unit NYStyleVeggiePizza;

interface

uses
  System.Generics.Collections, System.SysUtils, Pizza, PizzaStore;

type
  TNYStyleVeggiePizza = class(TPizza)
  public
    constructor Create;
  end;

implementation

{ TNYStyleVeggiePizza }

constructor TNYStyleVeggiePizza.Create;
begin
  FName := 'NY Style Veggie Pizza';
  FDough := 'Thin Crust Dough';
  FSauce := 'Marinara Sauce';

  FToppings := TList<string>.Create;
  FToppings.Add('Grated Reggiano Cheese');
  FToppings.Add('Garlic');
  FToppings.Add('Onion');
  FToppings.Add('Mushrooms');
  FToppings.Add('Red Pepper');
end;

end.
