unit ChicagoStylePepperoniPizza;

interface
uses
  System.Generics.Collections, System.SysUtils, Pizza, PizzaStore;

type
  TChicagoStylePepperoniPizza = class(TPizza)
  public
    constructor Create;
  end;

 implementation

{ TChicagoStylePepperoniPizza }

constructor TChicagoStylePepperoniPizza.Create;
begin
  FName := 'Chicago Style Pepperoni Pizza';
  FDough := 'Extra Thick Crust Dough';
  FSauce := 'Plum Tomato Sauce';

  FToppings := TList<string>.Create;
  FToppings.Add('Shredded Mozzarella Cheese');
  FToppings.Add('Black Olives');
  FToppings.Add('Spinach');
  FToppings.Add('Eggplant');
  FToppings.Add('Sliced Pepperoni');
end;


end.
