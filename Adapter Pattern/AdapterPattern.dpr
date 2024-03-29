program AdapterPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DuckIntf in 'Duck\DuckIntf.pas',
  MallardDuck in 'Duck\MallardDuck.pas',
  TurKeyIntf in 'Duck\TurKeyIntf.pas',
  TurkeyAdapter in 'Duck\TurkeyAdapter.pas',
  WildTurkey in 'Duck\WildTurkey.pas',
  DuckAdapter in 'Duck\DuckAdapter.pas',
  IteratorIntf in 'Iterator\IteratorIntf.pas',
  EnumerationIntf in 'Iterator\EnumerationIntf.pas',
  EnumerationIteratorAdapter in 'Iterator\EnumerationIteratorAdapter.pas',
  IteratorEnumerationAdapter in 'Iterator\IteratorEnumerationAdapter.pas';

begin
  try
    var Duck := TMallardDuck.Create;
    var DuckAdapter: ITurkey := TDuckAdapter.Create(Duck);

    var Turkey := TWildTurkey.Create;
    var TurkeyAdapter: IDuck := TTurkeyAdapter.Create(Turkey);

    WriteLn('The Turkey says...');
    Turkey.Gobble;
    Turkey.Fly;

    WriteLn(sLinebreak + 'The Duck says...');
    TestDuck(Duck);

    WriteLn(sLinebreak + 'The Turkey Adapter says...');
    TestDuck(TurkeyAdapter);

    WriteLn(sLinebreak + 'The Duck Adapter says...');
    TestTurkey(DuckAdapter);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
