unit PizzaStore;

interface
uses
  System.Classes, System.Generics.Collections, System.SysUtils, Pizza;

type
  TPizzaStore = class abstract
  protected
    function CreatePizza(PizzaType: string): TPizza; virtual; abstract;
  public
    function OrderPizza(PizzaType: string): TPizza;
  end;
 implementation

{ TPizzaStore }

function TPizzaStore.OrderPizza(PizzaType: string): TPizza;
begin
  var Pizza: TPizza;
  Pizza := CreatePizza(PizzaType);
  Pizza.Prepare;
  Pizza.Bake;
  Pizza.Cut;
  Pizza.Box;
  Result := Pizza;
end;


end.
