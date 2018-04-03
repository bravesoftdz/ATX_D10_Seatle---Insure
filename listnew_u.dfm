object frmListNewAvto: TfrmListNewAvto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1080#1089#1086#1082' '#1085#1086#1074#1099#1093' '#1090#1088#1072#1085'.'#1089#1088#1077#1076#1089#1090#1074
  ClientHeight = 527
  ClientWidth = 803
  Color = 15590358
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox6: TGroupBox
    Left = 0
    Top = 483
    Width = 803
    Height = 44
    Align = alBottom
    TabOrder = 0
    object LbB_Search: TLbButton
      Left = 7
      Top = 12
      Width = 100
      Height = 25
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1074' '#1041#1044
      Color = 13876122
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ModalResult = 0
      ParentColor = False
      ParentFont = False
      Style = bsModern
      TabOrder = 0
      UseHotTrackFont = False
      OnClick = LbB_SearchClick
    end
    object LbButton2: TLbButton
      Left = 113
      Top = 12
      Width = 100
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Color = 13876122
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ModalResult = 0
      ParentColor = False
      ParentFont = False
      Style = bsModern
      TabOrder = 1
      UseHotTrackFont = False
      OnClick = LbButton2Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 483
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitLeft = 384
    ExplicitTop = 376
    ExplicitWidth = 185
    ExplicitHeight = 41
    object StringGrid1: TStringGrid
      Left = 1
      Top = 1
      Width = 801
      Height = 481
      Align = alClient
      ColCount = 7
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 0
      OnDrawCell = StringGrid1DrawCell
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 803
      ExplicitHeight = 321
    end
  end
  object ListStorage: TFormStorage
    IniSection = 'Software\LebAlex\atx_uvd\listForm'
    UseRegistry = False
    StoredValues = <>
    Left = 656
    Top = 432
  end
end
