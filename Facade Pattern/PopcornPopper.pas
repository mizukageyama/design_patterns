unit PopcornPopper;

interface

type
  TPopcornPopper = class
  private
    FDescription: string;
  public
    constructor Create(ADescription: string);
    procedure OnPopcornPopper;
    procedure OffPopcornPopper;
    procedure Pop;
    function ToString: string; override;
  end;

implementation

{ TPopcornPopper }

constructor TPopcornPopper.Create(ADescription: string);
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

function TPopcornPopper.ToString: string;
begin
  Result := FDescription;
end;

end.
