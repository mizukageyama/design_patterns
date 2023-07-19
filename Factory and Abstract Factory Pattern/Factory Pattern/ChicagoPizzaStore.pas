unit ChicagoPizzaStore;

interface
uses
  System.Generics.Collections, System.SysUtils, Pizza, PizzaStore,
  ChicagoStyleCheesePizza, ChicagoStyleClamPizza, ChicagoStylePepperoniPizza,
  ChicagoStyleVeggiePizza;

type
  TChicagoPizzaStore = class(TPizzaStore)
  public
    function CreatePizza(PizzaType: string): TPizza; override;
  end;

implementation

{ TChicagoPizzaStore }

function TChicagoPizzaStore.CreatePizza(PizzaType: string): TPizza;
begin
  if PizzaType = 'cheese' then
    Result := TChicagoStyleCheesePizza.Create
  else if PizzaType = 'Veggie' then
    Result := TChicagoStyleVeggiePizza.Create
  else if PizzaType = 'Clam' then
    Result := TChicagoStyleClamPizza.Create
  else if PizzaType = 'Pepperoni' then
    Result := TChicagoStylePepperoniPizza.Create
  else
    Result := nil;
end;

end.
