object CDForm: TCDForm
  Left = 0
  Top = 0
  Caption = 'CD Cover Viewer'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmFavCDs
  OnCreate = FormCreate
  TextHeight = 15
  object imgDisplay: TImage
    Left = 217
    Top = 129
    Width = 193
    Height = 185
    Proportional = True
  end
  object lblLoading: TLabel
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitLeft = 8
    ExplicitTop = 192
    ExplicitWidth = 601
    ExplicitHeight = 57
  end
  object mmFavCDs: TMainMenu
    AutoHotkeys = maManual
    Left = 48
    Top = 176
    object FavoriteCDs1: TMenuItem
      Caption = 'Favorite CDs'
    end
  end
  object NetHTTPClient1: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 528
    Top = 40
  end
  object NetHTTPRequest1: TNetHTTPRequest
    ConnectionTimeout = 0
    SendTimeout = 0
    ResponseTimeout = 0
    Left = 528
    Top = 104
  end
end
