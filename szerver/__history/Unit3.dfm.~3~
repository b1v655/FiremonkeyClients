object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Panaszbejelent'#337' rendszer szerver'
  ClientHeight = 261
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '2019'
  end
  object CheckBox1: TCheckBox
    Left = 160
    Top = 26
    Width = 105
    Height = 17
    Caption = 'Szerver aktiv'#225'l'#225's'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 72
    Width = 121
    Height = 181
    ItemHeight = 13
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 144
    Top = 72
    Width = 266
    Height = 181
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 289
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'Rendszer'#252'zenet'
  end
  object IdTCPServer1: TIdTCPServer
    Bindings = <>
    DefaultPort = 0
    OnConnect = IdTCPServer1Connect
    OnDisconnect = IdTCPServer1Disconnect
    OnExecute = IdTCPServer1Execute
  end
end
