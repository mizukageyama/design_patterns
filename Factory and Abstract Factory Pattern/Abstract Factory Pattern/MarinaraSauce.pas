unit MarinaraSauce;

interface

uses
  SauceIntf;

type
  TMarinaraSauce = class(TInterfacedObject, ISauce)
    function ToString: String; override;
  end;

implementation

{ TMarinaraSauce }

function TMarinaraSauce.ToString: String;
begin
  Result :=  'Marinara Sauce';
end;

end.
