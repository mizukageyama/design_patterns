object ControllerForm: TControllerForm
  Left = 0
  Top = 0
  Caption = 'Controller'
  ClientHeight = 114
  ClientWidth = 227
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmDJControl
  TextHeight = 15
  object pnlInput: TPanel
    Left = 0
    Top = 0
    Width = 227
    Height = 38
    Align = alClient
    BevelOuter = bvNone
    Padding.Top = 5
    Padding.Bottom = 5
    TabOrder = 0
    ExplicitWidth = 221
    ExplicitHeight = 29
    object lblEnter: TLabel
      Left = 0
      Top = 5
      Width = 105
      Height = 28
      Align = alClient
      Caption = 'Enter BPM: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 89
      ExplicitHeight = 23
    end
    object edtBPM: TEdit
      Left = 105
      Top = 5
      Width = 122
      Height = 28
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 99
      ExplicitHeight = 31
    end
  end
  object pnlButton: TPanel
    Left = 0
    Top = 72
    Width = 227
    Height = 42
    Align = alBottom
    Padding.Top = 5
    Padding.Bottom = 5
    TabOrder = 1
    ExplicitTop = 63
    ExplicitWidth = 221
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
      OnClick = btnIncreaseClick
      ExplicitLeft = 110
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
      OnClick = btnDecreaseClick
    end
  end
  object btnSet: TButton
    Left = 0
    Top = 38
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
    TabOrder = 2
    OnClick = btnSetClick
    ExplicitTop = 29
    ExplicitWidth = 221
  end
  object mmDJControl: TMainMenu
    Left = 24
    Top = 1
    object DJControl1: TMenuItem
      Caption = 'DJ Control'
      object Start1: TMenuItem
        Caption = 'Start'
        OnClick = Start1Click
      end
      object Stop1: TMenuItem
        Caption = 'Stop'
        OnClick = Stop1Click
      end
      object Quit1: TMenuItem
        Caption = 'Quit'
        OnClick = Quit1Click
      end
    end
  end
end
