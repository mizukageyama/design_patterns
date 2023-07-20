unit MenuComponent;

interface

uses
  System.SysUtils, IteratorIntf;

type
  TMenuComponent = class abstract
  public
    procedure Add(MenuComponent: TMenuComponent); virtual;
    procedure Remove(MenuComponent: TMenuComponent); virtual;
    function GetChild(I: Integer): TMenuComponent; virtual;
    function GetName: string; virtual;
    function GetPrice: Double; virtual;
    function IsVegetarian: Boolean; virtual;
    procedure Print; virtual;
    function CreateIterator: IIterator; virtual; abstract;
  end;

implementation

{ TMenuComponent }

procedure TMenuComponent.Add(MenuComponent: TMenuComponent);
begin
  raise ENotSupportedException.Create('This operation is not supported.');
end;

function TMenuComponent.GetChild(I: Integer): TMenuComponent;
begin
  raise ENotSupportedException.Create('This operation is not supported.');
end;

function TMenuComponent.GetName: string;
begin
  raise ENotSupportedException.Create('This operation is not supported.');
end;

function TMenuComponent.GetPrice: Double;
begin
  raise ENotSupportedException.Create('This operation is not supported.');
end;

function TMenuComponent.IsVegetarian: Boolean;
begin
  raise ENotSupportedException.Create('This operation is not supported.');
end;

procedure TMenuComponent.Print;
begin
  raise ENotSupportedException.Create('This operation is not supported.');
end;

procedure TMenuComponent.Remove(MenuComponent: TMenuComponent);
begin
 // raise ENotSupportedException.Create('This operation is not supported.');
end;

end.
