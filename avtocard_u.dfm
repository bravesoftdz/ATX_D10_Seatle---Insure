object frmavtocard: Tfrmavtocard
  Left = 363
  Top = 128
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1072#1074#1090#1086#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
  ClientHeight = 621
  ClientWidth = 809
  Color = 15464939
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 809
    Height = 621
    Align = alClient
    Color = 15464939
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 807
      Height = 619
      Align = alClient
      BevelOuter = bvNone
      Color = 15464939
      ParentBackground = False
      TabOrder = 0
      Visible = False
      object RecN: TLabel
        Left = 257
        Top = 597
        Width = 6
        Height = 13
        Caption = '1'
      end
      object Label27: TLabel
        Left = 152
        Top = 597
        Width = 87
        Height = 13
        Caption = #1058#1077#1082#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100':'
      end
      object RecCount: TLabel
        Left = 88
        Top = 597
        Width = 42
        Height = 13
        Caption = '1000000'
      end
      object Label26: TLabel
        Left = 0
        Top = 597
        Width = 82
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1079#1072#1087#1080#1089#1077#1081':'
      end
      object Label21: TLabel
        Left = 416
        Top = 96
        Width = 38
        Height = 13
        Caption = 'Label21'
      end
      object Label23: TLabel
        Left = 424
        Top = 168
        Width = 38
        Height = 13
        Caption = 'Label23'
      end
      object Label38: TLabel
        Left = 416
        Top = 272
        Width = 38
        Height = 13
        Caption = 'Label38'
      end
      object GroupBox4: TGroupBox
        Left = 424
        Top = 523
        Width = 116
        Height = 70
        Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091
        TabOrder = 0
        object LbB_Find: TLbButton
          Left = 8
          Top = 40
          Width = 100
          Height = 25
          Caption = #1053#1072#1081#1090#1080
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
          OnClick = LbB_FindClick
        end
        object find_numb_edit: TEdit
          Left = 8
          Top = 16
          Width = 100
          Height = 21
          TabOrder = 0
          OnKeyDown = find_numb_editKeyDown
        end
      end
      object LbButton24: TLbButton
        Left = 547
        Top = 525
        Width = 100
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100
        Color = clGreen
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
        OnClick = LbButton24Click
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 807
        Height = 516
        ActivePage = TabSheet1
        Align = alTop
        TabOrder = 2
        object TabSheet1: TTabSheet
          Caption = #1058#1077#1093'. '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
          object GroupBox1: TGroupBox
            Left = 4
            Top = 9
            Width = 789
            Height = 112
            Color = 15464939
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 15
              Width = 100
              Height = 13
              Caption = #1043#1072#1088#1085#1080#1079#1086#1085'/'#1054#1073#1083#1072#1089#1090#1100'*'
            end
            object Label2: TLabel
              Left = 8
              Top = 36
              Width = 69
              Height = 13
              Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' *'
            end
            object Label3: TLabel
              Left = 421
              Top = 13
              Width = 38
              Height = 13
              Caption = #1054#1090#1076#1077#1083' *'
            end
            object Label4: TLabel
              Left = 421
              Top = 37
              Width = 52
              Height = 13
              Caption = #1055#1086#1076'-'#1086#1090#1076#1077#1083
            end
            object Label5: TLabel
              Left = 8
              Top = 59
              Width = 45
              Height = 13
              Caption = #1057#1083#1091#1078#1073#1072' *'
            end
            object Label36: TLabel
              Left = 421
              Top = 63
              Width = 95
              Height = 13
              Caption = #1052#1077#1089#1090#1086' '#1076#1080#1089#1083#1086#1082#1072#1094#1080#1080
            end
            object Label69: TLabel
              Left = 8
              Top = 83
              Width = 66
              Height = 13
              Caption = #1055#1086#1076' - '#1089#1083#1091#1078#1073#1072
            end
            object Reg_box: TDBLookupComboBox
              Left = 126
              Top = 15
              Width = 251
              Height = 21
              DataField = 'id_region'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_reg
              TabOrder = 0
              OnEnter = Numb1_editEnter
            end
            object Div_box: TDBLookupComboBox
              Left = 126
              Top = 36
              Width = 251
              Height = 21
              DataField = 'id_division'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_div
              TabOrder = 1
              OnEnter = Numb1_editEnter
            end
            object Depart_box: TDBLookupComboBox
              Left = 526
              Top = 13
              Width = 251
              Height = 21
              DataField = 'id_depart'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_dep
              TabOrder = 2
              OnEnter = Numb1_editEnter
            end
            object PreDepart_box: TDBLookupComboBox
              Left = 526
              Top = 37
              Width = 251
              Height = 21
              DataField = 'id_predepart'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_pred
              TabOrder = 3
              OnEnter = Numb1_editEnter
            end
            object Serv_box: TDBLookupComboBox
              Left = 126
              Top = 59
              Width = 251
              Height = 21
              Color = clWhite
              DataField = 'id_serv'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_serv
              TabOrder = 4
              OnEnter = Numb1_editEnter
            end
            object Dislok_box: TDBLookupComboBox
              Left = 526
              Top = 60
              Width = 251
              Height = 21
              DataField = 'id_dislok'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_dislok
              TabOrder = 5
              OnEnter = Numb1_editEnter
            end
            object PreServ_Box: TDBLookupComboBox
              Left = 126
              Top = 83
              Width = 651
              Height = 21
              DataField = 'id_preserv'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_preserv
              TabOrder = 6
              OnEnter = Numb1_editEnter
            end
          end
          object GroupBox12: TGroupBox
            Left = 4
            Top = 120
            Width = 789
            Height = 45
            Color = 15464939
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            object Label17: TLabel
              Left = 8
              Top = 8
              Width = 78
              Height = 26
              Caption = #1048#1089#1090#1086#1095#1085#1080#1082#13#10#1087#1088#1080#1086#1073#1088#1077#1090#1077#1085#1080#1103' *'
            end
            object Label18: TLabel
              Left = 272
              Top = 8
              Width = 69
              Height = 26
              Caption = #1048#1089#1090#1086#1095#1085#1080#1082#13#10#1089#1086#1076#1077#1088#1078#1072#1085#1080#1103' *'
            end
            object Source_b_box: TDBLookupComboBox
              Left = 111
              Top = 12
              Width = 155
              Height = 21
              DataField = 'id_source_bay'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_source_f
              TabOrder = 0
              OnEnter = Numb1_editEnter
            end
            object Source_f_box: TDBLookupComboBox
              Left = 377
              Top = 12
              Width = 155
              Height = 21
              DataField = 'id_source_fin'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_source_f
              TabOrder = 1
              OnEnter = Numb1_editEnter
            end
          end
          object GroupBox2: TGroupBox
            Left = 4
            Top = 164
            Width = 265
            Height = 320
            Color = 15464939
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
            object Label6: TLabel
              Left = 8
              Top = 15
              Width = 40
              Height = 13
              Caption = #1052#1072#1088#1082#1072' *'
            end
            object Label7: TLabel
              Left = 8
              Top = 36
              Width = 46
              Height = 13
              Caption = #1052#1086#1076#1077#1083#1100' *'
            end
            object Label8: TLabel
              Left = 8
              Top = 57
              Width = 54
              Height = 13
              Caption = #1043#1086#1089' '#8470' (1) *'
            end
            object Label9: TLabel
              Left = 8
              Top = 78
              Width = 47
              Height = 13
              Caption = #1043#1086#1089' '#8470' (2)'
            end
            object Label10: TLabel
              Left = 8
              Top = 99
              Width = 86
              Height = 13
              Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072' (4) *'
            end
            object Label14: TLabel
              Left = 8
              Top = 120
              Width = 32
              Height = 13
              Caption = #1062#1074#1077#1090' *'
            end
            object Label13: TLabel
              Left = 8
              Top = 139
              Width = 25
              Height = 13
              Caption = 'VIN *'
            end
            object Label12: TLabel
              Left = 8
              Top = 227
              Width = 76
              Height = 13
              Caption = #8470' '#1044#1074#1080#1075#1072#1090#1077#1083#1103' *'
            end
            object Label11: TLabel
              Left = 8
              Top = 248
              Width = 57
              Height = 13
              Caption = #8470' '#1050#1091#1079#1086#1074#1072' *'
            end
            object Label15: TLabel
              Left = 8
              Top = 269
              Width = 47
              Height = 13
              Caption = #8470' '#1064#1072#1089#1089#1080
            end
            object Label73: TLabel
              Left = 8
              Top = 162
              Width = 65
              Height = 13
              Caption = #1052#1086#1076#1077#1083#1100' '#1044#1042#1057
            end
            object Label75: TLabel
              Left = 8
              Top = 183
              Width = 35
              Height = 13
              Caption = #1054#1073#1098#1077#1084
            end
            object Label76: TLabel
              Left = 8
              Top = 205
              Width = 74
              Height = 13
              Caption = #1058#1080#1087' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
            end
            object Label77: TLabel
              Left = 8
              Top = 294
              Width = 96
              Height = 13
              Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100' '#1058#1057
            end
            object Mark_box: TDBLookupComboBox
              Left = 110
              Top = 15
              Width = 145
              Height = 21
              DataField = 'id_mark'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_mark
              TabOrder = 0
              OnCloseUp = Mark_boxChange
              OnEnter = Numb1_editEnter
            end
            object Model_edit: TComboBox
              Left = 110
              Top = 36
              Width = 145
              Height = 21
              DropDownCount = 16
              TabOrder = 1
              Text = 'Model_edit'
              OnChange = Model_edit1Change
              OnEnter = Numb1_editEnter
              OnKeyPress = Model_edit1KeyPress
            end
            object Numb1_edit: TDBEdit
              Left = 110
              Top = 57
              Width = 145
              Height = 21
              DataField = 'numb_1'
              DataSource = dm.dss_avto
              TabOrder = 2
              OnEnter = Numb1_editEnter
              OnKeyPress = Numb1_editKeyPress
            end
            object Numb2_edit: TDBEdit
              Left = 110
              Top = 78
              Width = 145
              Height = 21
              DataField = 'numb_2'
              DataSource = dm.dss_avto
              TabOrder = 3
              OnEnter = Numb1_editEnter
            end
            object Year_edit: TDBEdit
              Left = 110
              Top = 99
              Width = 145
              Height = 21
              DataField = 'm_year'
              DataSource = dm.dss_avto
              TabOrder = 4
              OnEnter = Numb1_editEnter
            end
            object Color_edit: TDBEdit
              Left = 110
              Top = 120
              Width = 145
              Height = 21
              DataField = 'color'
              DataSource = dm.dss_avto
              TabOrder = 5
              OnEnter = Numb1_editEnter
            end
            object VIN_edit: TDBEdit
              Left = 110
              Top = 141
              Width = 145
              Height = 21
              DataField = 'vin'
              DataSource = dm.dss_avto
              TabOrder = 6
              OnEnter = Numb1_editEnter
            end
            object NEng_edit: TDBEdit
              Left = 110
              Top = 227
              Width = 145
              Height = 21
              DataField = 'n_engine'
              DataSource = dm.dss_avto
              TabOrder = 7
              OnEnter = Numb1_editEnter
            end
            object NBody_edit: TDBEdit
              Left = 110
              Top = 248
              Width = 145
              Height = 21
              DataField = 'n_body'
              DataSource = dm.dss_avto
              TabOrder = 8
              OnEnter = Numb1_editEnter
            end
            object NShas_edit: TDBEdit
              Left = 110
              Top = 269
              Width = 145
              Height = 21
              DataField = 'n_chassis'
              DataSource = dm.dss_avto
              TabOrder = 9
              OnEnter = Numb1_editEnter
            end
            object modelDVC_Edit: TDBEdit
              Left = 110
              Top = 162
              Width = 145
              Height = 21
              DataField = 'modelDVC'
              DataSource = dm.dss_avto
              TabOrder = 10
              OnEnter = Numb1_editEnter
            end
            object volumeDVC_Edit: TDBEdit
              Left = 110
              Top = 183
              Width = 145
              Height = 21
              DataField = 'volumeDVC'
              DataSource = dm.dss_avto
              TabOrder = 11
              OnEnter = Numb1_editEnter
            end
            object TypeDVC_box: TDBLookupComboBox
              Left = 110
              Top = 205
              Width = 145
              Height = 21
              DataField = 'id_typeDVC'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_typeDVC
              TabOrder = 12
              OnEnter = Numb1_editEnter
            end
            object RxDBLookupCombo3: TDBLookupComboBox
              Left = 110
              Top = 290
              Width = 145
              Height = 21
              DataField = 'id_manufactureTC'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_ManufactureTC
              TabOrder = 13
              OnEnter = Numb1_editEnter
            end
          end
          object GroupBox3: TGroupBox
            Left = 269
            Top = 165
            Width = 275
            Height = 320
            Color = 15464939
            ParentBackground = False
            ParentColor = False
            TabOrder = 3
            object Label16: TLabel
              Left = 12
              Top = 55
              Width = 80
              Height = 13
              Caption = #1058#1077#1093#1087#1072#1089#1087#1086#1088#1090' '#8470' *'
            end
            object Label19: TLabel
              Left = 12
              Top = 99
              Width = 64
              Height = 13
              Caption = #1058#1080#1087' '#1082#1091#1079#1086#1074#1072' *'
            end
            object Label20: TLabel
              Left = 12
              Top = 119
              Width = 84
              Height = 13
              Caption = #1058#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1077' *'
            end
            object Label24: TLabel
              Left = 12
              Top = 135
              Width = 70
              Height = 26
              Caption = #1043#1088#1091#1087#1087#1072#13#10#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
            end
            object Label25: TLabel
              Left = 12
              Top = 163
              Width = 88
              Height = 26
              Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080#13#10#1085#1072' '#1091#1095#1077#1090' *'
            end
            object Label34: TLabel
              Left = 12
              Top = 195
              Width = 38
              Height = 13
              Caption = #1055#1088#1080#1082#1072#1079
            end
            object Label37: TLabel
              Left = 12
              Top = 76
              Width = 66
              Height = 13
              Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            end
            object Label60: TLabel
              Left = 11
              Top = 14
              Width = 81
              Height = 13
              Caption = #1052#1086#1097#1085#1086#1089#1090#1100' ('#1083#1089') *'
            end
            object Label64: TLabel
              Left = 12
              Top = 214
              Width = 77
              Height = 13
              Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1058#1057' *'
            end
            object Label48: TLabel
              Left = 11
              Top = 35
              Width = 80
              Height = 13
              Caption = #1052#1086#1097#1085#1086#1089#1090#1100' ('#1082#1042#1090')'
            end
            object TypeBody_box: TDBLookupComboBox
              Left = 114
              Top = 96
              Width = 155
              Height = 21
              DataField = 'id_type_body'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_type_b
              TabOrder = 4
              OnEnter = Numb1_editEnter
            end
            object Tech_box: TDBLookupComboBox
              Left = 114
              Top = 117
              Width = 155
              Height = 21
              DataField = 'id_tech'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_tech
              TabOrder = 5
              OnEnter = Numb1_editEnter
            end
            object Group_box: TDBLookupComboBox
              Left = 114
              Top = 138
              Width = 155
              Height = 21
              DataField = 'id_group'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_group
              TabOrder = 6
              OnEnter = Numb1_editEnter
            end
            object in_pr: TDBEdit
              Left = 114
              Top = 190
              Width = 156
              Height = 21
              DataField = 'in_pr'
              DataSource = dm.dss_avto
              TabOrder = 8
              OnEnter = Numb1_editEnter
            end
            object InAc_edit: TDBDateEdit
              Left = 114
              Top = 159
              Width = 156
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              DataField = 'in_account'
              DataSource = dm.dss_avto
              NumGlyphs = 2
              TabOrder = 7
              YearDigits = dyFour
              OnEnter = Numb1_editEnter
            end
            object date_texpasport: TDBDateEdit
              Left = 114
              Top = 75
              Width = 156
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              DataField = 'date_texpasport'
              DataSource = dm.dss_avto
              NumGlyphs = 2
              TabOrder = 3
              YearDigits = dyFour
              OnEnter = Numb1_editEnter
            end
            object TypeTc_box: TDBLookupComboBox
              Left = 114
              Top = 212
              Width = 155
              Height = 21
              DataField = 'id_typetc'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_typeTc
              TabOrder = 9
              OnEnter = Numb1_editEnter
            end
            object ElDBEdit5: TDBEdit
              Left = 114
              Top = 10
              Width = 155
              Height = 21
              DataField = 'power_energy_l'
              DataSource = dm.dss_avto
              TabOrder = 0
              OnEnter = Numb1_editEnter
            end
            object NPts_edit: TDBEdit
              Left = 114
              Top = 54
              Width = 155
              Height = 21
              DataField = 'n_pts'
              DataSource = dm.dss_avto
              TabOrder = 2
              OnEnter = Numb1_editEnter
            end
            object DBEdit1: TDBEdit
              Left = 114
              Top = 32
              Width = 155
              Height = 21
              DataField = 'power_energy_k'
              DataSource = dm.dss_avto
              TabOrder = 1
              OnEnter = Numb1_editEnter
            end
          end
          object GroupBox5: TGroupBox
            Left = 544
            Top = 165
            Width = 249
            Height = 320
            Color = 15464939
            ParentBackground = False
            ParentColor = False
            TabOrder = 4
            object PageControl2: TPageControl
              Left = 2
              Top = 15
              Width = 245
              Height = 303
              ActivePage = TabSheet8
              Align = alClient
              OwnerDraw = True
              TabOrder = 0
              OnDrawTab = PageControl2DrawTab
              object TabSheet8: TTabSheet
                Caption = #1054#1090#1089#1090#1086#1081' - '#1057#1087#1080#1089#1072#1085#1080#1077
                ExplicitTop = 20
                object Panel4: TPanel
                  Left = 0
                  Top = 0
                  Width = 237
                  Height = 275
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'Panel4'
                  Color = 15464939
                  ParentBackground = False
                  TabOrder = 0
                  ExplicitLeft = 52
                  ExplicitTop = 234
                  ExplicitWidth = 185
                  ExplicitHeight = 41
                  object Label28: TLabel
                    Left = 5
                    Top = 28
                    Width = 26
                    Height = 13
                    Caption = #1044#1072#1090#1072
                  end
                  object Label29: TLabel
                    Left = 5
                    Top = 48
                    Width = 38
                    Height = 13
                    Caption = #1055#1088#1080#1082#1072#1079
                  end
                  object Label72: TLabel
                    Left = 5
                    Top = 70
                    Width = 36
                    Height = 13
                    Caption = #1054#1090#1089#1090#1086#1081
                  end
                  object Label32: TLabel
                    Left = 5
                    Top = 142
                    Width = 26
                    Height = 13
                    Caption = #1044#1072#1090#1072
                  end
                  object Label33: TLabel
                    Left = 5
                    Top = 166
                    Width = 38
                    Height = 13
                    Caption = #1055#1088#1080#1082#1072#1079
                  end
                  object state_box: TDBCheckBox
                    Left = 5
                    Top = 5
                    Width = 172
                    Height = 17
                    Caption = #1054#1090#1089#1090#1086#1081
                    DataField = 'out_state_ch'
                    DataSource = dm.dss_avto
                    TabOrder = 0
                    OnClick = state_boxClick
                  end
                  object date_state: TDBDateEdit
                    Left = 61
                    Top = 26
                    Width = 150
                    Height = 21
                    Margins.Left = 1
                    Margins.Top = 1
                    DataField = 'out_state'
                    DataSource = dm.dss_avto
                    NumGlyphs = 2
                    TabOrder = 1
                    YearDigits = dyFour
                  end
                  object pr_state: TDBEdit
                    Left = 61
                    Top = 47
                    Width = 150
                    Height = 21
                    DataField = 'out_state_pr'
                    DataSource = dm.dss_avto
                    TabOrder = 2
                  end
                  object RxDBLookupOutState: TDBLookupComboBox
                    Left = 61
                    Top = 74
                    Width = 150
                    Height = 21
                    DataField = 'out_state_state'
                    DataSource = dm.dss_avto
                    Enabled = False
                    KeyField = 'id_out_state'
                    ListField = 'out_state'
                    ListSource = dm.dss_out_state
                    TabOrder = 3
                    OnEnter = Numb1_editEnter
                  end
                  object life_box: TDBCheckBox
                    Left = 3
                    Top = 119
                    Width = 172
                    Height = 17
                    Caption = #1057#1087#1080#1089#1072#1085
                    Color = 15464939
                    DataField = 'out_life_ch'
                    DataSource = dm.dss_avto
                    ParentColor = False
                    TabOrder = 4
                    OnClick = life_boxClick
                  end
                  object date_life: TDBDateEdit
                    Left = 61
                    Top = 142
                    Width = 150
                    Height = 21
                    Margins.Left = 1
                    Margins.Top = 1
                    DataField = 'out_life'
                    DataSource = dm.dss_avto
                    NumGlyphs = 2
                    TabOrder = 5
                    YearDigits = dyFour
                  end
                  object pr_life: TDBEdit
                    Left = 61
                    Top = 163
                    Width = 150
                    Height = 21
                    DataField = 'out_life_pr'
                    DataSource = dm.dss_avto
                    TabOrder = 6
                  end
                  object DBCheckBox1: TDBCheckBox
                    Left = 5
                    Top = 188
                    Width = 172
                    Height = 17
                    Caption = #1053#1077' '#1091#1095#1077#1090' '#1040#1058#1061
                    Color = 15464939
                    DataField = 'notAtx'
                    DataSource = dm.dss_avto
                    ParentColor = False
                    TabOrder = 7
                    OnClick = life_boxClick
                  end
                end
              end
              object TabSheet9: TTabSheet
                Caption = #1057#1085#1103#1090#1080#1077' '#1089' '#1091#1095#1077#1090#1072
                ImageIndex = 1
                object Panel5: TPanel
                  Left = 0
                  Top = 0
                  Width = 237
                  Height = 275
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'Panel5'
                  Color = 15464939
                  ParentBackground = False
                  TabOrder = 0
                  ExplicitLeft = 52
                  ExplicitTop = 234
                  ExplicitWidth = 185
                  ExplicitHeight = 41
                  object Label30: TLabel
                    Left = 5
                    Top = 32
                    Width = 26
                    Height = 13
                    Caption = #1044#1072#1090#1072
                  end
                  object date_out_account: TDBDateEdit
                    Left = 61
                    Top = 30
                    Width = 150
                    Height = 21
                    Margins.Left = 1
                    Margins.Top = 1
                    DataField = 'out_account'
                    DataSource = dm.dss_avto
                    NumGlyphs = 2
                    TabOrder = 0
                    YearDigits = dyFour
                  end
                  object out_account_box: TDBCheckBox
                    Left = 3
                    Top = 9
                    Width = 172
                    Height = 17
                    Caption = #1057#1085#1103#1090#1080#1077' '#1089' '#1091#1095#1077#1090#1072
                    Color = 15464939
                    DataField = 'out_account_ch'
                    DataSource = dm.dss_avto
                    ParentColor = False
                    TabOrder = 1
                    OnClick = out_account_boxClick
                  end
                end
              end
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = #1054#1057#1040#1043#1054
          ImageIndex = 7
          object Panel_Osago: TPanel
            Left = 0
            Top = 0
            Width = 799
            Height = 488
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel'
            Color = 15464939
            ParentBackground = False
            TabOrder = 0
            object DBGrid_Osago: TDBGrid
              Left = 0
              Top = 66
              Width = 799
              Height = 367
              Align = alTop
              DataSource = dm.dss_osago
              FixedColor = 9878678
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid_OsagoDrawColumnCell
              OnDblClick = LbButtonEdit_OsagoClick
            end
            object LbButtonAdd_Osago: TLbButton
              Left = 7
              Top = 448
              Width = 100
              Height = 25
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
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
              OnClick = LbButtonAdd_OsagoClick
            end
            object LbButtonDel_Osago: TLbButton
              Left = 219
              Top = 448
              Width = 100
              Height = 25
              Caption = #1059#1076#1072#1083#1080#1090#1100
              Color = clMaroon
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
              TabOrder = 2
              UseHotTrackFont = False
              OnClick = LbButtonDel_OsagoClick
            end
            object LbButtonEdit_Osago: TLbButton
              Left = 113
              Top = 448
              Width = 100
              Height = 25
              Caption = #1054#1090#1082#1088#1099#1090#1100
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
              OnClick = LbButtonEdit_OsagoClick
            end
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 799
              Height = 66
              Align = alTop
              BevelInner = bvLowered
              Color = 15464939
              ParentBackground = False
              TabOrder = 4
              object Label43: TLabel
                Left = 8
                Top = 8
                Width = 141
                Height = 13
                Caption = #1058#1077#1088#1088#1080#1090#1086#1088#1080#1103' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103
              end
              object RxDBLookupCombo2: TDBLookupComboBox
                Left = 12
                Top = 27
                Width = 145
                Height = 21
                DataField = 'id_teruse'
                DataSource = dm.dss_avto
                KeyField = 'id'
                ListField = 'name'
                ListSource = dm.dss_teruse
                TabOrder = 0
              end
            end
          end
          object Panel_Add_Osago: TPanel
            Left = 84
            Top = 3
            Width = 623
            Height = 482
            BevelInner = bvLowered
            Color = 15464939
            ParentBackground = False
            TabOrder = 1
            Visible = False
            object Label22: TLabel
              Left = 206
              Top = 14
              Width = 26
              Height = 13
              Caption = #1044#1072#1090#1072
            end
            object Label31: TLabel
              Left = 333
              Top = 14
              Width = 104
              Height = 13
              Caption = #1057#1090#1088#1072#1093#1086#1074#1072#1103' '#1082#1086#1089#1087#1072#1085#1080#1103
            end
            object Label35: TLabel
              Left = 8
              Top = 248
              Width = 49
              Height = 13
              Caption = #1054#1087#1083#1072#1095#1077#1085#1086
            end
            object Label39: TLabel
              Left = 8
              Top = 57
              Width = 105
              Height = 13
              Caption = #1055#1077#1088#1080#1086#1076' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1103
            end
            object Label45: TLabel
              Left = 206
              Top = 57
              Width = 110
              Height = 13
              Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089#1090#1088#1072#1093#1086#1074#1082#1080
            end
            object SpeedButton1: TSpeedButton
              Left = 543
              Top = 113
              Width = 23
              Height = 22
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFBBE4C270CF8527B7471EBA401EBA4027B74770CF85BBE4C2FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFA4FB96219C1401FCE4C24DC5827
                DD5C27DD5C24DC581FCE4C19C1404FB962FAFDFAFFFFFFFFFFFFFFFFFFFBFDFB
                21A93A1ED04E22D55521D35503B82C00A71200A71203B82C21D35522D5551ED0
                4E21A93AFBFDFBFFFFFFFFFFFF4EB15B1ECE4D21D3541FCC4D0FCC4500AD13FF
                FFFFFFFFFF00AD130FCC451FCC4D21D3541ECE4D4EB15BFFFFFFBDDEBE17BA3F
                21DA5A1ECC5120D0530DC74200BE25FFFFFFFFFFFF00BE250DC74220D0531ECC
                5121DA5A17BA3FBDDEBE6ABC7417D15120D45F0BCC4A04CA4300C13300BC22FF
                FFFFFFFFFF00BD2700C23B10CA4B0ECC4C20D45F17D1516ABC7430A03F33E67A
                00B62D00AD1300AD1300AD1300AD13FFFFFFFFFFFF00AD1300BD2700BD2300AD
                1300B62D33E67A30A14130A34381FCC300AF21FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00AF2181FCC430A14223953785FDCC
                2AC262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF2AC26285FDCC23953533933D7BFAC33CD07D71C7801EBF5921C05B0ABA4DFF
                FFFFFFFFFF10BC5122C05C1EBF5971C7803CD07D7BFAC333933D67AB668AE5B9
                65EAB050DF9756DF9C41DB8D22C05CFFFFFFFFFFFF22C05C49DC9356DF9C50DF
                9765EAB08AE5B967AB66B9D4B94EB068AFFFEA5EE0A156E19F45DE9766D589FF
                FFFFFFFFFF23C05B50E09E56E19F5EE0A1AFFFEA4EB068B9D4B9FFFFFF458945
                7BDCA8B6FFEF76E5B551DFA366D589FFFFFFFFFFFF24BF5956E2A876E5B5B6FF
                EF7BDCA8458945FFFFFFFFFFFFFAFDFA1572156DD6A3B7FFF5AAF7E370E0B022
                C05C22C05C74E2B3ABF7E4B7FFF56DD6A3157215FAFDFAFFFFFFFFFFFFFFFFFF
                F9FCF945864538A75E7FE1B8A9FFECB9FFFBB9FFFBA9FFEC7FE1B838A75E4586
                45F9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CEB767A567247D3328
                8738288738247D3367A567B7CEB7FFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SpeedButton1Click
            end
            object SpeedButton3: TSpeedButton
              Left = 543
              Top = 141
              Width = 23
              Height = 22
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FFFFFFDFDFF0
                9594CBC6C6E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF2322BE7F7EBAFFFFFFECECF41410C1110EFF0B09DDA5A5C3FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF6665B1110CFC7D7CAFFFFFFFB7B6DB110FDF
                0E0CFC100EFF110FB6F4F4F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2E20D0C
                DC0D0BD6D6D6E6FFFFFFC7C7E02524D70F0EFB0E0EEF0F0FFA7271BBFFFFFFFF
                FFFFFFFFFFFFFFFFF7F7FB1B19BF1313FF201EA6FFFFFFFFFFFFFFFFFF3C3BB3
                2627FF090AEE1214FA0F10DBDDDDEEFFFFFFFFFFFFFFFFFF4F4EC51416FF1112
                E59F9FCEFFFFFFFFFFFFFFFFFFE0E0F0272BC6252CFE0D0EEE161CFE3232CCFF
                FFFFFFFFFF6969D6181DF9191EFE2121C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                ABAAE1393FE02531FA121CF61B25F69492E18988E31D26F71E2BFF151BE2C3C2
                E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF726FD84C57F62839F81B2DF71F
                29EE2131F62236F91F2FF26B68DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF615FDC5261F5293CF6253AF8263AF72638F63C3ADEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B8BEC2939F12F45F823
                38F6253EF81F28EAE3E1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C1C0FA353FF0314CF92B46F8253FF64E69F9536EF92341F64A4FF0F3F3FEFFFF
                FFFFFFFFFFFFFFFFFFFFF9F9FF5D60F4314CF63656F82F4AF6304FF6516EF93D
                3FF2555CF46B8AFA385EF82833F3D5D3FCFFFFFFFFFFFFFFFFFF5A5FF53B61F8
                3A5AF73150F73D5FF7637DFA4042F6E9E8FDCAC8FB3F40F5778EFA6389FA2D45
                F59696FAFFFFFFFFFFFF4755F84F76F83E61F85679F86279F95955F7F7F6FFFF
                FFFFFFFFFFF0EFFF726DF7525AF87F9CFA6B89FA5661F7D4D3FD6462F6697BF9
                6C82F95055F68984F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDAFD6561
                F65455F76B7EF84A4FF7B9B7FB5353F65C5FF76763F6F5F5FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E3FE9E9BF96566F66D6CF7}
              OnClick = SpeedButton3Click
            end
            object LbButtonOsago_Save: TLbButton
              Left = 312
              Top = 445
              Width = 100
              Height = 25
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              Color = 9878678
              Enabled = False
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
              TabOrder = 8
              UseHotTrackFont = False
              OnClick = LbButtonOsago_SaveClick
            end
            object LbButton26_Cancel: TLbButton
              Left = 206
              Top = 445
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
              TabOrder = 9
              UseHotTrackFont = False
              OnClick = LbButton26_CancelClick
            end
            object DateEdit_osago: TDateEdit
              Left = 206
              Top = 30
              Width = 121
              Height = 21
              NumGlyphs = 2
              TabOrder = 2
              OnChange = DateEdit_osagoChange
            end
            object LabeledEdit_ser: TLabeledEdit
              Left = 8
              Top = 30
              Width = 65
              Height = 21
              EditLabel.Width = 31
              EditLabel.Height = 13
              EditLabel.Caption = #1057#1077#1088#1080#1103
              TabOrder = 0
              Text = #1059#1059#1059
              OnChange = DateEdit_osagoChange
            end
            object LabeledEdit_number: TLabeledEdit
              Left = 79
              Top = 30
              Width = 121
              Height = 21
              EditLabel.Width = 34
              EditLabel.Height = 13
              EditLabel.Caption = #1053#1086#1084#1077#1088
              TabOrder = 1
              Text = '0351019522'
              OnChange = DateEdit_osagoChange
            end
            object CurrencyEdit_Amount: TCurrencyEdit
              Left = 8
              Top = 265
              Width = 121
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              Enabled = False
              TabOrder = 7
              OnChange = DateEdit_osagoChange
            end
            object RxDBLookupCombo_Insure_Comp: TDBLookupComboBox
              Left = 333
              Top = 29
              Width = 281
              Height = 21
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_insure_company
              TabOrder = 3
              OnCloseUp = DateEdit_osagoChange
            end
            object GroupBoxTerm: TGroupBox
              Left = 8
              Top = 310
              Width = 353
              Height = 120
              Caption = #1056#1072#1089#1090#1086#1088#1078#1077#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
              TabOrder = 10
              object Label40: TLabel
                Left = 16
                Top = 71
                Width = 84
                Height = 13
                Caption = #1057#1091#1084#1084#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
              end
              object Label41: TLabel
                Left = 158
                Top = 49
                Width = 130
                Height = 13
                Caption = #1055#1077#1088#1077#1074#1077#1076#1077#1085#1099' '#1074' '#1089#1090#1088#1072#1093#1086#1074#1082#1091' '
              end
              object Label42: TLabel
                Left = 16
                Top = 24
                Width = 96
                Height = 13
                Caption = #1044#1072#1090#1072' '#1088#1072#1089#1090#1086#1088#1078#1077#1085#1080#1103
              end
              object CurrencyEdit_osago_term: TCurrencyEdit
                Left = 16
                Top = 88
                Width = 121
                Height = 21
                Margins.Left = 1
                Margins.Top = 1
                TabOrder = 1
                OnChange = DateEdit_osagoChange
              end
              object LabeledEdit_ser_osago_term: TLabeledEdit
                Left = 164
                Top = 87
                Width = 49
                Height = 21
                EditLabel.Width = 31
                EditLabel.Height = 13
                EditLabel.Caption = #1057#1077#1088#1080#1103
                TabOrder = 2
                Text = #1059#1059#1059
                OnChange = DateEdit_osagoChange
              end
              object LabeledEdit_num_osago_term: TLabeledEdit
                Left = 219
                Top = 87
                Width = 98
                Height = 21
                EditLabel.Width = 34
                EditLabel.Height = 13
                EditLabel.Caption = #1053#1086#1084#1077#1088
                TabOrder = 3
                Text = '0351019522'
                OnChange = DateEdit_osagoChange
                OnDblClick = LabeledEdit_num_osago_termDblClick
              end
              object DateEdit_osago_term: TDateEdit
                Left = 16
                Top = 44
                Width = 121
                Height = 21
                NumGlyphs = 2
                TabOrder = 0
                OnChange = DateEdit_osagoChange
              end
              object Button1: TButton
                Left = 321
                Top = 87
                Width = 19
                Height = 19
                Hint = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1089#1090#1088#1072#1093#1086#1074#1082#1091
                Caption = '...'
                TabOrder = 4
                OnClick = Button1Click
              end
            end
            object CurrencyEdit_osago_coast: TCurrencyEdit
              Left = 206
              Top = 74
              Width = 121
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              TabOrder = 5
              OnChange = DateEdit_osagoChange
            end
            object GroupBox_Osago_Addition: TGroupBox
              Left = 367
              Top = 310
              Width = 250
              Height = 120
              Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
              TabOrder = 11
              object Label46: TLabel
                Left = 16
                Top = 17
                Width = 21
                Height = 13
                Caption = #1050#1073#1084
              end
              object Label47: TLabel
                Left = 63
                Top = 40
                Width = 92
                Height = 13
                Cursor = crHandPoint
                Caption = #1047#1072#1087#1088#1086#1089#1080#1090#1100' '#1050#1073#1084
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = Label47Click
              end
              object KbmEdit: TCurrencyEdit
                Left = 16
                Top = 37
                Width = 41
                Height = 21
                Margins.Left = 1
                Margins.Top = 1
                DisplayFormat = ',0.00;-,0.00'
                TabOrder = 0
                OnChange = DateEdit_osagoChange
              end
              object CheckBox_osago_avaria: TCheckBox
                Left = 16
                Top = 64
                Width = 231
                Height = 17
                Caption = #1043#1088#1091#1073#1099#1077' '#1085#1072#1088#1091#1096#1077#1085#1080#1103' '#1091#1089#1083#1086#1074#1080#1081' '#1089#1090#1072#1093#1086#1074#1072#1085#1080#1103
                TabOrder = 1
                OnClick = DateEdit_osagoChange
              end
            end
            object RxDBLookupCombo_Period: TDBLookupComboBox
              Left = 8
              Top = 76
              Width = 192
              Height = 21
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_tKC
              TabOrder = 4
              OnCloseUp = DateEdit_osagoChange
            end
            object StringGrid1: TStringGrid
              Left = 8
              Top = 111
              Width = 529
              Height = 128
              ColCount = 4
              DefaultRowHeight = 20
              FixedColor = 9878678
              FixedCols = 0
              RowCount = 4
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing]
              ScrollBars = ssVertical
              TabOrder = 6
              OnDblClick = StringGrid1DblClick
              OnDrawCell = StringGrid1DrawCell
              OnKeyPress = StringGrid1KeyPress
              OnSelectCell = StringGrid1SelectCell
              ColWidths = (
                64
                64
                64
                64)
              RowHeights = (
                20
                20
                20
                20)
            end
            object DateTimePicker1: TDateTimePicker
              Left = 8
              Top = 133
              Width = 88
              Height = 21
              Date = 42726.498724062500000000
              Time = 42726.498724062500000000
              TabOrder = 12
              OnChange = DateEdit_osagoChange
              OnExit = DateTimePicker1Exit
            end
          end
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 523
        Width = 420
        Height = 70
        TabOrder = 3
        object LbB_New: TLbButton
          Left = 3
          Top = 40
          Width = 100
          Height = 25
          Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
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
          OnClick = LbB_NewClick
        end
        object LbB_First: TLbButton
          Left = 3
          Top = 8
          Width = 100
          Height = 25
          Hint = #1042' '#1085#1072#1095#1072#1083#1086
          Caption = '<<<<'
          Color = 9878678
          Enabled = False
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
          ParentShowHint = False
          ShowHint = True
          Style = bsModern
          TabOrder = 0
          UseHotTrackFont = False
          OnClick = LbB_FirstClick
        end
        object LbB_Cancel: TLbButton
          Left = 107
          Top = 40
          Width = 100
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          Color = 9878678
          Enabled = False
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
          TabOrder = 5
          UseHotTrackFont = False
          OnClick = LbB_CancelClick
        end
        object LbB_Prior: TLbButton
          Left = 107
          Top = 8
          Width = 100
          Height = 25
          Hint = #1053#1072#1079#1072#1076
          Caption = '<<'
          Color = 9878678
          Enabled = False
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
          ParentShowHint = False
          ShowHint = True
          Style = bsModern
          TabOrder = 1
          UseHotTrackFont = False
          OnClick = LbB_PriorClick
        end
        object LbB_Post: TLbButton
          Left = 211
          Top = 40
          Width = 100
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          Color = 9878678
          Enabled = False
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
          TabOrder = 6
          UseHotTrackFont = False
          OnClick = LbB_PostClick
        end
        object LbB_Next: TLbButton
          Left = 211
          Top = 8
          Width = 100
          Height = 25
          Hint = #1042#1087#1077#1088#1077#1076
          Caption = '>>'
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
          ParentShowHint = False
          ShowHint = True
          Style = bsModern
          TabOrder = 2
          UseHotTrackFont = False
          OnClick = LbB_NextClick
        end
        object LbB_Del: TLbButton
          Left = 315
          Top = 40
          Width = 100
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Color = clMaroon
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
          TabOrder = 7
          UseHotTrackFont = False
          Visible = False
          OnClick = LbB_DelClick
        end
        object LbB_Last: TLbButton
          Left = 315
          Top = 8
          Width = 100
          Height = 25
          Hint = #1042' '#1082#1086#1085#1077#1094
          Caption = '>>>>'
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
          ParentShowHint = False
          ShowHint = True
          Style = bsModern
          TabOrder = 3
          UseHotTrackFont = False
          OnClick = LbB_LastClick
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 224
  end
end
