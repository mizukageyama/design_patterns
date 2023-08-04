unit ImageIntf;

interface

uses
  System.Net.HttpClientComponent, System.Classes, Vcl.Graphics, Vcl.Controls,
  System.Types, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  IImage = interface
    function GetImageWidth: Integer;
    function GetImageHeight: Integer;
    procedure Paint(const c: TImage);
  end;

implementation

end.
