unit GumballMachine;

interface

type
  TGumballMachine = class
  private
    FState: Integer;
    FCount: Integer;
    const
      FSOLD_OUT = 0;
      FNO_QUARTER = 1;
      FHAS_QUARTER = 2;
      FSOLD = 3;
  public
    constructor Create(ACount: Integer);
    procedure InsertQuarter;
    procedure EjectQuarter;
    procedure TurnCrank;
    procedure Dispense;
    procedure Refill(NumGumBalls: Integer);
    function ToString: string; override;
  end;

implementation

uses
  System.SysUtils;

{ TGumbleMachine }

constructor TGumballMachine.Create(ACount: Integer);
begin
  FCount := ACount;
  if FCount > 0 then
    FState := FNO_QUARTER;
end;

procedure TGumballMachine.Dispense;
begin
  case FState of
    FHAS_QUARTER:
      WriteLn('No gumball dispensed');
    FSOLD_OUT:
      WriteLn('No gumball dispensed');
    FSOLD:
      begin
        WriteLn('A gumball comes rolling out the slot');
        FCount := FCount - 1;
        if FCount = 0 then
        begin
          WriteLn('Oops, out of gumballs!');
          FState := FSOLD_OUT;
        end
        else
          FState := FNO_QUARTER;
      end;
    FNO_QUARTER:
      WriteLn('You need to pay first');
  end;
end;

procedure TGumballMachine.EjectQuarter;
begin
  case FState of
    FHAS_QUARTER:
      begin
        WriteLn('Quarter returned');
        FState := FNO_QUARTER;
      end;
    FSOLD_OUT:
      WriteLn('You can’t eject, you haven’t inserted a quarter yet');
    FSOLD:
      WriteLn('Sorry, you already turned the crank');
    FNO_QUARTER:
      WriteLn('You haven’t inserted a quarter');
  end;
end;

procedure TGumballMachine.InsertQuarter;
begin
  case FState of
    FHAS_QUARTER:
      WriteLn('You can’t insert another quarter');
    FSOLD_OUT:
      WriteLn('You can’t insert a quarter, the machine is sold out');
    FSOLD:
      WriteLn('Please wait, we’re already giving you a gumball');
    FNO_QUARTER:
      begin
        FState := FHAS_QUARTER;
        WriteLn('You inserted a quarter');
      end;
  end;
end;

procedure TGumballMachine.Refill(NumGumBalls: Integer);
begin
  FCount := NumGumBalls;
  FState := FNO_QUARTER;
end;

function TGumballMachine.ToString: string;
begin
  var StrResult := TStringBuilder.Create;
  StrResult.Append(sLineBreak + 'Mighty Gumball, Inc.');
  StrResult.Append(sLineBreak + 'Delphi-enabled Standing Gumball Model #2004' +
    sLineBreak);
  StrResult.Append('Inventory: ' + FCount.ToString + ' gumball');
  if FCount <> 1 then
    StrResult.Append('s');
  StrResult.Append(sLineBreak + 'Machine is ');
  case FState of
    FHAS_QUARTER:
      StrResult.Append('waiting for turn of crank');
    FSOLD_OUT:
      StrResult.Append('sold out');
    FSOLD:
      StrResult.Append('delivering a gumball');
    FNO_QUARTER:
      StrResult.Append('waiting for quarter');
  end;
  StrResult.Append(sLineBreak);
  Result := StrResult.ToString;
end;

procedure TGumballMachine.TurnCrank;
begin
  case FState of
    FHAS_QUARTER:
      begin
        WriteLn('You turned...');
        FState := FSOLD;
        Dispense;
      end;
    FSOLD_OUT:
      WriteLn('You turned, but there are no gumballs');
    FSOLD:
      WriteLn('Turning twice doesn’t get you another gumball!');
    FNO_QUARTER:
      WriteLn('You turned but there’s no quarter');
  end;
end;

end.
