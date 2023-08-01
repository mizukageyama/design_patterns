unit ImageProxy;

interface

uses
  System.Net.HttpClientComponent, System.Classes,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, System.SysUtils, Vcl.Dialogs,
  Vcl.Graphics, Vcl.Controls, System.Types;
type
  TImageProxy = class(TImage)
  private
    FImage: TJPEGImage;
    FNetClient: TNetHTTPClient;
    FImageURL: string;
    FRetrievalThread: TThread;
    FRetrieving: Boolean;
    procedure RetrieveImage(c: TImage);
  public
    constructor Create(AImageURL: string);
    procedure Draw(const c: TImage; x, y: Integer);
  end;

implementation

constructor TImageProxy.Create(AImageURL: string);
begin
  FImageURL := AImageURL;
  FImage := nil;
  FRetrieving := False;
end;

procedure TImageProxy.RetrieveImage(c: TImage);
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
          c.Picture.Assign(FImage);
        end);
    end;
  end;
end;

procedure TImageProxy.Draw(const c: TImage; x, y: Integer);
begin
  if FImage <> nil then
    c.Picture.Assign(FImage)
  else
  begin
    c.Canvas.TextOut(x + 15, y + 100, 'Loading CD cover, please wait...');
    if not FRetrieving then
    begin
      FRetrieving := True;

      FRetrievalThread := TThread.CreateAnonymousThread(
        procedure begin RetrieveImage(c); end);
      FRetrievalThread.Start;
    end;
  end;
end;

end.
