unit PopcornPopper;

interface

type
  TPopcornPopper = class
  private
    FDescription: String;
  public
    constructor Create(ADescription: String);
    procedure OnPopcornPopper;
    procedure OffPopcornPopper;
    procedure Pop;
    function ToString: String; override;
  end;

implementation

{ TPopcornPopper }

constructor TPopcornPopper.Create(ADescription: String);
begin
  FDescription := ADescription;
end;

procedure TPopcornPopper.OffPopcornPopper;
begin
  WriteLn(FDescription + ' off');
end;

procedure TPopcornPopper.OnPopcornPopper;
begin
   WriteLn(FDescription + ' on');
end;

procedure TPopcornPopper.Pop;
begin
  WriteLn(FDescription + ' popping popcorn!');
end;

function TPopcornPopper.ToString: String;
begin
  Result := FDescription;
end;

end.
