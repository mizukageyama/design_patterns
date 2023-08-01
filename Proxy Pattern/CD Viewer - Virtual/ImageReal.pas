unit ImageReal;

interface

uses
  ImageIntf, System.Net.HttpClientComponent, System.Classes,
  System.SysUtils, Vcl.Graphics, Vcl.Controls, System.Types;

type
  TRealImage = class(TInterfacedObject, IImage)
  private
    FIcon: TIcon;
  public
    constructor Create(AIcon: TIcon);
//    function LoadImageFromURL(URL: string; NetClient: TNetHTTPClient):
//      TMemoryStream;
    function GetImageWidth: Integer;
    function GetImageHeight: Integer;
    procedure Draw(const c: TComponent; g: TCanvas; x, y: Integer);
  end;

implementation

{ TImage }

constructor TRealImage.Create(AIcon: TIcon);
begin
  FIcon := AIcon;
end;

function TRealImage.GetImageWidth: Integer;
begin
  Result := FIcon.Width;
end;

function TRealImage.GetImageHeight: Integer;
begin
  Result := FIcon.Height;
end;

procedure TRealImage.Draw(const c: TComponent; g: TCanvas; x, y: Integer);
begin
  g.Draw(x, y, FIcon);
end;

//function TImage.LoadImageFromURL(URL: string; NetClient: TNetHTTPClient):
//  TMemoryStream;
//var
//  ImageStream: TMemoryStream;
//begin
//  ImageStream := TMemoryStream.Create;
//  try
//    NetClient.Get(URL, ImageStream);
//    ImageStream.Position := 0;
//    Result := ImageStream;
//  except
//   raise Exception.Create('Something went wrong');
//  end;
//end;

end.