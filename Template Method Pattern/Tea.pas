unit Tea;

interface

uses CaffeineBeverage;

type
  TTea = class(TCaffeineBeverage)
  public
    procedure Brew; override;
    procedure AddCondiments; override;
  end;
implementation

{ TTea }

procedure TTea.AddCondiments;
begin
  WriteLn('Adding Lemon');
end;

procedure TTea.Brew;
begin
  WriteLn('Steeping the tea');
end;

end.