object fGato: TfGato
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'fGato'
  ClientHeight = 562
  ClientWidth = 800
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object RelativePanel1: TRelativePanel
    Left = 0
    Top = 0
    Width = 800
    Height = 562
    ControlCollection = <
      item
        Control = Panel1
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = True
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
      end
      item
        Control = Panel3
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = True
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
      end
      item
        Control = Panel4
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = True
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = panelPuntos
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
        Below = Panel4
        RightOf = Panel1
      end
      item
        Control = rPanelGato
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
      end
      item
        Control = sbotonVolver
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = textoTurno
        Above = Panel2
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = panelDerecho
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
        Below = Panel4
        LeftOf = Panel3
      end
      item
        Control = Panel2
        AlignBottomWithPanel = True
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end>
    Align = alClient
    Color = 15923698
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    DesignSize = (
      800
      562)
    object Panel1: TPanel
      Left = 1
      Top = -20
      Width = 17
      Height = 600
      Anchors = []
      Caption = 'Panel1'
      TabOrder = 0
      Visible = False
    end
    object Panel3: TPanel
      Left = 782
      Top = -20
      Width = 17
      Height = 600
      Anchors = []
      Caption = 'Panel1'
      TabOrder = 1
      Visible = False
    end
    object Panel4: TPanel
      Left = 15
      Top = 1
      Width = 768
      Height = 81
      Anchors = []
      Caption = 'Panel4'
      TabOrder = 2
      Visible = False
    end
    object panelPuntos: TPanel
      Left = 18
      Top = 82
      Width = 167
      Height = 385
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Anchors = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 15004132
      Ctl3D = True
      DoubleBuffered = False
      ParentBiDiMode = False
      ParentBackground = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ShowCaption = False
      TabOrder = 3
      StyleElements = []
      DesignSize = (
        167
        385)
      object StaticText1: TStaticText
        Left = 47
        Top = 11
        Width = 64
        Height = 19
        Anchors = []
        BevelEdges = [beTop, beRight, beBottom]
        Caption = 'Estad'#237'sticas'
        Color = 14675679
        ParentColor = False
        TabOrder = 0
      end
    end
    object rPanelGato: TRelativePanel
      Left = 206
      Top = 88
      Width = 385
      Height = 384
      ControlCollection = <
        item
          Control = Image1
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = True
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = True
        end
        item
          Control = _11
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = True
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = True
        end
        item
          Control = _12
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = True
          RightOf = _11
        end
        item
          Control = _01
          Above = _11
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = True
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = _21
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = True
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
          Below = _11
        end
        item
          Control = _10
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = True
          LeftOf = _11
        end
        item
          Control = _20
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
          Below = _10
          LeftOf = _21
        end
        item
          Control = _22
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
          Below = _12
          RightOf = _21
        end
        item
          Control = _00
          Above = _10
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
          LeftOf = _01
        end
        item
          Control = _02
          Above = _12
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
          RightOf = _01
        end>
      Anchors = []
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 4
      DesignSize = (
        385
        384)
      object Image1: TImage
        Left = 3
        Top = 30
        Width = 378
        Height = 323
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000021D0000
          01CD0806000000BAB6C95500001CCC4944415478DAEDDD6D8CA575DDD8F133C3
          3E21921B504331DC4DDA44EB8B5205B1CBB0846569D4F0A62F4CDADC89098654
          E4717767767968DA2A09DA268230338BC80A8DB4C698F60EAFEC2B8CB2BBE666
          7736A0204913DB171A4CB45113A90F0BCB3E4DAFFF38171DE7163DBFFD2DE7EC
          F0FB7C92CD3CECECEC7FCEF59FEBFF3DD7759D7326060000233031EE01000035
          880E0060244407003012A203001809D101008C84E80000464274000023213A00
          8091101D00C048880E0060244407003012A203001809D101008C84E800004642
          74000023213A008091101D00C048880E0060244407003012A203001809D10100
          8C84E80000464274000023213A008091101D10F4D24B2FFDE323478EBCE7031F
          F8C0FFBAF0C20BFFEFB8C7C368FDFAD7BFFEAB1FFDE847FFE4A28B2EFA553707
          7E32EEF1C05A223A2060DFBE7D57DD78E38DFFFDE73FFFF93FFCF8C73FFE3FBE
          F9CD6F7EEA820B2E7865DCE362345E7EF9E50B77ECD8F15F9E7EFAE97FF9EE77
          BFFBA7DFF8C637FEE6BAEBAE3B34EE71C15A213A20607A7A7AAEB3B3FFF8F0E1
          C3576FDEBCD9A253448BCE8F7EF4A3874E9C3831989C9C1CDC75D75D730F3CF0
          C0CCB8C7056B85E880805DBB76CD3FFAE8A33B5E7FFDF5C1C68D1B07DD3DDEAB
          DDD3ADA38BCCA92E320FAE5BB76E70EAD4A9C16DB7DDB6A79B0F3BF3DF196A10
          1D10B07DFBF6D9471E7964BAFFD8918E5AF6EFDF3FB56DDBB6838B8B8B838989
          89C1CE9D3BDB912F473A6048A20302A6A7A797A2A3DDCB6D161616444721ED48
          C7962D5B0EB6D32BED68C7CD37DF3CF7D8638F890E1892E8808076A4A35B64A6
          FB73FACF3CF38CD32B85F4A757366CD8303876EC587F8D8FE88021890E086847
          3ABA45E68DD32BFBF7EF171D85AC3CBDD2CCCCCCCCCFCECE4E27BF2D94213A20
          4074D4263A2047744080E8A86D757438BD0231A2030244476DA2037244070488
          8EDA4407E4880E08101DB5890EC8111D10203A6A131D90233A206075741C3870
          60CBD6AD5B0F8E7B5C8C86E8801CD10101A2A336D10139A2030244476DA20372
          440704888EDA4407E4880E08101DB5890EC8111D10203A6A131D90233A204074
          D4263A2047744080E8A84D74408EE880004F0E569BE8801CD10101A2A3B68585
          85ABA6A6A60E890E383DA2030244476DA20372440704888EDA4407E4880E0810
          1DB5890EC8111D10203A6A131D90233A204074D4263A2047744080E8A84D7440
          8EE88000D1519BE8801CD10101A2A336D10139A2030244476DA2037244070488
          8EDA4407E4880E08101DB5890EC8111D10203A6A131D90233A204074D4263A20
          47744080E8A84D74408EE88000D1519BE8801CD10101A2A336D10139A2030244
          476DA20372440704888EDA4407E4880E08101DB5890EC8111D10203A6A131D90
          233A204074D4263A2047744080E8A84D74408EE88000D1519BE8801CD10101A2
          A336D10139A2030244476DA20372440704888EDA4407E4880E08101DB5890EC8
          111D10203A6A131D90233A204074D4263A2047744080E8A84D74408EE88000D1
          519BE8801CD10101A2A336D10139A2030244476DA20372440704888EDA4407E4
          880E08101DB5890EC8111D10203A6A131D90233A204074D4263A2047744080E8
          A84D74408EE88000D1519BE8801CD10101A2A336D10139A2030244476DA20372
          440704888EDA4407E4880E08101DB5890EC8111D10203A6A131D90233A204074
          D4263A2047744080E8A84D74408EE88000D1519BE8801CD10101A2A336D10139
          A2030244476DA20372440704888EDA4407E4880E08101DB5890EC8111D10203A
          6A131D90233A204074D4263A2047744080E8A84D74408EE88000D1519BE8801C
          D10101A2A336D10139A2030244476DA20372440704888EDA4407E4880E08101D
          B5890EC8111D10203A6A131D90233A204074D4263A2047744080E8A84D74408E
          E88000D1519BE8801CD10101A2A336D10139A2030244476DA20372440704888E
          DA4407E4880E08101DB5890EC8111D10B073E7CE87E7E7E7DF586444472DA203
          72440704888EDA4407E4880E08101DB5890EC8111D10203A6A131D90233A2040
          74D4263A2047744080E8A84D74408EE88000D1519BE8801CD10101A2A336D101
          39A2030244476DA20372440704888EDA4407E4880E08101DB5890EC8111D1020
          3A6A131D90233A204074D4263A2047744080E8A84D74408EE88000D1519BE880
          1CD10101A2A3B6D5D1D1CD87D96E3EEC1AF7B860AD101D10203A6A5B151D8BDD
          7C98131D303CD10101A2A336D10139A2030244476DA20372440704888EDA4407
          E4880E08101DB5890EC8111D10203A6A131D90233A204074D4263A2047744080
          E8A84D74408EE88000D1519BE8801CD10101A2A336D10139A2030244476DA203
          72440704888EDA4407E4880E08101DB5890EC8111D10203A6A131D90233A2040
          74D4263A2047744080E8A8ADDBDE53DBB66D3BD847C7F4F4F4FCDCDCDC4CF6FB
          4215A2030244476DA20372440704888EDA4407E4880E08101DB5890EC8111D10
          203A6A5B151D832E3AE644070C4F744080E8A84D74408EE88000D1519BE8801C
          D10143E8169989CEE2EAE8D8B76F5F5B8416C63D3E464374408EE88021880E1A
          D10139A20386F066D1E1F44A2DA2037244070CA15B6426BBE838D52D32B3DD22
          33DD7F5E74D4B23A3A666666E6676767A793DF16CA101D3004D141233A204774
          C01044078DE8801CD10143E8A3A35B64DA39FC9D6DD1E93E6E17928A8E420E1F
          3E3C75CD35D73C7BFCF8F1A57DA7E88018D10143E8A363FBF6EDF38F3EFAE88E
          161DED4FB7085DBD79F366D1F136D75F48DC8E74749179B07D6EDDBA75834F7F
          FAD3F37BF7EE151D3024D1017F41B7E09CD3BD698BCE8976A4A3BB67BBB3FF3B
          A757DEFE5A700EFEB0FD4F2E2C2C5CD539343939393875EAD4E09E7BEE997BE0
          810766FA2819F758E16C273A20E0DE7BEF7DF08B5FFCE25DCB1F2E3EFFFCF357
          767E30EE71311A2FBCF0C2872EBFFCF21F4CFCC1E21D77DCF1A5471E79E49E71
          8F8BB39F30FD03D1B1ECC5175F7CFF6F7FFBDBF76CDAB4696966BCF6DA6B8313
          274E2C1D421D87C5FE4AB5B789769BAE95DBA01F6BFFFFBFE31DEF9868EF1FEB
          CCCDCDDDF3D4534FFDABF625E79C73CEE257BEF2955B2EBBECB2EF777FB529F3
          B39E8EBF74FB8C6A1CC38C651C56FFFC6F36C637BB9DDAD7B77D4073FEF9E70F
          4E9E3C79B48B8E2BEEBEFBEEC78F1C39B2F46F3EF5A94FFDED273FF9C907376C
          D8B0BEFF3EEDDFAC5FBF7EE24CED3F568E7B94DB74D8319D4DCE86DB67E56DD3
          CD99893677BAF9F0AB0F7DE843FF7BDC633B1B8C7D039D0D9E7EFAE96B6FBDF5
          D6BFFDC94F7E7271B793786347B371E3C6C1EBAFBFDE7F99DBEAF49C953BA7A0
          A56DDFED3C167FFFFBDF2FDD6339F7DC73072D4CDBCFD7ED5006FD8585CDE4E4
          E4D2CFDC0EBFB3B6B5D328FDF53B5D642E7DAE2D24ED6D3F07CE3BEFBCC53E42
          7A2D36FAFD0875F5A7E12EBDF4D25F7EFDEB5FFFD7D75F7FFD81718F69DC4A2F
          A4FDE1AE9B6FBEF93F3FF1C413FFA6FF7C77CF76F0EAABAF2EBD7F16843363D4
          169B16156DC7D1FEF47762DABC68EFB7C5A5BDED16A23FFA7CCFFC59DBFA6DDC
          B46DFC6677F0DBE2D27F7DFF352D5284676D6D2EF4EBC98D37DEF844171E9F19
          F798C6CD1EB1B367CF9E5B76ECD8B1B7ED38DA0EE6D8B1634B3B8C7E21A1AE55
          11B1D8CD918936378E1F3FDEFF5DFF9713FDC263A179FBE8EFA92E5BDCB06143
          DB3F4CACFABBC56E4E4CB4FDC5F269374739F87BDAA9D8DB6FBFFDF1718F63DC
          44C760A946D73FF9E4939F7AE9A597FE693B34DEEF3CFAE76260B4CEF4F9E23F
          779EB7FFBFFECC79FDB6B84CB4D36C175D74D1B16F7DEB5BFFA29B2757F4F3E3
          139FF8C47F7BDFFBDEF7D3A3478FAEDFB46953BB47B314256D11EA169E45F367
          786FD5750299F3FC2BF701DD363DF6F2CB2FFFF5534F3DF537FDB7BDECB2CB7E
          70C30D377CE7B5D75E5BD7B6798B90A5C3A76760DF31CCED71365CC3C09BEB37
          E1073FF8C1FF79D34D37FDD76E731D1FF798C6CD848580DDBB777FF191471EB9
          BBDDDBEDEEF52E1E3E7CF88ACB2FBFFCC5718F8BD1F8FEF7BFFFCFAEBEFAEA17
          BB086DFBCEC5CF7DEE730FDC7FFFFDFF76DCE382B54274C05FD0AEFD19FCE14E
          E5A95DBB762D3D0D7A7FC8DD4BDBD7D05FFFF5FCF3CF6FBEF2CA2B0FB5A31AED
          48C4673EF399B9BD7BF7EE1AF7F860AD101D308415AFBD32B767CF9E9DFD61D3
          FDFBF76FD9BA75EBC1718F8FD1587E72B0831B366C983876ECD86217A1F30F3F
          FCB027078321890E1842BFA8ECDCB973767E7E7EBABF88D03392D6B26FDFBEAB
          DA0BBE0D96F79DDD7C98EBE6C3CCB8C7056B85E88080FEF44ABB7EAF5D702C3A
          6A597E95D9675B84B68752DF71C71DED050045070C497440C0CA97B66F0FAFFE
          CE77BE233A0A59FD2AB3ED749BE880E1890E08E8A3A37FC8AC231DB5AC7C9559
          473A204E7440C0CA231D8DE8A865F9F4CAC1FE42E2E56B7C3C7A0586243A2040
          74D4263A20477440C0EAE8F03C1DB5880EC8111D10E048476DA2037244070488
          8EDA4407E4880E08101DB5890EC8111D10203A6A131D90233A204074D4263A20
          47744080E8A86D55742C2EBFF68AE88021890E08101DB5AD8E8E6E3ECC7B4652
          189EE88000D1519BE8801CD10101A2A336D10139A2030244476DA20372440704
          888EDA563F7AC54BDB438CE88000D1519BE8801CD10101A2A336D10139A20302
          44476DABA3636666667E7676763AF96DA10CD10101A2A336D10139A203025647
          C7810307B66CDDBAF5E0B8C7C568880EC8111D10203A6A131D90233A204074D4
          263A2047744080E8A84D74408EE88000D1519BE8801CD10101A2A336D10139A2
          030244476DA20372440704888EDA4407E4880E08101DB5890EC8111D10D02D32
          73DD22B3B3FF5874D4223A2047744080E8A84D74408EE88000D1519BE8801CD1
          0101A2A336D10139A2030244476DA20372440704888EDA4407E4880E08101DB5
          890EC8111D10203A6A131D90233A204074D4263A2047744080E8A84D74408EE8
          8000D1519BE8801CD10101A2A3B6858585ABA6A6A60E890E383DA20302BCE05B
          6DA20372440704888EDA4407E4880E08101DB5890EC8111D10203A6A131D9023
          3A204074D4263A2047744080E8A84D74408EE88000D1519BE8801CD10101A2A3
          36D10139A2030244476DA20372440704888EDA4407E4880E08101DB5890EC811
          1D10203A6A5B1D1DDD7CE8A6C3DCCCB8C7056B85E88000D151DB7274B457995D
          DA778A0E88111D10203A6A131D90233A204074D4263A2047744080E8A84D7440
          8EE88000D1519BE8801CD10101A2A3B655D1B1D8CD8779D101C3131D10203A6A
          131D90233A204074D4263A2047744080E8A86DD59383890E08121D10203A6A13
          1D90233A20607574ECDFBFFFEAEBAEBBEED0B8C7C568880EC8111D10203A6A13
          1D90233A204074D4263A2047744080E8A84D74408EE88000D1519BE8801CD101
          01A2A336D10139A2030244476DA20372440704888EDA4407E4880E08D8B973E7
          C3F3F3F36F2C32A2A316D10139A2030244476DA20372440704888EDA4407E488
          0E08101DB5890EC8111D10203A6A131D90233A204074D4263A2047744080E8A8
          4D74408EE88000D1519BE8801CD10101A2A336D10139A2030244476DA2037244
          0704888EDA4407E4880E08101DB5890EC8111D10203A6A131D90233A204074D4
          263A2047744080E8A84D74408EE88000D1519BE8801CD10101A2A336D10139A2
          030244476DA20372440704888EDA4407E4880E08101DB5890EC8111D10203A6A
          131D90233A204074D4263A2047744080E8A84D74408EE88000D1519BE8801CD1
          0101A2A3B6D5D1D1CD87B96E3EEC1AF7B860AD101D10203A6A131D90233A2040
          74D4263A2047744080E8A8CD351D90233A204074D4263A2047744080E8A8ADDB
          DE53DBB66D3B283AE0F4880E08101DB5890EC8111D10203A6A131D90233A2040
          74D4263A204774C010BA4566A2B3283A6A131D90233A6008A2834674408EE880
          21880E1AD10139A20386203A684407E4880E18C29B45C7BE7DFBDA22B430EEF1
          311AABA263D045C79CE880E1890E1882E8A0111D90233A6008A2834674408EE8
          8021748BCC64171DA7BA4566B65B64A6FBCFBBA6A316D10139A20386203A6844
          07E4880E1882E8A0111D90233A60087D74ECDAB56BF6E1871F161D451D3E7C78
          6AF3E6CD07376CD8303876EC587B5AFCB995D7F8007F9EE88021F4D1D12D32B3
          DD22333D393939687F9E7DF6D9ABBB45487414D18E74DC70C30D075F7BEDB5A5
          8FBB089DEB225474C0904407FC05ED912BDD9B161D279D5EA9A97FF4D2CAD32B
          ED68C7EDB7DFEEF40A04880E08E8A2E3A16E91D9D5DE5FBF7EFDE2B7BFFDEDAB
          3D64B68E83070FFEF36BAEB966E19C73CE99387EFCF8E28E1D3B66F7ECD9B37B
          DCE382B542742CEBEEB99CD3BD996CEF2EFF79ABB8CDFFD85B797B9CEEF79EF8
          531F77F7748FB6E7E978ECB1C766DAF9FC76CFF7B9E79EBBF6C31FFE703BD2B1
          7EF96B57CE9D377B9FB851FCDE2CBEC9FFD33ED78E741C3D70E0C0D55BB76EFD
          BBF6F1C68D1B176FBDF5D676A4A34547DBFEFDFE63F5F7FC53EF8FD3D9328EB3
          D199BC6DFAB9D4D696E3EDF4ECB87FB8B38105B0F3B39FFDECAF6FBFFDF6C717
          1616AEE8EEC12CB63FAFBFFEFAE0DC73CF1D9C3AF5FFE749F7FE50B7D7E4E4A4
          5FEAF1EED8FAED34EC1816DFE4DF4FB4EB36DA1C387AF4E8E205175C70EAA73F
          FDE95F7573E39DEBD6AD1B9C38716270FEF9E7FFFA5DEF7AD7EB5D844CB443EE
          DDE7174F9E3C39B17EFDFAA50B0DDBD7BD45B7DDDB698E9DCECF72A6F65D7FEE
          FB2CB66DDFED0F06DD366DF3E054F776D32F7FF9CB77F75FF0CE77BEF3D54B2F
          BDF4B7AFBCF2CA1F5E8CA59B03AD4EDAA997363F566CFFB7627B9DA9EF691DF8
          63A77D7BAC5C23DA3AD0E640DB377CE4231F79E16B5FFBDAADEF7DEF7B5F1EF7
          0F376EA5275B7F9EF6AEBBEE7AE04B5FFAD2DDFDCEA5E9171568E1D1EB23B4CD
          8FF67E5B64DABCE9E74A379F963ED7A2E3F8F1E3E31E3A6740DBFE6D9BF60F93
          3DEFBCF306478E1C597A7FE53EA3BFB8B8CD8BF6D6FE83A6ED0BDADCB9E5965B
          1E7CF4D147EF19F778C6AD7474F4EEBBEFBEFF78FFFDF7FFBBE57B294B3B8CB6
          23E91710EAEA17917E2EAC5C64DAE79A7E8EAC0C55D1FAF6D4CF87A60FCFF667
          E3C68D83767474E53EC3FE83953EFBD9CFFEA7CF7FFEF3FF7EDCE31837D1D1F9
          C52F7E71F1CCCCCCDC0B2FBC7045B793585CDE892C2E9FB71FF7F0C29CDE79C3
          19BB1DDA29936E4E9C7AF9E597FFC16F7EF39B77F54732DAE1D28B2FBEB8BBE3
          7BA49D52599A33EDD0FA60F9776BF14FAF3A6B6F52AD0D677CDEF7BFFF6DBBB6
          ED7BF4E8D177FCF8C73FFE47FDDF5D78E185AF5C72C925FFA7CD8536279AFEFD
          EEED443BDD76BAFFF5986EC3B3DAB0A7B8DF0291FFF7EF6DF32BAEB8E2C5D9D9
          D9E96E5FF18B318DFFAC6162735A961F467A26BC557330B393F853FFB69D8B3B
          75EFBDF73ED8ED3C76B7F3B4CB17924E5D79E59587DBF378BC453FC7DBC95ADC
          DFBC7171697BC8F4FEFDFB3FB26DDBB6B6BD9782A2BBB3F2D0830F3E78F7F2EF
          C31BD7020DD6E6353767C598DBEFD5B8C77026F5A7F1C73D8EB3C55ADC09C0D8
          ECD8B1E3A13D7BF6B4E76558FADD79E69967AEBAFEFAEB0F8F7B5C8CC6A14387
          364F4D4D1DDAB469D344BBB8F8965B6E99FDEA57BFEA21B33024D10143E89F91
          F4B6DB6E9B7DFCF1C7A7DBF9FC760EFFF0E1C39E91B490858585ABB66CD9B2B4
          BDDBE9953BEFBC73E9C9C1FAF931EEF1C1D94E74C010FA43A4AB5E7BA53D43E5
          16CF485AC7BE7DFBAEDAB66DDBD2F66E17956EDFBEDD6BAF4080E88080954F83
          DE1EC9F2DDEF7ED7D3A017D21FE968178A1E3D7A74B07BF7EEF9871E7A683AFF
          9DA106D101015E7BA5B6FE5566FB8F6FBDF5D6F9BD7BF78A0E1892E88080FE55
          66FB8F45472DED05DF3EF6B18F1D6C0FA16D1CE98018D101018E74D4B6F25566
          9B6E3E78955908101D10B03A3AF6EDDB37E55566EB101D90233A206055742C76
          D1E1A5ED0B111D90233A20A0BDB4FD8A87488A8E625647C7F2353EBBC63D2E58
          2B440704888EDA4407E4880E0858151DAEE9286655742C76F3614E74C0F04407
          04888EDA4407E4880E08581D1D1E325B8BE8801CD10101A2A336D10139A20302
          44476DA20372440704888EDA4407E4880E08101DB5890EC8111D10203A6A5B1D
          1DD3D3D3F39E911486273A204074D4263A2047744080E8A84D74408EE88000D1
          519BE8801CD10101A2A336D10139A2030244476DA20372440704888EDA4407E4
          880E08E81699D96E9199EE3F161DB5880EC8111D10203A6A131D90233A204074
          D4B62A3ADA7C98131D303CD10101A2A336D10139A2030244476DA20372440704
          888EDA4407E4880E08101DB5AD8E8E999999F9D9D9D9E9E4B78532440704888E
          DA4407E4880E08101DB5890EC8111D10203A6A131D90233A206075741C387060
          CBD6AD5B0F8E7B5C8C86E8801CD10101A2A336D10139A2030244476DA2037244
          0704B8A6A336D10139A2030244476D9E1C0C72440704888EDA4407E4880E0810
          1DB5890EC8111D10203A6A131D90233A204074D4263A2047744080E8A84D7440
          8EE88000D1519BE8801CD10101A2A336D10139A2030244476D9E1C0C72440704
          888EDA4407E4880E08101DB52D2C2C5C353535754874C0E9111D10203A6A131D
          90233A204074D4263A2047744080E8A84D74408EE88000D1519BE8801CD10101
          A2A336D10139A2030244476DA20372440704888EDA4407E4880E08101DB5AD8E
          0E4F830E31A2030244476DA20372440704888EDA4407E4880E08101DB5890EC8
          111D10203A6A131D90233A204074D4263A2047744080E8A84D74408EE88000D1
          519BE8801CD10101A2A336D10139A2030244476DA20372440704888EDA4407E4
          880E08101DB5890EC8111D10203A6A131D90233A204074D4263A2047744080E8
          A84D74408EE88000D1519BE8801CD10101A2A336D10139A2030244476DA20372
          440704888EDA4407E4880E08101DB5890EC8111D10203A6A131D90233A204074
          D4263A2047744080E8A84D74408EE88000D1519BE8801CD10101A2A336D10139
          A2030244476DA20372440704888EDA4407E4880E08101DB5890EC8111D10203A
          6A131D90233A204074D4263A2047744080E8A84D74408EE88000D1519BE8801C
          D10101A2A336D10139A2030244476DA20372440704888EDA4407E4880E08101D
          B5890EC8111D10203A6A131D90233A204074D4263A2047744080E8A84D74408E
          E88000D1519BE8801CD10101A2A336D10139A2030244476DA20372440704888E
          DA4407E4880E08101DB5890EC8111D10203A6A131D90233A204074D4263A2047
          744080E8A84D74408EE88000D1519BE8801CD10101A2A3B66E7B4F6DDBB6EDA0
          E880D3233A204074D4263A2047744080E8A84D74408EE88000D1519BE8801CD1
          0101A2A336D10139A2030244476DA20372440704888EDA4407E4880E08101DB5
          890EC8111D10203A6A131D90233A204074D4263A2047744080E8A84D74408EE8
          8000D1519BE8801CD10101A2A336D10139A2030244476DA20372440704888EDA
          4407E4880E08101DB5890EC8111D10203A6A131D90233A204074D4263A204774
          4080E8A84D74408EE88000D1519BE8801CD10101A2A336D10139A2030244476D
          A20372440704888EDA4407E4880E08101DB5890EC8111D10203A6A131D90233A
          204074D4263A2047744080E8A84D74408EE88000D1519BE8801CD10101A2A336
          D10139A20386D02D32139DC5DB6EBB6D76EFDEBDD3FDA2233A6A69D171FDF5D7
          1F3C75EAD4D2C7A2036244070CA18F8E3BEFBC73CF97BFFCE5ED9B366D1A1C3D
          7A74F0BDEF7DEF9A6BAFBDF6D9718F8FD178E69967B674D1F177EBD6AD1B9C38
          716270F3CD373FF2C4134FEC18F7B860AD101D10F0852F7CE13FDC77DF7D9F3F
          79F2E4E0DC73CF3DFAC31FFE70EAFDEF7FFF8BE31E17A3F1C20B2F7C68CB962D
          875F7DF5D50D93939383B9B9B9CFEED8B1E30BE31E17AC15A203027EF7BBDFBD
          67FBF6ED0F3DF7DC7357DC74D34D4FECDEBDFBD189898913E31E17A3B1B8B878
          CE830F3E78E7934F3E79F3E5975FFEFD871E7AE8AE4B2EB9E457E31E17AC15A2
          03001809D101008C84E80000464274000023213A008091101D00C048880E0060
          244407003012A203001809D101008C84E80000464274000023213A008091101D
          00C048880E0060244407003012A203001809D101008C84E80000464274000023
          213A008091101D00C048880E0060244407003012A203001889FF07FD18ADBDC7
          89F0110000000049454E44AE426082}
        Proportional = True
        Stretch = True
      end
      object _11: TImage
        Left = 148
        Top = 147
        Width = 89
        Height = 89
        Anchors = []
        Proportional = True
        Stretch = True
        OnClick = _11Click
      end
      object _12: TImage
        Left = 237
        Top = 147
        Width = 89
        Height = 89
        Anchors = []
        Proportional = True
        Stretch = True
        OnClick = _12Click
      end
      object _01: TImage
        Left = 148
        Top = 58
        Width = 89
        Height = 89
        Anchors = []
        Proportional = True
        Stretch = True
        OnClick = _01Click
      end
      object _21: TImage
        Left = 148
        Top = 236
        Width = 89
        Height = 89
        Anchors = []
        Proportional = True
        Stretch = True
        OnClick = _21Click
      end
      object _10: TImage
        Left = 59
        Top = 147
        Width = 89
        Height = 89
        Anchors = []
        Proportional = True
        Stretch = True
        OnClick = _10Click
      end
      object _20: TImage
        Left = 59
        Top = 236
        Width = 89
        Height = 89
        Anchors = []
        Proportional = True
        Stretch = True
        OnClick = _20Click
      end
      object _22: TImage
        Left = 237
        Top = 236
        Width = 89
        Height = 89
        Anchors = []
        Proportional = True
        Stretch = True
        OnClick = _22Click
      end
      object _00: TImage
        Left = 59
        Top = 58
        Width = 89
        Height = 89
        Anchors = []
        Proportional = True
        Stretch = True
        OnClick = _00Click
      end
      object _02: TImage
        Left = 237
        Top = 58
        Width = 89
        Height = 89
        Anchors = []
        Proportional = True
        Stretch = True
        OnClick = _02Click
      end
    end
    object sbotonVolver: TSpeedButton
      Left = 17
      Top = 17
      Width = 100
      Height = 50
      Anchors = []
      Caption = 'Volver'
      OnClick = sbotonVolverClick
    end
    object textoTurno: TStaticText
      Left = 325
      Top = 500
      Width = 147
      Height = 41
      Anchors = []
      Caption = '-------------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object panelDerecho: TPanel
      Left = 608
      Top = 82
      Width = 174
      Height = 385
      Anchors = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = 'panelDerecho'
      Color = 15004132
      Ctl3D = True
      DoubleBuffered = False
      ParentBiDiMode = False
      ParentBackground = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ShowCaption = False
      TabOrder = 6
      StyleElements = []
      DesignSize = (
        174
        385)
      object switch: TToggleSwitch
        Left = 53
        Top = 314
        Width = 72
        Height = 20
        Anchors = []
        StateCaptions.CaptionOn = 'S'#237
        StateCaptions.CaptionOff = 'No'
        TabOrder = 0
        OnClick = switchClick
      end
      object StaticText4: TStaticText
        Left = 37
        Top = 292
        Width = 97
        Height = 19
        Anchors = []
        Caption = #191'Jugar contra PC?'
        TabOrder = 1
      end
      object nombreJ1: TEdit
        Left = 21
        Top = 63
        Width = 121
        Height = 23
        Anchors = []
        TabOrder = 2
        OnChange = nombreJ1Change
      end
      object nombreJ2: TEdit
        Left = 21
        Top = 135
        Width = 121
        Height = 23
        Anchors = []
        TabOrder = 3
        OnChange = nombreJ2Change
      end
      object StaticText2: TStaticText
        Left = 21
        Top = 42
        Width = 58
        Height = 19
        ParentCustomHint = False
        Anchors = []
        BevelEdges = []
        BiDiMode = bdLeftToRight
        Caption = 'Jugador 1:'
        Color = clNavy
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
        StyleElements = []
      end
      object StaticText3: TStaticText
        Left = 21
        Top = 115
        Width = 58
        Height = 19
        Anchors = []
        Caption = 'Jugador 2:'
        TabOrder = 5
      end
    end
    object Panel2: TPanel
      Left = 306
      Top = 541
      Width = 185
      Height = 20
      Anchors = []
      Caption = 'Panel2'
      TabOrder = 7
      Visible = False
    end
  end
end
