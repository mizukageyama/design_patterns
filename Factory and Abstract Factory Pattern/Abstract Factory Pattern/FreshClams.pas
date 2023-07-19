unit FreshClams;

interface

uses
  ClamsIntf;

type
  TFreshClams = class(TInterfacedObject, IClams)
    function ToString: string; override;
  end;

implementation

{ TFreshClams }

function TFreshClams.ToString: string;
begin
  Result :=  'Fresh Clams';
end;

end.
