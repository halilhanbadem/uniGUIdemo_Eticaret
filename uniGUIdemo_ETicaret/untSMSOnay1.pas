{
  The author of this demo is Halil Han Badem.
  Please do not change this information without permission.

  Build Delphi IDE: Delphi 10.3
  Developer by: Halil Han Badem

  Instagram: https://instagram.com/halilhanbadem.pas
  Facebook: https://facebook.com/halilhanbadem
  Twitter: https://twitter.com/halilhanbadem
  Github: https://github.com/halilhanbadem
  Website: https://halilhanbadem.com
  Udemy Delphi Education: https://udemy.com/sifirdan-delphi-ogrenin
}

{
Warning!!!

If you own, the paid deploy is strictly prohibited.
These demos are distributed free of charge. If you want to support me, please donate through the site! I'd be happy if you donated.

Uyarý!!!

Sahiplenmek, ücretli daðýtmak kesinlikle yasaktýr.
Bu kütüphaneler/demolar ücretsiz olarak daðýtýlmaktadýr. Bana destek olmak istiyorsanýz lütfen site üzerinden baðýþ yapýn! Baðýþ yaparsanýz mutlu olurum.

Donate web site: https://halilhanbadem.com/donate.html
Baðýþ web site: https://halilhanbadem.com/donate.html
}

unit untSMSOnay1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniURLFrame;

type
  TfrmSMSOnay = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    procedure UniFormAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmSMSOnay: TfrmSMSOnay;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmSMSOnay: TfrmSMSOnay;
begin
  Result := TfrmSMSOnay(UniMainModule.GetFormInstance(TfrmSMSOnay));
end;

procedure TfrmSMSOnay.UniFormAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  inherited;
  if EventName = 'mycallback' then
  begin
    if Params.Values['islem'] = 'islem_tamam' then
    begin
      ModalResult := mrOk;
    end
    else
    begin
      ModalResult := mrCancel;
    end;
  end;
end;

end.
