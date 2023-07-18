unit Screen;

interface

type
  TScreen = class
  private
    FDescription: String;
  public
    constructor Create(ADescription: String);
    procedure UpScreen;
    procedure DownScreen;
    function ToString: String; override;
  end;

implementation

{ TScreen }

constructor TScreen.Create(ADescription: String);
begin
  FDescription := ADescription;
end;

procedure TScreen.DownScreen;
begin
  WriteLn(FDescription + ' going down');
end;

function TScreen.ToString: String;
begin
  Result := FDescription;
end;

procedure TScreen.UpScreen;
begin
  WriteLn(FDescription + ' going up');
end;


end.
