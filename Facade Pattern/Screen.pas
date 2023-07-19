unit Screen;

interface

type
  TScreen = class
  private
    FDescription: string;
  public
    constructor Create(ADescription: string);
    procedure UpScreen;
    procedure DownScreen;
    function ToString: string; override;
  end;

implementation

{ TScreen }

constructor TScreen.Create(ADescription: string);
begin
  FDescription := ADescription;
end;

procedure TScreen.DownScreen;
begin
  WriteLn(FDescription + ' going down');
end;

function TScreen.ToString: string;
begin
  Result := FDescription;
end;

procedure TScreen.UpScreen;
begin
  WriteLn(FDescription + ' going up');
end;


end.
