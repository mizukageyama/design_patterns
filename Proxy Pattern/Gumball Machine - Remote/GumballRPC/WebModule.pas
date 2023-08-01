unit WebModule;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp, MVCFramework, GumballMachine,
  GumballMachineIntf, MVCFramework.JSONRPC;

type
  TMyWebModule = class(TWebModule)
    procedure WebModuleCreate(Sender: TObject);
    procedure WebModuleDestroy(Sender: TObject);
  private
    FMVC: TMVCEngine;
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TMyWebModule;
  DavaoGumballMachine: IGumballMachine;
  CDOGumballMachine: IGumballMachine;
  GensanGumballMachine: IGumballMachine;

implementation

{$R *.dfm}

uses 
  System.IOUtils,
  MVCFramework.Commons;

procedure TMyWebModule.WebModuleCreate(Sender: TObject);
begin
  FMVC := TMVCEngine.Create(Self);

  if not Assigned(DavaoGumballMachine) then
    DavaoGumballMachine := TGumballMachine.Create(10, 'Davao');

  if not Assigned(CDOGumballMachine) then
    CDOGumballMachine := TGumballMachine.Create(40, 'CDO');

  if not Assigned(GensanGumballMachine) then
    GensanGumballMachine := TGumballMachine.Create(0, 'Gensan');

  FMVC.PublishObject(function: TObject
    begin
      Result := DavaoGumballMachine as TGumballMachine;
    end, '/davao'
  );

  FMVC.PublishObject(function: TObject
    begin
      Result := CDOGumballMachine as TGumballMachine;
    end, '/cdo'
  );

  FMVC.PublishObject(function: TObject
    begin
      Result := GensanGumballMachine as TGumballMachine;
    end, '/gensan'
  );
end;

procedure TMyWebModule.WebModuleDestroy(Sender: TObject);
begin
  FMVC.Free;
end;

end.
