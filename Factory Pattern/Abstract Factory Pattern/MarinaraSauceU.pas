unit MarinaraSauceU;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, SauceU;

type
  TMarinaraSauce = class(TInterfacedObject, ISauce)
    function ToString: String;
  end;

implementation

{ TMarinaraSauce }

function TMarinaraSauce.ToString: String;
begin
  Result :=  'Marinara Sauce';
end;

end.
