unit PizzaIngredientFactory;

interface

uses
  System.SysUtils, System.Generics.Collections, DoughIntf,
  SauceIntf, CheeseIntf, VeggiesIntf, PepperoniIntf, ClamsIntf;

type
  IPizzaIngredientFactory = interface
    function CreateDough: IDough;
    function CreateSauce: ISauce;
    function CreateCheese: ICheese;
    function CreateVeggies: TArray<IVeggies>;
    function CreatePepperoni: IPepperoni;
    function CreateClam: IClams;
  end;

implementation

end.
