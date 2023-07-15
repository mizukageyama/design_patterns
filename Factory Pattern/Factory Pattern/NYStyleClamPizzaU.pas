unit NYStyleClamPizzaU;

interface
uses
  System.Classes, System.Generics.Collections, System.SysUtils, PizzaU,
  PizzaStoreU;

type
  TNYStyleClamPizza = class(TPizza)
  public
    constructor Create;
  end;

implementation

{ TNYStyleClamPizza }

constructor TNYStyleClamPizza.Create;
begin
  FName := 'NY Style Clam Pizza';
  FDough := 'Thin Crust Dough';
  FSauce := 'Marinara Sauce';

  FToppings := TList<String>.Create;
  FToppings.Add('Grated Reggiano Cheese');
  FToppings.Add('Fresh Clams from Long Island Sound');
end;


end.
