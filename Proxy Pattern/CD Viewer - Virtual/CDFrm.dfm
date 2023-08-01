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
    Left = 214
    Top = 121
    Width = 200
    Height = 200
    Center = True
    Proportional = True
  end
  object mmFavCDs: TMainMenu
    AutoHotkeys = maManual
    Left = 48
    Top = 176
    object FavoriteCDs1: TMenuItem
      Caption = 'Favorite CDs'
    end
  end
end
