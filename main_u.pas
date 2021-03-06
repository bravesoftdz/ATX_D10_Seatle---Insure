unit main_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbStaticText,  ComCtrls, ToolWin,
  ExtCtrls, ImgList, ActnList,Registry,
  ComObj, ActiveX,LbSpeedButton, Menus,DB,
  StdActns,ShellAPI,ADOdb,StdCtrls,
  IniFiles, frxExportRTF, frxClass,
  frxDBSet, frxExportPDF, frxCross, frxExportCSV, System.Actions,
  System.ImageList;

type
  TMain = class(TForm)
    ImageList2: TImageList;
    ActionList1: TActionList;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrangeAll1: TWindowArrange;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    frxDBDatasetLibr: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
    frxUserDataSet2: TfrxUserDataSet;
    frxRTFExport1: TfrxRTFExport;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ItemAdmin: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N27: TMenuItem;
    N29: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N45: TMenuItem;
    CoolBar2: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    frxPDFExport1: TfrxPDFExport;
    N5: TMenuItem;
    Cascade1: TMenuItem;
    MinimizeAll1: TMenuItem;
    ileHorizontally1: TMenuItem;
    ileVertically1: TMenuItem;
    frxDBDataset6: TfrxDBDataset;
    N59: TMenuItem;
    N60: TMenuItem;
    N2: TMenuItem;
    N6: TMenuItem;
    N11: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N28: TMenuItem;
    N30: TMenuItem;
    NMenuRaschet: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    OpenDialog1: TOpenDialog;
    N31: TMenuItem;
    frxCSVExport1: TfrxCSVExport;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    procedure ExitExecute(Sender: TObject);
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxfbclClick(Sender: TObject);
    procedure bmaxClick(Sender: TObject);
    procedure bminClick(Sender: TObject);
    procedure AboutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CoolItemMain20001Click(Sender: TObject);
    procedure CoolItem955Click(Sender: TObject);
    procedure CoolItem954Click(Sender: TObject);
    procedure CoolItem956Click(Sender: TObject);
    procedure CoolItem9515Click(Sender: TObject);
    procedure CoolItem9522Click(Sender: TObject);
    procedure WindowTileHorizontal1Execute(Sender: TObject);
    procedure WindowTileVertical1Execute(Sender: TObject);
    procedure CoolItem9523Click(Sender: TObject);





    procedure CoolItem9513Click(Sender: TObject);
    procedure CoolItem951Click(Sender: TObject);
    procedure CoolItem9530Click(Sender: TObject);

    procedure CoolItem9535Click(Sender: TObject);

    procedure CoolItem9532Click(Sender: TObject);

    procedure CoolItem9539Click(Sender: TObject);
    procedure CoolItem9541Click(Sender: TObject);
    procedure CoolItem9542Click(Sender: TObject);

    procedure CoolItem9544Click(Sender: TObject);
    procedure CoolItem9545Click(Sender: TObject);
    procedure CoolItem9546Click(Sender: TObject);


    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);



    procedure N57Click(Sender: TObject);
    procedure N310Click(Sender: TObject);

    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure N11Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
  private
    whatReport:integer;
    dateR1,dateR2:String;
    WriteIdx:byte;
  //SG_AGR_list_1,SG_AGR_list_2,SG_AGR_list_3:TStringList;
  //SG_REM_list_1,SG_REM_list_2:TStringList;
  //SG_ZAP_list_1,SG_ZAP_list_2:TStringList;
  //SG_TMC_list_1,SG_TMC_list_2:TStringList;
  //SG_TMC_SKLAD_list_1,SG_TMC_SKLAD_list_2:TStringList;
//   date1_list,date2_list,vid_list,place_rem_list,s_b_list,s_e_list,ddd_list,place_list,oil_l_list:TStringList;
//   max_list:integer;
//    procedure PreviewShtat;
  public
  searchForm:array[1..2,1..27] of integer;
    UserRole:Integer;
    LastUser:String;
    UserClose:boolean;
    str_old_m, str_old_f:String;
    listAvt_From:integer;
    procedure CreateAvtoCard(id,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,dislok_p:integer; model,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,OutD1,OutD2:String; State_p,UotAc_p,life_p:integer;N_insur,D_insur:String;preserv_p,notATX_p:integer);
    procedure CreateAvtoList(reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p:integer; numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p:String;State_p,UotAc_p,life_p:integer;N_insur,D_insur:String);
    procedure CreateReport(what,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p:integer;
    model_p,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,d1Rr,d2Rr,OutD1,OutD2:String;
    State_p,UotAc_p,life_p:integer;N_insur,D_insur1,D_insur2:String;id_dislok:integer;type_tc_p:integer; arenda:integer; spisat:integer;
    fuel_p,preserv_p,notATX,id_gsm,State_priz:integer; modelDVC, volumDVC:String;
    typeDVC, manufactureTC, howselect:integer);
    procedure MinAvtoCard;
    procedure MaxAvtoCard;
    procedure RefreshLibr;
    procedure ATXShowMessage(str:String);
    function ATXMessageDlg(str:String;tBtn:byte;tMessType:TMsgDlgType):TModalResult;
    function ATXMessageDlgLink(str,link:String;tBtn:byte;tMessType:TMsgDlgType):TModalResult;
    function ATXMessageDlgDescript(str:String;tBtn:byte;tMessType:TMsgDlgType;descript:String):TModalResult;

    procedure CreateReportAvtoCard();
    procedure CreateReportLibr(what:integer);
    procedure InsertEmptyInsures();
    procedure sh1(SheetIndex:integer);
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;
const
ADMIN_USER=1;
INSURE_USER=2;
USER_USER=4;
var
  Main: TMain;

implementation
    uses AboutUnit, dm_u, auth_u,
    users_u, avtocard_u, libr_u,
    search_u,   report_u, report2_u,
  listavto_u,  loaddata_u, messDlg_u,
  libModel_u, listnew_u, loaddataprogres_u, excelParams_u;
{$R *.dfm}

procedure TMain.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
 { with Params do
    Style := (Style or WS_POPUP) and (not WS_DLGFRAME); }
end;

procedure TMain.ATXShowMessage(str:String);
begin
Application.CreateForm(TfrmMessDlg, frmMessDlg);
frmMessDlg.ATXShowMessage(str);
frmMessDlg.ShowModal;
frmMessDlg.Free;
end;

function TMain.ATXMessageDlgDescript(str:String;tBtn:byte;tMessType:TMsgDlgType;descript:String):TModalResult;
begin
//ATXMessageDlg:=mrNone;
Application.CreateForm(TfrmMessDlg, frmMessDlg);
frmMessDlg.ATXMessageDlgDescript(str,tBtn,tMessType, descript);
ATXMessageDlgDescript:=frmMessDlg.ShowModal;
frmMessDlg.Free;
end;


function TMain.ATXMessageDlg(str:String;tBtn:byte;tMessType:TMsgDlgType):TModalResult;
begin
//ATXMessageDlg:=mrNone;
Application.CreateForm(TfrmMessDlg, frmMessDlg);
frmMessDlg.ATXMessageDlg(str,tBtn,tMessType);
ATXMessageDlg:=frmMessDlg.ShowModal;
frmMessDlg.Free;
end;
function TMain.ATXMessageDlgLink(str,link:String;tBtn:byte;tMessType:TMsgDlgType):TModalResult;
begin
//ATXMessageDlgLink:=mrNone;
Application.CreateForm(TfrmMessDlg, frmMessDlg);
frmMessDlg.ATXMessageDlg(str,tBtn,tMessType);
ATXMessageDlgLink:=frmMessDlg.ShowModal;
ShellExecute(Handle, 'open', PChar(link), nil, nil, SW_SHOWNORMAL);
frmMessDlg.Free;
end;
procedure TMain.CreateAvtoCard(id,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,dislok_p:integer; model,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,OutD1,OutD2:String; State_p,UotAc_p,life_p:integer;N_insur,D_insur:String;preserv_p,notATX_p:integer);
var
Child:Tfrmavtocard;
begin
if MDIChildCount=0 then
begin
Application.CreateForm(TfrmLoadData, frmLoadData);
frmLoadData.Show;
Application.ProcessMessages;
if dm.openProc(id,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,dislok_p,model,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,OutD1,OutD2, State_p,UotAc_p,life_p,N_insur,D_insur,preserv_p,notATX_p) then
begin
Child:=Tfrmavtocard.Create(Application);
Child.Panel2.Visible:=true;
Application.ProcessMessages;
frmLoadData.Close;

Application.ProcessMessages;
end else
begin
frmLoadData.Close;
Application.ProcessMessages;
end;
end;
end;

procedure TMain.CreateAvtoList(reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p:integer; numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p:String; State_p,UotAc_p,life_p:integer;N_insur,D_insur:String);
begin
with dm do
begin
if ADO.Connected then begin
Application.CreateForm(TfrmLoadData, frmLoadData);
frmLoadData.Show;
Application.ProcessMessages;
if Proc_ListAvt.Active then Proc_ListAvt.Active:=false;
Application.ProcessMessages;
Proc_ListAvt.Parameters.Clear;
Proc_ListAvt.ProcedureName:='GetListAvto_02;1';
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[0].Name:='@RETURN_VALUE';
Proc_ListAvt.Parameters[0].DataType:=ftInteger;
Proc_ListAvt.Parameters[0].Direction:=pdReturnValue;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[1].Name:='@reg_p';
Proc_ListAvt.Parameters[1].DataType:=ftInteger;
Proc_ListAvt.Parameters[1].Value:=reg_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[2].Name:='@div_p';
Proc_ListAvt.Parameters[2].DataType:=ftInteger;
Proc_ListAvt.Parameters[2].Value:=div_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[3].Name:='@depart_p';
Proc_ListAvt.Parameters[3].DataType:=ftInteger;
Proc_ListAvt.Parameters[3].Value:=depart_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[4].Name:='@pre_p';
Proc_ListAvt.Parameters[4].DataType:=ftInteger;
Proc_ListAvt.Parameters[4].Value:=pre_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[5].Name:='@serv_p';
Proc_ListAvt.Parameters[5].DataType:=ftInteger;
Proc_ListAvt.Parameters[5].Value:=serv_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[6].Name:='@mark_p';
Proc_ListAvt.Parameters[6].DataType:=ftInteger;
Proc_ListAvt.Parameters[6].Value:=mark_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[7].Name:='@source1_p';
Proc_ListAvt.Parameters[7].DataType:=ftInteger;
Proc_ListAvt.Parameters[7].Value:=source1_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[8].Name:='@source2_p';
Proc_ListAvt.Parameters[8].DataType:=ftInteger;
Proc_ListAvt.Parameters[8].Value:=source2_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[9].Name:='@group_p';
Proc_ListAvt.Parameters[9].DataType:=ftInteger;
Proc_ListAvt.Parameters[9].Value:=group_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[10].Name:='@numb1_p';
Proc_ListAvt.Parameters[10].DataType:=ftString;
Proc_ListAvt.Parameters[10].Value:=numb1_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[11].Name:='@numb2_p';
Proc_ListAvt.Parameters[11].DataType:=ftString;
Proc_ListAvt.Parameters[11].Value:=numb2_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[12].Name:='@oldnumb_p';
Proc_ListAvt.Parameters[12].DataType:=ftString;
Proc_ListAvt.Parameters[12].Value:=oldnumb_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[13].Name:='@year1_p';
Proc_ListAvt.Parameters[13].DataType:=ftString;
Proc_ListAvt.Parameters[13].Value:=year1_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[14].Name:='@year2_p';
Proc_ListAvt.Parameters[14].DataType:=ftString;
Proc_ListAvt.Parameters[14].Value:=year2_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[15].Name:='@vin_p';
Proc_ListAvt.Parameters[15].DataType:=ftString;
Proc_ListAvt.Parameters[15].Value:=vin_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[16].Name:='@Neng_p';
Proc_ListAvt.Parameters[16].DataType:=ftString;
Proc_ListAvt.Parameters[16].Value:=Neng_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[17].Name:='@Nbody_p';
Proc_ListAvt.Parameters[17].DataType:=ftString;
Proc_ListAvt.Parameters[17].Value:=Nbody_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[18].Name:='@Nshas_p';
Proc_ListAvt.Parameters[18].DataType:=ftString;
Proc_ListAvt.Parameters[18].Value:=Nshas_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[19].Name:='@Npts_p';
Proc_ListAvt.Parameters[19].DataType:=ftString;
Proc_ListAvt.Parameters[19].Value:=Npts_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[20].Name:='@InAc1_p';
Proc_ListAvt.Parameters[20].DataType:=ftString;
Proc_ListAvt.Parameters[20].Value:=InAc1_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[21].Name:='@InAc2_p';
Proc_ListAvt.Parameters[21].DataType:=ftString;
Proc_ListAvt.Parameters[21].Value:=InAc2_p;

Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[22].Name:='@N_insur';
Proc_ListAvt.Parameters[22].DataType:=ftString;
Proc_ListAvt.Parameters[22].Value:=N_insur;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[23].Name:='@D_insur';
Proc_ListAvt.Parameters[23].DataType:=ftString;
Proc_ListAvt.Parameters[23].Value:=D_insur;

Application.ProcessMessages;
    Proc_ListAvt.Open;
    if Proc_ListAvt.RecordCount=0 then
    ATXShowMessage('� ������ ������������� ��� �������!');
Application.ProcessMessages;
Application.ProcessMessages;
frmLoadData.Close;
end;

end;

  Application.CreateForm(TfrmListAvto, frmListAvto);
  frmListAvto.showModal;
end;





procedure TMain.ExitExecute(Sender: TObject);
begin
Close;
end;

procedure TMain.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
reg:TRegistry;
begin
if frmsearch<>nil then frmsearch.SearchStorage.EraseSections;
Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\LebAlex\atx_insure', True) then
   begin
if Main.WindowState<>wsMaximized then
begin
      Reg.WriteInteger('WV',Main.Width);
      Reg.WriteInteger('HV',Main.Height);
      Reg.WriteInteger('LV',Main.Left);
      Reg.WriteInteger('TV',Main.Top);
end;//if
      Reg.WriteString('LastUser',LastUser);
      Reg.CloseKey;
    end;
    except
//
    end;
    Reg.Free;
end;

procedure TMain.dxfbclClick(Sender: TObject);
begin
Close;
end;

procedure TMain.bmaxClick(Sender: TObject);
begin
if WindowState=wsMaximized then
   WindowState:=wsNormal else
   WindowState:=wsMaximized;
end;

procedure TMain.bminClick(Sender: TObject);
begin
Application.Minimize;
end;

procedure TMain.AboutExecute(Sender: TObject);
begin
Application.CreateForm(TAboutBox, AboutBox);
AboutBox.ShowModal;
end;



procedure TMain.FormShow(Sender: TObject);
var
reg:TRegistry;
Layout: array[0.. KL_NAMELENGTH] of char;
DMIni:TIniFile;
begin
DMIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'cfg.ini');
  with DMIni do
  begin
     WriteIdx:=ReadInteger('Report_libr','writeidx',0);
  end;
DMIni.Free;

LoadKeyboardLayout( StrCopy(Layout,'00000419'),KLF_ACTIVATE);
Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\LebAlex\atx_insure', True) then
   begin
      Main.Width:=Reg.ReadInteger('WV');
      Main.Height:=Reg.ReadInteger('HV');
      Main.Left:=Reg.ReadInteger('LV');
      Main.Top:=Reg.ReadInteger('TV');
      LastUser:=Reg.ReadString('LastUser');
      Reg.RootKey := HKEY_CLASSES_ROOT;
      Reg.CloseKey;
    end;
  except
    Reg.CloseKey;
      Main.Width:=Screen.Width;
      Main.Height:=screen.Height-28;
      Main.Left:=0;
      Main.Top:=0;
  end;
    Reg.Free;
      Application.CreateForm(Tfrmauth, frmauth);
      frmauth.LastUs(LastUser);
if frmauth.ShowModal=mrOk then begin
LastUser:=frmauth.edit_user.Text;
if frmauth.edit_pwd.Text<>'' then
begin
if not dm.CheckingUser(frmauth.edit_user.Text,frmauth.edit_pwd.Text) then
  begin
    ATXMessageDlg('� ��� ��� ���� ������� � ���� ������ ! ���������� � �������������� !'+#13+#13+#13,1,mtError);
    Application.Terminate;
  end
  else begin
      //������ �������
//UserRole:=1;//admin
//UserRole:=2;//��� �����
//UserRole:=3;//������
//UserRole:=4;//User

case UserRole of
ADMIN_USER:begin
      ItemAdmin.Visible:=true;
      ItemAdmin.Enabled:=true;

end;
INSURE_USER:begin
      ItemAdmin.Enabled:=false;
      ItemAdmin.Visible:=false;
end;

else begin
      ItemAdmin.Enabled:=false;
      ItemAdmin.Visible:=false;


end;
end;
  end;
  end else
  begin
   UserRole:=USER_USER;//user
   ItemAdmin.Enabled:=false;
      ItemAdmin.Visible:=false;
      NMenuRaschet.Enabled:=false;

  end;
end else begin
dm.ADO.Connected:=false;
Application.Terminate;
end;


end;



procedure TMain.FormCreate(Sender: TObject);
begin
UserClose:=false;
frxDBDataset1.DataSource:=dm.DS_Report;
end;


procedure TMain.CoolItemMain20001Click(Sender: TObject);
begin
Close;
end;

procedure TMain.CoolItem955Click(Sender: TObject);
begin
Application.CreateForm(Tfrmusers, frmusers);
frmusers.Show;
end;

procedure TMain.CoolItem954Click(Sender: TObject);
begin
CreateAvtoCard(0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,'-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',-1,-1,-1,'-1','-1',-1,-1);
end;








procedure TMain.CreateReportLibr(what:integer);
begin
Application.ProcessMessages;
if WriteIdx=1 then
frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'report\fr3\libr01.fr3')
else
frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'report\fr3\libr02.fr3');
frxDBDataSetLibr.DataSource:=dm.ds_libr;
case what of
1: begin frxReport1.ReportOptions.Name := '��������/�������';
end;
2: begin frxReport1.ReportOptions.Name:='����������';
end;
3:begin frxReport1.ReportOptions.Name:='������';
end;
4:begin frxReport1.ReportOptions.Name:='���-������';
end;
5:begin frxReport1.ReportOptions.Name:='������';
end;
6:begin frxReport1.ReportOptions.Name:='����� ��������������';
end;
7:begin frxReport1.ReportOptions.Name:='�������� ��������������';
end;
8:begin frxReport1.ReportOptions.Name:='��� ������';
end;
9:begin frxReport1.ReportOptions.Name:='���. ���������';
end;
10:begin frxReport1.ReportOptions.Name:='������ ������������';
end;
11:begin frxReport1.ReportOptions.Name:='����� ����������';
end;
15:begin frxReport1.ReportOptions.Name:='��������� ��������';
end;
16:begin frxReport1.ReportOptions.Name:='������';
frxDBDataSetLibr.DataSource:=dm.ds_libr2;
end;

17:begin frxReport1.ReportOptions.Name:='��������� ��';
end;
18:begin frxReport1.ReportOptions.Name:='��� ������';
end;
22,23,24,25,26:begin frxReport1.ReportOptions.Name:='����������';
end;

end;


whatReport:=what+100;

frxReport1.OnMouseOverObject := nil;
frxReport1.Preview := nil;
if frxReport1.PrepareReport then
        frxReport1.ShowPreparedReport;

end;


procedure TMain.CreateReportAvtoCard();
begin
Application.ProcessMessages;
frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'report\fr3\9.fr3');
frxReport1.ReportOptions.Name:='���.��������������';
whatReport:=9;
//frxReport1.OnObjectClick := nil;
frxReport1.OnMouseOverObject := nil;
frxReport1.Preview := nil;
if frxReport1.PrepareReport then
        frxReport1.ShowPreparedReport;

end;

procedure TMain.CreateReport(what,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p:integer;model_p, numb1_p,
numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,d1Rr,d2Rr,OutD1,OutD2:String;
State_p,UotAc_p,life_p:integer;N_insur,D_insur1,D_insur2:String;id_dislok:integer;type_tc_p:integer; arenda:integer; spisat:integer;
fuel_p,preserv_p,notATX,id_gsm,State_priz:integer; modelDVC, volumDVC:String;typeDVC, manufactureTC,howselect:integer) ;
var
WPath,reportFile:String;
//t: TfrMemoView;
Ch:TCheckBox;
n_i:byte;
begin
chdir(ExtractFilePath(paramstr(0)));
whatReport:=what;
if d1Rr<>'-1' then
dateR1:=d1Rr else dateR1:='-';
if d2Rr<>'-1' then
dateR2:=d2Rr else dateR2:='-';


with dm do
begin
if ADO.Connected then begin
Application.CreateForm(TfrmLoadData, frmLoadData);
frmLoadData.Show;
Application.ProcessMessages;
if SP_Report.Active then SP_Report.Active:=false;
SP_Report.Parameters.Clear;
WPath:=ExtractFilePath(ParamStr(0))+'report\';
case what of
1,2,3: begin
SP_Report.ProcedureName:='GetReportOsago1;1';
reportFile:=WPath + 'fr3\1.fr3'
end;
4:begin
SP_Report.ProcedureName:='GetReportOsago2;1';
reportFile:=WPath + 'fr3\1.fr3'
end;
end;

if reportFile='' then
   reportFile:=WPath + 'fr3\'+IntToStr(what) + '.fr3';

SP_Report.Parameters.AddParameter;
SP_Report.Parameters[0].Name:='@RETURN_VALUE';
SP_Report.Parameters[0].DataType:=ftInteger;
SP_Report.Parameters[0].Direction:=pdReturnValue;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[1].Name:='@reg_p';
SP_Report.Parameters[1].DataType:=ftInteger;
SP_Report.Parameters[1].Value:=reg_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[2].Name:='@div_p';
SP_Report.Parameters[2].DataType:=ftInteger;
SP_Report.Parameters[2].Value:=div_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[3].Name:='@depart_p';
SP_Report.Parameters[3].DataType:=ftInteger;
SP_Report.Parameters[3].Value:=depart_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[4].Name:='@pre_p';
SP_Report.Parameters[4].DataType:=ftInteger;
SP_Report.Parameters[4].Value:=pre_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[5].Name:='@serv_p';
SP_Report.Parameters[5].DataType:=ftInteger;
SP_Report.Parameters[5].Value:=serv_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[6].Name:='@mark_p';
SP_Report.Parameters[6].DataType:=ftInteger;
SP_Report.Parameters[6].Value:=mark_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[7].Name:='@model_p';
SP_Report.Parameters[7].DataType:=ftString;
SP_Report.Parameters[7].Value:=model_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[8].Name:='@source1_p';
SP_Report.Parameters[8].DataType:=ftInteger;
SP_Report.Parameters[8].Value:=source1_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[9].Name:='@source2_p';
SP_Report.Parameters[9].DataType:=ftInteger;
SP_Report.Parameters[9].Value:=source2_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[10].Name:='@group_p';
SP_Report.Parameters[10].DataType:=ftInteger;
SP_Report.Parameters[10].Value:=group_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[11].Name:='@numb1_p';
SP_Report.Parameters[11].DataType:=ftString;
SP_Report.Parameters[11].Value:=numb1_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[12].Name:='@numb2_p';
SP_Report.Parameters[12].DataType:=ftString;
SP_Report.Parameters[12].Value:=numb2_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[13].Name:='@oldnumb_p';
SP_Report.Parameters[13].DataType:=ftString;
SP_Report.Parameters[13].Value:=oldnumb_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[14].Name:='@year1_p';
SP_Report.Parameters[14].DataType:=ftString;
SP_Report.Parameters[14].Value:=year1_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[15].Name:='@year2_p';
SP_Report.Parameters[15].DataType:=ftString;
SP_Report.Parameters[15].Value:=year2_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[16].Name:='@vin_p';
SP_Report.Parameters[16].DataType:=ftString;
SP_Report.Parameters[16].Value:=vin_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[17].Name:='@Neng_p';
SP_Report.Parameters[17].DataType:=ftString;
SP_Report.Parameters[17].Value:=Neng_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[18].Name:='@Nbody_p';
SP_Report.Parameters[18].DataType:=ftString;
SP_Report.Parameters[18].Value:=Nbody_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[19].Name:='@Nshas_p';
SP_Report.Parameters[19].DataType:=ftString;
SP_Report.Parameters[19].Value:=Nshas_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[20].Name:='@Npts_p';
SP_Report.Parameters[20].DataType:=ftString;
SP_Report.Parameters[20].Value:=Npts_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[21].Name:='@InAc1_p';
SP_Report.Parameters[21].DataType:=ftString;
SP_Report.Parameters[21].Value:=InAc1_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[22].Name:='@InAc2_p';
SP_Report.Parameters[22].DataType:=ftString;
SP_Report.Parameters[22].Value:=InAc2_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[23].Name:='@State_p';
SP_Report.Parameters[23].DataType:=ftInteger;
SP_Report.Parameters[23].Value:=State_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[24].Name:='@UotAc_p';
SP_Report.Parameters[24].DataType:=ftInteger;
SP_Report.Parameters[24].Value:=UotAc_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[25].Name:='@life_p';
SP_Report.Parameters[25].DataType:=ftInteger;
SP_Report.Parameters[25].Value:=life_p;

SP_Report.Parameters.AddParameter;
SP_Report.Parameters[26].Name:='@datt1';
SP_Report.Parameters[26].DataType:=ftString;
SP_Report.Parameters[26].Value:=d1Rr;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[27].Name:='@datt2';
SP_Report.Parameters[27].DataType:=ftString;
SP_Report.Parameters[27].Value:=d2Rr;




SP_Report.Parameters.AddParameter;
SP_Report.Parameters[28].Name:='@id_dislok';
SP_Report.Parameters[28].DataType:=ftInteger;
SP_Report.Parameters[28].Value:=id_dislok;

SP_Report.Parameters.AddParameter;
SP_Report.Parameters[29].Name:='@type_tc_p';
SP_Report.Parameters[29].DataType:=ftInteger;
SP_Report.Parameters[29].Value:=type_tc_p;


SP_Report.Parameters.AddParameter;
SP_Report.Parameters[30].Name:='@preserv_p';
SP_Report.Parameters[30].DataType:=ftInteger;
SP_Report.Parameters[30].Value:=preserv_p;


SP_Report.Parameters.AddParameter;
SP_Report.Parameters[31].Name:='@notATX_p';
SP_Report.Parameters[31].DataType:=ftInteger;
SP_Report.Parameters[31].Value:=notATX;

SP_Report.Parameters.AddParameter;
SP_Report.Parameters[32].Name:='@id_gsm';
SP_Report.Parameters[32].DataType:=ftInteger;
SP_Report.Parameters[32].Value:=id_gsm;

SP_Report.Parameters.AddParameter;
SP_Report.Parameters[33].Name:='@howselect';
SP_Report.Parameters[33].DataType:=ftInteger;
SP_Report.Parameters[33].Value:=howselect;

try

SP_Report.Open;

if what=2 {������ �� ���������} then
begin
     Application.ProcessMessages;
     InsertEmptyInsures();
     frmLoadData.Close;
end else begin
frmLoadData.Close;
Application.ProcessMessages;

frxUserDataset1.RangeEndCount:=SP_Report.FieldCount;
  frxReport1.LoadFromFile(reportFile);

case what of
1:frxReport1.ReportOptions.Name:='������ ������';
3:frxReport1.ReportOptions.Name:='�� ����������� ������';
4:frxReport1.ReportOptions.Name:='������� ������� ������';
end;//case


//frxReport1.ShowReport(true);
//frxReport1.OnMouseOverObject := nil;
//frxReport1.Preview := nil;
//frxReport1.ShowProgress:=true;
        if frxReport1.PrepareReport then
          frxReport1.ShowPreparedReport;
end;
          except
          on E : Exception do     begin
          dm.setMoreTimeOut();
            ShowMessage(E.ClassName+' ������� ������, � ���������� : '+E.Message);
            frmLoadData.Close;
            Application.ProcessMessages;
          end;
end;//except
end;
end;

end;

procedure TMain.InsertEmptyInsures();
var
sSql:String;
countRec:integer;
sumIns:real;
begin
{sSql := 'insert into tInsure(id_avto,period,osago_coast) values (:id_avto,:period,:osago_coast)';
dm.ADOCom1.Parameters.Clear();
dm.ADOCom1.CommandText := sSql;
dm.ADOCom1.CommandType := cmdText;
dm.ADOCom1.Parameters.ParseSQL( sSql, True );
dm.ADOCom1.Parameters.ParamByName('id_avto').DataType := ftInteger;
dm.ADOCom1.Parameters.ParamByName('period').DataType := ftInteger;
dm.ADOCom1.Parameters.ParamByName('osago_coast').DataType := ftFloat;  }
countRec:=0;sumIns:=0;
try

if dm.StoredProc_osago.Active then
dm.StoredProc_osago.Active:=false;

dm.StoredProc_osago.Parameters.Clear;
dm.StoredProc_osago.ProcedureName:='SetEmptyOsago;1';

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_osago.Parameters[0].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[0].Direction:=pdReturnValue;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[1].Name:='@id_avt';
dm.StoredProc_osago.Parameters[1].DataType:=ftInteger;


dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[2].Name:='@osago_coast';
dm.StoredProc_osago.Parameters[2].DataType:=ftFloat;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[3].Name:='@osago_kbm';
dm.StoredProc_osago.Parameters[3].DataType:=ftFloat;

  if dm.SP_Report.Active then
  begin
        while not dm.SP_Report.Eof do
        begin
          if dm.SP_Report.FieldByName('sum').AsVariant<>null then
          begin
            dm.StoredProc_osago.Parameters[1].Value:=dm.SP_Report.FieldByName('id_avto').AsInteger;
            dm.StoredProc_osago.Parameters[2].Value:=dm.SP_Report.FieldByName('sum').AsFloat;
            if not dm.SP_Report.FieldByName('kbm').IsNull then
              dm.StoredProc_osago.Parameters[3].Value:=dm.SP_Report.FieldByName('kbm').AsFloat
            else
              dm.StoredProc_osago.Parameters[3].Value:=1;
            sumIns:=sumIns+dm.SP_Report.FieldByName('sum').AsFloat;
            dm.StoredProc_osago.ExecProc;
            inc(countRec);
          end;
          dm.SP_Report.Next;
          Application.ProcessMessages;
        end;
  end;
dm.CommitTR;
       ATXShowMessage('��������� '+IntToStr(countRec)+' ���������, �� �����: '+FloatToStr(sumIns)+' ���.');
except
on E : Exception do
begin
dm.RollBTR;
      ShowMessage(E.ClassName+' ������ � ���������� : '+E.Message);

    end;
end;
dm.StoredProc_osago.Active:=false;
dm.SP_Report.Close;

end;

procedure TMain.CoolItem956Click(Sender: TObject);
begin
if frmLibr = nil then
begin
  Application.CreateForm(TfrmLibr, frmLibr);
  frmLibr.OpenLibr((Sender as TMenuItem).Tag);
  frmLibr.Show;
end;
end;

procedure TMain.CoolItem9515Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmsearch, frmsearch);
  frmsearch.Search;
  frmsearch.ShowModal;
end;




procedure TMain.MinAvtoCard;
begin
Tfrmavtocard(ActiveMDIChild).WindowState:=wsMinimized;
end;
procedure TMain.N11Click(Sender: TObject);
begin
if frmLibr = nil then
begin
  Application.CreateForm(TfrmLibr, frmLibr);
  frmLibr.OpenLibr((Sender as TMenuItem).Tag);
  frmLibr.Show;
end;
end;

procedure TMain.N30Click(Sender: TObject);
begin
  Application.CreateForm(TfrmLibModel, frmLibModel);
  frmLibModel.OpenLib(26);
  frmLibModel.Show;
end;

procedure TMain.N310Click(Sender: TObject);
begin
Application.CreateForm(Tfrmreport, frmreport);
  frmreport.NotOper3month;
  frmreport.GroupBox2.Visible:=true;
  frmreport.GroupBox3.Visible:=false;
  frmreport.TArenda.Visible:=true;
  frmreport.ShowModal;
end;


procedure TMain.N31Click(Sender: TObject);
begin
if opendialog1.Execute then begin
    sh1(1);
    end;
end;
procedure TMain.sh1(SheetIndex:integer);
Var
Xlapp1, Sheet:Variant ;
MaxRow, MaxCol,X, Y:integer ;
str,coast,descript,errorStr:string;
osago_coast:real;
r,r1,r2:integer;
Reg:TRegistry;
n_row_insure,n_row_coast,n_col_start:integer;
begin
descript:='�� ��������� ���������'+#13;
Main.Cursor:=crHourGlass;
Application.CreateForm(TfrmLoadDataProgres, frmLoadDataProgres);
frmLoadDataProgres.Show;
Application.ProcessMessages;
try
Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\ATX_Insure\frmExcelParams', True) then
   begin
      n_row_insure:=StrToInt(Reg.ReadString('n_row_insure_Text'));
      n_row_coast:=StrToInt(Reg.ReadString('n_row_coast_Text'));
      n_col_start:=StrToInt(Reg.ReadString('n_col_start_Text'));
      Reg.CloseKey;
    end;
    except
      n_row_insure:=20;
      n_row_coast:=19;
      n_col_start:=8;
    end;
    Reg.Free;


Str:=trim(OpenDialog1.FileName);

XLApp1 := createoleobject('excel.application');
XLApp1.Workbooks.open(Str) ;

Sheet := XLApp1.WorkSheets[SheetIndex] ;

MaxRow := Sheet.Usedrange.EntireRow.count ;
MaxCol := sheet.Usedrange.EntireColumn.count;
frmLoadDataProgres.ProgressBar1.Min:=0;
frmLoadDataProgres.ProgressBar1.Max:=MaxRow;
        dm.Q1.Close;
        dm.Q1.SQL.Clear;
        dm.Q1.SQL.Add('update ATX_UVD_INSURE.dbo.tInsure set osago_coast=? where number=?');
r1:=0; r2:=0;
     for y:=n_col_start to maxRow do begin
      str:=sheet.Cells[y,n_row_insure].Value;
      if str<>'' then
      begin
        //ShowMessage(str);
        inc(r2);
        coast:=sheet.Cells[y,n_row_coast].Value;
        try
        if not(str[1] in ['1','2','3','4','5','6','7','8','9','0']) then
          str:=Copy(str,5, Length(str)-4);
        osago_coast:=StrToFloat(coast);
        dm.Q1.Parameters[0].DataType:=ftFloat;
        dm.Q1.Parameters[0].Value:=osago_coast;
        dm.Q1.Parameters[1].DataType:=ftString;
        dm.Q1.Parameters[1].Value:=str;
        r:=dm.Q1.ExecSQL;
        if r=1 then
          inc(r1)
        else
        begin
          descript:=descript+str+#13;
        end;
        except
        on E1 : Exception do     begin
             errorStr:=errorStr+E1.Message+#13;
        end;
        end;
        //ShowMessage(str+'-'+FloatToStr(osago_coast));


        frmLoadDataProgres.ProgressBar1.Position:=frmLoadDataProgres.ProgressBar1.Position+1;
        Application.ProcessMessages;
      end;
     end;

        dm.Q1.Close;
        dm.Q1.SQL.Clear;

        XLApp1.Workbooks.close;
        if r1=r2 then
          ATXMessageDlg('���������� '+IntToStr(r1)+' ������� �� '+IntToStr(r2),1,mtInformation)
        else
          ATXMessageDlgDescript('���������� '+IntToStr(r1)+' ������� �� '+IntToStr(r2),1,mtInformation,descript+errorStr);

except
on E : Exception do     begin
            ATXMessageDlg('���-�� ����� �� ���! '+E.Message,1,mtError);
            Application.ProcessMessages;
          end;
end;
frmLoadDataProgres.Close;
Main.Cursor:=crDefault;
Application.ProcessMessages;
end;

procedure TMain.N32Click(Sender: TObject);
begin
//������ ��������� � ����������
    Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.osago_1(2);
  frmreport2.ShowModal;
end;

procedure TMain.N33Click(Sender: TObject);
begin
    Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.osago_1(3);
  frmreport2.ShowModal;
end;

procedure TMain.N34Click(Sender: TObject);
begin
if Main.UserRole=USER_USER then
begin
  ATXShowMessage('� ��� ��� ���� �� ���������� ������ �������!');
  Exit;
end;

  if Main.ATXMessageDlg('�� �������, ��� ������ ������� ��� ������������� ������?',
    2,mtWarning) = mrYes then


try

if dm.StoredProc_osago.Active then
dm.StoredProc_osago.Active:=false;

dm.StoredProc_osago.Parameters.Clear;
dm.StoredProc_osago.ProcedureName:='DeleteAllEmptyInsure;1';

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_osago.Parameters[0].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[0].Direction:=pdReturnValue;

dm.StoredProc_osago.Parameters.AddParameter;
    dm.StoredProc_osago.Parameters[1].Name:='@countrows';
    dm.StoredProc_osago.Parameters[1].DataType:=ftInteger;
    dm.StoredProc_osago.Parameters[1].Direction:=pdReturnValue;


dm.StoredProc_osago.ExecProc;

dm.CommitTR;
       ATXShowMessage('������� '+IntToStr(dm.StoredProc_osago.Parameters[1].Value)+' ���������');
except
on E : Exception do
begin
dm.RollBTR;
      ShowMessage(E.ClassName+' ������ � ���������� : '+E.Message);

    end;
end;
dm.StoredProc_osago.Active:=false;

end;

procedure TMain.N35Click(Sender: TObject);
begin
    Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.osago_1(4);
  frmreport2.ShowModal;
end;

procedure TMain.N37Click(Sender: TObject);
begin
//��������� �������� �����
    Application.CreateForm(TfrmExcelParams,frmExcelParams);
    frmExcelParams.ShowModal;
end;

procedure TMain.CoolItem9522Click(Sender: TObject);
begin
    Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.osago_1(1);
  frmreport2.ShowModal;
end;

procedure TMain.N57Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.ReportTO;
  frmreport.GroupBox2.Visible:=true;
  frmreport.GroupBox3.Visible:=false;
  frmreport.TArenda.Visible:=true;
  frmreport.ShowModal;
end;




procedure TMain.MaxAvtoCard;
begin
if Tfrmavtocard(ActiveMDIChild).WindowState=wsMaximized then
Tfrmavtocard(ActiveMDIChild).WindowState:=wsNormal else
Tfrmavtocard(ActiveMDIChild).WindowState:=wsMaximized;
end;




procedure TMain.WindowTileHorizontal1Execute(Sender: TObject);
var
a,i:integer;
begin
Main.Cascade;
a:=Main.ClientHeight-72;
for i:=0 to Main.MDIChildCount-1 do
begin
Main.MDIChildren[i].Height:=a div Main.MDIChildCount;
Main.MDIChildren[i].Top:=i*Main.MDIChildren[i].Height;
Main.MDIChildren[i].Width:=Main.ClientWidth-7;
Main.MDIChildren[i].Left:=0;
Application.ProcessMessages;
end;
end;

procedure TMain.WindowTileVertical1Execute(Sender: TObject);
var
a,i:integer;
begin
Main.Cascade;
a:=Main.ClientWidth-5;
for i:=0 to Main.MDIChildCount-1 do
begin
Main.MDIChildren[i].Width:=a div Main.MDIChildCount-5;
Main.MDIChildren[i].Left:=i*Main.MDIChildren[i].Width;
Main.MDIChildren[i].Height:=Main.ClientHeight-72;
Main.MDIChildren[i].Top:=0;
Application.ProcessMessages;
end;
end;

procedure TMain.RefreshLibr;
var
i:byte;
begin
if Main.MDIChildCount>0 then
for i:=0 to Main.MDIChildCount-1 do
begin
if Main.MDIChildren[i].Name='frmavtocard' then begin
//with Main.MDIChildren[i] as Tfrmavtocard do
with dm do
begin
tRegion.Close;
tRegion.Open;
tDivision.Close;
tDivision.Open;
tDepart.Close;
tDepart.Open;
tPre_depart.Close;
tPre_depart.Open;
tServices.Close;
tServices.Open;
tDislokation.Close;
tDislokation.Open;

tMark_avt.Close;
tMark_avt.Open;
tTypeTC.Close;
tTypeTC.Open;
tModel_avt.Close;
tModel_avt.Open;
tSource_fin.Close;
tSource_fin.Open;
tType_body.Close;
tType_body.Open;
tTech.Close;
tTech.Open;
tGroup_used.Close;
tGroup_used.Open;


tInsureCompany.Close;
tInsureCompany.Open;
end;
end;
end;
end;

procedure TMain.CoolItem9523Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.Expel_pokaz;
  frmreport.GroupBox2.Visible:=false;
  frmreport.ShowModal;
end;










procedure TMain.CoolItem9513Click(Sender: TObject);
var
ApplicationPath:String;
begin
ApplicationPath := GetCurrentDir+'\help\index.html';
ShellExecute(Handle, nil, PChar(ApplicationPath), nil, nil, SW_SHOW);
end;

procedure TMain.CoolItem951Click(Sender: TObject);
begin
if frmLibModel = nil then
begin
  Application.CreateForm(TfrmLibModel, frmLibModel);
  frmLibModel.OpenLib(1);
  frmLibModel.Show;
end;

end;

procedure TMain.CoolItem9530Click(Sender: TObject);
begin
if frmLibr = nil then
begin
  Application.CreateForm(TfrmLibr, frmLibr);
  frmLibr.OpenLibr((Sender as TMenuItem).Tag);
  frmLibr.Show;
end;

end;



procedure TMain.CoolItem9535Click(Sender: TObject);
begin
if frmLibModel = nil then
begin
  Application.CreateForm(TfrmLibModel, frmLibModel);
  frmLibModel.OpenLib(2);
  frmLibModel.Show;
end;

end;



procedure TMain.CoolItem9532Click(Sender: TObject);
begin
if frmLibModel = nil then
begin
  Application.CreateForm(TfrmLibModel, frmLibModel);
  frmLibModel.OpenLib(3);
  frmLibModel.Show;
end;

end;


procedure TMain.CoolItem9539Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.LineNormGSM;
  frmreport.GroupBox2.Visible:=false;
  frmreport.ShowModal;

end;

procedure TMain.CoolItem9541Click(Sender: TObject);
begin
//������
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.Remont;
  frmreport.GroupBox2.Visible:=false;
  frmreport.GroupBox3.Visible:=true;
  frmreport.ShowModal;

end;

procedure TMain.CoolItem9542Click(Sender: TObject);
begin
//��� ������������
if frmLibr = nil then
begin
  Application.CreateForm(TfrmLibr, frmLibr);
  frmLibr.OpenLibr((Sender as TMenuItem).Tag);
  frmLibr.Show;
end;
end;


procedure TMain.CoolItem9544Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.LineNormGSM2;
  frmreport.GroupBox2.Visible:=false;
  frmreport.ShowModal;
end;

procedure TMain.CoolItem9545Click(Sender: TObject);
begin
if frmLibr = nil then
begin
  Application.CreateForm(TfrmLibr, frmLibr);
  frmLibr.OpenLibr((Sender as TMenuItem).Tag);
  frmLibr.Show;
end;
end;

procedure TMain.CoolItem9546Click(Sender: TObject);
begin
//��� ������
if frmLibr = nil then
begin
  Application.CreateForm(TfrmLibr, frmLibr);
  frmLibr.OpenLibr((Sender as TMenuItem).Tag);
  frmLibr.Show;
end;
end;



procedure TMain.frxReport1BeforePrint(Sender: TfrxReportComponent);
//var
//  Cross: TfrxCrossView;
//  i, j: Integer;
begin
  {if Sender is TfrxCrossView then
  begin
    Cross := TfrxCrossView(Sender);

    Cross.AddValue([1], [1], ['dlfldfk']);
    for i := 2 to 3 do
      for j := 1 to frmRemont.SG_ZAP.RowCount-1do
        Cross.AddValue([j], [i], [frmRemont.SG_ZAP.Cells[i - 2, j - 1]]);
  end;
  }
end;


procedure TMain.frxReport1GetValue(const VarName: String;
  var Value: Variant);
var str:String;
myDateTime : TDateTime;
myYear, myMonth, myDay : Word;
//t: TfrxMemoView;
//t_Old: TfrxMemoView;
//Ch:TCheckBox;
//n_i:byte;
//first_fr:boolean;
//i,i_Old,j:integer;
//today : TDateTime;
//myYear, myMonth, myDay : Word;
begin
case whatReport of

1,2,4:begin
  if VarName = 'date2' then
  Value := '';
    //Value := '� '+dateR1+' �� '+dateR2;
  if VarName ='report_title' then
  begin
  myDateTime:=StrToDateTime(dateR1);
  DecodeDate(myDateTime, myYear, myMonth, myDay);
  case myMonth of
  1:str:='������';
  2:str:='�������';
  3:str:='����';
  4:str:='������';
  5:str:='���';
  6:str:='����';
  7:str:='����';
  8:str:='������';
  9:str:='��������';
  10:str:='�������';
  11:str:='������';
  12:str:='�������';
  end;
  Value := '��������������� ������ �� ���������� �� '+str+' '+IntToStr(myYear)+' ����.';
  end;

end;
3:begin
 if VarName ='report_title' then
  begin
  Value := '�� ����������� ������';//+str+' '+IntToStr(myYear)+' ����.';
  end;
end;
9:begin
if VarName='avto1' then
Value:=Tfrmavtocard(ActiveMDIChild).Mark_box.Text
+' - '+Tfrmavtocard(ActiveMDIChild).Model_edit.Text
+' � '+Tfrmavtocard(ActiveMDIChild).Numb1_edit.Text;

if VarName='reg' then Value:=Tfrmavtocard(ActiveMDIChild).Reg_box.Text;
if VarName='div' then Value:=Tfrmavtocard(ActiveMDIChild).Div_box.Text;
if VarName='depart' then Value:=Tfrmavtocard(ActiveMDIChild).Depart_box.Text;
if VarName='predepart' then Value:=Tfrmavtocard(ActiveMDIChild).PreDepart_box.Text;
if VarName='serv' then Value:=Tfrmavtocard(ActiveMDIChild).Serv_box.Text;
if VarName='preserv' then Value:=Tfrmavtocard(ActiveMDIChild).PreServ_Box.Text;
if VarName='dislok' then Value:=Tfrmavtocard(ActiveMDIChild).Dislok_box.Text;

if VarName='mark' then Value:=Tfrmavtocard(ActiveMDIChild).Mark_box.Text;
if VarName='model' then Value:=Tfrmavtocard(ActiveMDIChild).Model_edit.Text;
if VarName='num1' then Value:=Tfrmavtocard(ActiveMDIChild).Numb1_edit.Text;
if VarName='num2' then Value:=Tfrmavtocard(ActiveMDIChild).Numb2_edit.Text;
if VarName='year' then Value:=Tfrmavtocard(ActiveMDIChild).Year_edit.Text;
if VarName='color' then Value:=Tfrmavtocard(ActiveMDIChild).Color_edit.Text;
if VarName='vin' then Value:=Tfrmavtocard(ActiveMDIChild).VIN_edit.Text;
if VarName='eng' then Value:=Tfrmavtocard(ActiveMDIChild).NEng_edit.Text;
if VarName='body' then Value:=Tfrmavtocard(ActiveMDIChild).NBody_edit.Text;
if VarName='shas' then Value:=Tfrmavtocard(ActiveMDIChild).NShas_edit.Text;

if VarName='oldnum' then Value:='';
if VarName='power' then Value:=Tfrmavtocard(ActiveMDIChild).ElDBEdit5.Text+'/'+Tfrmavtocard(ActiveMDIChild).DBEdit1.Text;
if VarName='tech_p' then Value:=Tfrmavtocard(ActiveMDIChild).NPts_edit.Text;
if VarName='date1' then Value:=Tfrmavtocard(ActiveMDIChild).date_texpasport.Text;
if VarName='kuz' then Value:=Tfrmavtocard(ActiveMDIChild).TypeBody_box.Text;
if VarName='tech' then Value:=Tfrmavtocard(ActiveMDIChild).Tech_box.Text;
if VarName='expl' then Value:=Tfrmavtocard(ActiveMDIChild).Group_box.Text;
if VarName='uch' then Value:=Tfrmavtocard(ActiveMDIChild).InAc_edit.Text;
if VarName='prik' then Value:=Tfrmavtocard(ActiveMDIChild).in_pr.Text;
if VarName='otstoi' then
begin
if Tfrmavtocard(ActiveMDIChild).state_box.Checked then
str:='������ �� '+Tfrmavtocard(ActiveMDIChild).date_state.Text;
if Tfrmavtocard(ActiveMDIChild).out_account_box.Checked then
str:='������ � ����� �� '+Tfrmavtocard(ActiveMDIChild).date_out_account.Text;
if Tfrmavtocard(ActiveMDIChild).life_box.Checked then
str:='������ �� '+Tfrmavtocard(ActiveMDIChild).date_life.Text;
Value:=str;
end;
if VarName='source1' then Value:=Tfrmavtocard(ActiveMDIChild).Source_b_box.Text;
if VarName='source2' then Value:=Tfrmavtocard(ActiveMDIChild).Source_f_box.Text;

dm.StoredProc_osago.Last;
if VarName='insur1' then Value:=dm.StoredProc_osago.Fields[2].AsString+' �'+dm.StoredProc_osago.Fields[3].AsString;
if VarName='insur2' then Value:=dm.StoredProc_osago.Fields[5].AsString;


if VarName='notatx' then
begin
  if Tfrmavtocard(ActiveMDIChild).DBCheckBox1.Checked then
    Value:='�� ���� ���'
  else
    Value:='';
end;
end;//9

101:begin
if VarName='libr_name' then
 Value:='���������� �� ����������';
end;
102:begin
if VarName='libr_name' then
 Value:='���������� �� �����������';
end;
103:begin
if VarName='libr_name' then
 Value:='���������� �� �������';
end;
104:begin
if VarName='libr_name' then
 Value:='���������� �� ���-�������';
end;
105:begin
if VarName='libr_name' then
 Value:='���������� �� �������';
end;
106:begin
if VarName='libr_name' then
 Value:='���������� �� ����� ��������������';
end;
107:begin
if VarName='libr_name' then
 Value:='���������� �� ��������� ��������������';
end;
108:begin
if VarName='libr_name' then
 Value:='���������� �� ���� ������';
end;
109:begin
if VarName='libr_name' then
 Value:='���������� �� ���. ���������';
end;
110:begin
if VarName='libr_name' then
 Value:='���������� �� ������ ������������';
end;
111:begin
if VarName='libr_name' then
 Value:='���������� �� ����� ����������';
end;
112:begin
if VarName='libr_name' then
 Value:='���������� �� ����� ���';
end;
113:begin
if VarName='libr_name' then
 Value:='���������� �� ���� �������';
end;
114:begin
if VarName='libr_name' then
 Value:='���������� �� ����� �������';
end;
115:begin
if VarName='libr_name' then
 Value:='���������� �� ��������� ���������';
end;
116:begin
if VarName='libr_name' then
 Value:='���������� �� '+dm.tMark_avt.Fields[1].AsString;
end;

117:begin
if VarName='libr_name' then
 Value:='���������� �� ���������� ��';
end;
118:begin
if VarName='libr_name' then
 Value:='���������� �� ��� �������';
end;
122:begin
if VarName='libr_name' then
 Value:='���������� �� ������������ ��';
end;
123:begin
if VarName='libr_name' then
 Value:='���������� �� ���������� ������������� (��)';
end;
124:begin
if VarName='libr_name' then
 Value:='���������� �� ������� ������������� (��)';
end;
125:begin
if VarName='libr_name' then
 Value:='���������� �� �������� ��������� (��)';
end;
126:begin
if VarName='libr_name' then
 Value:='���������� �� ������� �������';
end;

end;




end;

end.
