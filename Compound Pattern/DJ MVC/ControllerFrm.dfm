object ControllerForm: TControllerForm
  Left = 0
  Top = 0
  Caption = 'Controller'
  ClientHeight = 170
  ClientWidth = 227
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlInput: TPanel
    Left = 0
    Top = 41
    Width = 227
    Height = 53
    Align = alClient
    BevelOuter = bvNone
    Padding.Top = 5
    Padding.Bottom = 5
    TabOrder = 0
    ExplicitHeight = 47
    object lblEnter: TLabel
      Left = 0
      Top = 5
      Width = 105
      Height = 43
      Align = alClient
      Caption = 'Enter BPM: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 89
      ExplicitHeight = 23
    end
    object edtBPM: TEdit
      Left = 105
      Top = 5
      Width = 122
      Height = 43
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 104
      ExplicitTop = 1
      ExplicitHeight = 31
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 227
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = -12
    ExplicitWidth = 185
    object lblTitle: TLabel
      Left = 1
      Top = 1
      Width = 225
      Height = 35
      Align = alTop
      Caption = 'DJ Control'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 163
    end
  end
  object pnlButton: TPanel
    Left = 0
    Top = 128
    Width = 227
    Height = 42
    Align = alBottom
    Padding.Top = 5
    Padding.Bottom = 5
    TabOrder = 2
    object btnIncrease: TButton
      Left = 116
      Top = 6
      Width = 110
      Height = 30
      Align = alRight
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 126
      ExplicitHeight = 38
    end
    object btnDecrease: TButton
      Left = 1
      Top = 6
      Width = 110
      Height = 30
      Align = alLeft
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ExplicitHeight = 38
    end
  end
  object btnSet: TButton
    Left = 0
    Top = 94
    Width = 227
    Height = 34
    Align = alBottom
    Caption = 'Set'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitWidth = 225
  end
end
