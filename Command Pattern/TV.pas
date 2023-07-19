unit TV;

interface
type
  TTV = class
  private
    FLocation: string;
    FChannel: Integer;
  public
    procedure OnTV;
    procedure OffTV;
    procedure SetInputChannel;
    constructor Create(ALocation: string);
  end;
implementation

{ TTV }

constructor TTV.Create(ALocation: string);
begin
  FLocation := ALocation;
end;

procedure TTV.OffTV;
begin
  WriteLn(Flocation + ' TV is off');
end;

procedure TTV.OnTV;
begin
  WriteLn(Flocation + ' TV is on');
end;

procedure TTV.SetInputChannel;
begin
  FChannel := 3;
  WriteLn(Flocation + ' TV channel is set for DVD');
end;

end.
