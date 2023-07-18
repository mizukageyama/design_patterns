program TemplateMethodPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Coffee in 'Coffee.pas',
  Tea in 'Tea.pas',
  CaffeineBeverage in 'CaffeineBeverage.pas',
  CaffeineBeverageWithHook in 'CaffeineBeverageWithHook.pas',
  CoffeeWithHook in 'CoffeeWithHook.pas',
  TeaWithHook in 'TeaWithHook.pas';

begin
  try
    {
      First Test Case w/out Hook

      var MyTea := TTea.Create;
      var MyCoffee:= TCoffee.Create;

      MyTea.PrepareRecipe;
      MyCoffee.PrepareRecipe;
    }

    var CoffeeHook := TCoffeeWithHook.Create;
    var TeaHook := TTeaWithHook.Create;

    WriteLn(sLineBreak + 'Making tea...');
    TeaHook.PrepareRecipe;

    WriteLn(sLineBreak + 'Making coffee...');
    CoffeeHook.PrepareRecipe;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
