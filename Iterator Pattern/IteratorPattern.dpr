program IteratorPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  IteratorIntf in 'IteratorIntf.pas',
  DinerIterator in 'DinerIterator.pas',
  MenuItem in 'MenuItem.pas',
  PancakeHouseMenu in 'PancakeHouseMenu.pas',
  DinerMenu in 'DinerMenu.pas';

begin
  try

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
