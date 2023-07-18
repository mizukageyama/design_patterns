unit FreshClams;

interface

uses
  ClamsIntf;

type
  TFreshClams = class(TInterfacedObject, IClams)
    function ToString: String; override;
  end;

implementation

{ TFreshClams }

function TFreshClams.ToString: String;
begin
  Result :=  'Fresh Clams';
end;

end.
