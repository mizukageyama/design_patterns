unit Singleton;

interface

uses
  System.Classes, System.Generics.Collections, System.SysUtils;

type
  TSingleton = class
  private
    class var FUniqueInstance: TSingleton;
    constructor Create;
  public
    class function GetInstance: TSingleton;
  end;

implementation

{ TSingleton }

constructor TSingleton.Create;
begin
  //Do nothing...
end;

class function TSingleton.GetInstance: TSingleton;
begin
  if FUniqueInstance = nil then
    FUniqueInstance := TSingleton.Create;
  Result := FUniqueInstance;
end;

end.
