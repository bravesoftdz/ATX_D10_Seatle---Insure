unit avtocard_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbStaticText, StdCtrls, Mask, ExtCtrls,
  DBCtrls, Grids, DBGrids,
  RxLookup,
  LbSpeedButton, DB, ADODB,  RXDBCtrl,
  LbButton, ADOInt,  ComCtrls,
  ToolWin,  RXSpin, rxCurrEdit, rxToolEdit, Menus, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, ShellAPI, Buttons,WinProcs;

type
  Tfrmavtocard = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    LbB_New: TLbButton;
    LbB_First: TLbButton;
    LbB_Cancel: TLbButton;
    LbB_Prior: TLbButton;
    LbB_Post: TLbButton;
    LbB_Next: TLbButton;
    LbB_Del: TLbButton;
    LbB_Last: TLbButton;
    GroupBox4: TGroupBox;
    LbB_Find: TLbButton;
    find_numb_edit: TEdit;
    RecN: TLabel;
    Label27: TLabel;
    RecCount: TLabel;
    Label26: TLabel;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    TypeBody_box: TDBLookupComboBox;
    Tech_box: TDBLookupComboBox;
    Group_box: TDBLookupComboBox;
    in_pr: TDBEdit;
    InAc_edit: TDBDateEdit;
    date_texpasport: TDBDateEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Mark_box: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label36: TLabel;
    Reg_box: TDBLookupComboBox;
    Div_box: TDBLookupComboBox;
    Depart_box: TDBLookupComboBox;
    PreDepart_box: TDBLookupComboBox;
    Serv_box: TDBLookupComboBox;
    Dislok_box: TDBLookupComboBox;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    GroupBox5: TGroupBox;
    Label60: TLabel;
    LbButton24: TLbButton;
    GroupBox12: TGroupBox;
    Label17: TLabel;
    Source_b_box: TDBLookupComboBox;
    Label18: TLabel;
    Source_f_box: TDBLookupComboBox;
    TypeTc_box: TDBLookupComboBox;
    Label64: TLabel;
    PreServ_Box: TDBLookupComboBox;
    Label69: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Model_edit: TComboBox;
    Numb1_edit: TDBEdit;
    Numb2_edit: TDBEdit;
    Year_edit: TDBEdit;
    Color_edit: TDBEdit;
    VIN_edit: TDBEdit;
    NEng_edit: TDBEdit;
    NBody_edit: TDBEdit;
    NShas_edit: TDBEdit;
    ElDBEdit5: TDBEdit;
    NPts_edit: TDBEdit;
    PageControl2: TPageControl;
    TabSheet8: TTabSheet;
    state_box: TDBCheckBox;
    Label28: TLabel;
    date_state: TDBDateEdit;
    Label29: TLabel;
    pr_state: TDBEdit;
    TabSheet9: TTabSheet;
    out_account_box: TDBCheckBox;
    Label30: TLabel;
    date_out_account: TDBDateEdit;
    Label72: TLabel;
    RxDBLookupOutState: TDBLookupComboBox;
    life_box: TDBCheckBox;
    Label32: TLabel;
    date_life: TDBDateEdit;
    Label33: TLabel;
    pr_life: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label73: TLabel;
    modelDVC_Edit: TDBEdit;
    Label75: TLabel;
    volumeDVC_Edit: TDBEdit;
    TypeDVC_box: TDBLookupComboBox;
    Label76: TLabel;
    RxDBLookupCombo3: TDBLookupComboBox;
    Label77: TLabel;
    TabSheet10: TTabSheet;
    DBGrid_Osago: TDBGrid;
    LbButtonAdd_Osago: TLbButton;
    LbButtonEdit_Osago: TLbButton;
    LbButtonDel_Osago: TLbButton;
    MainMenu1: TMainMenu;
    Panel_Osago: TPanel;
    Panel_Add_Osago: TPanel;
    LbButtonOsago_Save: TLbButton;
    LbButton26_Cancel: TLbButton;
    DateEdit_osago: TDateEdit;
    LabeledEdit_ser: TLabeledEdit;
    LabeledEdit_number: TLabeledEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label31: TLabel;
    CurrencyEdit_Amount: TCurrencyEdit;
    Label35: TLabel;
    RxDBLookupCombo_Insure_Comp: TDBLookupComboBox;
    Label38: TLabel;
    Label39: TLabel;
    CurrencyEdit_osago_term: TCurrencyEdit;
    Label40: TLabel;
    Label41: TLabel;
    LabeledEdit_ser_osago_term: TLabeledEdit;
    LabeledEdit_num_osago_term: TLabeledEdit;
    GroupBoxTerm: TGroupBox;
    Label42: TLabel;
    DateEdit_osago_term: TDateEdit;
    Panel3: TPanel;
    Label43: TLabel;
    RxDBLookupCombo2: TDBLookupComboBox;
    CurrencyEdit_osago_coast: TCurrencyEdit;
    Label45: TLabel;
    GroupBox_Osago_Addition: TGroupBox;
    KbmEdit: TCurrencyEdit;
    Label46: TLabel;
    Label47: TLabel;
    CheckBox_osago_avaria: TCheckBox;
    DBEdit1: TDBEdit;
    Label48: TLabel;
    Button1: TButton;
    RxDBLookupCombo_Period: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    StringGrid1: TStringGrid;
    DateTimePicker1: TDateTimePicker;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure bclClick(Sender: TObject);
    procedure bmaxClick(Sender: TObject);
    procedure bminClick(Sender: TObject);
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LbB_FirstClick(Sender: TObject);
    procedure LbB_PriorClick(Sender: TObject);
    procedure LbB_NextClick(Sender: TObject);
    procedure LbB_LastClick(Sender: TObject);
    procedure LbB_NewClick(Sender: TObject);
    procedure LbB_CancelClick(Sender: TObject);
    procedure LbB_PostClick(Sender: TObject);
    procedure LbB_DelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LbB_FindClick(Sender: TObject);
    procedure state_boxClick(Sender: TObject);
    procedure out_account_boxClick(Sender: TObject);
    procedure life_boxClick(Sender: TObject);
    procedure LbB_ExplClick(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure find_numb_editKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Model_edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Mark_boxChange(Sender: TObject);
    procedure Model_edit1Change(Sender: TObject);
    procedure Numb1_editKeyPress(Sender: TObject; var Key: Char);
    procedure ElPageControl1Change(Sender: TObject);
    procedure LbButton4Click(Sender: TObject);
    procedure LbButton17Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Numb1_editEnter(Sender: TObject);
    procedure LbButton24Click(Sender: TObject);
    procedure PageControl2DrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure LbButtonDel_OsagoClick(Sender: TObject);
    procedure LbButtonEdit_OsagoClick(Sender: TObject);
    procedure LbButtonAdd_OsagoClick(Sender: TObject);
    procedure DBGrid_OsagoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure LbButton26_CancelClick(Sender: TObject);
    procedure DateEdit_dtpChange(Sender: TObject);
    procedure CheckBox_guilty_dtpClick(Sender: TObject);
    procedure LbButtonOsago_SaveClick(Sender: TObject);
    procedure DateEdit_osagoChange(Sender: TObject);
    procedure Label47Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure LabeledEdit_num_osago_termDblClick(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
  private
    id_search,id_osago,iRow,iCol:integer;
    old_number:String;
    ChangeNumber:boolean;
    save_number:byte;
    edit_Osago:boolean;


    procedure ListOsago;

    { Private declarations }
//    function Mask(year,numb_1,numb_2,vin,Neng,Nbody,Nshas,NPts:String):byte;
function Mask(str:String;idx:byte):boolean;
function IsRussianLetter(ACh: Char): Boolean;
function CheckOsagoPolice(seria:String; number:String) :integer;
  public
    procedure openProc;
    procedure AvtoBeforeEdit;//(DataSet: TDataSet);
    procedure AvtoBeforePost(DataSet: TDataSet);
    procedure AvtoAfterScroll(DataSet: TDataSet);
    procedure AvtoAfterPost(DataSet: TDataSet);
    procedure AvtoAfterDelete(DataSet: TDataSet);
    procedure getPayInsyrens(id_insurens:Integer);
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmavtocard: Tfrmavtocard;

implementation

uses dm_u, main_u,  loaddata_u,  search_u;

{$R *.dfm}
procedure Tfrmavtocard.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  //Params.Style := Params.Style and (not WS_CAPTION);
end;

procedure Tfrmavtocard.openProc;
begin
LbB_First.Enabled:=false;
LbB_Prior.Enabled:=false;
LbB_Next.Enabled:=false;
LbB_Last.Enabled:=false;
LbB_Del.Enabled:=false;
if Main.UserRole=ADMIN_USER then
LbB_Del.Visible:=true else
LbB_Del.Visible:=false;
Application.ProcessMessages;
    RecCount.Caption:=IntToStr(dm.tAvto.RecordCount);
    if dm.tAvto.RecordCount=0 then
    begin
    Main.ATXShowMessage('� ������ ������������� ��� �������!');
    GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox12.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox4.Enabled:=false;
    //GroupBox5.Enabled:=false;
    TabSheet8.Enabled:=false;TabSheet9.Enabled:=false;
    end
    else
    begin
//LbB_First.Enabled:=true;
//LbB_Prior.Enabled:=true;
LbB_Next.Enabled:=true;
LbB_Last.Enabled:=true;
end;
     //ShowMessage(Inttostr(Main.UserRole));
case Main.UserRole of
ADMIN_USER:LbB_Del.Enabled:=true;
USER_USER:begin
    GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox12.Enabled:=false;
    GroupBox3.Enabled:=false;
    Panel3.Enabled:=false;
    TabSheet8.Enabled:=false;TabSheet9.Enabled:=false;

    LbB_New.Enabled:=false;

    LbButtonAdd_Osago.Enabled:=false;
    LbButtonEdit_Osago.Enabled:=true;
    LbButtonDel_Osago.Enabled:=false;

end;


end;//case
old_number:=dm.tAvto.Fields[8].AsString;
Application.ProcessMessages;
end;

procedure Tfrmavtocard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
with dm do
begin
    tMark_avt.Close;
    tTypeTC.Close;
    tRegion.Close;
    tDivision.Close;
    tDepart.Close;
    tPre_Depart.Close;
    tServices.Close;
    tSource_fin.Close;
    tType_body.Close;
    tTech.Close;
    tGroup_used.Close;
    tAvto.Close;
    tDislokation.Close;
    tInsureCompany.Close;
    dm.tPreServ.Close;
    dm.tOut_state.Close;
    dm.tTypeDVC.Close;
    dm.tManufactureTC.Close;
    dm.tTerUse.Close;
    dm.tKC.Close;
end;
Action:=caFree;
end;

procedure Tfrmavtocard.FormResize(Sender: TObject);
begin
//Width:=824;
//Height:=657;

end;

procedure Tfrmavtocard.bclClick(Sender: TObject);
begin
Close;
end;

procedure Tfrmavtocard.bmaxClick(Sender: TObject);
begin
Main.MaxAvtoCard;
end;

procedure Tfrmavtocard.bminClick(Sender: TObject);
begin
Main.MinAvtoCard;
end;

function Tfrmavtocard.CheckOsagoPolice(seria:String; number:String):integer;
var
id_insure:integer;
begin
id_insure:=-1;
with dm do
begin
StoredProc2.Parameters.Clear;
StoredProc2.ProcedureName:='CheckOsagoPolice;1';
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[0].Name:='@Param1';
StoredProc2.Parameters[0].DataType:=ftString;
StoredProc2.Parameters[0].Value:=seria;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[1].Name:='@Param2';
StoredProc2.Parameters[1].DataType:=ftString;
StoredProc2.Parameters[1].Value:=number;

StoredProc2.Open;
while not StoredProc2.Eof do
begin
  id_insure:=StoredProc2.Fields[0].AsInteger;
  StoredProc2.Next;
end;
StoredProc2.Close;
end;
result:=id_insure;
end;

procedure Tfrmavtocard.Button1Click(Sender: TObject);
begin
//��������� ���������
if CheckOsagoPolice(LabeledEdit_ser_osago_term.Text, LabeledEdit_num_osago_term.Text)=-1 then  Main.ATXShowMessage('��������� �� ����������!')
else
Main.ATXShowMessage('OK!');
end;

procedure Tfrmavtocard.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrmavtocard.AvtoBeforePost(DataSet: TDataSet);
begin
//��������� ����
if
    (Reg_box.Text='') or
    (Div_box.Text='') or
    (Depart_box.Text='') or
//    (PreDepart_box.Text='') or
    (Serv_box.Text='') or
    (Mark_box.Text='') or
    (Model_edit.Text='') or
    (Numb1_edit.Text='') or
//    (Numb2_edit.Text='') or
    (Year_edit.Text='') or
    (NBody_edit.Text='') or
    (NEng_edit.Text='') or
    (VIN_edit.Text='') or
    (Color_edit.Text='') or
//    (NShas_edit.Text='') or
    (Source_b_box.Text='') or
    (NPts_edit.Text='') or
    (Source_f_box.Text='') or
    (TypeBody_box.Text='') or
    (Tech_box.Text='') or
//    (date_texpasport.Date=0) or
//    (Group_box.Text='') or
//    (Radio_memo.Text='') or
//    (Place_memo.Text='') or
//    (Comm_memo.Text='') or
    (InAc_edit.Date=0) or
((state_box.Checked) and (date_state.Date=0)) or
((out_account_box.Checked) and (date_out_account.Date=0)) or
((life_box.Checked) and (date_life.Date=0)) or
(ElDBEdit5.Text='') or
(TypeTc_box.Text='')

    then
  begin
if  (Reg_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ��������/�������') else
if    (Div_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ����������') else
if    (Depart_box.Text='') then Main.ATXShowMessage('�� ��������� ����: �����') else
//if    (PreDepart_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ���-�����') else
if    (Serv_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ������') else
if    (Mark_box.Text='') then Main.ATXShowMessage('�� ��������� ����: �����') else
if    (Model_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: �����') else
if    (Numb1_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: ��� � (1)') else
//if    (Numb2_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: ��� � (2)') else
if    (Year_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: ��� �������') else
if    (Color_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: ����') else
if    (VIN_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: VIN') else
if    (NEng_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: � ���������') else
if    (NBody_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: � ������') else
//if    (NShas_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: � �����') else
if    (NPts_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: ���������� �') else
//if    (date_texpasport.Date=0) then Main.ATXShowMessage('�� ��������� ����: ���� ������ �����������') else
if    (Source_b_box.Text='') then Main.ATXShowMessage('�� ��������� ����: �������� ������������') else
if    (Source_f_box.Text='') then Main.ATXShowMessage('�� ��������� ����: �������� ����������') else
if    (TypeBody_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ��� ������') else
if    (Tech_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ���. ���������') else
//if    (Group_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ������ ������������') else
//if    (Radio_memo.Text='') then Main.ATXShowMessage('�� ��������� ����: ') else
//if    (Place_memo.Text='') then Main.ATXShowMessage('�� ��������� ����: ') else
//if    (Comm_memo.Text='') then  Main.ATXShowMessage('�� ��������� ����: ') else
if    (InAc_edit.Date=0) then Main.ATXShowMessage('�� ��������� ����: ���� ���������� �� ����') else

if    (ElDBEdit5.Text='') then Main.ATXShowMessage('�� ��������� ����: �������� (��)') else
if    (TypeTc_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ��������� ��') else

if    (state_box.Checked) and (date_state.Date=0) then Main.ATXShowMessage('�� ��������� ����: ���� ���������� � ������') else
if    (out_account_box.Checked) and (date_out_account.Date=0) then Main.ATXShowMessage('�� ��������� ����: ���� ������ � �����') else
if    (life_box.Checked) and (date_life.Date=0) then Main.ATXShowMessage('�� ��������� ����: ���� ��������');
  Abort;
  end else
  begin
      //��������� ����� �����
      if not Mask(Year_edit.Text,1) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� ��� �������!');
      Abort;
      end;
      if not Mask(Numb1_edit.Text,2) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� ��� � (1)!');
      Abort;
      end;
      if Numb2_edit.Text<>'' then
      if not Mask(Numb2_edit.Text,3) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� ��� � (2)!');
      Abort;
      end;
      if not Mask(VIN_edit.Text,4) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� VIN!');
      Abort;
      end;
      if not Mask(NEng_edit.Text,5) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� � ���������!');
      Abort;
      end;
      if not Mask(NBody_edit.Text,6) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� � ������!');
      Abort;
      end;
      if not Mask(NPts_edit.Text,8) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� � �����������!');
      Abort;
      end;
{      if not Mask(NShas_edit.Text,7) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� � �����!');
      Abort;
      end;
}
  end;

end;
function Tfrmavtocard.IsRussianLetter(ACh: Char): Boolean;
begin
  Result := (ACh >= '�') and (ACh <= '�') or
            (ACh >= '�') and (ACh <= '�') or
            (ACh = '�') or (ACh = '�');
end;
function Tfrmavtocard.Mask(str:String;idx:byte):boolean;
var
i:integer;
oB:boolean;
begin
oB:=true;
case idx of
1:begin
//���
for i:=1 to length(str) do
if not(AnsiChar(str[i]) in ['0'..'9']) then
oB:=false;
if oB then
if (StrToInt(str)<1900) and (StrToInt(str)<2100) then
oB:=false;
end;
2:begin
//numb_1
if (length(str)>4) and (length(str)<8) then
begin
//mask 1 0000ppp
oB:=true;
for i:=1 to 4 do
if not(AnsiChar(str[i]) in ['0'..'9']) then
oB:=false;
for i:=5 to 7 do
if not(IsRussianLetter(str[i])) then
oB:=false;

if not oB then
begin
//mask 2 p0000
oB:=true;
if not(IsRussianLetter(str[1])) then
oB:=false;
for i:=2 to 5 do
if not(AnsiChar(str[i]) in ['0'..'9']) then
oB:=false;
end;
//mask 3 p000pp
if not oB then
begin
oB:=true;
if not(IsRussianLetter(str[1])) then
oB:=false;
for i:=2 to 4 do
if not(AnsiChar(str[i]) in ['0'..'9']) then
oB:=false;
if length(str)>4 then
for i:=5 to 6 do
if not(IsRussianLetter(str[i])) then
oB:=false;
end;
//mask 4 pp0000
if not oB then begin
oB:=true;
for i:=1 to 2 do
if not(IsRussianLetter(str[i])) then
oB:=false;
for i:=3 to 6 do
if not(AnsiChar(str[i]) in ['0'..'9']) then
oB:=false;
end;
end
else begin
if str='��' then oB:=true else
 oB:=false;
end;
end;
3:begin
//numb_2
if (length(str)>4) and (length(str)<8) then
begin
//mask 1 0000ppp
oB:=true;
for i:=1 to 4 do
if not(AnsiChar(str[i]) in ['0'..'9']) then
oB:=false;
for i:=5 to 7 do
if not(IsRussianLetter(str[i])) then
oB:=false;

if not oB then
begin
//mask 2 p0000
oB:=true;
if not(IsRussianLetter(str[1])) then
oB:=false;
for i:=2 to 5 do
if not(AnsiChar(str[i]) in ['0'..'9']) then
oB:=false;
end;

if not oB then
begin
//mask 3 p000pp
oB:=true;
if not(IsRussianLetter(str[1])) then
oB:=false;
for i:=2 to 4 do
if not(AnsiChar(str[i]) in ['0'..'9']) then
oB:=false;
if length(str)>4 then
for i:=5 to 6 do
if not(IsRussianLetter(str[i])) then
oB:=false;
end;
//mask 4 pp0000
if not oB then begin
oB:=true;
for i:=1 to 2 do
if not(IsRussianLetter(str[i])) then
oB:=false;
for i:=3 to 6 do
if not(AnsiChar(str[i]) in ['0'..'9']) then
oB:=false;
end;
end
else begin
if str='��' then oB:=true else
 oB:=false;
end;
end;
4:begin
oB:=false;
if length(str)>=14 then
oB:=true;
if LowerCase(str)='��' then
oB:=true;
end;
5:begin
oB:=false;
if length(str)>=6 then
oB:=true;
if LowerCase(str)='��' then
oB:=true;
end;
6:begin
oB:=false;
if length(str)>=4 then
oB:=true;
if LowerCase(str)='��' then
oB:=true;
end;
7:begin
oB:=false;
if length(str)>=16 then
oB:=true;
end;
8:begin
oB:=true;
if length(str)>=10 then
begin
for i:=1 to 2 do
if not(AnsiChar(str[i]) in ['0'..'9']) then
oB:=false;
for i:=3 to 4 do
if not(IsRussianLetter(str[i])) then
oB:=false;
end else if str='��' then oB:=true else oB:=false;
end;
end;//case
Mask:=oB;
end;

procedure Tfrmavtocard.LbB_FirstClick(Sender: TObject);
begin
dm.tAvto.First;
end;

procedure Tfrmavtocard.LbB_PriorClick(Sender: TObject);
begin
try
dm.tAvto.Prior;
except
dm.tAvto.Prior;
end;
end;

procedure Tfrmavtocard.LbB_NextClick(Sender: TObject);
begin
try
dm.tAvto.Next
except
dm.tAvto.Next
end;
end;

procedure Tfrmavtocard.LbB_LastClick(Sender: TObject);
begin
dm.tAvto.Last;
end;

procedure Tfrmavtocard.AvtoBeforeEdit;//(DataSet: TDataSet);
begin
LbB_Cancel.Enabled:=true;
LbB_Post.Enabled:=true;
LbB_New.Enabled:=false;
LbB_Del.Enabled:=false;
LbB_First.Enabled:=false;
LbB_Prior.Enabled:=false;
LbB_Next.Enabled:=false;
LbB_Last.Enabled:=false;
end;

procedure Tfrmavtocard.AvtoAfterScroll(DataSet: TDataSet);
begin
frmavtocard.Caption:='�������� �������������� - '+Mark_box.Text+'-'+dm.tAvto.Fields[7].AsString+' �'+dm.tAvto.Fields[8].AsString;
old_number:=dm.tAvto.Fields[8].AsString;
RecN.Caption:=IntToStr(DataSet.RecNo);
Model_edit.Items.Clear;
dm.tModel_avt.Close;
if Mark_box.KeyValue<>null then
begin
dm.tModel_avt.Filter:='id_mark='+IntToStr(Mark_box.KeyValue);
dm.tModel_avt.Filtered:=true;
dm.tModel_avt.Open;
while not dm.tModel_avt.Eof do
begin
Model_edit.Items.Add(trim(dm.tModel_avt.Fields[2].AsString));
dm.tModel_avt.Next;
end;
end;
Model_edit.Text:=DataSet.Fields[7].AsString;
ListOsago;
if dm.tAvto.RecordCount>1 then
begin
if DataSet.RecNo=1 then
begin
LbB_First.Enabled:=false;
LbB_Prior.Enabled:=false;
end
else
begin
LbB_First.Enabled:=true;
LbB_Prior.Enabled:=true;
end;
if DataSet.RecNo=DataSet.RecordCount then
begin
LbB_Next.Enabled:=false;
LbB_Last.Enabled:=false;
end
else
begin
LbB_Next.Enabled:=true;
LbB_Last.Enabled:=true;
end;
end;
if state_box.Checked then
begin
date_state.Enabled:=true;
pr_state.Enabled:=true;
end else
begin
date_state.Enabled:=false;
pr_state.Enabled:=false;
end;
if out_account_box.Checked then
begin
date_out_account.Enabled:=true;
//pr_out_account.Enabled:=true;
end else
begin
date_out_account.Enabled:=false;
//pr_out_account.Enabled:=false;
end;
if life_box.Checked then
begin
date_life.Enabled:=true;
pr_life.Enabled:=true;
end else
begin
date_life.Enabled:=false;
pr_life.Enabled:=false;
end;




end;

procedure Tfrmavtocard.LbB_NewClick(Sender: TObject);
begin
if not GroupBox1.Enabled then
begin
    GroupBox1.Enabled:=true;
    GroupBox2.Enabled:=true;
    GroupBox12.Enabled:=true;
    GroupBox3.Enabled:=true;
    GroupBox4.Enabled:=true;
    //GroupBox5.Enabled:=true;
    TabSheet8.Enabled:=true;TabSheet9.Enabled:=true;

end;
dm.tAvto.Insert;
LbB_Cancel.Enabled:=true;
LbB_Post.Enabled:=true;
LbB_New.Enabled:=false;
LbB_Del.Enabled:=false;
LbB_First.Enabled:=false;
LbB_Prior.Enabled:=false;
LbB_Next.Enabled:=false;
LbB_Last.Enabled:=false;


end;

procedure Tfrmavtocard.LbB_CancelClick(Sender: TObject);
begin
dm.tAvto.Cancel;
LbB_Cancel.Enabled:=false;
LbB_Post.Enabled:=false;
if (Main.UserRole=ADMIN_USER) or
(Main.UserRole=INSURE_USER) then
LbB_New.Enabled:=true;

//LbB_New.Enabled:=true;
//LbB_Del.Enabled:=true;
if dm.tAvto.RecordCount>1 then
begin
LbB_First.Enabled:=true;
LbB_Prior.Enabled:=true;
LbB_Next.Enabled:=true;
LbB_Last.Enabled:=true;
end
else
begin
LbB_First.Enabled:=false;
LbB_Prior.Enabled:=false;
LbB_Next.Enabled:=false;
LbB_Last.Enabled:=false;
LbB_Del.Enabled:=false;
    GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox12.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox4.Enabled:=false;
    //GroupBox5.Enabled:=false;
    TabSheet8.Enabled:=false;TabSheet9.Enabled:=false;


end;
end;

procedure Tfrmavtocard.LbB_PostClick(Sender: TObject);
begin
try
if dm.tAvto.Modified then
begin
dm.tAvto.Fields[7].Value:=Model_edit.Text;
dm.tAvto.Post;
end;
LbB_Cancel.Enabled:=false;
LbB_Post.Enabled:=false;
LbB_New.Enabled:=true;
LbB_Del.Enabled:=true;
LbB_First.Enabled:=true;
LbB_Prior.Enabled:=true;
LbB_Next.Enabled:=true;
LbB_Last.Enabled:=true;
except
//      LbB_CancelClick(Self);
end;
end;

procedure Tfrmavtocard.LbB_DelClick(Sender: TObject);
begin
  if Main.ATXMessageDlg('�� �������, ��� ������ ������� ������ �������������?',
    2,mtConfirmation) = mrYes then
    try
        dm.tAvto.Delete;
    {except
        Main.ATXMessageDlg('�� �������� ������� ������!',1,mtError);
    end; }

    except
      on E: Exception do
         begin
           Main.ATXMessageDlg('�� �������� ������� ������! '+E.Message,1,mtError);
         end;
   end;


end;

procedure Tfrmavtocard.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     if GetKeyState(VK_Shift) and $8000 <> 0 then
       PostMessage(Handle, WM_NEXTDLGCTL, 1, 0)
     else
       PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
   end;

end;

procedure Tfrmavtocard.LbB_FindClick(Sender: TObject);
begin
// ����� �� ������
LbB_CancelClick(Self);
Application.CreateForm(TfrmLoadData, frmLoadData);
frmLoadData.Show;
Application.ProcessMessages;
id_search:=dm.SearchNumber(find_numb_edit.Text,id_search);
if id_search<> 0 then
dm.tAvto.Locate('id',id_search,[loPartialKey	])
else
main.ATXShowMessage('(�����) �������������� �� �������.');

frmLoadData.Close;
end;

procedure Tfrmavtocard.AvtoAfterPost(DataSet: TDataSet);
begin
try
dm.CommitTR;
RecCount.Caption:=IntToStr(dm.tAvto.RecordCount);
except
dm.RollBTR;
end;
end;

procedure Tfrmavtocard.AvtoAfterDelete(DataSet: TDataSet);
begin
try

RecCount.Caption:=IntToStr(dm.tAvto.RecordCount);
        dm.tAvto.UpdateCursorPos;
        dm.tAvto.Recordset.Resync(adAffectCurrent, adResyncAllValues);
        dm.tAvto.Resync([]);
    dm.CommitTR;
except
dm.RollBTR;
end;
end;

procedure Tfrmavtocard.state_boxClick(Sender: TObject);
begin
if state_box.Checked then
begin
date_state.Enabled:=true;
pr_state.Enabled:=true;
state_box.Color:=clred;
TabSheet8.Highlighted:=true;

RxDBLookupOutState.Enabled:=true;
end else
begin
date_state.Enabled:=false;
pr_state.Enabled:=false;
state_box.Color:=$00EDE3D6;
if not life_box.Checked then
TabSheet8.Highlighted:=false;

RxDBLookupOutState.Enabled:=false;
end;
end;

procedure Tfrmavtocard.out_account_boxClick(Sender: TObject);
begin
if out_account_box.Checked then
begin
date_out_account.Enabled:=true;
//pr_out_account.Enabled:=true;
out_account_box.Color:=clred;
TabSheet9.Highlighted:=true;
end else
begin
date_out_account.Enabled:=false;
//pr_out_account.Enabled:=false;
out_account_box.Color:=$00EDE3D6;
TabSheet9.Highlighted:=false;
end;

end;

procedure Tfrmavtocard.life_boxClick(Sender: TObject);
begin
if life_box.Checked then
begin
date_life.Enabled:=true;
pr_life.Enabled:=true;
life_box.Color:=clred;

TabSheet8.Highlighted:=true;
end else
begin
date_life.Enabled:=false;
pr_life.Enabled:=false;
life_box.Color:=$00EDE3D6;
if not state_box.Checked then
  TabSheet8.Highlighted:=false;
end;
end;

procedure Tfrmavtocard.LbB_ExplClick(Sender: TObject);
var
  lHTTP: TIdHTTP;
  lParamList1: TStringList;
  Result:String;

begin
Application.ProcessMessages;

Application.ProcessMessages;

 {lParamList1 := TStringList.Create;
  lParamList1.Add('KBM_DT=');
  lParamList1.Add('KBM_FIO=������� ��������� ������������');
  lParamList1.Add('KBM_BD=27-01-1977');
  lParamList1.Add('KBM_SERIA=38mm');
  lParamList1.Add('KBM_NOMER=011874');  }
  //'KBM_DT=&KBM_FIO=������� ��������� ������������&KBM_BD=27-01-1977&KBM_SERIA=38mm&KBM_NOMER=011874

  {lParamList2 := TStringList.Create;
  lParamList2.Add('vu_fio=������� ��������� ������������');
  lParamList2.Add('vu_bdate=27-01-1977');
  lParamList2.Add('vu_num=38�� 011874');
  lParamList2.Add('skolko=lim');
  lParamList2.Add('datequery=2016-11-30');   }


  //vu_fio=%D0%9B%D0%B5%D0%B1%D0%B5%D0%B4%D0%B5%D0%B2+%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80+%D0%92%D1%8F%D1%87%D0%B5%D1%81%D0%BB%D0%B0%D0%B2%D0%BE%D0%B2%D0%B8%D1%87
  //&vu_bdate=1977-01-27&vu_num=38%D0%BC%D0%BC+011874&skolko=lim&datequery=2016-11-30&JSID=',


  {lParamList3 := TStringList.Create;
  lParamList3.Add('action=getKBM');
  lParamList3.Add('bonus_family=�������');
    lParamList3.Add('bonus_name=���������');
      lParamList3.Add('bonus_last_name=������������');
  lParamList3.Add('bonus_date_birthday=27.01.1977');
  lParamList3.Add('bonus_driver_license=38�� 011874');   }


  //action=getKBM&bonus_family=%D0%9B%D0%B5%D0%B1%D0%B5%D0%B4%D0%B5%D0%B2
  //&bonus_name=%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80
  //&bonus_last_name=%D0%92%D1%8F%D1%87%D0%B5%D1%81%D0%BB%D0%B0%D0%B2%D0%BE%D0%B2%D0%B8%D1%87
  //&bonus_date_birthday=27.01.1977&bonus_driver_license=38%D0%BC%D0%BC+011874



  lHTTP := TIdHTTP.Create(nil);
  lHTTP.ProxyParams.ProxyServer:='proxy.esrr.oao.rzd';
  lHTTP.ProxyParams.ProxyPort:=3128;
  lHTTP.ProxyParams.ProxyUsername:='ivc_lebedevav';
  lHTTP.ProxyParams.ProxyPassword:='jNjqlbjn;21';

  lParamList1 := TStringList.Create;
  try
    {Result := lHTTP.Post('http://www.itbroker.ru/ajax/kbm.php', lParamList1);
    ShowMessage(Result);

    Result := lHTTP.Post('https://kbm-osago.ru/engine/kbm', lParamList2);
    ShowMessage(Result);


    Result := lHTTP.Post('http://www.sravnikupi.ru/kbm/', lParamList3);
    ShowMessage(Result);   }


  {lParamList1.Add('kmb_date=');
  lParamList1.Add('KBM_FIO=������� ��������� ������������');
  lParamList1.Add('KBM_BD=27-01-1977');
  lParamList1.Add('KBM_SERIA=38��');
  lParamList1.Add('KBM_NOMER=011874');   }

    lParamList1.Add('kmb_date=');
  lParamList1.Add('KBM_FIO=�������� ������� ������������');
  lParamList1.Add('KBM_BD=06-07-1986');
  lParamList1.Add('KBM_SERIA=3809');
  lParamList1.Add('KBM_NOMER=845332');

    Result := lHTTP.Post('http://lebalex.xyz/atx/kbm.php', lParamList1);
    ShowMessage(Result);


  finally
    lHTTP.Free;
    lParamList1.Free;


  end;


end;


procedure Tfrmavtocard.FormShow(Sender: TObject);
var
Layout: array[0.. KL_NAMELENGTH] of char;

begin
LoadKeyboardLayout( StrCopy(Layout,'00000419'),KLF_ACTIVATE);
PageControl1.ActivePage:=TabSheet1;

Mark_boxChange(Self);
Model_edit.Text:=dm.tAvto.Fields[7].AsString;
ListOsago;
dm.tAvto.Recordset.Properties['Unique Table'].Value := 'tAvto';

with DBGrid_Osago do
begin
Columns.Add;
Columns[0].Title.Caption:='����';
Columns[0].FieldName:='date';
Columns[0].Width:=70;
Columns.Add;
Columns[1].Title.Caption:='�����';
Columns[1].FieldName:='seria';
Columns[1].Width:=50;
Columns.Add;
Columns[2].Title.Caption:='�����';
Columns[2].FieldName:='number';
Columns[2].Width:=100;
Columns.Add;
Columns[3].Title.Caption:='��������';
Columns[3].FieldName:='name';
Columns[3].Width:=200;
Columns.Add;
Columns[4].Title.Caption:='������';
Columns[4].FieldName:='periodName';
Columns[4].Width:=120;
Columns.Add;
Columns[5].Title.Caption:='���������';
Columns[5].FieldName:='osago_coast';
Columns[5].Width:=100;
Columns.Add;
Columns[6].Title.Caption:='��������';
Columns[6].FieldName:='pay_coast';
Columns[6].Width:=100;
Columns.Add;
Columns[7].FieldName:='id';
Columns[7].Visible:=false;
end;


end;


procedure Tfrmavtocard.FormCreate(Sender: TObject);
begin
Left:=0;
Top:=0;
Width:=812;
Height:=686;
openProc;
ChangeNumber:=false;
  dm.tSettingProgramm.Close;
  dm.tSettingProgramm.Filter:='param_p = '+QuotedStr('save_number');
  dm.tSettingProgramm.Filtered:=true;
  dm.tSettingProgramm.Open;
  save_number:=dm.tSettingProgramm.Fields[1].AsInteger;
  dm.tSettingProgramm.Close;

DateTimePicker1.Parent := StringGrid1;
DateTimePicker1.Visible := False;
end;

procedure Tfrmavtocard.find_numb_editKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
id_search:=0;
if Key=Ord(#13) then
LbB_FindClick(Self);
end;

procedure Tfrmavtocard.Model_edit1KeyPress(Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure Tfrmavtocard.Mark_boxChange(Sender: TObject);
begin
if Mark_box.KeyValue<>null then
begin
Model_edit.Items.Clear;
Model_edit.Text:='';
dm.tModel_avt.Close;
dm.tModel_avt.Filter:='id_mark='+IntToStr(Mark_box.KeyValue);
dm.tModel_avt.Filtered:=true;
dm.tModel_avt.Open;
while not dm.tModel_avt.Eof do
begin
Model_edit.Items.Add(trim(dm.tModel_avt.Fields[2].AsString));
dm.tModel_avt.Next;
end;
end;
end;

procedure Tfrmavtocard.Model_edit1Change(Sender: TObject);
begin
{AvtoBeforeEdit;
dm.tAvto.Edit;
dm.tAvto.Fields[7].Value:=Model_edit.Text;
dm.StoredProc1.Parameters.Clear;
dm.StoredProc1.ProcedureName:='GetExplYear;1';
dm.StoredProc1.Parameters.AddParameter;
dm.StoredProc1.Parameters[0].Name:='@Param1';
dm.StoredProc1.Parameters[0].DataType:=ftInteger;
dm.StoredProc1.Parameters[0].Value:=dm.tAvto.Fields[6].Value;
dm.StoredProc1.Parameters.AddParameter;
dm.StoredProc1.Parameters[1].Name:='@Param2';
dm.StoredProc1.Parameters[1].DataType:=ftString;
dm.StoredProc1.Parameters[1].Value:=trim(Model_edit.Text);

dm.StoredProc1.Open;

dm.tAvto.Fields[57].Value:=dm.StoredProc1.FieldValues['expl_year'];
dm.StoredProc1.Close;  }
end;





procedure Tfrmavtocard.PageControl2DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
XTabSheet: TTabSheet;
XRect: TRect;
  begin

               if PageControl2.Pages[TabIndex].Highlighted then


Control.Canvas.Brush.Color:=RGB(255, 153, 153)
else
        Control.Canvas.Brush.Color:=clBtnFace;

XRect:=Rect;
InflateRect(XRect, -1, -1);
Control.Canvas.FillRect(XRect);


XTabSheet:=PageControl2.Pages[TabIndex];

if Assigned(XTabSheet) then begin
DrawText(Control.Canvas.Handle,
PChar(XTabSheet.Caption), length(XTabSheet.Caption),
XRect, DT_VCENTER + DT_SINGLELINE + DT_CENTER);

      end;

end;



procedure Tfrmavtocard.SpeedButton1Click(Sender: TObject);
begin


if(StringGrid1.RowCount=2) and (trim(StringGrid1.Cells[0,1])='') then
StringGrid1.RowCount:=StringGrid1.RowCount
else
StringGrid1.RowCount:=StringGrid1.RowCount+1;
end;

procedure Tfrmavtocard.SpeedButton3Click(Sender: TObject);
var
i:integer;
begin

if (StringGrid1.Cells[3,iRow]<>'1') and (iRow>0) then
begin

if LbButtonAdd_osago.Enabled then
  LbButtonOsago_Save.Enabled:=true;

if StringGrid1.RowCount=2 then
begin
StringGrid1.Cells[0,iRow]:='';
StringGrid1.Cells[1,iRow]:='';
StringGrid1.Cells[2,iRow]:='';
StringGrid1.Cells[3,iRow]:='';
end else begin
for i:=iRow to StringGrid1.RowCount-2 do
begin
StringGrid1.Cells[0,i]:=StringGrid1.Cells[0,i+1];
StringGrid1.Cells[1,i]:=StringGrid1.Cells[1,i+1];
StringGrid1.Cells[2,i]:=StringGrid1.Cells[2,i+1];
StringGrid1.Cells[3,i]:=StringGrid1.Cells[3,i+1];
end;
StringGrid1.RowCount:=StringGrid1.RowCount-1;
end;
end;
end;

procedure Tfrmavtocard.ListOsago;
begin
DateTimePicker1.Visible:=false;
Panel_Add_Osago.Visible:=false;
  Panel_Osago.Enabled:= true;


if dm.tAvto.RecordCount<>0 then
begin
if dm.StoredProc_osago.Active then
dm.StoredProc_osago.Active:=false;
dm.StoredProc_osago.Parameters.Clear;
dm.StoredProc_osago.ProcedureName:='GetOsagoList;1';
dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_osago.Parameters[0].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[1].Name:='@id_avt';
dm.StoredProc_osago.Parameters[1].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[1].Value:=dm.tAvto.Fields[0].AsInteger;
dm.StoredProc_osago.Open;
if dm.StoredProc_osago.RecordCount=0 then
begin
LbButtonEdit_Osago.Enabled:=false;
LbButtonDel_Osago.Enabled:=false;
end else
begin
LbButtonEdit_Osago.Enabled:=true;
if (Main.UserRole=ADMIN_USER) or (Main.UserRole=INSURE_USER) then
begin

LbButtonDel_Osago.Enabled:=true;
end;
end;
end;
end;
{-----------------}





procedure Tfrmavtocard.Numb1_editKeyPress(Sender: TObject; var Key: Char);
begin
ChangeNumber:=true;
end;



procedure Tfrmavtocard.ElPageControl1Change(Sender: TObject);
begin
if (PageControl1.ActivePageIndex=0) then
LbButton24.Visible:=true
else
LbButton24.Visible:=false;
if (PageControl1.ActivePageIndex=5)
or (PageControl1.ActivePageIndex=6) then
begin
LbB_New.Visible:=false;
LbB_Cancel.Visible:=false;
LbB_Post.Visible:=false;
if Main.UserRole=ADMIN_USER then
LbB_Del.Visible:=false;
end else
begin
LbB_New.Visible:=true;
LbB_Cancel.Visible:=true;
LbB_Post.Visible:=true;
if Main.UserRole=ADMIN_USER then
LbB_Del.Visible:=true;
end;
end;





procedure Tfrmavtocard.getPayInsyrens(id_insurens:Integer);
var
count:Integer;
sum:real;
CanSelect:boolean;
begin

StringGrid1.RowCount:=2;

StringGrid1.Cells[0,1]:='';
StringGrid1.Cells[1,1]:='';
StringGrid1.Cells[2,1]:='';
StringGrid1.Cells[3,1]:='';
sum:=0;

with dm do begin
if ADO.Connected then begin
if StoredProc3.Active then StoredProc3.Active:=false;
StoredProc3.Parameters.Clear;
StoredProc3.ProcedureName:='GetInserensPay;1';
StoredProc3.Parameters.AddParameter;
StoredProc3.Parameters[0].Name:='@RETURN_VALUE';
StoredProc3.Parameters[0].DataType:=ftInteger;
StoredProc3.Parameters[0].Direction:=pdReturnValue;
StoredProc3.Parameters.AddParameter;
StoredProc3.Parameters[1].Name:='@id_insurens';
StoredProc3.Parameters[1].DataType:=ftInteger;
StoredProc3.Parameters[1].Value:=id_insurens;
try
StoredProc3.Open;
StringGrid1.ColWidths[0]:=100;
StringGrid1.ColWidths[1]:=70;
StringGrid1.ColWidths[2]:=350;
StringGrid1.ColWidths[3]:=0;
StringGrid1.Cells[0,0]:='����';
StringGrid1.Cells[1,0]:='�����';
StringGrid1.Cells[2,0]:='�����������';
count:=1;
while not StoredProc3.Eof do
begin
if StringGrid1.RowCount-1<count then  StringGrid1.RowCount:=StringGrid1.RowCount+1;

StringGrid1.Cells[0,count]:=StoredProc3.Fields[0].AsString;
StringGrid1.Cells[1,count]:=StoredProc3.Fields[1].AsString;
StringGrid1.Cells[2,count]:=StoredProc3.Fields[2].AsString;
StringGrid1.Cells[3,count]:=StoredProc3.Fields[3].AsString;

sum:=sum+StoredProc3.Fields[1].AsFloat;
StoredProc3.Next;
inc(count);
end;

CurrencyEdit_Amount.Value:=sum;

except
//
end;
end;
end;
    //LabeledEdit_ser.SetFocus;
    DateTimePicker1.Visible:=false;
end;


procedure Tfrmavtocard.LbButtonAdd_OsagoClick(Sender: TObject);
begin
if not Panel_Add_Osago.Visible then
begin
edit_Osago:=false;
id_osago:=0;
GroupBoxTerm.Visible:=false;
GroupBox_Osago_Addition.Visible:=false;
DateEdit_osago.Date:=Now();
LabeledEdit_ser.Text:='';
LabeledEdit_number.Text:='';
CurrencyEdit_Amount.Value:=0;
CurrencyEdit_osago_coast.Value:=0;

RxDBLookupCombo_Insure_Comp.KeyValue:=null;
RxDBLookupCombo_Period.KeyValue:=8;

Panel_Add_Osago.Visible:=true;
getPayInsyrens(-1);


    Panel_Add_Osago.Height:=340;
          LbButton26_Cancel.Top:=300;
          LbButtonOsago_Save.Top:=300;

LbButtonOsago_Save.Enabled:=false;

Panel_Osago.Enabled:= not Panel_Add_Osago.Visible;
end;
end;

procedure Tfrmavtocard.LbButtonDel_OsagoClick(Sender: TObject);
var
id_osago:integer;
begin
  if Main.ATXMessageDlg('�� �������, ��� ������ ������� ������ ���?',
    2,mtConfirmation) = mrYes then
begin
id_osago:=dm.StoredProc_osago.Fields[0].AsInteger;
if dm.StoredProc_osago.Active then
dm.StoredProc_osago.Active:=false;
dm.StoredProc_osago.Parameters.Clear;
dm.StoredProc_osago.ProcedureName:='DelOsago;1';
dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_osago.Parameters[0].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[1].Name:='@id';
dm.StoredProc_osago.Parameters[1].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[1].Value:=id_osago;
try
dm.StoredProc_osago.ExecProc;
dm.CommitTR;
except
dm.RollBTR
end;
ListOsago;
end;

end;

procedure Tfrmavtocard.LbButtonOsago_SaveClick(Sender: TObject);
var
id_avt,id_insure_comp,id_period,i:Integer;
what:integer;
error:boolean;
begin
error:=false;
for i := 1 to StringGrid1.RowCount-1 do
begin
if StringGrid1.Cells[3,i]<>'1' then
begin
 if StringGrid1.Cells[0,i]<>'' then begin
     try
        StrToDate(StringGrid1.Cells[0,i]);
     except
           Main.ATXShowMessage(StringGrid1.Cells[0,i]+' �� ��������� �����!'); error:=true;
     end;
   end;
   if StringGrid1.Cells[1,i]<>'' then begin
     try
        StrToFloat(StringGrid1.Cells[1,i]);
     except
           Main.ATXShowMessage(StringGrid1.Cells[1,i]+' �� ��������� ������!'); error:=true;
     end;
   end;
end;
end;
if error then
  Exit;
what:=1;
if edit_Osago then what:=2;

id_period:=10;

if RxDBLookupCombo_Period.KeyValue<>null then
     id_period:=RxDBLookupCombo_Period.KeyValue;


if RxDBLookupCombo_Insure_Comp.KeyValue<>null then
begin

       id_insure_comp:=RxDBLookupCombo_Insure_Comp.KeyValue;



id_avt:=dm.tAvto.Fields[0].AsInteger;

if dm.StoredProc_osago.Active then
dm.StoredProc_osago.Active:=false;
dm.StoredProc_osago.Parameters.Clear;
dm.StoredProc_osago.ProcedureName:='SetOsago;1';

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_osago.Parameters[0].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[0].Direction:=pdReturnValue;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[1].Name:='@what';
dm.StoredProc_osago.Parameters[1].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[1].Value:=what;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[2].Name:='@id';
dm.StoredProc_osago.Parameters[2].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[2].Value:=id_osago;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[3].Name:='@id_avt';
dm.StoredProc_osago.Parameters[3].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[3].Value:=id_avt;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[4].Name:='@seria';
dm.StoredProc_osago.Parameters[4].DataType:=ftString;
dm.StoredProc_osago.Parameters[4].Value:=LabeledEdit_ser.Text;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[5].Name:='@number';
dm.StoredProc_osago.Parameters[5].DataType:=ftString;
dm.StoredProc_osago.Parameters[5].Value:=LabeledEdit_number.Text;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[6].Name:='@id_insure_comp';
dm.StoredProc_osago.Parameters[6].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[6].Value:=id_insure_comp;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[7].Name:='@date';
if DateEdit_osago.Text<>'  .  .    ' then
begin
dm.StoredProc_osago.Parameters[7].DataType:=ftDate;
dm.StoredProc_osago.Parameters[7].Value:=DateEdit_osago.Date;
end else begin
dm.StoredProc_osago.Parameters[7].DataType:=ftDate;
dm.StoredProc_osago.Parameters[7].Value:=Now();
end;


dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[8].Name:='@period';
dm.StoredProc_osago.Parameters[8].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[8].Value:=id_period;


dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[9].Name:='@osago_coast';
dm.StoredProc_osago.Parameters[9].DataType:=ftFloat;
dm.StoredProc_osago.Parameters[9].Value:=CurrencyEdit_osago_coast.Value;


dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[10].Name:='@avaria';
dm.StoredProc_osago.Parameters[10].DataType:=ftBoolean;
dm.StoredProc_osago.Parameters[10].Value:=CheckBox_osago_avaria.Checked;


dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[11].Name:='@kbm';
dm.StoredProc_osago.Parameters[11].DataType:=ftFloat;
dm.StoredProc_osago.Parameters[11].Value:=KbmEdit.Value;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[12].Name:='@date_terminate';
if DateEdit_osago_term.Text<>'  .  .    ' then
begin
dm.StoredProc_osago.Parameters[12].DataType:=ftDate;
dm.StoredProc_osago.Parameters[12].Value:=DateEdit_osago_term.Date;
end else begin
dm.StoredProc_osago.Parameters[12].DataType:=ftString;
dm.StoredProc_osago.Parameters[12].Value:='';
end;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[13].Name:='@pay_return';
dm.StoredProc_osago.Parameters[13].DataType:=ftFloat;
dm.StoredProc_osago.Parameters[13].Value:=CurrencyEdit_osago_term.Value;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[14].Name:='@id_insure_pay_transfer';
dm.StoredProc_osago.Parameters[14].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[14].Value:=CheckOsagoPolice(LabeledEdit_ser_osago_term.Text, LabeledEdit_num_osago_term.Text);



    dm.StoredProc_osago.Parameters.AddParameter;
    dm.StoredProc_osago.Parameters[15].Name:='@id_return';
    dm.StoredProc_osago.Parameters[15].DataType:=ftInteger;
    dm.StoredProc_osago.Parameters[15].Direction:=pdReturnValue;



try
dm.StoredProc_osago.ExecProc;

        id_osago:=dm.StoredProc_osago.Parameters[15].Value;

dm.StoredProc_osago.Active:=false;
dm.StoredProc_osago.Parameters.Clear;
dm.StoredProc_osago.ProcedureName:='DeleteOsagoPay;1';

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_osago.Parameters[0].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[0].Direction:=pdReturnValue;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[1].Name:='@id_insure';
dm.StoredProc_osago.Parameters[1].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[1].Value:=id_osago;
dm.StoredProc_osago.ExecProc;


for i := 1 to StringGrid1.RowCount-1 do
begin
if (StringGrid1.Cells[3,i]<>'1') and (StringGrid1.Cells[0,i]<>'') and (StringGrid1.Cells[1,i]<>'') then
begin
dm.StoredProc_osago.Active:=false;
dm.StoredProc_osago.Parameters.Clear;
dm.StoredProc_osago.ProcedureName:='SetOsagoPay;1';

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_osago.Parameters[0].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[0].Direction:=pdReturnValue;


dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[1].Name:='@id_insure';
dm.StoredProc_osago.Parameters[1].DataType:=ftInteger;
dm.StoredProc_osago.Parameters[1].Value:=id_osago;

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[2].Name:='@date_pay';
dm.StoredProc_osago.Parameters[2].DataType:=ftDate;
dm.StoredProc_osago.Parameters[2].Value:=StrToDate(StringGrid1.Cells[0,i]);

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[3].Name:='@pay_coast';
dm.StoredProc_osago.Parameters[3].DataType:=ftFloat;
dm.StoredProc_osago.Parameters[3].Value:=StrToFloat(StringGrid1.Cells[1,i]);

dm.StoredProc_osago.Parameters.AddParameter;
dm.StoredProc_osago.Parameters[4].Name:='@pay_description';
dm.StoredProc_osago.Parameters[4].DataType:=ftString;
dm.StoredProc_osago.Parameters[4].Value:=StringGrid1.Cells[2,i];

dm.StoredProc_osago.ExecProc;
end;
end;




dm.CommitTR;
except
on E : Exception do
begin
dm.RollBTR;
      ShowMessage(E.ClassName+' ������ � ���������� : '+E.Message);

    end;


end;
ListOsago;
end else
begin
  //���-�� �� ���������
end;




end;

procedure Tfrmavtocard.LbButtonEdit_OsagoClick(Sender: TObject);
//var
//i:integer;
begin
if not Panel_Add_Osago.Visible then  begin
edit_Osago:=true;
GroupBoxTerm.Visible:=true;
GroupBox_Osago_Addition.Visible:=true;
    Panel_Add_Osago.Height:=482;
          LbButton26_Cancel.Top:=445;
          LbButtonOsago_Save.Top:=445;


RxDBLookupCombo_Insure_Comp.KeyValue:=dm.StoredProc_osago.Fields[4].AsInteger;

id_osago:=dm.StoredProc_osago.Fields[0].AsInteger;
if id_osago>0 then
begin
Panel_Add_Osago.Visible:=true;
getPayInsyrens(id_osago);

DateEdit_osago.Date:=dm.StoredProc_osago.Fields[6].AsDateTime;
    LabeledEdit_ser.Text:=trim(dm.StoredProc_osago.Fields[2].AsString);
    LabeledEdit_number.Text:=trim(dm.StoredProc_osago.Fields[3].AsString);


    RxDBLookupCombo_Period.KeyValue:=dm.StoredProc_osago.Fields[7].AsInteger;

    CurrencyEdit_osago_coast.Value:=dm.StoredProc_osago.Fields[8].AsFloat;
    CurrencyEdit_Amount.Value:=dm.StoredProc_osago.Fields[9].AsFloat;


    CheckBox_osago_avaria.Checked:=dm.StoredProc_osago.Fields[10].AsBoolean;
    KbmEdit.Value:=dm.StoredProc_osago.Fields[11].AsFloat;
    DateEdit_osago_term.Date:=dm.StoredProc_osago.Fields[12].AsDateTime;
    CurrencyEdit_osago_term.Value:=dm.StoredProc_osago.Fields[13].AsFloat;

          LabeledEdit_ser_osago_term.Text:=trim(dm.StoredProc_osago.Fields[15].AsString);
          LabeledEdit_num_osago_term.Text:=trim(dm.StoredProc_osago.Fields[16].AsString);

LbButtonOsago_Save.Enabled:=false;



Panel_Osago.Enabled:= not Panel_Add_Osago.Visible;

end;
end;
end;





procedure Tfrmavtocard.DBGrid_OsagoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
DBGrid_Osago.Canvas.Font.Color :=clBlack;
if gdSelected in state then
  DBGrid_Osago.Canvas.Brush.Color:=$EFE3DF
  else
  DBGrid_Osago.Canvas.Brush.Color:=clWhite;
  DBGrid_Osago.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;




procedure Tfrmavtocard.LbButton4Click(Sender: TObject);
begin
  Main.listAvt_From:=2;
  Application.CreateForm(Tfrmsearch, frmsearch);
  frmsearch.List_Avto;
  frmsearch.ShowModal;
end;




procedure Tfrmavtocard.CheckBox_guilty_dtpClick(Sender: TObject);
begin
LbButtonOsago_Save.Enabled:=true;
end;






procedure Tfrmavtocard.DateEdit_dtpChange(Sender: TObject);
begin
if LbButtonAdd_Osago.Enabled then
  LbButtonOsago_Save.Enabled:=true;
end;







procedure Tfrmavtocard.DateEdit_osagoChange(Sender: TObject);
begin
if LbButtonAdd_osago.Enabled then
  LbButtonOsago_Save.Enabled:=true;

end;

procedure Tfrmavtocard.DateTimePicker1Exit(Sender: TObject);
begin
with StringGrid1 do
   Cells[iCol, iRow] := DateToStr(DateTimePicker1.DateTime);

end;

procedure Tfrmavtocard.Label47Click(Sender: TObject);
begin
//http://dkbm-web.autoins.ru/dkbm-web-1.0/kbm.htm
ShellExecute(0, 'OPEN', PChar('http://dkbm-web.autoins.ru/dkbm-web-1.0/kbm.htm'), '', '', SW_SHOWNORMAL);
end;

procedure test;
var
  lHTTP: TIdHTTP;
  lParamList1,lParamList2,lParamList3: TStringList;
  Result:String;
begin

{lParamList1 := TStringList.Create;
  lParamList1.Add('KBM_DT=');
  lParamList1.Add('KBM_FIO=������� ��������� ������������');
  lParamList1.Add('KBM_BD=27-01-1977');
  lParamList1.Add('KBM_SERIA=38mm');
  lParamList1.Add('KBM_NOMER=011874');  }
  //'KBM_DT=&KBM_FIO=������� ��������� ������������&KBM_BD=27-01-1977&KBM_SERIA=38mm&KBM_NOMER=011874

  {lParamList2 := TStringList.Create;
  lParamList2.Add('vu_fio=������� ��������� ������������');
  lParamList2.Add('vu_bdate=27-01-1977');
  lParamList2.Add('vu_num=38�� 011874');
  lParamList2.Add('skolko=lim');
  lParamList2.Add('datequery=2016-11-30');   }


  //vu_fio=%D0%9B%D0%B5%D0%B1%D0%B5%D0%B4%D0%B5%D0%B2+%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80+%D0%92%D1%8F%D1%87%D0%B5%D1%81%D0%BB%D0%B0%D0%B2%D0%BE%D0%B2%D0%B8%D1%87
  //&vu_bdate=1977-01-27&vu_num=38%D0%BC%D0%BC+011874&skolko=lim&datequery=2016-11-30&JSID=',


  {lParamList3 := TStringList.Create;
  lParamList3.Add('action=getKBM');
  lParamList3.Add('bonus_family=�������');
    lParamList3.Add('bonus_name=���������');
      lParamList3.Add('bonus_last_name=������������');
  lParamList3.Add('bonus_date_birthday=27.01.1977');
  lParamList3.Add('bonus_driver_license=38�� 011874');   }


  //action=getKBM&bonus_family=%D0%9B%D0%B5%D0%B1%D0%B5%D0%B4%D0%B5%D0%B2
  //&bonus_name=%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80
  //&bonus_last_name=%D0%92%D1%8F%D1%87%D0%B5%D1%81%D0%BB%D0%B0%D0%B2%D0%BE%D0%B2%D0%B8%D1%87
  //&bonus_date_birthday=27.01.1977&bonus_driver_license=38%D0%BC%D0%BC+011874



  lHTTP := TIdHTTP.Create(nil);
  lHTTP.ProxyParams.ProxyServer:='proxy.esrr.oao.rzd';
  lHTTP.ProxyParams.ProxyPort:=3128;
  lHTTP.ProxyParams.ProxyUsername:='ivc_lebedevav';
  lHTTP.ProxyParams.ProxyPassword:='jNjqlbjn;21';
  try
    {Result := lHTTP.Post('http://www.itbroker.ru/ajax/kbm.php', lParamList1);
    ShowMessage(Result);

    Result := lHTTP.Post('https://kbm-osago.ru/engine/kbm', lParamList2);
    ShowMessage(Result);


    Result := lHTTP.Post('http://www.sravnikupi.ru/kbm/', lParamList3);
    ShowMessage(Result);   }

  lParamList1 := TStringList.Create;
  {lParamList1.Add('kmb_date=');
  lParamList1.Add('KBM_FIO=������� ��������� ������������');
  lParamList1.Add('KBM_BD=27-01-1977');
  lParamList1.Add('KBM_SERIA=38��');
  lParamList1.Add('KBM_NOMER=011874');   }

    lParamList1.Add('kmb_date=');
  lParamList1.Add('KBM_FIO=�������� ������� ������������');
  lParamList1.Add('KBM_BD=06-07-1986');
  lParamList1.Add('KBM_SERIA=3809');
  lParamList1.Add('KBM_NOMER=845332');

    Result := lHTTP.Post('http://lebalex.xyz/atx/kbm.php', lParamList1);
    ShowMessage(Result);


  finally
    lHTTP.Free;
    lParamList1.Free;
        lParamList2.Free;
            lParamList3.Free;

  end;

end;

procedure Tfrmavtocard.LabeledEdit_num_osago_termDblClick(Sender: TObject);
begin
id_search:=0;
find_numb_edit.Text:=LabeledEdit_num_osago_term.Text;
end;

procedure Tfrmavtocard.LbButton17Click(Sender: TObject);
begin
  Main.listAvt_From:=3;
  Application.CreateForm(Tfrmsearch, frmsearch);
  frmsearch.List_Avto;
  frmsearch.ShowModal;


end;







procedure Tfrmavtocard.StringGrid1DblClick(Sender: TObject);
var
str:String;
OutPutList: TStringList;
begin
if StringGrid1.Cells[3,iRow]='1' then
begin
   str:=StringGrid1.Cells[2,iRow];
   OutPutList := TStringList.Create;
              OutPutList.Clear;
            OutPutList.Delimiter       := ' ';
            OutPutList.StrictDelimiter := True;
            OutPutList.DelimitedText   := str;
  if OutPutList.Count>1 then begin
    find_numb_edit.Text:=OutPutList[1];
    id_search:=0;
  end;
end;
end;

procedure Tfrmavtocard.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  l_YPos, l_XPos, i: integer;
  s: string;
  l_col, l_row: longint;
  SG:TStringGrid;
  sum:real;

Txt: array[0..255] of Char;
begin
  l_col := acol;
  l_row := arow;
  SG:=sender as tstringgrid;
  with sender as tstringgrid do
  begin
      l_XPos := rect.left;
      l_YPos:=rect.top;
      s := cells[l_col, l_row];
    if (gdSelected in State) then
    begin
    if (SG.Cells[3,arow]<>'1') and (acol>0) then
       begin
        canvas.Brush.Color := clWhite;
        canvas.Font.Color:=clBlack;
        SG.Options := SG.Options + [goEditing];
       end
       else if (SG.Cells[3,arow]<>'1') and (acol=0) then
       begin
        canvas.Brush.Color := clWhite;
        canvas.Font.Color:=clBlack;
        SG.Options := SG.Options - [goEditing];
       end
       else
       begin
        canvas.Brush.Color := clBlue;
        canvas.Font.Color:=clWhite;
        SG.Options := SG.Options - [goEditing];
       end;
    end;
    canvas.FillRect(Rect);
    SetBkMode(Handle, TRANSPARENT);
    canvas.textrect(rect,l_Xpos,l_YPos,s);
   end;
{
SG.Canvas.FillRect(Rect); // ����������� ������
StrPCopy(Txt, SG.Cells[ACol, ARow]); // �������������� ������ � ������ PChar
WinProcs.DrawText(SG.Canvas.Handle, Txt, StrLen(Txt), Rect,  DT_CENTER); // ����� ������
      }
   sum:=0;

   for i := 1 to SG.RowCount - 1 do begin
   if SG.Cells[1,i]<>'' then begin
     try
        sum:=sum+StrToFloat(SG.Cells[1,i]);
     except
           Main.ATXShowMessage(SG.Cells[1,i]+' �� ��������� ������!');
     end;
   end;
   end;
   CurrencyEdit_Amount.Value:=sum;
end;




procedure Tfrmavtocard.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if LbButtonAdd_osago.Enabled then
  LbButtonOsago_Save.Enabled:=true;

if iCol=0 then
begin
if not(AnsiChar(Key) in ['0' .. '9', '.',Chr(VK_BACK),Chr(VK_SPACE)]) then
Key:=#0;
end;

if iCol=1 then
begin
if not(AnsiChar(Key) in ['0' .. '9', ',',Chr(VK_BACK)]) then
if AnsiChar(Key) in ['.'] then
     Key:=','
     else
Key:=#0;
end;
end;

procedure Tfrmavtocard.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
D: TDateTime;
begin
iRow:=ARow;
iCol:=ACol;
if (iCol=0) and (StringGrid1.Cells[3, ARow]<>'1') then
begin
DateTimePicker1.Visible := True;
DateTimePicker1.BoundsRect := StringGrid1.CellRect(ACol, ARow);
D := DateTimePicker1.DateTime;
TryStrToDateTime(StringGrid1.Cells[ACol, ARow], D);
DateTimePicker1.DateTime := D;
DateTimePicker1.SetFocus;
end
else  DateTimePicker1.Visible := False;

end;

procedure Tfrmavtocard.Numb1_editEnter(Sender: TObject);
var
i:integer;
begin
for i:=0 to ComponentCount-1 do
begin
if Components[i].ClassType=TDBEdit then
(Components[i] as TDBEdit).Color:=clWhite;
if Components[i].ClassType=TDBLookupComboBox then
(Components[i] as TDBLookupComboBox).Color:=clWhite;
if Components[i].ClassType=TComboBox then
(Components[i] as TComboBox).Color:=clWhite;
if Components[i].ClassType=TDBDateEdit then
(Components[i] as TDBDateEdit).Color:=clWhite;
if Components[i].ClassType=TDBEdit then
(Components[i] as TDBEdit).Color:=clWhite;
if Components[i].ClassType=TComboBox then
(Components[i] as TComboBox).Color:=clWhite;
end;
    if Sender.ClassType=TDBEdit then
        if (Sender as TDBEdit).Focused then
            (Sender as TDBEdit).Color:=$00EBF9EB;
    if Sender.ClassType=TDBLookupComboBox then
        if (Sender as TDBLookupComboBox).Focused then
            (Sender as TDBLookupComboBox).Color:=$00EBF9EB;
    if Sender.ClassType=TComboBox then
        if (Sender as TComboBox).Focused then
            (Sender as TComboBox).Color:=$00EBF9EB;
    if Sender.ClassType=TComboBox then
        if (Sender as TComboBox).Focused then
            (Sender as TComboBox).Color:=$00EBF9EB;
    if Sender.ClassType=TDBDateEdit then
        if (Sender as TDBDateEdit).Focused then
            (Sender as TDBDateEdit).Color:=$00EBF9EB;
    if Sender.ClassType=TDBEdit then
        if (Sender as TDBEdit).Focused then
            (Sender as TDBEdit).Color:=$00EBF9EB;

end;


procedure Tfrmavtocard.LbButton24Click(Sender: TObject);
begin
Main.CreateReportAvtoCard;
end;

procedure Tfrmavtocard.LbButton26_CancelClick(Sender: TObject);
begin
DateTimePicker1.Visible:=false;
Panel_Add_Osago.Visible:=false;
  Panel_Osago.Enabled:= not Panel_Add_Osago.Visible;

end;



end.
