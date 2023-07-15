unit PizzaIngredientFactoryU;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, DoughU, SauceU,
  CheeseU, VeggiesU, PepperoniU, ClamsU;

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