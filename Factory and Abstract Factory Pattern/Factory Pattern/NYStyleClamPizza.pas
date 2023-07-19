unit NYStyleClamPizza;

interface
uses
  System.Generics.Collections, System.SysUtils, Pizza, PizzaStore;

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

  FToppings := TList<string>.Create;
  FToppings.Add('Grated Reggiano Cheese');
  FToppings.Add('Fresh Clams from Long Island Sound');
end;


end.
