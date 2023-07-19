unit ChicagoStyleCheesePizza;

interface
uses
  System.Generics.Collections, System.SysUtils, Pizza, PizzaStore;

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

  FToppings := TList<string>.Create;
  FToppings.Add('Shredded Mozzarella Cheese');
end;

procedure TChicagoStyleCheesePizza.Cut;
begin
  WriteLn('Cutting the pizza into square slices');
end;

end.
