program MTester;
{$R *.res}
uses
  Windows,
  System,
  StrUtils,
  SysUtils,
  uMethod,
  Seed,
  uUtilitise,
  Forms,
  uTester in 'uTester.pas' {frmScrappingTestApp},
  aResult in 'aResult.pas' {Result},
  mParam in 'mParam.pas' {Param},
  uLogin in 'uLogin.pas' {frmlogin},
  uReadky in 'uReadky.pas' {frmkey},
  AddKey in 'AddKey.pas' {frmAddkey},
  uTMR in 'uTMR.pas' {frmTMR},
  ufrmInformation in 'ufrmInformation.pas' {frmInformation},
  ufrmSignup in 'ufrmSignup.pas' {frmsignup},
  uTaskSchedule in 'uTaskSchedule.pas' {frmTaskSchedule1},
  ufrmsplashscreen in 'ufrmsplashscreen.pas' {frmsplashscreen};

var
  vlu1,vlu2:Integer;
begin
  Application.Initialize;
  Application.Title := 'Semi Automatic Module Scraping Monitoring System';
  //vlu1:=0;
  //vlu2:=1;
  //ExtractFilePath(Application.ExeName)+
    vlu1:=StrToInt(StrGrab(FileDecryption(ExtractFilePath(Application.ExeName)+'auto.ini','auto.ini'),'[',']'));
  vlu2:=StrToInt(StrGrab(FileDecryption(ExtractFilePath(Application.ExeName)+'auto.ini','auto.ini'),'_','_'));
//  if ((vlu1=0) And (vlu2=0)) or ((vlu1=1) And (vlu2=1)) then
  if (vlu1=1) and (vlu2=0) then
  begin
//  Application.CreateForm(Tfrmsplashscreen, frmsplashscreen);
  Application.CreateForm(TfrmScrappingTestApp, frmScrappingTestApp);
  Application.CreateForm(TResult, Result);
  Application.CreateForm(TParam, Param);
  Application.CreateForm(Tfrmkey, frmkey);
  Application.CreateForm(TfrmAddkey, frmAddkey);
  Application.CreateForm(TfrmTMR, frmTMR);
  Application.CreateForm(TfrmInformation, frmInformation);
  Application.CreateForm(Tfrmsignup, frmsignup);
  Application.CreateForm(TfrmTaskSchedule1, frmTaskSchedule1);
  Application.Minimize;
  Sleep(10000);
  end else if(vlu1=0) and (vlu2=1) then begin
  Application.CreateForm(Tfrmsplashscreen, frmsplashscreen);
  Application.CreateForm(TfrmScrappingTestApp, frmScrappingTestApp);
  Application.CreateForm(TResult, Result);
  Application.CreateForm(TParam, Param);
  Application.CreateForm(Tfrmkey, frmkey);
  Application.CreateForm(TfrmAddkey, frmAddkey);
  Application.CreateForm(TfrmTMR, frmTMR);
  Application.CreateForm(TfrmInformation, frmInformation);
  Application.CreateForm(Tfrmsignup, frmsignup);
  Application.CreateForm(TfrmTaskSchedule1, frmTaskSchedule1);
  end;
    Application.Run;
end.
