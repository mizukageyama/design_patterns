unit ChicagoStyleCheesePizzaU;

interface
uses
  System.Classes, System.Generics.Collections, System.SysUtils, PizzaU,
  PizzaStoreU;

type
  TChicagoStyleCheesePizza = class(TPizza)
  public
    constructor Create;
    procedure Cut; override;
  end;

implementation

{ TChicagoStyleCheesePizza }

constructor TChicagoStyleCheesePizza.Create;
begin
  FName := 'Chicago Style Deep Dish Cheese Pizza';
  FDough := 'Extra Thick Crust Dough';
  FSauce := 'Plum Tomato Sauce';

  FToppings := TList<String>.Create;
  FToppings.Add('Shredded Mozzarella Cheese');
end;

procedure TChicagoStyleCheesePizza.Cut;
begin
  WriteLn('Cutting the pizza into square slices');
end;

end.
