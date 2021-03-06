program ATX_Insure;

uses
  Forms,
  AboutUnit in 'AboutUnit.pas' {AboutBox},
  main_u in 'main_u.pas' {Main},
  dm_u in 'dm_u.pas' {dm: TDataModule},
  auth_u in 'auth_u.pas' {frmauth},
  users_u in 'users_u.pas' {frmusers},
  avtocard_u in 'avtocard_u.pas' {frmavtocard},
  libr_u in 'libr_u.pas' {frmLibr},
  search_u in 'search_u.pas' {frmsearch},
  report_u in 'report_u.pas' {frmreport},
  report2_u in 'report2_u.pas' {frmreport2},
  listavto_u in 'listavto_u.pas' {frmListAvto},
  Slash_u in 'Slash_u.pas' {Slash},
  loaddata_u in 'loaddata_u.pas' {frmLoadData},
  messDlg_u in 'messDlg_u.pas' {frmMessDlg},
  libModel_u in 'libModel_u.pas' {frmLibModel},
  loaddataprogres_u in 'loaddataprogres_u.pas' {frmLoadDataProgres},
  excelParams_u in 'excelParams_u.pas' {frmExcelParams};

{$R *.res}

begin
try
Slash := TSlash.Create(Application);
Slash.Show;
Slash.Update;
  Application.Initialize;
  Application.Title := '������������ ��� �����';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TfrmLoadDataProgres, frmLoadDataProgres);
  Application.CreateForm(TfrmExcelParams, frmExcelParams);
  Slash.chekUpdate;
  Slash.Hide;
 finally
 Slash.Free;
 end;
Application.Run;

end.
