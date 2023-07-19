unit AmpCDTunerDVD;

interface

uses
  System.SysUtils;

type
  TTuner = class;
  TDVDPlayer = class;
  TCDPlayer = class;

  TAmplifier = class
  private
    FDescription: string;
    FTuner: TTuner;
    FDVD: TDVDPlayer;
    FCDPlayer: TCDPlayer;
  public
    constructor Create(ADescription: string);
    procedure OnAmplifier;
    procedure OffAmplifier;
    procedure SetStereoSound;
    procedure SetSurrondSound;
    procedure SetVolume(Level: Integer);
    procedure SetTuner(Tuner: TTuner);
    procedure SetDVD(DVD: TDVDPlayer);
    procedure SetCD(CD: TCDPlayer);
    function ToString: string; override;
  end;

  TTuner = class
  private
    FDescription: string;
    FAmplifier: TAmplifier;
    FFrequency: Double;
  public
    constructor Create(ADescription: string; AAmplifier: TAmplifier);
    procedure OnTuner;
    procedure OffTuner;
    procedure SetFrequency(Frequency: Double);
    procedure SetAm;
    procedure SetFm;
    function ToString: string; override;
  end;

  TCDPlayer = class
  private
    FDescription: string;
    FCurrentTrack: Integer;
    FAmplifier: TAmplifier;
    FTitle: string;
  public
    constructor Create(ADescription: string; AAmplifier: TAmplifier);
    procedure OnCDPlayer;
    procedure OffCDPlayer;
    procedure Eject;
    procedure Play(Title: string); overload;
    procedure Play(Track: Integer); overload;
    procedure Stop;
    procedure Pause;
    function ToString: string;
  end;

  TDVDPlayer = class
  private
    FDescription: string;
    FCurrentTrack: Integer;
    FAmplifier: TAmplifier;
    FMovie: string;
  public
    constructor Create(ADescription: string; AAmplifier: TAmplifier);
    procedure OnDVDPlayer;
    procedure OffDVDPlayer;
    procedure Eject;
    procedure Play(Movie: string); overload;
    procedure Play(Track: Integer); overload;
    procedure Stop;
    procedure Pause;
    procedure SetTwoChannelAudio;
    procedure SetSurroundAudio;
    function ToString: string;
  end;

implementation

{ TAmplifier }

constructor TAmplifier.Create(ADescription: string);
begin
  FDescription := ADescription;
end;

procedure TAmplifier.OffAmplifier;
begin
  WriteLn(FDescription + ' off');
end;

procedure TAmplifier.OnAmplifier;
begin
  WriteLn(FDescription + ' on');
end;

procedure TAmplifier.SetCD(CD: TCDPlayer);
begin
  WriteLn(FDescription + ' setting CD player to ' + CD.ToString);
end;

procedure TAmplifier.SetDVD(DVD: TDVDPlayer);
begin
  WriteLn(FDescription + ' setting DVD player to ' + DVD.ToString);
end;

procedure TAmplifier.SetStereoSound;
begin
  WriteLn(FDescription + ' stereo mode on');
end;

procedure TAmplifier.SetSurrondSound;
begin
  WriteLn(FDescription + ' surround sound on (5 speakers, 1 subwoofer');
end;

procedure TAmplifier.SetTuner(Tuner: TTuner);
begin
  WriteLn(FDescription + ' setting tuner to ' + Tuner.ToString);
end;

procedure TAmplifier.SetVolume(Level: Integer);
begin
  WriteLn(FDescription + ' setting volume to ' + Level.ToString);
end;

function TAmplifier.ToString: string;
begin
  Result := FDescription;
end;

{ TTuner }

constructor TTuner.Create(ADescription: string; AAmplifier: TAmplifier);
begin
  FDescription := ADescription;
  FAmplifier := AAmplifier;
end;

procedure TTuner.OffTuner;
begin
  WriteLn(FDescription + ' off');
end;

procedure TTuner.OnTuner;
begin
  WriteLn(FDescription + ' on');
end;

procedure TTuner.SetAm;
begin
  WriteLn(FDescription + ' setting AM mode');
end;

procedure TTuner.SetFm;
begin
  WriteLn(FDescription + ' setting FM mode');
end;

procedure TTuner.SetFrequency(Frequency: Double);
begin
  WriteLn(FDescription + ' setting frequency to ' + Frequency.ToString);
  FFrequency := Frequency;
end;

function TTuner.ToString: string;
begin
  Result := FDescription;
end;

{ TCDPlayer }

constructor TCDPlayer.Create(ADescription: string; AAmplifier: TAmplifier);
begin
  FDescription := ADescription;
  FAmplifier := AAmplifier;
end;

procedure TCDPlayer.Eject;
begin
  FTitle := '';
  WriteLn(FDescription + ' eject');
end;

procedure TCDPlayer.OffCDPlayer;
begin
  WriteLn(FDescription + ' off');
end;

procedure TCDPlayer.OnCDPlayer;
begin
  WriteLn(FDescription + ' on');
end;

procedure TCDPlayer.Pause;
begin
  WriteLn(FDescription + ' paused "' + FTitle + '"');
end;

procedure TCDPlayer.Play(Title: string);
begin
  FTitle := Title;
  FCurrentTrack := 0;
  WriteLn(FDescription + ' playing "' + Title + '"');
end;

procedure TCDPlayer.Play(Track: Integer);
begin
  if FTitle = '' then
  WriteLn(FDescription + ' can''t play ' + Track.ToString + ', no cd inserted')
  else
  begin
    FCurrentTrack := Track;
    WriteLn(FDescription + ' playing track ' + FCurrentTrack.ToString);
  end;
end;

procedure TCDPlayer.Stop;
begin
  FCurrentTrack := 0;
  WriteLn(FDescription + ' stopped');
end;

function TCDPlayer.ToString: string;
begin
  Result := FDescription;
end;

{ TDVDPlayer }

constructor TDVDPlayer.Create(ADescription: string; AAmplifier: TAmplifier);
begin
  FDescription := ADescription;
  FAmplifier := AAmplifier;
end;

procedure TDVDPlayer.Eject;
begin
  FMovie := '';
  WriteLn(FDescription + ' eject');
end;

procedure TDVDPlayer.OffDVDPlayer;
begin
  WriteLn(FDescription + ' off');
end;

procedure TDVDPlayer.OnDVDPlayer;
begin
  WriteLn(FDescription + ' on');
end;

procedure TDVDPlayer.Pause;
begin
  WriteLn(FDescription + ' paused "' + FMovie + '"');
end;

procedure TDVDPlayer.Play(Movie: string);
begin
  FMovie := Movie;
  FCurrentTrack := 0;
  WriteLn(FDescription + ' playing "' + FMovie + '"');
end;

procedure TDVDPlayer.Play(Track: Integer);
begin
  if FMovie = '' then
  WriteLn(FDescription + ' can''t play ' + Track.ToString + ', no dvd inserted')
  else
  begin
    FCurrentTrack := Track;
    WriteLn(FDescription + ' playing track ' + FCurrentTrack.ToString + 'of "' +
      FMovie + '"');
  end;
end;

procedure TDVDPlayer.SetSurroundAudio;
begin
  WriteLn(FDescription + ' set surround audio');
end;

procedure TDVDPlayer.SetTwoChannelAudio;
begin
  WriteLn(FDescription + ' set two channel audio');
end;

procedure TDVDPlayer.Stop;
begin
  FCurrentTrack := 0;
  WriteLn(FDescription + ' stopped "' + FMovie + '"');
end;

function TDVDPlayer.ToString: string;
begin
  Result := FDescription;
end;

end.
