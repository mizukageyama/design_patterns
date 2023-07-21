unit Flock;

interface

uses
  QuackableIntf, System.Generics.Collections, IteratorIntf, System.SysUtils,
  FlockIterator;

type
  TFlock = class(TInterfacedObject, IQuackable)
  private
    FQuackers: TList<IQuackable>;
  public
    constructor Create;
    procedure Add(Quacker: IQuackable);
    procedure Quack;
  end;

implementation

{ TFlock }

procedure TFlock.Add(Quacker: IQuackable);
begin
    FQuackers.Add(Quacker);
end;

constructor TFlock.Create;
begin
  FQuackers := TList<IQuackable>.Create;
end;

procedure TFlock.Quack;
var
  QuackerObj: TObject;
  QuackerIntf: IQuackable;
begin
  var Iterator: IIterator := TFlockIterator.Create(FQuackers);
  while Iterator.HasNext do
  begin
    QuackerObj := Iterator.Next;
    //Cast TObject to IQuackable Interface
    if Supports(QuackerObj, IQuackable, QuackerIntf) then
    begin
      QuackerIntf.Quack;
    end;
  end;
end;

end.
