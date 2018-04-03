object frmActivate: TfrmActivate
  Left = 558
  Top = 539
  BorderStyle = bsDialog
  Caption = 'frmActivate'
  ClientHeight = 135
  ClientWidth = 301
  Color = 15590358
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 86
    Top = 68
    Width = 103
    Height = 16
    Caption = #1050#1086#1076' '#1072#1082#1090#1080#1074#1072#1094#1080#1080': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 236
    Top = 56
    Width = 8
    Height = 29
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 39
    Width = 181
    Height = 16
    Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1087#1088#1086#1076#1091#1082#1090#1072': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 236
    Top = 27
    Width = 8
    Height = 29
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LbStaticText1: TLbStaticText
    Tag = 1
    Left = 0
    Top = 0
    Width = 301
    Height = 30
    Align = alTop
    Caption = #1040#1082#1090#1080#1074#1072#1094#1080#1103' '#1087#1088#1086#1076#1091#1082#1090#1072
    Color = 13876122
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    ParentColor = False
    ParentFont = False
    Style = bsModern
    OnMouseDown = LbStaticText1MouseDown
  end
  object Edit1: TEdit
    Left = 192
    Top = 64
    Width = 41
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    MaxLength = 4
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 248
    Top = 64
    Width = 41
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    MaxLength = 4
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnChange = Edit2Change
  end
  object LbButton2: TLbButton
    Left = 81
    Top = 100
    Width = 100
    Height = 25
    Caption = '&OK'
    Color = 13876122
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    ModalResult = 1
    NumGlyphs = 2
    ParentColor = False
    ParentFont = False
    Style = bsModern
    TabOrder = 2
    UseHotTrackFont = False
  end
  object LbButton1: TLbButton
    Left = 193
    Top = 100
    Width = 100
    Height = 25
    Caption = '&Abbrechen'
    Color = 13876122
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    ModalResult = 2
    NumGlyphs = 2
    ParentColor = False
    ParentFont = False
    Style = bsModern
    TabOrder = 3
    UseHotTrackFont = False
  end
  object Edit3: TEdit
    Left = 192
    Top = 35
    Width = 41
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    MaxLength = 4
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    OnChange = Edit1Change
  end
  object Edit4: TEdit
    Left = 248
    Top = 35
    Width = 41
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    MaxLength = 4
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    OnChange = Edit2Change
  end
end
