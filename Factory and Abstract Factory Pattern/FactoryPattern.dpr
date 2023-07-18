program FactoryPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  ChicagoStylePepperoniPizza in 'Factory Pattern\ChicagoStylePepperoniPizza.pas',
  PizzaIngredient in 'Abstract Factory Pattern\PizzaIngredient.pas',
  Pizza in 'Factory Pattern\Pizza.pas',
  PizzaStore in 'Factory Pattern\PizzaStore.pas',
  NYPizzaStore in 'Factory Pattern\NYPizzaStore.pas',
  NYStyleCheesePizza in 'Factory Pattern\NYStyleCheesePizza.pas',
  NYStyleVeggiePizza in 'Factory Pattern\NYStyleVeggiePizza.pas',
  NYStyleClamPizza in 'Factory Pattern\NYStyleClamPizza.pas',
  NYStylePepperoniPizza in 'Factory Pattern\NYStylePepperoniPizza.pas',
  ChicagoPizzaStore in 'Factory Pattern\ChicagoPizzaStore.pas',
  ChicagoStyleCheesePizza in 'Factory Pattern\ChicagoStyleCheesePizza.pas',
  ChicagoStyleVeggiePizza in 'Factory Pattern\ChicagoStyleVeggiePizza.pas',
  ChicagoStyleClamPizza in 'Factory Pattern\ChicagoStyleClamPizza.pas',
  DoughIntf in 'Abstract Factory Pattern\DoughIntf.pas',
  SauceIntf in 'Abstract Factory Pattern\SauceIntf.pas',
  CheeseIntf in 'Abstract Factory Pattern\CheeseIntf.pas',
  VeggiesIntf in 'Abstract Factory Pattern\VeggiesIntf.pas',
  PepperoniIntf in 'Abstract Factory Pattern\PepperoniIntf.pas',
  ClamsIntf in 'Abstract Factory Pattern\ClamsIntf.pas',
  ThinCrustDough in 'Abstract Factory Pattern\ThinCrustDough.pas',
  MarinaraSauce in 'Abstract Factory Pattern\MarinaraSauce.pas',
  ReggianoCheese in 'Abstract Factory Pattern\ReggianoCheese.pas',
  SlicedPepperoni in 'Abstract Factory Pattern\SlicedPepperoni.pas',
  FreshClams in 'Abstract Factory Pattern\FreshClams.pas',
  Garlic in 'Abstract Factory Pattern\Garlic.pas',
  Onion in 'Abstract Factory Pattern\Onion.pas',
  Mushroom in 'Abstract Factory Pattern\Mushroom.pas',
  RedPepper in 'Abstract Factory Pattern\RedPepper.pas',
  PizzaIngredientFactory in 'Abstract Factory Pattern\PizzaIngredientFactory.pas',
  NYPizzaIngredientFactory in 'Abstract Factory Pattern\NYPizzaIngredientFactory.pas',
  PizzaVer2U in 'Abstract Factory Pattern\PizzaVer2U.pas',
  CheesePizza in 'Abstract Factory Pattern\CheesePizza.pas';

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
