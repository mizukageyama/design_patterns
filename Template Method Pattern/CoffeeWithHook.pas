unit CoffeeWithHook;

interface

uses
  CaffeineBeverageWithHook, System.SysUtils;

type
  TCoffeeWithHook = class(TCaffeineBeverageWithHook)
  public
    procedure Brew; override;
    procedure AddCondiments; override;
    function CustomerWantsCondiments: Boolean;  override;
    function GetUserInput: String;
  end;

implementation

{ TCoffeeWithHook }

procedure TCoffeeWithHook.AddCondiments;
begin
  WriteLn('Adding Sugar and Milk');
end;

procedure TCoffeeWithHook.Brew;
begin
  WriteLn('Dripping Coffee through filter');
end;

function TCoffeeWithHook.CustomerWantsCondiments: Boolean;
var
  UserInput: String;
begin
  UserInput := GetUserInput;

  if UserInput.ToLower.StartsWith('y') then
    Result := True
  else
    Result := False;
end;

function TCoffeeWithHook.GetUserInput: String;
var
  UserInput: String;
begin
  Write('Would you like milk and sugar with your coffee (y/n)? ');
  try
    ReadLn(UserInput);
  except
    raise Exception.Create('Something went wrong.');
  end;
  if UserInput.IsEmpty then
    Result := 'no';

  Result := UserInput;
end;

end.
