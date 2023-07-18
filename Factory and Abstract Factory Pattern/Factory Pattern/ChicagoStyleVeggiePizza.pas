unit ChicagoStyleVeggiePizza;

interface
uses
  System.Generics.Collections, System.SysUtils, Pizza, PizzaStore;

type
 TChicagoStyleVeggiePizza = class(TPizza)
  public
    constructor Create;
  end;

implementation

{ TChicagoStyleVeggiePizza }

constructor TChicagoStyleVeggiePizza.Create;
begin
  FName := 'Chicago Deep Dish Veggie Pizza';
  FDough := 'Extra Thick Crust Dough';
  FSauce := 'Plum Tomato Sauce';

  FToppings := TList<String>.Create;
  FToppings.Add('Shredded Mozzarella Cheese');
  FToppings.Add('Black Olives');
  FToppings.Add('Spinach');
  FToppings.Add('Eggplant');
end;

end.
