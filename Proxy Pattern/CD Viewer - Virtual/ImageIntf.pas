unit ImageIntf;

interface

uses
  System.Net.HttpClientComponent, System.Classes, Vcl.Graphics, Vcl.Controls,
  System.Types;

type
  IImage = interface
    function GetImageWidth: Integer;
    function GetImageHeight: Integer;
    procedure Draw(const c: TComponent; g: TCanvas; x, y: Integer);
  end;

implementation

end.
