object frmsearch: Tfrmsearch
  Left = 152
  Top = 62
  BorderIcons = [biSystemMenu]
  Caption = #1055#1086#1080#1089#1082
  ClientHeight = 574
  ClientWidth = 874
  Color = 15464939
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 874
    Height = 530
    Align = alClient
    Caption = #1050#1088#1080#1090#1077#1088#1080#1081' '#1087#1086#1080#1089#1082#1072
    Color = 15464939
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 2
      Top = 15
      Width = 870
      Height = 513
      HorzScrollBar.Size = 15
      HorzScrollBar.Style = ssFlat
      VertScrollBar.Size = 15
      VertScrollBar.Style = ssFlat
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 15464939
      ParentColor = False
      TabOrder = 0
      object Label1: TLabel
        Left = 128
        Top = 292
        Width = 6
        Height = 13
        Caption = #1089
      end
      object Label2: TLabel
        Left = 202
        Top = 292
        Width = 12
        Height = 13
        Caption = #1087#1086
      end
      object Label3: TLabel
        Left = 593
        Top = 256
        Width = 6
        Height = 13
        Caption = #1089
      end
      object Label4: TLabel
        Left = 593
        Top = 272
        Width = 12
        Height = 13
        Caption = #1087#1086
      end
      object Label5: TLabel
        Left = 593
        Top = 312
        Width = 6
        Height = 13
        Caption = #1089
      end
      object Label6: TLabel
        Left = 593
        Top = 326
        Width = 12
        Height = 13
        Caption = #1087#1086
      end
      object year_box: TCheckBox
        Left = 8
        Top = 284
        Width = 97
        Height = 17
        Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072' (4)'
        TabOrder = 17
        OnClick = year_boxClick
      end
      object vin_edit: TEdit
        Left = 128
        Top = 308
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 19
      end
      object vin_box: TCheckBox
        Left = 8
        Top = 308
        Width = 97
        Height = 17
        Caption = 'VIN'
        TabOrder = 18
        OnClick = vin_boxClick
      end
      object Source2_box: TCheckBox
        Left = 441
        Top = 120
        Width = 121
        Height = 17
        Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1089#1086#1076#1077#1088#1078#1072#1085#1080#1103
        TabOrder = 30
        OnClick = Source2_boxClick
      end
      object Source1_box: TCheckBox
        Left = 441
        Top = 96
        Width = 145
        Height = 17
        Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1087#1088#1080#1086#1073#1088#1077#1090#1077#1085#1080#1103
        TabOrder = 28
        OnClick = Source1_boxClick
      end
      object shas_edit: TEdit
        Left = 600
        Top = 48
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 25
      end
      object serv_box: TCheckBox
        Left = 8
        Top = 96
        Width = 97
        Height = 17
        Caption = #1057#1083#1091#1078#1073#1072
        TabOrder = 8
        OnClick = serv_boxClick
      end
      object reg_box: TCheckBox
        Left = 8
        Top = 0
        Width = 121
        Height = 17
        Caption = #1043#1072#1088#1085#1080#1079#1086#1085'/'#1054#1073#1083#1072#1089#1090#1100
        TabOrder = 0
        OnClick = reg_boxClick
      end
      object pts_edit: TEdit
        Left = 600
        Top = 72
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 27
      end
      object pre_depart_box: TCheckBox
        Left = 8
        Top = 72
        Width = 97
        Height = 17
        Caption = #1055#1086#1076'-'#1086#1090#1076#1077#1083
        TabOrder = 6
        OnClick = pre_depart_boxClick
      end
      object numb2_edit: TEdit
        Left = 128
        Top = 236
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 16
      end
      object numb2_box: TCheckBox
        Left = 8
        Top = 236
        Width = 97
        Height = 17
        Caption = #1043#1086#1089' '#8470' (2)'
        TabOrder = 15
        OnClick = numb2_boxClick
      end
      object numb1_edit: TEdit
        Left = 128
        Top = 212
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 14
      end
      object numb1_box: TCheckBox
        Left = 8
        Top = 212
        Width = 97
        Height = 17
        Caption = #1043#1086#1089' '#8470' (1)'
        TabOrder = 13
        OnClick = numb1_boxClick
      end
      object NShas_box: TCheckBox
        Left = 441
        Top = 48
        Width = 97
        Height = 17
        Caption = #8470' '#1096#1072#1089#1089#1080
        TabOrder = 24
        OnClick = NShas_boxClick
      end
      object Npts_box: TCheckBox
        Left = 441
        Top = 72
        Width = 97
        Height = 17
        Caption = #8470' '#1090#1077#1093#1087#1072#1089#1087#1086#1088#1090#1072
        TabOrder = 26
        OnClick = Npts_boxClick
      end
      object Neng_box: TCheckBox
        Left = 441
        Top = 1
        Width = 97
        Height = 17
        Caption = #8470' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
        TabOrder = 20
        OnClick = Neng_boxClick
      end
      object Nbody_box: TCheckBox
        Left = 441
        Top = 24
        Width = 97
        Height = 17
        Caption = #8470' '#1082#1091#1079#1086#1074#1072
        TabOrder = 22
        OnClick = Nbody_boxClick
      end
      object mark_box: TCheckBox
        Left = 8
        Top = 168
        Width = 97
        Height = 17
        Caption = #1052#1072#1088#1082#1072
        TabOrder = 10
        OnClick = mark_boxClick
      end
      object InAccount_box: TCheckBox
        Left = 441
        Top = 248
        Width = 153
        Height = 17
        Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1085#1072' '#1091#1095#1077#1090
        TabOrder = 36
        OnClick = InAccount_boxClick
      end
      object InAc2: TDateEdit
        Left = 608
        Top = 272
        Width = 137
        Height = 21
        Enabled = False
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 38
      end
      object InAc1: TDateEdit
        Left = 608
        Top = 245
        Width = 137
        Height = 21
        Enabled = False
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 37
      end
      object Group_box: TCheckBox
        Left = 441
        Top = 144
        Width = 137
        Height = 17
        Caption = #1043#1088#1091#1087#1087#1072' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
        TabOrder = 32
        OnClick = Group_boxClick
      end
      object eng_edit: TEdit
        Left = 600
        Top = 1
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 21
      end
      object div_box: TCheckBox
        Left = 8
        Top = 24
        Width = 97
        Height = 17
        Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
        TabOrder = 2
        OnClick = div_boxClick
      end
      object depart_box: TCheckBox
        Left = 8
        Top = 48
        Width = 97
        Height = 17
        Caption = #1054#1090#1076#1077#1083
        TabOrder = 4
        OnClick = depart_boxClick
      end
      object db_source2: TRxDBLookupCombo
        Left = 600
        Top = 117
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_source
        TabOrder = 31
      end
      object db_source1: TRxDBLookupCombo
        Left = 600
        Top = 93
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_source
        TabOrder = 29
      end
      object db_serv: TRxDBLookupCombo
        Left = 128
        Top = 96
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_serv
        TabOrder = 9
      end
      object db_reg: TRxDBLookupCombo
        Left = 128
        Top = 0
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_reg
        TabOrder = 1
      end
      object db_pre: TRxDBLookupCombo
        Left = 128
        Top = 72
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_pre
        TabOrder = 7
      end
      object db_mark: TRxDBLookupCombo
        Left = 128
        Top = 168
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_mark
        TabOrder = 11
        OnChange = db_markChange
      end
      object db_group: TRxDBLookupCombo
        Left = 600
        Top = 141
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_group
        TabOrder = 33
      end
      object db_div: TRxDBLookupCombo
        Left = 128
        Top = 24
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_div
        TabOrder = 3
      end
      object db_depart: TRxDBLookupCombo
        Left = 128
        Top = 48
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_depart
        TabOrder = 5
      end
      object body_edit: TEdit
        Left = 600
        Top = 24
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 23
      end
      object State_box: TRadioButton
        Left = 441
        Top = 296
        Width = 113
        Height = 17
        Caption = #1042' '#1086#1090#1089#1090#1086#1077
        TabOrder = 39
        OnClick = State_boxClick
      end
      object OutAccount_box: TRadioButton
        Left = 441
        Top = 312
        Width = 113
        Height = 17
        Caption = #1057#1085#1103#1090#1099' '#1089' '#1091#1095#1077#1090#1072
        TabOrder = 40
        OnClick = State_boxClick
      end
      object life_box: TRadioButton
        Left = 441
        Top = 328
        Width = 113
        Height = 17
        Caption = #1057#1087#1080#1089#1072#1085#1085#1099#1077
        TabOrder = 41
        OnClick = State_boxClick
      end
      object RadioButton1: TRadioButton
        Left = 441
        Top = 344
        Width = 297
        Height = 17
        Caption = #1053#1077' '#1087#1088#1080#1085#1080#1084#1072#1090#1100' '#1074#1086' '#1074#1085#1080#1084#1072#1085#1080#1077
        Checked = True
        TabOrder = 42
        TabStop = True
        OnClick = RadioButton1Click
      end
      object OutD1: TDateEdit
        Left = 608
        Top = 304
        Width = 137
        Height = 21
        Enabled = False
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 43
      end
      object OutD2: TDateEdit
        Left = 608
        Top = 326
        Width = 137
        Height = 21
        Enabled = False
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 44
      end
      object model_box: TCheckBox
        Left = 8
        Top = 190
        Width = 97
        Height = 17
        Caption = #1052#1086#1076#1077#1083#1100
        TabOrder = 12
        OnClick = model_boxClick
      end
      object insur_box: TCheckBox
        Left = 441
        Top = 168
        Width = 97
        Height = 17
        Caption = #8470' '#1089#1090#1088#1072#1093#1086#1074#1082#1080
        TabOrder = 34
        OnClick = insur_boxClick
      end
      object insur_edit: TEdit
        Left = 600
        Top = 168
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 35
      end
      object Date_Insur: TDateEdit
        Left = 600
        Top = 192
        Width = 145
        Height = 21
        Enabled = False
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 45
      end
      object date_insur_box: TCheckBox
        Left = 441
        Top = 192
        Width = 97
        Height = 17
        Caption = #1057' '#1076#1072#1090#1099
        TabOrder = 46
        OnClick = date_insur_boxClick
      end
      object dislok_box: TCheckBox
        Left = 8
        Top = 144
        Width = 121
        Height = 17
        Caption = #1052#1077#1089#1090#1086' '#1076#1080#1089#1083#1086#1082#1072#1094#1080#1080
        TabOrder = 47
        OnClick = dislok_boxClick
      end
      object db_dislok: TRxDBLookupCombo
        Left = 128
        Top = 144
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_dislok
        TabOrder = 48
      end
      object oldNumBox: TCheckBox
        Left = 8
        Top = 260
        Width = 97
        Height = 17
        Caption = #1055#1088#1077#1076'. '#1043#1086#1089' '#8470
        TabOrder = 49
        OnClick = oldNumBoxClick
      end
      object old_number: TEdit
        Left = 128
        Top = 260
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 50
      end
      object model_edit: TRxDBLookupCombo
        Left = 128
        Top = 190
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_model
        TabOrder = 51
      end
      object preserv_box: TCheckBox
        Left = 8
        Top = 120
        Width = 97
        Height = 17
        Caption = #1055#1086#1076' '#1089#1083#1091#1078#1073#1072
        TabOrder = 52
        OnClick = preserv_boxClick
      end
      object db_preserv: TRxDBLookupCombo
        Left = 128
        Top = 120
        Width = 250
        Height = 21
        DropDownCount = 16
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_preserv
        TabOrder = 53
      end
      object TnotATX: TCheckBox
        Left = 441
        Top = 362
        Width = 97
        Height = 17
        Caption = #1053#1077' '#1091#1095#1077#1090' '#1040#1058#1061
        TabOrder = 54
      end
      object year1: TMaskEdit
        Left = 136
        Top = 284
        Width = 56
        Height = 21
        EditMask = '!9999;1;_'
        MaxLength = 4
        TabOrder = 55
        Text = '    '
      end
      object year2: TMaskEdit
        Left = 216
        Top = 284
        Width = 57
        Height = 21
        EditMask = '!9999;1;_'
        MaxLength = 4
        TabOrder = 56
        Text = '    '
      end
    end
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 530
    Width = 874
    Height = 44
    Align = alBottom
    Color = 15464939
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object LbB_Search: TLbButton
      Left = 7
      Top = 12
      Width = 100
      Height = 25
      Caption = #1053#1072#1095#1072#1090#1100' '#1087#1086#1080#1089#1082
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
      TabOrder = 1
      UseHotTrackFont = False
      OnClick = bclClick
    end
  end
  object SearchStorage: TFormStorage
    IniSection = 'searchForm'
    UseRegistry = True
    StoredProps.Strings = (
      'date_insur_box.Checked'
      'depart_box.Checked'
      'dislok_box.Checked'
      'div_box.Checked'
      'Group_box.Checked'
      'InAccount_box.Checked'
      'insur_box.Checked'
      'life_box.Checked'
      'model_box.Checked'
      'Nbody_box.Checked'
      'Neng_box.Checked'
      'Npts_box.Checked'
      'NShas_box.Checked'
      'numb1_box.Checked'
      'numb2_box.Checked'
      'oldNumBox.Checked'
      'pre_depart_box.Checked'
      'RadioButton1.Checked'
      'OutAccount_box.Checked'
      'reg_box.Checked'
      'serv_box.Checked'
      'Source1_box.Checked'
      'Source2_box.Checked'
      'State_box.Checked'
      'vin_box.Checked'
      'year_box.Checked'
      'numb1_edit.Text'
      'numb2_edit.Text'
      'old_number.Text'
      'vin_edit.Text'
      'insur_edit.Text'
      'pts_edit.Text'
      'OutD1.Text'
      'OutD2.Text'
      'shas_edit.Text'
      'eng_edit.Text'
      'InAc1.Text'
      'InAc2.Text'
      'body_edit.Text'
      'Date_Insur.Text'
      'mark_box.Checked')
    StoredValues = <>
    Left = 88
    Top = 360
  end
end
