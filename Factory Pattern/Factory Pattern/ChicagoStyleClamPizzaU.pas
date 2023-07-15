unit ChicagoStyleClamPizzaU;

interface
uses
  System.Classes, System.Generics.Collections, System.SysUtils, PizzaU,
  PizzaStoreU;

type
  TChicagoStyleClamPizza = class(TPizza)
  public
    constructor Create;
  end;

implementation

{ TChicagoStyleClamPizza }

constructor TChicagoStyleClamPizza.Create;
begin
  FName := 'Chicago Style Clam Pizza';
  FDough := 'Extra Thick Crust Dough';
  FSauce := 'Plum Tomato Sauce';

  FToppings := TList<String>.Create;
  FToppings.Add('Shredded Mozzarella Cheese');
  FToppings.Add('Frozen Clams from Chesapeake Bay');
end;

end.
