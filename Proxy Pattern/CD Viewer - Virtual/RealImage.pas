unit RealImage;

interface

uses
  System.Net.HttpClientComponent, System.Classes,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, System.SysUtils, Vcl.Dialogs,
  Vcl.Graphics, Vcl.Controls, System.Types, ImageIntf;

type
  TRealImage = class(TInterfacedObject, IImage)
  private
    FImage: TJPEGImage;
    FImageURL: string;
  public
    constructor Create(AImageURL: string);
    function GetImageWidth: Integer;
    function GetImageHeight: Integer;
    procedure Paint(const ImageComponent: TImage);
    procedure RetrieveImage;
  end;

implementation

constructor TRealImage.Create(AImageURL: string);
begin
  FImageURL := AImageURL;
  FImage := nil;
end;

function TRealImage.GetImageHeight: Integer;
begin
  Result := FImage.Height
end;

function TRealImage.GetImageWidth: Integer;
begin
  Result := FImage.Width
end;

procedure TRealImage.Paint(const ImageComponent: TImage);
begin
  ImageComponent.Picture.Assign(FImage);
  ImageComponent.Height := GetImageHeight;
  ImageComponent.Width := GetImageWidth;
end;

procedure TRealImage.RetrieveImage;
var
  ImageStream: TMemoryStream;
  HTTPClient: TNetHTTPClient;
begin
  HTTPClient := TNetHTTPClient.Create(nil);
  ImageStream := TMemoryStream.Create;

  try
    HTTPClient.Get(FImageURL, ImageStream);
    ImageStream.Position := 0;
    FImage := TJPEGImage.Create;
    FImage.LoadFromStream(ImageStream);
  finally
    ImageStream.Free;
    HTTPClient.Free;
  end;
end;

end.
