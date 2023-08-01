unit ImageLoaderProxy;

interface

uses
  ImageLoader, ImageLoaderIntf, System.Net.HttpClientComponent, System.Classes,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, System.SysUtils, Vcl.Dialogs;

type
  TImageLoaderProxy = class(TInterfacedObject, IImageLoader)
  private
    FImage: TMemoryStream;
    FImageComponent: TImage;
    FLoadingComponent: TLabel;
    FImageURL: string;
    FRetrievalThread: TThread;
    FRetrieving: Boolean;
    FNetClient: TNetHTTPClient;
    //old
    FImageLoader: IImageLoader;
  public
    constructor Create(AImageURL: string; ANetClient: TNetHTTPClient);
function LoadImageFromURL(URL: string; NetClient: TNetHTTPClient):
      TMemoryStream;
    procedure Paint;
  end;

implementation

constructor TImageLoaderProxy.Create(AImageURL: string;
  ANetClient: TNetHTTPClient);
begin
  FImageURL := AImageURL;
  FImage := nil;
  FRetrieving := False;
  FNetClient := ANetClient;
end;

//function TImageLoaderProxy.LoadImageFromURL(URL: string; ):
//  TMemoryStream;
//begin
//  FImageLoader := TImageLoader.Create;
//  Result := FImageLoader.LoadImageFromURL(URL, NetClient);
//end;

function TImageLoaderProxy.LoadImageFromURL(URL: string;
  NetClient: TNetHTTPClient): TMemoryStream;
begin

end;

procedure TImageLoaderProxy.Paint;
begin
  if FImage <> nil then
  begin
    var ImageJPG := TJPEGImage.Create;
    ImageJPG.LoadFromStream(FImage);
    FImageComponent.Picture.Assign(ImageJPG);
    FLoadingComponent.Caption := '';
  end
  else
  begin
    FLoadingComponent.Caption := 'Loading CD cover, please wait...';
    if not FRetrieving then
    begin
      FRetrieving := True;

      FRetrievalThread := TThread.CreateAnonymousThread(
        procedure
        begin
          try
            FImageLoader := TImageLoader.Create;
            FImage := FImageLoader.LoadImageFromURL(FImageURL, FNetClient);
            var ImageJPG := TJPEGImage.Create;
            ImageJPG.LoadFromStream(FImage);
            FImageComponent.Picture.Assign(ImageJPG);
            FLoadingComponent.Caption := '';
          except
            on E: Exception do
              ShowMessage(E.ToString);
            end;
          end
        );

        FRetrievalThread.Start;
      end;
  end;
end;



end.
