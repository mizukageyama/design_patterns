program FactoryPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  ChicagoStylePepperoniPizzaU in 'Factory Pattern\ChicagoStylePepperoniPizzaU.pas',
  PizzaIngredientU in 'Abstract Factory Pattern\PizzaIngredientU.pas',
  PizzaU in 'Factory Pattern\PizzaU.pas',
  PizzaStoreU in 'Factory Pattern\PizzaStoreU.pas',
  NYPizzaStoreU in 'Factory Pattern\NYPizzaStoreU.pas',
  NYStyleCheesePizzaU in 'Factory Pattern\NYStyleCheesePizzaU.pas',
  NYStyleVeggiePizzaU in 'Factory Pattern\NYStyleVeggiePizzaU.pas',
  NYStyleClamPizzaU in 'Factory Pattern\NYStyleClamPizzaU.pas',
  NYStylePepperoniPizzaU in 'Factory Pattern\NYStylePepperoniPizzaU.pas',
  ChicagoPizzaStoreU in 'Factory Pattern\ChicagoPizzaStoreU.pas',
  ChicagoStyleCheesePizzaU in 'Factory Pattern\ChicagoStyleCheesePizzaU.pas',
  ChicagoStyleVeggiePizzaU in 'Factory Pattern\ChicagoStyleVeggiePizzaU.pas',
  ChicagoStyleClamPizzaU in 'Factory Pattern\ChicagoStyleClamPizzaU.pas',
  DoughU in 'Abstract Factory Pattern\DoughU.pas',
  SauceU in 'Abstract Factory Pattern\SauceU.pas',
  CheeseU in 'Abstract Factory Pattern\CheeseU.pas',
  VeggiesU in 'Abstract Factory Pattern\VeggiesU.pas',
  PepperoniU in 'Abstract Factory Pattern\PepperoniU.pas',
  ClamsU in 'Abstract Factory Pattern\ClamsU.pas',
  ThinCrustDoughU in 'Abstract Factory Pattern\ThinCrustDoughU.pas',
  MarinaraSauceU in 'Abstract Factory Pattern\MarinaraSauceU.pas',
  ReggianoCheeseU in 'Abstract Factory Pattern\ReggianoCheeseU.pas',
  SlicedPepperoniU in 'Abstract Factory Pattern\SlicedPepperoniU.pas',
  FreshClamsU in 'Abstract Factory Pattern\FreshClamsU.pas',
  GarlicU in 'Abstract Factory Pattern\GarlicU.pas',
  OnionU in 'Abstract Factory Pattern\OnionU.pas',
  MushroomU in 'Abstract Factory Pattern\MushroomU.pas',
  RedPepperU in 'Abstract Factory Pattern\RedPepperU.pas',
  PizzaIngredientFactoryU in 'Abstract Factory Pattern\PizzaIngredientFactoryU.pas',
  NYPizzaIngredientFactoryU in 'Abstract Factory Pattern\NYPizzaIngredientFactoryU.pas',
  PizzaVer2U in 'Abstract Factory Pattern\PizzaVer2U.pas',
  CheesePizzaU in 'Abstract Factory Pattern\CheesePizzaU.pas';

begin
  try
    var NYPizzaStore: TPizzaStore := TNYPizzaStore.Create;
    var ChicagoPizzaStore: TPizzaStore := TChicagoPizzaStore.Create;

    var Pizza: TPizza := NYPizzaStore.OrderPizza('cheese');
    WriteLn('Ethan ordered a ' + Pizza.GetName + #13#10);

    Pizza := ChicagoPizzaStore.OrderPizza('cheese');
    WriteLn('Joel ordered a ' + Pizza.GetName + #13#10);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
