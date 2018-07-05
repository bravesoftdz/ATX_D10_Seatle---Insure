object frmExcelParams: TfrmExcelParams
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1101#1082#1089#1087#1086#1088#1090#1072' '#1092#1072#1081#1083#1072' '#1080#1079' Excel'
  ClientHeight = 151
  ClientWidth = 360
  Color = 15464939
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 190
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1089#1090#1086#1083#1073#1094#1072' '#1089' '#1085#1086#1084#1077#1088#1072#1084#1080' '#1089#1090#1088#1072#1093#1086#1074#1086#1082
  end
  object Label2: TLabel
    Left = 16
    Top = 70
    Width = 150
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1089#1090#1088#1086#1082#1080' '#1085#1072#1095#1072#1083#1072' '#1076#1072#1085#1085#1099#1093
  end
  object Label3: TLabel
    Left = 16
    Top = 43
    Width = 121
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1089#1090#1086#1083#1073#1094#1072' '#1089' '#1089#1091#1084#1084#1086#1081
  end
  object n_row_insure: TEdit
    Left = 224
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = n_row_insureKeyPress
  end
  object n_row_coast: TEdit
    Left = 224
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = n_row_insureKeyPress
  end
  object n_col_start: TEdit
    Left = 224
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = n_row_insureKeyPress
  end
  object LbButton2: TLbButton
    Left = 245
    Top = 113
    Width = 100
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Color = 9878678
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
    TabOrder = 3
    UseHotTrackFont = False
    OnClick = LbButton2Click
  end
  object LbB_Search: TLbButton
    Left = 131
    Top = 113
    Width = 100
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Color = 9878678
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
    TabOrder = 4
    UseHotTrackFont = False
    OnClick = LbB_SearchClick
  end
  object ExcelParamsStorage: TFormStorage
    IniSection = 'frmExcelParams'
    UseRegistry = True
    StoredProps.Strings = (
      'n_row_insure.Text'
      'n_row_coast.Text'
      'n_col_start.Text')
    StoredValues = <>
    Left = 48
    Top = 96
  end
end
