unit PizzaIngredientU;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections;

type
  IDough = interface
    function ToString: String;
  end;

  ISauce = interface
    function ToString: String;
  end;

  ICheese = interface
    function ToString: String;
  end;

  IVeggies = interface
    function ToString: String;
  end;

  IPepperoni = interface
    function ToString: String;
  end;

  IClams = interface
    function ToString: String;
  end;

  TThinCrustDough = class(TInterfacedObject, IDough)
    function ToString: String;
  end;

  TMarinaraSauce = class(TInterfacedObject, ISauce)
    function ToString: String;
  end;

  TReggianoCheese = class(TInterfacedObject, ICheese)
    function ToString: String;
  end;

  TSlicedPepperoni = class(TInterfacedObject, IPepperoni)
    function ToString: String;
  end;

  TFreshClams = class(TInterfacedObject, IClams)
    function ToString: String;
  end;

  TGarlic = class(TInterfacedObject, IVeggies)
    function ToString: String;
  end;

  TOnion = class(TInterfacedObject, IVeggies)
    function ToString: String;
  end;

  TMushroom = class(TInterfacedObject, IVeggies)
    function ToString: String;
  end;

  TRedPepper = class(TInterfacedObject, IVeggies)
    function ToString: String;
  end;

  IPizzaIngredientFactory = interface
    function CreateDough: IDough;
    function CreateSauce: ISauce;
    function CreateCheese: ICheese;
    function CreateVeggies: TArray<IVeggies>;
    function CreatePepperoni: IPepperoni;
    function CreateClam: IClams;
  end;

  TNYPizzaIngredientFactory = class(TInterfacedObject, IPizzaIngredientFactory)
    function CreateDough: IDough;
    function CreateSauce: ISauce;
    function CreateCheese: ICheese;
    function CreateVeggies: TArray<IVeggies>;
    function CreatePepperoni: IPepperoni;
    function CreateClam: IClams;
  end;

  TPizzaV2 = class abstract
  private
    FName: String;
    FDough: IDough;
    FSauce: ISauce;
    FVeggies: TArray<IVeggies>;
    FCheese: ICheese;
    FPepperoni: IPepperoni;
    FClam: IClams;
  public
    procedure Prepare; virtual; abstract;
    procedure Bake;
    procedure Cut;
    procedure Box;
    procedure SetName(Name: String);
    function GetName: String;
    function ToString: String;
  end;

  TCheesePizza = class(TPizzaV2)
  private
    FIngredientFactory: IPizzaIngredientFactory;
  public
    constructor Create(AIngredientFactory: IPizzaIngredientFactory);
    procedure Prepare; override;
  end;

  TClamPizza = class(TPizzaV2)
  private
    FIngredientFactory: IPizzaIngredientFactory;
  public
    constructor Create(AIngredientFactory: IPizzaIngredientFactory);
    procedure Prepare; override;
  end;

  TPizzaStoreV2 = class abstract
  protected
    function CreatePizza(PizzaType: String): TPizzaV2; virtual; abstract;
  public
    function OrderPizza(PizzaType: String): TPizzaV2;
  end;

  TNYPizzaStoreVer2 = class(TPizzaStoreV2)
  protected
    function CreatePizza(PizzaType: String): TPizzaV2; override;
  end;

implementation

{ TNYPizzaIngredientFactory }

function TNYPizzaIngredientFactory.CreateCheese: ICheese;
begin
   Result := TReggianoCheese.Create;
end;

function TNYPizzaIngredientFactory.CreateClam: IClams;
begin
  Result := TFreshClams.Create;
end;

function TNYPizzaIngredientFactory.CreateDough: IDough;
begin
  Result := TThinCrustDough.Create;
end;

function TNYPizzaIngredientFactory.CreatePepperoni: IPepperoni;
begin
  Result := TSlicedPepperoni.Create;
end;

function TNYPizzaIngredientFactory.CreateSauce: ISauce;
begin
  Result := TMarinaraSauce.Create;
end;

function TNYPizzaIngredientFactory.CreateVeggies: TArray<IVeggies>;
begin
  var Veggies := TArray<IVeggies>.Create(TGarlic.Create, TOnion.Create, TMushroom.Create, TRedPepper.Create);
  Result := Veggies;
end;

{ TMarinaraSauce }

function TMarinaraSauce.ToString: String;
begin
  Result :=  'Marinara Sauce';
end;

{ TFreshClams }

function TFreshClams.ToString: String;
begin
  Result :=  'Fresh Clams';
end;

{ TThinCrustDough }

function TThinCrustDough.ToString: String;
begin
  Result :=  'Thin Crust Dough';
end;

{ TSlicedPepperoni }

function TSlicedPepperoni.ToString: String;
begin
  Result :=  'Sliced Pepperoni';
end;

{ TGarlic }

function TGarlic.ToString: String;
begin
  Result :=  'Garlic';
end;

{ TOnion }

function TOnion.ToString: String;
begin
  Result :=  'Onion';
end;

{ TMushroom }

function TMushroom.ToString: String;
begin
  Result :=  'Mushroom';
end;

{ TRedPepper }

function TRedPepper.ToString: String;
begin
  Result :=  'Red Pepper';
end;

{ TReggianoCheese }

function TReggianoCheese.ToString: String;
begin
  Result :=  'Reggiano Cheese';
end;

{ TPizzaV2 }

procedure TPizzaV2.Bake;
begin
  WriteLn('Bake for 25 minutes at 350');
end;

procedure TPizzaV2.Box;
begin
  WriteLn('Place pizza in official PizzaStore box');
end;

procedure TPizzaV2.Cut;
begin
  WriteLn('Cutting the pizza into diagonal slices');
end;

function TPizzaV2.GetName: String;
begin
  Result := FName;
end;

procedure TPizzaV2.SetName(Name: String);
begin
  FName := Name;
end;

function TPizzaV2.ToString: String;
begin
		var Str: TStringBuilder := TStringBuilder.Create;
		Str.Append('---- ' + FName + ' ----' + #13#10);
 		if (FDough <> nil) then
      Str.Append(FDough.ToString + #13#10);

    if (FSauce <> nil) then
      Str.Append(FSauce.ToString + #13#10);

    if (FCheese <> nil) then
      Str.Append(FCheese.ToString + #13#10);

		if (FVeggies <> nil) then
    begin
      var Index: Integer;
      for Index := 0 to Length(FVeggies) do
      begin
        Str.Append(FVeggies[Index].ToString);
        if Index < Length(FVeggies) - 1 then
          Str.Append(', ');
      end;
      Str.Append(#13#10);
    end;

    if (FClam <> nil) then
      Str.Append(FClam.ToString + #13#10);

    if (FPepperoni <> nil) then
      Str.Append(FPepperoni.ToString + #13#10);

		Result := Str.ToString;
end;

{ TCheezePizza }

constructor TCheesePizza.Create(AIngredientFactory: IPizzaIngredientFactory);
begin
  FIngredientFactory := AIngredientFactory;
end;

procedure TCheesePizza.Prepare;
begin
  WriteLn('Preparing' + FName);
  FDough := FIngredientFactory.CreateDough;
  FSauce := FIngredientFactory.CreateSauce;
  FCheese := FIngredientFactory.CreateCheese;
end;

{ TClamPizza }

constructor TClamPizza.Create(AIngredientFactory: IPizzaIngredientFactory);
begin
  FIngredientFactory := AIngredientFactory;
end;

procedure TClamPizza.Prepare;
begin
  WriteLn('Preparing' + FName);
  FDough := FIngredientFactory.CreateDough;
  FSauce := FIngredientFactory.CreateSauce;
  FCheese := FIngredientFactory.CreateCheese;
  FClam := FIngredientFactory.CreateClam;
end;

{ TNYPizzaStoreVer2 }

function TNYPizzaStoreVer2.CreatePizza(PizzaType: String): TPizzaV2;
begin
  var Pizza: TPizzaV2 := nil;
  var PizzaIngredientFactory := TNYPizzaIngredientFactory.Create;

  if PizzaType = 'cheese' then
  begin
    Pizza := TCheesePizza.Create(PizzaIngredientFactory);
    Pizza.SetName('New York Style Cheese Pizza');
  end;
//  else if PizzaType = 'Veggie' then
//  begin
//    Pizza := TCheesePizza.Create(PizzaIngredientFactory);
//    Pizza.SetName('New York Style Veggie Pizza');
//  end
//  else if PizzaType = 'Clam' then
//  begin
//    Pizza := TCheesePizza.Create(PizzaIngredientFactory);
//    Pizza.SetName('New York Style Clam Pizza');
//  end
//  else if PizzaType = 'Pepperoni' then
//  begin
//    Pizza := TCheesePizza.Create(PizzaIngredientFactory);
//    Pizza.SetName('New York Style Pepperoni Pizza');
//  end;

  Result := Pizza;
end;

{ TPizzaStoreV2 }

function TPizzaStoreV2.OrderPizza(PizzaType: String): TPizzaV2;
begin
  var Pizza: TPizzaV2;
  Pizza := CreatePizza(PizzaType);
  Pizza.Prepare;
  Pizza.Bake;
  Pizza.Cut;
  Pizza.Box;
  Result := Pizza;
end;

end.
