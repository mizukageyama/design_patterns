unit PizzaVer2U;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, DoughU, SauceU,
  CheeseU, VeggiesU, PepperoniU, ClamsU;

type
  TPizzaVer2 = class abstract
  public
    FName: String;
    FDough: IDough;
    FSauce: ISauce;
    FVeggies: TArray<IVeggies>;
    FCheese: ICheese;
    FPepperoni: IPepperoni;
    FClam: IClams;
    procedure Prepare; virtual; abstract;
    procedure Bake;
    procedure Cut;
    procedure Box;
    procedure SetName(Name: String);
    function GetName: String;
    function ToString: String;
  end;

implementation

{ TPizzaV2 }

procedure TPizzaVer2.Bake;
begin
  WriteLn('Bake for 25 minutes at 350');
end;

procedure TPizzaVer2.Box;
begin
  WriteLn('Place pizza in official PizzaStore box');
end;

procedure TPizzaVer2.Cut;
begin
  WriteLn('Cutting the pizza into diagonal slices');
end;

function TPizzaVer2.GetName: String;
begin
  Result := FName;
end;

procedure TPizzaVer2.SetName(Name: String);
begin
  FName := Name;
end;

function TPizzaVer2.ToString: String;
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

end.
