object ViewForm: TViewForm
  Left = 0
  Top = 0
  Caption = 'View'
  ClientHeight = 63
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlBeat: TPanel
    Left = 0
    Top = 0
    Width = 277
    Height = 31
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 271
    ExplicitHeight = 22
    object pbBeatBar: TProgressBar
      Left = 1
      Top = 1
      Width = 275
      Height = 29
      Align = alClient
      Max = 5
      Smooth = True
      BarColor = clHotLight
      TabOrder = 0
      ExplicitWidth = 269
      ExplicitHeight = 20
    end
  end
  object pnlInfo: TPanel
    Left = 0
    Top = 31
    Width = 277
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 22
    ExplicitWidth = 271
    object lblBeatInfo: TLabel
      Left = 1
      Top = 1
      Width = 275
      Height = 30
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
      ExplicitWidth = 89
      ExplicitHeight = 20
    end
  end
  object tmrPerBeat: TTimer
    Interval = 50
    OnTimer = tmrPerBeatTimer
    Left = 16
    Top = 16
  end
end
