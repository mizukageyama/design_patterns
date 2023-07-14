unit PizzaIngredient;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections;

type
  IPizzaIngredientFactory = interface
  public
    function CreateDough: TDough;
    function CreateSauce: TSauce;
    function CreateVeggies: TArray<TVeggies>;
    function CreatePepperoni: TArray<TPepperoni>;
    function CreateClam: TClams;
  end;

implementation

end.
