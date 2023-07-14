program SingletonPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Singleton in 'Singleton.pas',
  ChocolateBoiler in 'ChocolateBoiler.pas';

begin
  try
    var Boiler := TChocolateBoiler.GetInstance;
    Boiler.Fill;
    Boiler.Boil;
    Boiler.Drain;
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
