unit Stereo;

interface

uses
  System.SysUtils;

type
  TStereo = class
  private
    FLocation: String;
  public
    procedure OnStereo;
    procedure OffStereo;
    procedure SetCD;
    procedure SetDVD;
    procedure SetRadio;
    procedure SetVolume(Volume: Integer);
    constructor Create(ALocation: String);
  end;
implementation


{ TStereo }

constructor TStereo.Create(ALocation: String);
begin
  FLocation := ALocation;
end;

procedure TStereo.OffStereo;
begin
  WriteLn(FLocation + ' stereo is off');
end;

procedure TStereo.OnStereo;
begin
  WriteLn(FLocation + ' stereo is on');
end;

procedure TStereo.SetCD;
begin
  WriteLn(FLocation + ' stereo is set for CD input');
end;

procedure TStereo.SetDVD;
begin
  WriteLn(FLocation + ' stereo is set for DVD input');
end;

procedure TStereo.SetRadio;
begin
  WriteLn(FLocation + ' stereo is set for Radio');
end;

procedure TStereo.SetVolume(Volume: Integer);
begin
  WriteLn(FLocation + ' stereo volume set to ' + Volume.ToString);
end;

end.
