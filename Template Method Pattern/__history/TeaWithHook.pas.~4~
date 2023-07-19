unit TeaWithHook;

interface

uses
  CaffeineBeverageWithHook, System.SysUtils;

type
  TTeaWithHook = class(TCaffeineBeverageWithHook)
  public
    procedure Brew; override;
    procedure AddCondiments; override;
    function CustomerWantsCondiments: Boolean;  override;
    function GetUserInput: String;
  end;
implementation

{ TTea }

procedure TTeaWithHook.AddCondiments;
begin
  WriteLn('Adding Lemon');
end;

procedure TTeaWithHook.Brew;
begin
  WriteLn('Steeping the tea');
end;

function TTeaWithHook.CustomerWantsCondiments: Boolean;
var
  UserInput: String;
begin
  UserInput := GetUserInput;

  if UserInput.ToLower.StartsWith('y') then
    Result := True
  else
    Result := False;
end;

function TTeaWithHook.GetUserInput: String;
var
  UserInput: String;
begin
  Write('Would you like lemon with your tea (y/n)? ');
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
