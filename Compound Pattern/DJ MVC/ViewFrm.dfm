object ViewForm: TViewForm
  Left = 0
  Top = 0
  Caption = 'View'
  ClientHeight = 54
  ClientWidth = 271
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlBeat: TPanel
    Left = 0
    Top = 0
    Width = 271
    Height = 22
    Align = alClient
    TabOrder = 0
    object pbBeatBar: TProgressBar
      Left = 1
      Top = 1
      Width = 275
      Height = 29
      Align = alClient
      Max = 5
      Smooth = True
      BarColor = clHotLight
      BackgroundColor = clHighlight
      TabOrder = 0
      ExplicitWidth = 269
      ExplicitHeight = 20
    end
  end
  object pnlInfo: TPanel
    Left = 0
    Top = 22
    Width = 271
    Height = 32
    Align = alBottom
    TabOrder = 1
    object lblBeatInfo: TLabel
      Left = 1
      Top = 1
      Width = 89
      Height = 20
      Align = alClient
      Alignment = taCenter
      Caption = 'Current BPM: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object tmrPerBeat: TTimer
    Interval = 50
    OnTimer = tmrPerBeatTimer
    Left = 16
    Top = 16
  end
end
