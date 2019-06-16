unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniLabel, uniGUIBaseClasses,
  uniButton;

type
  TMainForm = class(TUniForm)
    btnOdemeYap: TUniButton;
    UniLabel1: TUniLabel;
    procedure btnOdemeYapClick(Sender: TObject);
    procedure CallBackPS(Sender: TComponent; AResult: Integer); //geri dönüþ için gereklidir.
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, untSMSOnay1;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.btnOdemeYapClick(Sender: TObject);
begin
  frmSMSOnay.UniURLFrame1.URL :=
    'https://halilhanbadem.com/odeme/smsonay.php?tokenURL=' +
    UniSession.CallbackUrlex('mycallback', frmSMSOnay, ['RES', 'OK']) +
    '&callbacktarget=' + UniSession.CallbackTarget;
  frmSMSOnay.ShowModal(CallBackPS);
end;

procedure TMainForm.CallBackPS(Sender: TComponent; AResult: Integer);
begin
    if AResult = mrOk then
    begin
      ShowMessage('Ödeme baþarýlý bir þekilde yapýldý!');
    end
    else if AResult = mrCancel then
    begin
      ShowMessage('Ödeme yapýlýrken bir hata oluþtu veya iptal edildi!');
    end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
