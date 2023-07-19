unit Menu;

interface

uses
  IteratorIntf, MenuComponent, System.Generics.Collections,
  MenuComponentIterator;

type
  TMenu = class(TMenuComponent)
  private
    FMenuComponents: TList<TMenuComponent>;
    FName: string;
    FDescription: string;
    FIterator: IIterator;
  public
    constructor Create(AName, ADescription: string);
    procedure Add(MenuComponent: TMenuComponent); override;
    procedure Remove(MenuComponent: TMenuComponent); override;
    function GetChild(I: Integer): TMenuComponent; override;
    function GetName: string; override;
    function GetDescription: string;
    procedure Print; override;
    function CreateIterator: IIterator; override;
  end;

implementation

{ TMenu }

procedure TMenu.Add(MenuComponent: TMenuComponent);
begin
  FMenuComponents.Add(MenuComponent);
end;

constructor TMenu.Create(AName, ADescription: string);
begin
  FName := AName;
  FDescription := ADescription;
  FMenuComponents := TList<TMenuComponent>.Create;
  FIterator := nil;
end;

function TMenu.CreateIterator: IIterator;
begin
  if FIterator = nil then
    FIterator := TMenuComponentIterator.Create(FMenuComponents);
  Result := FIterator;
end;

function TMenu.GetChild(I: Integer): TMenuComponent;
begin
  Result := FMenuComponents.Items[I];
end;

function TMenu.GetDescription: string;
begin
  Result := FDescription;
end;

function TMenu.GetName: string;
begin
  Result := FName;
end;

procedure TMenu.Print;
begin
  Write(sLineBreak + GetName);
  WriteLn(', ' + GetDescription);
  WriteLn('-------------------');

  var Iterator := TMenuComponentIterator.Create(FMenuComponents);
  while Iterator.HasNext do
  begin
    var MenuComponent := Iterator.Next as TMenuComponent;
    MenuComponent.Print;
  end;
end;

procedure TMenu.Remove(MenuComponent: TMenuComponent);
begin
  FMenuComponents.Remove(MenuComponent);
end;

end.
