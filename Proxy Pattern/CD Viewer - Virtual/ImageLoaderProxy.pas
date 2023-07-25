unit ImageLoaderProxy;

interface

uses
  ImageLoader, ImageLoaderIntf, System.Net.HttpClientComponent, System.Classes;

type
  TImageLoaderProxy = class(TInterfacedObject, IImageLoader)
  private
    FImageLoader: IImageLoader;
  public
    constructor Create;
    function LoadImageFromURL(URL: string; NetClient: TNetHTTPClient):
      TMemoryStream;
  end;

implementation

constructor TImageLoaderProxy.Create;
begin
  FImageLoader := TImageLoader.Create;
end;

function TImageLoaderProxy.LoadImageFromURL(URL: string; NetClient: TNetHTTPClient):
  TMemoryStream;
begin
  Result := FImageLoader.LoadImageFromURL(URL, NetClient);
end;

end.
