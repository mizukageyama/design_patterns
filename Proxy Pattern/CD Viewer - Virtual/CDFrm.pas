unit CDFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  System.Generics.Collections, ImageIntf, ImageProxy, Vcl.ExtCtrls,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  Vcl.Imaging.jpeg, System.Actions, Vcl.ActnList, Vcl.StdCtrls;

type
  TCDForm = class(TForm)
    mmFavCDs: TMainMenu;
    FavoriteCDs1: TMenuItem;
    imgDisplay: TImage;
    procedure FormCreate(Sender: TObject);
    procedure OnMenuItemClicked(Sender: TObject);
  private
    { Private declarations }
    FFavoriteCDs: TDictionary<string, string>;
    FImageProxy: TImageProxy;
  public
    { Public declarations }
  end;

var
  CDForm: TCDForm;

implementation

{$R *.dfm}

procedure TCDForm.FormCreate(Sender: TObject);
begin
  FFavoriteCDs := TDictionary<string, string>.Create;
  FFavoriteCDs.Add('Ambient: Music for Airports',
    'https://m.media-amazon.com/images/I/51r4KfKcqxL._UF894,1000_QL80_.jpg');
  FFavoriteCDs.Add('Buddha Bar',
    'https://m.media-amazon.com/images/I/61II2JL4SdL._UF1000,1000_QL80_.jpg');
  FFavoriteCDs.Add('Ima',
    'https://m.media-amazon.com/images/I/513yuIQlVvL._UF1000,1000_QL80_.jpg');
  FFavoriteCDs.Add('Karma',
    'https://m.media-amazon.com/images/I/71CqgQgjCML.jpg');
  FFavoriteCDs.Add('MCMXC A.D.',
    'https://m.media-amazon.com/images/I/41SYlElj-XL._UF894,1000_QL80_.jpg');
  FFavoriteCDs.Add('Northern Exposure',
    'https://m.media-amazon.com/images/I/41FQCE0XGQL._UF894,1000_QL80_.jpg');
  FFavoriteCDs.Add('Selected Ambient Works, Vol. 2',
    'https://m.media-amazon.com/images/I/81Ahsu5yLeL._UF1000,1000_QL80_.jpg');

  for var Key in FFavoriteCDs.Keys.ToArray do
  begin
     var MenuItem := TMenuItem.Create(mmFavCDs);
     MenuItem.Caption := Key;
     MenuItem.OnClick := OnMenuItemClicked;
     mmFavCDs.Items[0].Add(MenuItem);
  end;

  //Default selected album
  FImageProxy := TImageProxy.Create(FFavoriteCDs['MCMXC A.D.']);
  FImageProxy.Paint(imgDisplay);
end;

procedure TCDForm.OnMenuItemClicked(Sender: TObject);
begin
  var Item := Sender as TMenuItem;
  var ImageURL := FFavoriteCDs[Item.Caption];
  imgDisplay.Picture := nil;

  FImageProxy := TImageProxy.Create(ImageURL);
  FImageProxy.Paint(imgDisplay);
end;

end.
