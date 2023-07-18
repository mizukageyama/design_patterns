program FacadePattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  AmpCDTunerDVD in 'AmpCDTunerDVD.pas',
  TheaterLights in 'TheaterLights.pas',
  PopcornPopper in 'PopcornPopper.pas',
  Screen in 'Screen.pas',
  Projector in 'Projector.pas',
  HomeTheaterFacade in 'HomeTheaterFacade.pas';

begin
  try
    var Amp := TAmplifier.Create('Top-O-Line Amplifier');
		var Tuner := TTuner.Create('Top-O-Line AM/FM Tuner', Amp);
		var DVD := TDVDPlayer.Create('Top-O-Line DVD Player', Amp);
		var CD := TCDPlayer.Create('Top-O-Line CD Player', Amp);
		var Projector := TProjector.Create('Top-O-Line Projector', DVD);
		var Lights := TTheaterLights.Create('Theater Ceiling Lights');
		var Screen := TScreen.Create('Theater Screen');
		var Popper := TPopcornPopper.Create('Popcorn Popper');

		var HomeTheater := THomeTheaterFacade.Create(Amp, Tuner, DVD, CD,
						Projector, Screen, Lights, Popper);

		HomeTheater.WatchMovie('Raiders of the Lost Ark');
		HomeTheater.EndMovie;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
