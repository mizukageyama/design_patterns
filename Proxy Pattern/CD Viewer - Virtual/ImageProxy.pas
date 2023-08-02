unit ImageProxy;

interface

uses
  System.Net.HttpClientComponent, System.Classes,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, System.SysUtils, Vcl.Dialogs,
  Vcl.Graphics, Vcl.Controls, System.Types, ImageIntf;
type
  TImageProxy = class(TInterfacedObject, IImage)
  private
    FImage: TJPEGImage;
    FImageURL: string;
    FRetrievalThread: TThread;
    FRetrieving: Boolean;
  public
    constructor Create(AImageURL: string);
    function GetImageWidth: Integer;
    function GetImageHeight: Integer;
    procedure Paint(const ImageComponent: TImage; X, Y: Integer);
    procedure RetrieveImage(ImageComponent: TImage);
  end;

implementation

constructor TImageProxy.Create(AImageURL: string);
begin
  FImageURL := AImageURL;
  FImage := nil;
  FRetrieving := False;
end;

procedure TImageProxy.RetrieveImage(ImageComponent: TImage);
var
  ImageStream: TMemoryStream;
  HTTPClient: TNetHTTPClient;
begin
  try
    HTTPClient := TNetHTTPClient.Create(nil);
    ImageStream := TMemoryStream.Create;
    try
      HTTPClient.Get(FImageURL, ImageStream);
      ImageStream.Position := 0;
      FImage := TJPEGImage.Create;
      FImage.LoadFromStream(ImageStream);
    finally
      HTTPClient.Free;
      ImageStream.Free;
    end;
  finally
    FRetrieving := False;
    if Assigned(FImage) then
    begin
      FRetrievalThread.Synchronize(nil,
        procedure
        begin
          ImageComponent.Picture.Assign(FImage);
        end);
    end;
  end;
end;

function TImageProxy.GetImageHeight: Integer;
begin
  if FImage <> nil then
    Result := FImage.Height
  else
    Result := 300;
end;

function TImageProxy.GetImageWidth: Integer;
begin
  if FImage <> nil then
    Result := FImage.Width
  else
    Result := 200;
end;

procedure TImageProxy.Paint(const ImageComponent: TImage; X, Y: Integer);
begin
  if FImage <> nil then
    ImageComponent.Picture.Assign(FImage)
  else
  begin
    ImageComponent.Canvas.TextOut(x + 15, y + 100,
      'Loading CD cover, please wait...');
    if not FRetrieving then
    begin
      FRetrieving := True;
      FRetrievalThread := TThread.CreateAnonymousThread(
        procedure begin RetrieveImage(ImageComponent); end);
      FRetrievalThread.Start;
    end;
  end;
end;

end.
