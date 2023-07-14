program FactoryPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  PizzaStoreU in 'PizzaStoreU.pas',
  PizzaIngredientU in 'PizzaIngredientU.pas';

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
