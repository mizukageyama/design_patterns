unit ImageLoaderProxy;

interface

uses ImageLoader, ImageLoaderIntf;

type
  TImageLoaderProxy = class(TInterfacedObject, IImageLoader)
  private
    FImageLoader: IImageLoader;
  public
    constructor Create;
    function LoadImageFromURL(URL: string): string;
  end;

implementation

constructor TImageLoaderProxy.Create;
begin
  FImageLoader := TImageLoader.Create;
end;

function TImageLoaderProxy.LoadImageFromURL(URL: string): string;
begin
  // You can add additional logic here if needed before delegating the call to the actual loader.
  Result := FImageLoader.LoadImageFromURL(URL);
end;
end.
