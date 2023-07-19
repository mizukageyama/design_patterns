unit MarinaraSauce;

interface

uses
  SauceIntf;

type
  TMarinaraSauce = class(TInterfacedObject, ISauce)
    function ToString: string; override;
  end;

implementation

{ TMarinaraSauce }

function TMarinaraSauce.ToString: string;
begin
  Result :=  'Marinara Sauce';
end;

end.
