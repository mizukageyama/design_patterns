unit CDFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Generics.Collections,
  ImageLoaderIntf, ImageLoaderProxy, Vcl.ExtCtrls;

type
  TCDForm = class(TForm)
    mmFavCDs: TMainMenu;
    FavoriteCDs1: TMenuItem;
    BuddhaBar1: TMenuItem;
    BuddhaBar2: TMenuItem;
    NorthExposure1: TMenuItem;
    Ima1: TMenuItem;
    MXM1: TMenuItem;
    Karma1: TMenuItem;
    AmbientMusicforAirport1: TMenuItem;
    imgDisplay: TImage;
    procedure BuddhaBar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFavoriteCDs: TDictionary<string, string>;
    FImageLoader: IImageLoader;
  public
    { Public declarations }
  end;

var
  CDForm: TCDForm;

implementation

{$R *.dfm}

procedure TCDForm.BuddhaBar1Click(Sender: TObject);
var
  ImageURL: string;
  ImageStream: TMemoryStream;
  ImageBitmap: TBitmap;
begin
  ImageURL := 'http://images.amazon.com/images/P/B000003S2K.01.LZZZZZZZ.jpg';
  ImageStream := TMemoryStream.Create;
  try
    try
      // Load the image using the image loader proxy
      FImageLoader.LoadImageFromURL(ImageURL);
      ShowMessage('Image loaded successfully from URL.');
    except
      on E: Exception do
      begin
        ShowMessage('Error loading image from URL: ' + E.Message);
        Exit;
      end;
    end;

    // Load the image data from the image loader
    ImageStream.Position := 0;
    ImageBitmap := TBitmap.Create;
    try
      ImageBitmap.LoadFromStream(ImageStream);
      // Display the loaded image in the image control
      imgDisplay.Picture.Assign(ImageBitmap);
    finally
      ImageBitmap.Free;
    end;
  finally
    ImageStream.Free;
  end;
end;

procedure TCDForm.FormCreate(Sender: TObject);
begin
  FImageLoader := TImageLoaderProxy.Create;
//  FFavoriteCDs.Add('Ambient: Music for Airports',
//    'http://images.amazon.com/images/P/B000003S2K.01.LZZZZZZZ.jpg');
//  FFavoriteCDs.Add('Buddha Bar',
//    'http://images.amazon.com/images/P/B00009XBYK.01.LZZZZZZZ.jpg');
//  FFavoriteCDs.Add('Ima',
//    'http://images.amazon.com/images/P/B000005IRM.01.LZZZZZZZ.jpg');
//  FFavoriteCDs.Add('Karma',
//    'http://images.amazon.com/images/P/B000005DCB.01.LZZZZZZZ.gif');
//  FFavoriteCDs.Add('MCMXC A.D.',
//    'http://images.amazon.com/images/P/B000002URV.01.LZZZZZZZ.jpg');
//  FFavoriteCDs.Add('Northern Exposure',
//    'http://images.amazon.com/images/P/B000003SFN.01.LZZZZZZZ.jpg');
//  FFavoriteCDs.Add('Selected Ambient Works, Vol. 2',
//    'http://images.amazon.com/images/P/B000002MNZ.01.LZZZZZZZ.jpg');
end;

end.
