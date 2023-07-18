unit NYPizzaStore;

interface
uses
  System.Generics.Collections, System.SysUtils, Pizza, PizzaStore,
  NYStyleCheesePizza, NYStyleVeggiePizza, NYStyleClamPizza,
  NYStylePepperoniPizza;

type
  TNYPizzaStore = class(TPizzaStore)
  public
    function CreatePizza(PizzaType: String): TPizza; override;
  end;

implementation

{ TNYPizzaStore }

function TNYPizzaStore.CreatePizza(PizzaType: String): TPizza;
begin
  if PizzaType = 'cheese' then
    Result := TNYStyleCheesePizza.Create
  else if PizzaType = 'Veggie' then
    Result := TNYStyleVeggiePizza.Create
  else if PizzaType = 'Clam' then
    Result := TNYStyleClamPizza.Create
  else if PizzaType = 'Pepperoni' then
    Result := TNYStylePepperoniPizza.Create
  else
    Result := nil;
end;

end.
