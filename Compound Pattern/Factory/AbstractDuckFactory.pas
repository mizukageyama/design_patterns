unit AbstractDuckFactory;

interface

uses
  QuackableIntf;

type
  TAbstractDuckFactory = class abstract
  public
    function CreateMallardDuck: IQuackable; virtual; abstract;
    function CreateRedHeadDuck: IQuackable; virtual; abstract;
    function CreateDuckCall: IQuackable; virtual; abstract;
    function CreateRubberDuck: IQuackable; virtual; abstract;
  end;

implementation

end.