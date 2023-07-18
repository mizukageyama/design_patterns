unit PizzaStore;

interface
uses
  System.Classes, System.Generics.Collections, System.SysUtils, Pizza;

type
  TPizzaStore = class abstract
  protected
    function CreatePizza(PizzaType: String): TPizza; virtual; abstract;
  public
    function OrderPizza(PizzaType: String): TPizza;
  end;
 implementation

{ TPizzaStore }

function TPizzaStore.OrderPizza(PizzaType: String): TPizza;
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
