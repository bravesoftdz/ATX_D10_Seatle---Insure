unit report_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbSpeedButton, ExtCtrls, LbStaticText, StdCtrls, Mask,
  RxLookup, LbButton,DateUtils, rxPlacemnt, rxToolEdit, DBCtrls;

type
  Tfrmreport = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox6: TGroupBox;
    LbB_Search: TLbButton;
    ScrollBox1: TScrollBox;
    year_box: TCheckBox;
    vin_edit: TEdit;
    vin_box: TCheckBox;
    Source2_box: TCheckBox;
    Source1_box: TCheckBox;
    shas_edit: TEdit;
    serv_box: TCheckBox;
    reg_box: TCheckBox;
    pts_edit: TEdit;
    pre_depart_box: TCheckBox;
    numb2_edit: TEdit;
    numb2_box: TCheckBox;
    numb1_edit: TEdit;
    numb1_box: TCheckBox;
    NShas_box: TCheckBox;
    Npts_box: TCheckBox;
    Neng_box: TCheckBox;
    Nbody_box: TCheckBox;
    mark_box: TCheckBox;
    InAccount_box: TCheckBox;
    InAc2: TDateEdit;
    InAc1: TDateEdit;
    Group_box: TCheckBox;
    eng_edit: TEdit;
    div_box: TCheckBox;
    depart_box: TCheckBox;
    db_source2: TDBLookupComboBox;
    db_source1: TDBLookupComboBox;
    db_serv: TDBLookupComboBox;
    db_reg: TDBLookupComboBox;
    db_pre: TDBLookupComboBox;
    db_mark: TDBLookupComboBox;
    db_group: TDBLookupComboBox;
    db_div: TDBLookupComboBox;
    db_depart: TDBLookupComboBox;
    body_edit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SearchStorage: TFormStorage;
    d1R: TDateEdit;
    d2R: TDateEdit;
    d1L: TLabel;
    d2L: TLabel;
    LbButton2: TLbButton;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    Label5: TLabel;
    OutD1: TDateEdit;
    Label6: TLabel;
    OutD2: TDateEdit;
    State_box: TRadioButton;
    OutAccount_box: TRadioButton;
    life_box: TRadioButton;
    RadioButton1: TRadioButton;
    CheckBox17: TCheckBox;
    insur_box: TCheckBox;
    insur_edit: TEdit;
    date_insur_box: TCheckBox;
    Date_Insur1: TDateEdit;
    CheckBox18: TCheckBox;
    oldNumbBox: TCheckBox;
    oldnumb_edit: TEdit;
    CheckBox22: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    GroupBox3: TGroupBox;
    CheckBoxI1: TCheckBox;
    CheckBoxI2: TCheckBox;
    CheckBoxI3: TCheckBox;
    CheckBoxI4: TCheckBox;
    CheckBoxI5: TCheckBox;
    CheckBoxI6: TCheckBox;
    CheckBoxI7: TCheckBox;
    CheckBoxI12: TCheckBox;
    CheckBoxI13: TCheckBox;
    CheckBoxI15: TCheckBox;
    CheckBoxI17: TCheckBox;
    CheckBoxI24: TCheckBox;
    CheckBoxI19: TCheckBox;
    CheckBoxI23: TCheckBox;
    CheckBoxI25: TCheckBox;
    CheckBoxI26: TCheckBox;
    Date_Insur2: TDateEdit;
    ComboBox1: TComboBox;
    model_box: TCheckBox;
    db_model: TDBLookupComboBox;
    CheckBox23: TCheckBox;
    dislok_box: TCheckBox;
    db_dislok: TDBLookupComboBox;
    TTypeTCBox: TCheckBox;
    db_typetc: TDBLookupComboBox;
    TArenda: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    Spisat_box: TCheckBox;
    db_fuel: TDBLookupComboBox;
    fuel_box: TCheckBox;
    preserv_box: TCheckBox;
    db_preserv: TDBLookupComboBox;
    TnotATX: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox16: TCheckBox;
    year1: TMaskEdit;
    year2: TMaskEdit;
    CheckBoxI14: TCheckBox;
    CheckBoxI16: TCheckBox;
    CheckBoxI18: TCheckBox;
    CheckBoxI22: TCheckBox;
    CheckBoxI21: TCheckBox;
    CheckBoxI20: TCheckBox;
    ComboBox2: TComboBox;
    ModelDVC_box: TCheckBox;
    modelDVC_edit: TEdit;
    VolumDVC_box: TCheckBox;
    VolumDVC_edit: TEdit;
    TypeDVC_box: TCheckBox;
    db_typeDVC: TDBLookupComboBox;
    Manufacture_box: TCheckBox;
    db_manufactureTC: TDBLookupComboBox;
    CheckBoxI8: TCheckBox;
    CheckBoxI9: TCheckBox;
    CheckBoxI10: TCheckBox;
    CheckBoxI11: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox11: TCheckBox;
    procedure bclClick(Sender: TObject);
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure reg_boxClick(Sender: TObject);
    procedure div_boxClick(Sender: TObject);
    procedure depart_boxClick(Sender: TObject);
    procedure pre_depart_boxClick(Sender: TObject);
    procedure serv_boxClick(Sender: TObject);
    procedure mark_boxClick(Sender: TObject);
    procedure numb1_boxClick(Sender: TObject);
    procedure numb2_boxClick(Sender: TObject);
    procedure year_boxClick(Sender: TObject);
    procedure vin_boxClick(Sender: TObject);
    procedure Neng_boxClick(Sender: TObject);
    procedure Nbody_boxClick(Sender: TObject);
    procedure NShas_boxClick(Sender: TObject);
    procedure Npts_boxClick(Sender: TObject);
    procedure Source1_boxClick(Sender: TObject);
    procedure Source2_boxClick(Sender: TObject);
    procedure Group_boxClick(Sender: TObject);
    procedure InAccount_boxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LbB_SearchClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure State_boxClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure insur_boxClick(Sender: TObject);
    procedure date_insur_boxClick(Sender: TObject);
    procedure oldNumbBoxClick(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure model_boxClick(Sender: TObject);
    procedure db_markChange(Sender: TObject);
    procedure dislok_boxClick(Sender: TObject);
    procedure TTypeTCBoxClick(Sender: TObject);
    procedure fuel_boxClick(Sender: TObject);
    procedure preserv_boxClick(Sender: TObject);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure ModelDVC_boxClick(Sender: TObject);
    procedure VolumDVC_boxClick(Sender: TObject);
    procedure TypeDVC_boxClick(Sender: TObject);
    procedure Manufacture_boxClick(Sender: TObject);
  private
    { Private declarations }
  public
    what:byte;
    procedure Inventar;
    procedure NotOper3month;
    procedure Remont;
    procedure Expel_pokaz;
    procedure LineNormGSM;
    procedure LineNormGSM2;
    procedure ReportTO;
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmreport: Tfrmreport;

implementation

uses main_u, dm_u;

{$R *.dfm}
procedure Tfrmreport.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
end;

procedure Tfrmreport.bclClick(Sender: TObject);
begin
//save size
SearchStorage.SaveFormPlacement;
Close;
end;

procedure Tfrmreport.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrmreport.FormShow(Sender: TObject);
var
Layout: array[0.. KL_NAMELENGTH] of char;
begin
if what<>62 then begin
  d1L.Caption:='Дата с';
  d1L.Left:=88;
  CheckBox20.Caption:='Спидометр';
end
else  begin
  d1L.Caption:='Отсутствие ТО с';
    d1L.Left:=38;
  CheckBox20.Caption:='Последнее ТО';
  CheckBox20.Checked:=true;
end;
LoadKeyboardLayout( StrCopy(Layout,'00000419'),KLF_ACTIVATE);
if SearchStorage.ReadInteger('Visible',1)<>1 then
SearchStorage.RestoreFormPlacement
else
begin
frmreport.Left:=Main.Left+5;
frmreport.Top:=Main.Top+88;
end;
if(what=0) or (what=5) or (what=51) then
begin
fuel_box.Visible:=true;
db_fuel.Visible:=true;
end else begin
fuel_box.Visible:=false;
db_fuel.Visible:=false;
end;
end;

procedure Tfrmreport.reg_boxClick(Sender: TObject);
begin
if reg_box.Checked then
db_reg.Enabled:=true
else
db_reg.Enabled:=false;
end;

procedure Tfrmreport.div_boxClick(Sender: TObject);
begin
if div_box.Checked then
db_div.Enabled:=true
else
db_div.Enabled:=false;
end;

procedure Tfrmreport.depart_boxClick(Sender: TObject);
begin
if depart_box.Checked then
db_depart.Enabled:=true
else
db_depart.Enabled:=false;
end;

procedure Tfrmreport.pre_depart_boxClick(Sender: TObject);
begin
if pre_depart_box.Checked then
db_pre.Enabled:=true
else
db_pre.Enabled:=false;
end;

procedure Tfrmreport.serv_boxClick(Sender: TObject);
begin
if serv_box.Checked then
db_serv.Enabled:=true
else
db_serv.Enabled:=false;
end;

procedure Tfrmreport.mark_boxClick(Sender: TObject);
begin
if mark_box.Checked then
db_mark.Enabled:=true
else
begin
db_mark.Enabled:=false;
db_model.Enabled:=false;
model_box.Checked:=false;
end;
end;

procedure Tfrmreport.ModelDVC_boxClick(Sender: TObject);
begin
if ModelDVC_box.Checked then
modelDVC_edit.Enabled:=true
else
modelDVC_edit.Enabled:=false;
end;

procedure Tfrmreport.numb1_boxClick(Sender: TObject);
begin
if numb1_box.Checked then
numb1_edit.Enabled:=true
else
numb1_edit.Enabled:=false;
end;

procedure Tfrmreport.numb2_boxClick(Sender: TObject);
begin
if numb2_box.Checked then
numb2_edit.Enabled:=true
else
numb2_edit.Enabled:=false;
end;

procedure Tfrmreport.year_boxClick(Sender: TObject);
begin
if year_box.Checked then
begin
year1.Enabled:=true;
year2.Enabled:=true;
end
else begin
year1.Enabled:=false;
year2.Enabled:=false;
end;
end;

procedure Tfrmreport.vin_boxClick(Sender: TObject);
begin
if vin_box.Checked then
vin_edit.Enabled:=true
else
vin_edit.Enabled:=false;
end;

procedure Tfrmreport.VolumDVC_boxClick(Sender: TObject);
begin
if VolumDVC_box.Checked then
VolumDVC_edit.Enabled:=true
else
VolumDVC_edit.Enabled:=false;
end;

procedure Tfrmreport.Neng_boxClick(Sender: TObject);
begin
if Neng_box.Checked then
eng_edit.Enabled:=true
else
eng_edit.Enabled:=false;
end;

procedure Tfrmreport.Nbody_boxClick(Sender: TObject);
begin
if Nbody_box.Checked then
body_edit.Enabled:=true
else
body_edit.Enabled:=false;
end;

procedure Tfrmreport.NShas_boxClick(Sender: TObject);
begin
if NShas_box.Checked then
shas_edit.Enabled:=true
else
shas_edit.Enabled:=false;
end;

procedure Tfrmreport.Npts_boxClick(Sender: TObject);
begin
if Npts_box.Checked then
pts_edit.Enabled:=true
else
pts_edit.Enabled:=false;
end;

procedure Tfrmreport.Source1_boxClick(Sender: TObject);
begin
if Source1_box.Checked then
db_source1.Enabled:=true
else
db_source1.Enabled:=false;
end;

procedure Tfrmreport.Source2_boxClick(Sender: TObject);
begin
if Source2_box.Checked then
db_source2.Enabled:=true
else
db_source2.Enabled:=false;
end;

procedure Tfrmreport.Group_boxClick(Sender: TObject);
begin
if Group_box.Checked then
db_group.Enabled:=true
else
db_group.Enabled:=false;
end;

procedure Tfrmreport.InAccount_boxClick(Sender: TObject);
begin
if InAccount_box.Checked then begin
InAc1.Enabled:=true;
InAc2.Enabled:=true;
end
else begin
InAc1.Enabled:=false;
InAc2.Enabled:=false;
end;
end;

procedure Tfrmreport.FormCreate(Sender: TObject);
begin
with dm do
begin
    ado_reg.Open;ado_reg.Sort:='name';
    ado_div.Open;ado_div.Sort:='name';
    ado_depart.Open;ado_depart.Sort:='name';
    ado_pre.Open;ado_pre.Sort:='name';
    ado_serv.Open;ado_serv.Sort:='name';
    ado_preserv.Open;ado_preserv.Sort:='name';
    ado_mark.Open;ado_mark.Sort:='name';
    ado_typetc.Open;ado_typetc.Sort:='name';
    ado_model.Open;ado_model.Sort:='name';
    ado_source.Open;ado_source.Sort:='name';
    ado_group.Open;ado_group.Sort:='name';
    ado_dislok.Open;ado_dislok.Sort:='name';

    ado_typeDVC.Open;ado_typeDVC.Sort:='name';
    ado_manufactureTC.Open;ado_manufactureTC.Sort:='name';
end;
end;

procedure Tfrmreport.LbB_SearchClick(Sender: TObject);
var
reg_p,div_p,depart_p,pre_p,serv_p,mark_p,type_tc_p,source1_p,source2_p,group_p,preserv_p:integer;
model_p, numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,d1Rr,d2Rr:String;
OutD1_p,OutD2_p,N_insur,D_insur1,D_insur2:String;
State_p,State_priz,UotAc_p,life_p,id_dislok,arenda,spisat,fuel_p,notATX:integer;
str:String;
Ch:TCheckBox;
n_i:byte;
error:boolean;
modelDVC, VolumDVC:string;
typeDVC, manufactureTC:integer;
begin
error:=true;

for n_i:=26 downto 1 do
begin
    Ch:= TCheckBox(frmreport.FindComponent('CheckBox'+IntToStr(n_i)));
    if CH.Checked then error:=false;
end;
if not error then begin

if (reg_box.Checked) and (db_reg.Text<>'') then reg_p:=db_reg.KeyValue else reg_p:=-1;
if (div_box.Checked) and (db_div.Text<>'') then div_p:=db_div.KeyValue else div_p:=-1;
if (depart_box.Checked) and (db_depart.Text<>'') then depart_p:=db_depart.KeyValue else depart_p:=-1;
if (pre_depart_box.Checked) and (db_pre.Text<>'') then pre_p:=db_pre.KeyValue else pre_p:=-1;
if (serv_box.Checked) and (db_serv.Text<>'') then serv_p:=db_serv.KeyValue else serv_p:=-1;
if (mark_box.Checked) and (db_mark.Text<>'') then mark_p:=db_mark.KeyValue else mark_p:=-1;

if (TTypeTCBox.Checked) and (db_typetc.Text<>'') then type_tc_p:=db_typetc.KeyValue else type_tc_p:=-1;

if (model_box.Checked) and (db_model.Text<>'') then model_p:=Trim(db_model.Text) else model_p:='-1';
if (Source1_box.Checked) and (db_source1.Text<>'') then source1_p:=db_source1.KeyValue else source1_p:=-1;
if (Source2_box.Checked) and (db_source2.Text<>'') then source2_p:=db_source2.KeyValue else source2_p:=-1;
if (Group_box.Checked) and (db_group.Text<>'') then group_p:=db_group.KeyValue else group_p:=-1;
if (dislok_box.Checked) and (db_dislok.Text<>'') then id_dislok:=db_dislok.KeyValue else id_dislok:=-1;

if (numb1_box.Checked) and (numb1_edit.Text<>'') then numb1_p:=numb1_edit.Text else numb1_p:='-1';
if (numb2_box.Checked) and (numb2_edit.Text<>'') then numb2_p:=numb2_edit.Text else numb2_p:='-1';
if (oldNumbBox.Checked) and (oldnumb_edit.Text<>'') then oldnumb_p:=oldnumb_edit.Text else oldnumb_p:='-1';
if (year_box.Checked) and (Trim(year1.Text)<>'') and (length(Trim(year1.Text))>1) then
begin
year1_p:=Trim(year1.Text);
if (length(year1_p)=2) then if (StrToInt(year1_p)<=70) then year1_p:='20'+year1_p else year1_p:='19'+year1_p;
end else year1_p:='-1';
if (year_box.Checked) and (Trim(year2.Text)<>'') and (length(Trim(year2.Text))>1) then
begin
year2_p:=Trim(year2.Text);
if (length(year2_p)=2) then if (StrToInt(year2_p)<=70) then year2_p:='20'+year2_p else year2_p:='19'+year2_p;
end else year2_p:='-1';


if (vin_box.Checked) and (vin_edit.Text<>'') then vin_p:=vin_edit.Text else vin_p:='-1';
if (Neng_box.Checked) and (eng_edit.Text<>'') then Neng_p:=eng_edit.Text else Neng_p:='-1';
if (Nbody_box.Checked) and (body_edit.Text<>'') then Nbody_p:=body_edit.Text else Nbody_p:='-1';
if (NShas_box.Checked) and (shas_edit.Text<>'') then Nshas_p:=shas_edit.Text else Nshas_p:='-1';
if (Npts_box.Checked) and (pts_edit.Text<>'') then Npts_p:=pts_edit.Text else Npts_p:='-1';
if (InAccount_box.Checked) and (InAc1.Date<>0) then InAc1_p:=InAc1.Text else InAc1_p:='-1';
if (InAccount_box.Checked) and (InAc2.Date<>0) then InAc2_p:=InAc2.Text else InAc2_p:='-1';
if (insur_box.Checked) and (insur_edit.Text<>'') then N_insur:=insur_edit.Text else N_insur:='-1';
if (Date_Insur1.Date<>0) then D_insur1:=Date_Insur1.Text else D_insur1:='-1';
if (Date_Insur2.Date<>0) then D_insur2:=Date_Insur2.Text else D_insur2:='-1';
if State_box.Checked then State_p:=1 else State_p:=0;
if OutAccount_box.Checked then UotAc_p:=1 else UotAc_p:=0;
if life_box.Checked then life_p:=1 else life_p:=0;


if(State_box.Checked ) and (ComboBox2.Visible)  then  State_priz:=ComboBox2.ItemIndex else State_priz:=-1;



if d1R.Date<>0 then d1Rr:=FormatDateTime('dd.mm.yyyy',d1R.Date) else d1Rr:='-1';
if d2R.Date<>0 then d2Rr:=FormatDateTime('dd.mm.yyyy',d2R.Date) else d2Rr:='-1';

if OutD1.Date<>0 then OutD1_p:=OutD1.Text else OutD1_p:='-1';
if OutD2.Date<>0 then OutD2_p:=OutD2.Text else OutD2_p:='-1';
if TArenda.Checked then arenda:=1 else arenda:=-1;

if Spisat_box.Checked then spisat:=1 else spisat:=-1;
if (fuel_box.Checked) and (db_fuel.Text<>'') then fuel_p:=db_fuel.KeyValue else fuel_p:=-1;

if (preserv_box.Checked) and (db_preserv.Text<>'') then preserv_p:=db_preserv.KeyValue else preserv_p:=-1;

if TnotATX.Checked then notATX:=1 else notATX:=-1;

{4 новых в феврале 2016}
if (ModelDVC_box.Checked) and (modelDVC_edit.Text<>'') then modelDVC:=modelDVC_edit.Text else modelDVC:='-1';
if (VolumDVC_box.Checked) and (VolumDVC_edit.Text<>'') then volumDVC:=VolumDVC_edit.Text else volumDVC:='-1';
if (TypeDVC_box.Checked) and (db_typeDVC.Text<>'') then typeDVC:=db_typeDVC.KeyValue else typeDVC:=-1;
if (Manufacture_box.Checked) and (db_manufactureTC.Text<>'') then manufactureTC:=db_manufactureTC.KeyValue else manufactureTC:=-1;




Main.CreateReport(what,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,model_p,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,d1Rr,d2Rr,OutD1_p,OutD2_p,State_p,UotAc_p,life_p,N_insur,D_insur1,D_insur2,id_dislok,type_tc_p,arenda,spisat, fuel_p, preserv_p, notATX,-1,State_priz,modelDVC, volumDVC, typeDVC, manufactureTC,0);
//Close;
end else Main.ATXMessageDlg('Не выбраны поля!',1,mtError);
end;

procedure Tfrmreport.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmreport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
with dm do
begin
    ado_reg.Close;
    ado_div.Close;
    ado_depart.Close;
    ado_pre.Close;
    ado_serv.Close;
    ado_preserv.Close;
    ado_mark.Close;
    ado_model.Close;
    ado_source.Close;
    ado_type.Close;
    ado_tech.Close;
    ado_group.Close;
    ado_dislok.Close;
end;
end;

procedure Tfrmreport.Inventar;
begin
what:=0;
d1L.Visible:=false;
d2L.Visible:=false;
d1R.Visible:=false;
d2R.Visible:=false;
OutD1.Visible:=true;
OutD2.Visible:=true;
State_box.Visible:=true;
OutAccount_box.Visible:=true;
life_box.Visible:=true;
RadioButton1.Visible:=true;
Label5.Visible:=true;
Label6.Visible:=true;
dislok_box.Visible:=true;
db_dislok.Visible:=true;
TnotATX.Visible:=true;
Caption:='Выборка для отчета "Инвентаризация"';
end;


procedure Tfrmreport.NotOper3month;
begin
what:=62;
d1L.Visible:=true;
d2L.Visible:=true;
d1R.Visible:=true;
d2R.Visible:=true;
d1R.Date:=IncMonth(Now(), -3);
d2R.Date:=Now();
OutD1.Visible:=true;
OutD2.Visible:=true;
State_box.Visible:=true;
OutAccount_box.Visible:=true;
life_box.Visible:=true;
RadioButton1.Visible:=true;
Label5.Visible:=true;
Label6.Visible:=true;
dislok_box.Visible:=true;
db_dislok.Visible:=true;
TnotATX.Visible:=true;
Caption:='Выборка для отчета "Отсутствие ТО более 3 месяцев"';
end;

procedure Tfrmreport.LineNormGSM;
begin
what:=5;
d1L.Caption:='Год';
ComboBox1.Visible:=true;
ComboBox1.Text:=IntToStr(CurrentYear);
d1L.Visible:=false;
d2L.Visible:=false;
d1R.Visible:=false;

d1R.Date := EncodeDate(CurrentYear, 1,1);
d2R.Date := EncodeDate(CurrentYear, 12,31);

d2R.Visible:=false;
OutD1.Visible:=true;
OutD2.Visible:=true;
State_box.Visible:=true;
OutAccount_box.Visible:=true;
life_box.Visible:=true;
RadioButton1.Visible:=true;
Label5.Visible:=true;
Label6.Visible:=true;
dislok_box.Visible:=true;
db_dislok.Visible:=true;
TnotATX.Visible:=true;
Caption:='Выборка для отчета "Расчет линейных норм ГСМ"';
end;
procedure Tfrmreport.LineNormGSM2;
begin
what:=51;
d1L.Caption:='Год';
ComboBox1.Visible:=true;
ComboBox1.Text:=IntToStr(CurrentYear);
d1L.Visible:=false;
d2L.Visible:=false;
d1R.Visible:=false;

d1R.Date := EncodeDate(CurrentYear, 1,1);
d2R.Date := EncodeDate(CurrentYear, 12,31);

d2R.Visible:=false;
OutD1.Visible:=true;
OutD2.Visible:=true;
State_box.Visible:=true;
OutAccount_box.Visible:=true;
life_box.Visible:=true;
RadioButton1.Visible:=true;
Label5.Visible:=true;
Label6.Visible:=true;
dislok_box.Visible:=true;
db_dislok.Visible:=true;
TnotATX.Visible:=true;
Caption:='Выборка для отчета "Расчет линейных норм ГСМ по марке"';
end;
procedure Tfrmreport.Manufacture_boxClick(Sender: TObject);
begin
if Manufacture_box.Checked then
db_manufactureTC.Enabled:=true
else
db_manufactureTC.Enabled:=false;
end;

procedure Tfrmreport.Remont;
begin
what:=10;
d1L.Visible:=true;
d2L.Visible:=true;
d1R.Visible:=true;
d2R.Visible:=true;
OutD1.Visible:=true;
OutD2.Visible:=true;
State_box.Visible:=true;
OutAccount_box.Visible:=true;
life_box.Visible:=true;
RadioButton1.Visible:=true;
Label5.Visible:=true;
Label6.Visible:=true;
dislok_box.Visible:=true;
db_dislok.Visible:=true;
TnotATX.Visible:=true;
Caption:='Выборка для отчета "Ремонт"';
end;

procedure Tfrmreport.Expel_pokaz;
begin
what:=1;
d1L.Visible:=true;
d2L.Visible:=true;
d1R.Visible:=true;
d2R.Visible:=true;
OutD1.Visible:=false;
OutD2.Visible:=false;
State_box.Visible:=false;
OutAccount_box.Visible:=false;
life_box.Visible:=false;
RadioButton1.Visible:=false;
Label5.Visible:=false;
Label6.Visible:=false;
dislok_box.Visible:=true;
db_dislok.Visible:=true;
TnotATX.Visible:=true;
Caption:='Выборка для отчета "Эксплуатационные показатели (кратко)"';
end;

procedure Tfrmreport.ReportTO;
begin
what:=61;
d1L.Visible:=false;
d2L.Visible:=false;
d1R.Visible:=false;
d2R.Visible:=false;
OutD1.Visible:=true;
OutD2.Visible:=true;
State_box.Visible:=true;
OutAccount_box.Visible:=true;
life_box.Visible:=true;
RadioButton1.Visible:=true;
Label5.Visible:=true;
Label6.Visible:=true;
dislok_box.Visible:=true;
db_dislok.Visible:=true;
TnotATX.Visible:=true;
Caption:='Необходимо пройти ТО в текущем году';
end;

procedure Tfrmreport.State_boxClick(Sender: TObject);
begin
if (State_box.Checked) or (OutAccount_box.Checked) or (life_box.Checked) then begin
OutD1.Enabled:=true;
OutD2.Enabled:=true;
end
else begin
OutD1.Enabled:=false;
OutD2.Enabled:=false;
end;

if(State_box.Checked) and (what=0) then ComboBox2.Visible:=true
else
ComboBox2.Visible:=false;

end;

procedure Tfrmreport.RadioButton1Click(Sender: TObject);
begin
OutD1.Text:='';
OutD2.Text:='';
OutD1.Enabled:=false;
OutD2.Enabled:=false;
end;

procedure Tfrmreport.insur_boxClick(Sender: TObject);
begin
if insur_box.Checked then
insur_edit.Enabled:=true
else
insur_edit.Enabled:=false;
end;

procedure Tfrmreport.date_insur_boxClick(Sender: TObject);
begin
if date_insur_box.Checked then
begin
Date_Insur1.Enabled:=true;
Date_Insur2.Enabled:=true;
end
else
begin
Date_Insur1.Enabled:=false;
Date_Insur2.Enabled:=false;
end;
end;

procedure Tfrmreport.oldNumbBoxClick(Sender: TObject);
begin
if oldNumbBox.Checked then
oldnumb_edit.Enabled:=true
else
oldnumb_edit.Enabled:=false;

end;

procedure Tfrmreport.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure Tfrmreport.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure Tfrmreport.ComboBox1Change(Sender: TObject);
begin
d1R.Date := EncodeDate(StrToInt(ComboBox1.Text), 1,1);
d2R.Date := EncodeDate(StrToInt(ComboBox1.Text), 12,31);
end;

procedure Tfrmreport.model_boxClick(Sender: TObject);
begin
if db_mark.Text<>'' then
if model_box.Checked then
db_model.Enabled:=true
else
db_model.Enabled:=false;
end;

procedure Tfrmreport.db_markChange(Sender: TObject);
begin
dm.ado_model.Close;
try
dm.ado_model.Open;
except
dm.ado_model.Close;
end;
end;

procedure Tfrmreport.dislok_boxClick(Sender: TObject);
begin
if dislok_box.Checked then
db_dislok.Enabled:=true
else
db_dislok.Enabled:=false;
end;



procedure Tfrmreport.TTypeTCBoxClick(Sender: TObject);
begin
if TTypeTCBox.Checked then
db_typetc.Enabled:=true
else
db_typetc.Enabled:=false;

end;

procedure Tfrmreport.TypeDVC_boxClick(Sender: TObject);
begin
if TypeDVC_box.Checked then
db_typeDVC.Enabled:=true
else
db_typeDVC.Enabled:=false;
end;

procedure Tfrmreport.fuel_boxClick(Sender: TObject);
begin
if fuel_box.Checked then
db_fuel.Enabled:=true
else
db_fuel.Enabled:=false;
end;

procedure Tfrmreport.preserv_boxClick(Sender: TObject);
begin
if preserv_box.Checked then
db_preserv.Enabled:=true
else
db_preserv.Enabled:=false;
end;

end.
