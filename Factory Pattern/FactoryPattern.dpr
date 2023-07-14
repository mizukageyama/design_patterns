program FactoryPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  PizzaStoreU in 'PizzaStoreU.pas';

begin
  try
    var NYPizzaStore: TPizzaStore := TNYPizzaStore.Create;
//
    var Pizza: TPizza := NYPizzaStore.OrderPizza('cheese');
    WriteLn('Ethan ordered a ' + Pizza.GetName + '\n');
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.