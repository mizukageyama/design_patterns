unit Image;

interface

uses
  ImageIntf, System.Net.HttpClientComponent, System.Classes,
  System.SysUtils;

type
  TImage = class(TInterfacedObject, IImage)
  public
    function LoadImageFromURL(URL: string; NetClient: TNetHTTPClient):
      TMemoryStream;
    function GetImageWidth: Integer;
    function GetImageHeight: Integer;
    procedure Paint;
  end;

implementation

{ TImageLoader }

function TImage.GetImageHeight: Integer;
begin

end;

function TImage.GetImageWidth: Integer;
begin

end;

function TImage.LoadImageFromURL(URL: string; NetClient: TNetHTTPClient):
  TMemoryStream;
var
  ImageStream: TMemoryStream;
begin
  ImageStream := TMemoryStream.Create;
  try
    NetClient.Get(URL, ImageStream);
    ImageStream.Position := 0;
    Result := ImageStream;
  except
   raise Exception.Create('Something went wrong');
  end;
end;

procedure TImage.Paint;
begin

end;

end.
