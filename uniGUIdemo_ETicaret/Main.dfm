object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 235
  ClientWidth = 586
  Caption = 'eTicaretDemo'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object btnOdemeYap: TUniButton
    Left = 168
    Top = 104
    Width = 241
    Height = 65
    Hint = ''
    Caption = #214'DEMEY'#304' GER'#199'EKLE'#350'T'#304'R'
    TabOrder = 0
    OnClick = btnOdemeYapClick
  end
  object UniLabel1: TUniLabel
    Left = 80
    Top = 72
    Width = 422
    Height = 13
    Hint = ''
    Caption = 
      #214'DEME B'#304'LG'#304'LER'#304', '#214'DEME TUTARI PARAMETRE OLARAK URL'#39'YE EKLENEB'#304'L'#304 +
      'R.'
    ParentFont = False
    Font.Color = clRed
    Font.Style = [fsBold]
    TabOrder = 1
  end
end
