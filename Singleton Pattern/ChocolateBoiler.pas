unit ChocolateBoiler;

interface

uses
  System.Classes, System.Generics.Collections, System.SysUtils;

type
  TChocolateBoiler = class
  private
    FEmpty: Boolean;
    FBoiled: Boolean;
    class var FUniqueInstance: TChocolateBoiler;
    class var FInstanceLock: TObject;
    constructor Create;
  public
    class function GetInstance: TChocolateBoiler;
    procedure Fill;
    procedure Drain;
    procedure Boil;
    function IsEmpty: Boolean;
    function IsBoiled: Boolean;
  end;

implementation

{ TChocolateBoiler }

procedure TChocolateBoiler.Boil;
begin
  if (not IsEmpty) and (not IsBoiled) then
  begin
    WriteLn('bring the contents to boil');
    FBoiled := True;
  end;
end;

constructor TChocolateBoiler.Create;
begin
  FEmpty := True;
  FBoiled := False;
end;

procedure TChocolateBoiler.Drain;
begin
  if (not IsEmpty) and IsBoiled then
  begin
    WriteLn('Drain the boiled milk and chocolate');
    FEmpty := True;
  end;
end;

procedure TChocolateBoiler.Fill;
begin
  if IsEmpty then
  begin
    FEmpty := False;
    FBoiled := False;
    WriteLn('Fill the boiler with a milk/chocolate mixture');
  end;
end;

class function TChocolateBoiler.GetInstance: TChocolateBoiler;
begin
  if FUniqueInstance = nil then
  begin
    FInstanceLock := TObject.Create;
    TMonitor.Enter(FInstanceLock);
    try
      if FUniqueInstance = nil then
        FUniqueInstance :=  TChocolateBoiler.Create;
    finally
      TMonitor.Exit(FInstanceLock);
    end;
  end;
  Result := FUniqueInstance;
end;

function TChocolateBoiler.IsBoiled: Boolean;
begin
  Result := FBoiled;
end;

function TChocolateBoiler.IsEmpty: Boolean;
begin
  Result := FEmpty;
end;

end.
