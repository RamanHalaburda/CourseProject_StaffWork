object Form1: TForm1
  Left = 218
  Top = 183
  Width = 730
  Height = 576
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1086#1073#1088#1072#1085#1085#1099#1093' '#1080#1079#1076#1077#1083#1080#1103#1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 40
    Width = 697
    Height = 473
    ActivePage = TabSheet3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Microsoft YaHei UI'
    Font.Style = []
    ParentFont = False
    TabIndex = 2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1073#1072#1079#1086#1081' '#1076#1072#1085#1085#1099#1093
      object StringGrid1: TStringGrid
        Left = 200
        Top = 192
        Width = 481
        Height = 249
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Reference Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        TabOrder = 0
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 0
        Width = 673
        Height = 185
        Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1074#1081' '#1079#1072#1087#1080#1089#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label4: TLabel
          Left = 16
          Top = 16
          Width = 61
          Height = 17
          Caption = #1060#1072#1084#1080#1083#1080#1103':'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft YaHei UI'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 16
          Top = 80
          Width = 112
          Height = 17
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1072':'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft YaHei UI'
          Font.Style = []
          ParentFont = False
        end
        object MaskEdit1: TMaskEdit
          Left = 16
          Top = 40
          Width = 305
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft YaHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = MaskEdit1KeyPress
        end
        object MaskEdit2: TMaskEdit
          Left = 16
          Top = 104
          Width = 305
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft YaHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = MaskEdit1KeyPress
        end
        object GroupBox1: TGroupBox
          Left = 392
          Top = 16
          Width = 265
          Height = 113
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1086#1073#1088#1072#1085#1085#1099#1093' '#1080#1079#1076#1077#1083#1080#1081':'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft YaHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label7: TLabel
            Left = 24
            Top = 25
            Width = 9
            Height = 17
            Caption = 'A'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft YaHei UI'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 24
            Top = 89
            Width = 9
            Height = 17
            Caption = 'C'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft YaHei UI'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 24
            Top = 57
            Width = 8
            Height = 17
            Caption = 'B'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft YaHei UI'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 128
            Top = 25
            Width = 20
            Height = 17
            Caption = #1096#1090'.'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft YaHei UI'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 128
            Top = 57
            Width = 20
            Height = 17
            Caption = #1096#1090'.'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft YaHei UI'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 128
            Top = 89
            Width = 20
            Height = 17
            Caption = #1096#1090'.'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft YaHei UI'
            Font.Style = []
            ParentFont = False
          end
          object MaskEdit5: TMaskEdit
            Left = 48
            Top = 81
            Width = 73
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft YaHei UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = MaskEdit2KeyPress
          end
          object MaskEdit4: TMaskEdit
            Left = 48
            Top = 49
            Width = 73
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft YaHei UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyPress = MaskEdit2KeyPress
          end
          object MaskEdit3: TMaskEdit
            Left = 48
            Top = 17
            Width = 73
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft YaHei UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyPress = MaskEdit2KeyPress
          end
        end
        object BitBtn2: TBitBtn
          Left = 16
          Top = 144
          Width = 641
          Height = 33
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Microsoft YaHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
        end
      end
      object BitBtn1: TBitBtn
        Left = 32
        Top = 192
        Width = 129
        Height = 57
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
          333333333F777773FF333333008888800333333377333F3773F3333077870787
          7033333733337F33373F3308888707888803337F33337F33337F330777880887
          7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
          7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
          0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
          03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
          033333337F73FF737F33B33B778000877333333373F777337333333B30888880
          33333333373FFFF73333333B3300000333333333337777733333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object BitBtn5: TBitBtn
        Left = 32
        Top = 264
        Width = 129
        Height = 57
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn5Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
          7700333333337777777733333333008088003333333377F73377333333330088
          88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
          000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
          FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
          99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1047#1072#1076#1072#1090#1100' '#1089#1090#1072#1074#1082#1080
      ImageIndex = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 9
        Height = 17
        Caption = #1040
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 8
        Height = 17
        Caption = 'B'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 72
        Width = 9
        Height = 17
        Caption = 'C'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 160
        Top = 16
        Width = 10
        Height = 20
        Caption = '$'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 160
        Top = 48
        Width = 10
        Height = 20
        Caption = '$'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 160
        Top = 80
        Width = 10
        Height = 20
        Caption = '$'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object MaskEdit8: TMaskEdit
        Left = 48
        Top = 40
        Width = 113
        Height = 25
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = MaskEdit8Click
        OnKeyPress = MaskEdit2KeyPress
      end
      object BitBtn4: TBitBtn
        Left = 16
        Top = 112
        Width = 185
        Height = 73
        Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn4Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object MaskEdit7: TMaskEdit
        Left = 48
        Top = 8
        Width = 113
        Height = 25
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = MaskEdit7Click
        OnKeyPress = MaskEdit2KeyPress
      end
      object MaskEdit9: TMaskEdit
        Left = 48
        Top = 72
        Width = 113
        Height = 25
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = MaskEdit9Click
        OnKeyPress = MaskEdit2KeyPress
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1077#1095#1072#1090#1100' '#1074#1077#1076#1086#1084#1086#1089#1090#1077#1081
      ImageIndex = 2
      object Label21: TLabel
        Left = 8
        Top = 8
        Width = 174
        Height = 19
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1094#1077#1093#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '@Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
      end
      object MaskEdit6: TMaskEdit
        Left = 8
        Top = 32
        Width = 177
        Height = 25
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = MaskEdit1KeyPress
      end
      object BitBtn3: TBitBtn
        Left = 8
        Top = 68
        Width = 177
        Height = 69
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '@Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object Memo1: TMemo
        Left = 192
        Top = 8
        Width = 497
        Height = 449
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Reference Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 2
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 320
        Width = 185
        Height = 129
        Caption = #1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@Microsoft YaHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label20: TLabel
          Left = 120
          Top = 93
          Width = 10
          Height = 20
          Caption = '$'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '@Microsoft YaHei UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 120
          Top = 61
          Width = 10
          Height = 20
          Caption = '$'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '@Microsoft YaHei UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 120
          Top = 29
          Width = 10
          Height = 20
          Caption = '$'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '@Microsoft YaHei UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 16
          Top = 97
          Width = 11
          Height = 20
          Caption = 'C'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '@Microsoft YaHei UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 16
          Top = 65
          Width = 11
          Height = 20
          Caption = 'B'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '@Microsoft YaHei UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 16
          Top = 33
          Width = 12
          Height = 20
          Caption = 'A'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '@Microsoft YaHei UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MaskEdit11: TMaskEdit
          Left = 40
          Top = 57
          Width = 81
          Height = 25
          Enabled = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = '@Microsoft YaHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object MaskEdit12: TMaskEdit
          Left = 40
          Top = 89
          Width = 81
          Height = 25
          Enabled = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = '@Microsoft YaHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object MaskEdit10: TMaskEdit
          Left = 40
          Top = 25
          Width = 81
          Height = 25
          Enabled = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = '@Microsoft YaHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
    end
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 697
    Height = 21
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Lucida Console'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = '['#1087#1091#1090#1100' '#1082' '#1086#1073#1088#1072#1073#1072#1090#1099#1074#1072#1077#1084#1086#1084#1091' '#1092#1072#1081#1083#1091']'
  end
  object MainMenu1: TMainMenu
    Left = 552
    Top = 448
    object N5: TMenuItem
      Caption = #1060#1072#1081#1083
      object N6: TMenuItem
        Bitmap.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        Caption = #1057#1086#1079#1076#1072#1090#1100
        OnClick = N6Click
      end
      object N7: TMenuItem
        Bitmap.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
          07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
          0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N7Click
      end
      object N8: TMenuItem
        Bitmap.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081
        OnClick = N8Click
      end
    end
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N2: TMenuItem
        Bitmap.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
          33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
          FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
          FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
          FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
          FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
          FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
          3333333773FFFF77333333333FBFBF3333333333377777333333}
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N2Click
      end
      object N3: TMenuItem
        Bitmap.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333CCCCC33
          33333FFFF77777FFFFFFCCCCCC808CCCCCC3777777F7F777777F008888070888
          8003777777777777777F0F0770F7F0770F0373F33337F333337370FFFFF7FFFF
          F07337F33337F33337F370FFFB99FBFFF07337F33377F33337F330FFBF99BFBF
          F033373F337733333733370BFBF7FBFB0733337F333FF3337F33370FBF98BFBF
          0733337F3377FF337F333B0BFB990BFB03333373FF777FFF73333FB000B99000
          B33333377737777733333BFBFBFB99FBF33333333FF377F333333FBF99BF99BF
          B333333377F377F3333333FB99FB99FB3333333377FF77333333333FB9999FB3
          333333333777733333333333FBFBFB3333333333333333333333}
        Caption = #1054#1073' '#1072#1074#1090#1086#1088#1077
        OnClick = N3Click
      end
    end
    object N4: TMenuItem
      Bitmap.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      Caption = #1042#1099#1093#1086#1076
      Hint = #1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      ShortCut = 16499
      OnClick = N4Click
    end
  end
  object OpenDialog1: TOpenDialog
    FileName = 'C:\installed\C++ Builder  6\Images\Buttons\filenew.bmp'
    FilterIndex = 0
    Left = 520
    Top = 448
  end
end
