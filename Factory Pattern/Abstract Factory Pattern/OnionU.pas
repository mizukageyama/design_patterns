unit OnionU;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, VeggiesU;

type
  TOnion = class(TInterfacedObject, IVeggies)
    function ToString: String;
  end;

implementation

{ TOnion }

function TOnion.ToString: String;
begin
  Result :=  'Onion';
end;

end.
