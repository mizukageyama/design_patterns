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
    Left = 248
    Top = 184
    Width = 105
    Height = 105
  end
  object mmFavCDs: TMainMenu
    Left = 48
    Top = 176
    object FavoriteCDs1: TMenuItem
      Caption = 'Favorite CDs'
      object BuddhaBar1: TMenuItem
        Caption = 'Buddha Bar'
        OnClick = BuddhaBar1Click
      end
      object BuddhaBar2: TMenuItem
        Caption = 'Selected Ambient Works, Vol. 2'
      end
      object NorthExposure1: TMenuItem
        Caption = 'North Exposure'
      end
      object Ima1: TMenuItem
        Caption = 'Ima'
      end
      object MXM1: TMenuItem
        Caption = 'MCMXC A.D.'
      end
      object Karma1: TMenuItem
        Caption = 'Karma'
      end
      object AmbientMusicforAirport1: TMenuItem
        Caption = 'Ambient: Music for Airports'
      end
    end
  end
end
