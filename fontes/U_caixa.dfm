object F_caixa: TF_caixa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Caixa'
  ClientHeight = 325
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 37
    Width = 91
    Height = 18
    Caption = 'Caixa de Hoje'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 457
    Top = 34
    Width = 112
    Height = 16
    Caption = 'Digite o valor Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn_abreCaixa: TSpeedButton
    Left = 304
    Top = 54
    Width = 121
    Height = 33
    Caption = 'Abrir caixa'
    OnClick = btn_abreCaixaClick
  end
  object lb_caixa: TLabel
    Left = 0
    Top = 8
    Width = 6
    Height = 23
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object btn_mostrarDias: TSpeedButton
    Left = 0
    Top = 93
    Width = 121
    Height = 29
    Caption = 'Mostrar todos os dias'
    OnClick = btn_mostrarDiasClick
  end
  object btn_mostrarTodos: TSpeedButton
    Left = 431
    Top = 93
    Width = 138
    Height = 29
    Caption = 'Mostrar de  todos usuarios'
    Enabled = False
    OnClick = btn_mostrarTodosClick
  end
  object btn_caixaFechar: TSpeedButton
    Left = 408
    Top = 295
    Width = 161
    Height = 31
    Caption = 'Fechar  caixa Selecionado'
    OnClick = btn_caixaFecharClick
  end
  object DBG_listarCaixa: TDBGrid
    Left = -8
    Top = 128
    Width = 577
    Height = 161
    DataSource = dm.ds_caixa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'caixa_data_abre'
        Title.Caption = 'Data Abertura'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa_valor'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa_data_fecha'
        Title.Caption = 'Data fechou'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa_inicial'
        Title.Caption = 'Valor inicial'
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'user_nome'
        Title.Caption = 'Usuario'
        Width = 150
        Visible = True
      end>
  end
  object txt_caixaHoje: TCurrencyEdit
    Left = 0
    Top = 56
    Width = 121
    Height = 31
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object txt_caixaInicial: TCurrencyEdit
    Left = 431
    Top = 56
    Width = 138
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object TB_abreCaixa: TFDTable
    IndexFieldNames = 'caixa_id'
    Connection = dm.conexao
    UpdateOptions.UpdateTableName = 'svendas.caixa'
    TableName = 'svendas.caixa'
    Left = 288
    Top = 24
    object TB_abreCaixacaixa_id: TFDAutoIncField
      FieldName = 'caixa_id'
      Origin = 'caixa_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_abreCaixacaixa_data_abre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_data_abre'
      Origin = 'caixa_data_abre'
    end
    object TB_abreCaixacaixa_valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_valor'
      Origin = 'caixa_valor'
    end
    object TB_abreCaixacaixa_data_fecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_data_fecha'
      Origin = 'caixa_data_fecha'
    end
    object TB_abreCaixacaixa_inicial: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_inicial'
      Origin = 'caixa_inicial'
    end
    object TB_abreCaixacaixa_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_usuario'
      Origin = 'caixa_usuario'
    end
  end
end