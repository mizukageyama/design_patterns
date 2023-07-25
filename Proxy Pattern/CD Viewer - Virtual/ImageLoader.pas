unit ImageLoader;

interface

uses
  ImageLoaderIntf, System.Net.HttpClientComponent, System.Classes,
  System.SysUtils;

type
  TImageLoader = class(TInterfacedObject, IImageLoader)
  public
    function LoadImageFromURL(URL: string; NetClient: TNetHTTPClient):
      TMemoryStream;
  end;

implementation

{ TImageLoader }

function TImageLoader.LoadImageFromURL(URL: string; NetClient: TNetHTTPClient):
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

end.
