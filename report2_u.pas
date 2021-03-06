unit report2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbSpeedButton, ExtCtrls, LbStaticText, StdCtrls, Mask,
  RxLookup, LbButton,DateUtils, rxPlacemnt, rxToolEdit;

type
  Tfrmreport2 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox6: TGroupBox;
    LbB_Search: TLbButton;
    ScrollBox1: TScrollBox;
    year_box: TCheckBox;
    vin_edit: TEdit;
    vin_box: TCheckBox;
    State_box: TCheckBox;
    Source2_box: TCheckBox;
    Source1_box: TCheckBox;
    shas_edit: TEdit;
    serv_box: TCheckBox;
    reg_box: TCheckBox;
    pts_edit: TEdit;
    pre_depart_box: TCheckBox;
    OutAccount_box: TCheckBox;
    numb2_edit: TEdit;
    numb2_box: TCheckBox;
    numb1_edit: TEdit;
    numb1_box: TCheckBox;
    NShas_box: TCheckBox;
    Npts_box: TCheckBox;
    Neng_box: TCheckBox;
    Nbody_box: TCheckBox;
    mark_box: TCheckBox;
    life_box: TCheckBox;
    InAccount_box: TCheckBox;
    InAc2: TDateEdit;
    InAc1: TDateEdit;
    Group_box: TCheckBox;
    eng_edit: TEdit;
    div_box: TCheckBox;
    depart_box: TCheckBox;
    db_source2: TRxDBLookupCombo;
    db_source1: TRxDBLookupCombo;
    db_serv: TRxDBLookupCombo;
    db_reg: TRxDBLookupCombo;
    db_pre: TRxDBLookupCombo;
    db_mark: TRxDBLookupCombo;
    db_group: TRxDBLookupCombo;
    db_div: TRxDBLookupCombo;
    db_depart: TRxDBLookupCombo;
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
    oldNumbBox: TCheckBox;
    old_namb_text: TEdit;
    model_box: TCheckBox;
    db_model: TRxDBLookupCombo;
    dislok_box: TCheckBox;
    db_dislok: TRxDBLookupCombo;
    preserv_box: TCheckBox;
    db_preserv: TRxDBLookupCombo;
    TnotATX: TCheckBox;
    year1: TMaskEdit;
    year2: TMaskEdit;
    gsm_box: TCheckBox;
    db_gsm: TRxDBLookupCombo;
    TTypeTCBox: TCheckBox;
    db_typetc: TRxDBLookupCombo;
    RadioGroup1: TRadioGroup;
    RadioHowSelect0: TRadioButton;
    RadioHowSelect1: TRadioButton;
    RadioHowSelect2: TRadioButton;
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
    procedure oldNumbBoxClick(Sender: TObject);
    procedure model_boxClick(Sender: TObject);
    procedure db_markChange(Sender: TObject);
    procedure dislok_boxClick(Sender: TObject);
    procedure preserv_boxClick(Sender: TObject);
    procedure gsm_boxClick(Sender: TObject);
    procedure TTypeTCBoxClick(Sender: TObject);


  private
    { Private declarations }
  public
    what:byte;



    procedure osago_1(num_rep:integer);

  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmreport2: Tfrmreport2;

implementation

uses main_u, dm_u;

{$R *.dfm}



procedure Tfrmreport2.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
end;

procedure Tfrmreport2.bclClick(Sender: TObject);
begin
//save size
SearchStorage.SaveFormPlacement;
Close;
end;

procedure Tfrmreport2.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrmreport2.FormShow(Sender: TObject);
var
Layout: array[0.. KL_NAMELENGTH] of char;
begin
LoadKeyboardLayout( StrCopy(Layout,'00000419'),KLF_ACTIVATE);
if SearchStorage.ReadInteger('Visible',1)<>1 then
SearchStorage.RestoreFormPlacement
else
begin
frmreport2.Left:=Main.Left+5;
frmreport2.Top:=Main.Top+88;
end;

{case what of
2:numb1_edit.SetFocus;
end; }

end;

procedure Tfrmreport2.reg_boxClick(Sender: TObject);
begin
if reg_box.Checked then
db_reg.Enabled:=true
else
db_reg.Enabled:=false;
end;

procedure Tfrmreport2.div_boxClick(Sender: TObject);
begin
if div_box.Checked then
db_div.Enabled:=true
else
db_div.Enabled:=false;
end;

procedure Tfrmreport2.depart_boxClick(Sender: TObject);
begin
if depart_box.Checked then
db_depart.Enabled:=true
else
db_depart.Enabled:=false;
end;

procedure Tfrmreport2.pre_depart_boxClick(Sender: TObject);
begin
if pre_depart_box.Checked then
db_pre.Enabled:=true
else
db_pre.Enabled:=false;
end;

procedure Tfrmreport2.serv_boxClick(Sender: TObject);
begin
if serv_box.Checked then
db_serv.Enabled:=true
else
db_serv.Enabled:=false;
end;

procedure Tfrmreport2.mark_boxClick(Sender: TObject);
begin
//if db_mark.Text<>'' then
if mark_box.Checked then
db_mark.Enabled:=true
else
begin
db_mark.Enabled:=false;
db_model.Enabled:=false;
model_box.Checked:=false;
end;
end;

procedure Tfrmreport2.numb1_boxClick(Sender: TObject);
begin
if numb1_box.Checked then
numb1_edit.Enabled:=true
else
numb1_edit.Enabled:=false;
end;

procedure Tfrmreport2.numb2_boxClick(Sender: TObject);
begin
if numb2_box.Checked then
numb2_edit.Enabled:=true
else
numb2_edit.Enabled:=false;
end;

procedure Tfrmreport2.year_boxClick(Sender: TObject);
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

procedure Tfrmreport2.vin_boxClick(Sender: TObject);
begin
if vin_box.Checked then
vin_edit.Enabled:=true
else
vin_edit.Enabled:=false;
end;

procedure Tfrmreport2.Neng_boxClick(Sender: TObject);
begin
if Neng_box.Checked then
eng_edit.Enabled:=true
else
eng_edit.Enabled:=false;
end;

procedure Tfrmreport2.Nbody_boxClick(Sender: TObject);
begin
if Nbody_box.Checked then
body_edit.Enabled:=true
else
body_edit.Enabled:=false;
end;

procedure Tfrmreport2.NShas_boxClick(Sender: TObject);
begin
if NShas_box.Checked then
shas_edit.Enabled:=true
else
shas_edit.Enabled:=false;
end;

procedure Tfrmreport2.Npts_boxClick(Sender: TObject);
begin
if Npts_box.Checked then
pts_edit.Enabled:=true
else
pts_edit.Enabled:=false;
end;

procedure Tfrmreport2.Source1_boxClick(Sender: TObject);
begin
if Source1_box.Checked then
db_source1.Enabled:=true
else
db_source1.Enabled:=false;
end;

procedure Tfrmreport2.Source2_boxClick(Sender: TObject);
begin
if Source2_box.Checked then
db_source2.Enabled:=true
else
db_source2.Enabled:=false;
end;

procedure Tfrmreport2.TTypeTCBoxClick(Sender: TObject);
begin
if TTypeTCBox.Checked then
db_typetc.Enabled:=true
else
db_typetc.Enabled:=false;
end;

procedure Tfrmreport2.Group_boxClick(Sender: TObject);
begin
if Group_box.Checked then
db_group.Enabled:=true
else
db_group.Enabled:=false;
end;

procedure Tfrmreport2.gsm_boxClick(Sender: TObject);
begin
if gsm_box.Checked then
db_gsm.Enabled:=true
else
db_gsm.Enabled:=false;
end;

procedure Tfrmreport2.InAccount_boxClick(Sender: TObject);
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

procedure Tfrmreport2.FormCreate(Sender: TObject);
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
    ado_model.Open;ado_model.Sort:='name';
    ado_source.Open;ado_source.Sort:='name';
    ado_type.Open;ado_type.Sort:='name';
    ado_tech.Open;ado_tech.Sort:='name';
    ado_group.Open;ado_group.Sort:='name';
    ado_dislok.Open;ado_dislok.Sort:='name';
    ado_typetc.Open;ado_typetc.Sort:='name';
    tTypeDVC.Open;ado_typetc.Sort:='name';
end;
end;

procedure Tfrmreport2.LbB_SearchClick(Sender: TObject);
var
reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,preserv_p:integer;
model_p,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,d1Rr,d2Rr,N_insur,D_insur:String;
State_p,UotAc_p,life_p,id_dislok,notATX,id_gsm,type_tc_p:integer;
guilty,injured,id_rem_place:integer;
OutD1_p,OutD2_p:String;
howselect:integer;
begin
if (reg_box.Checked) and (db_reg.Text<>'') then reg_p:=db_reg.KeyValue else reg_p:=-1;
if (div_box.Checked) and (db_div.Text<>'') then div_p:=db_div.KeyValue else div_p:=-1;
if (depart_box.Checked) and (db_depart.Text<>'') then depart_p:=db_depart.KeyValue else depart_p:=-1;
if (pre_depart_box.Checked) and (db_pre.Text<>'') then pre_p:=db_pre.KeyValue else pre_p:=-1;
if (serv_box.Checked) and (db_serv.Text<>'') then serv_p:=db_serv.KeyValue else serv_p:=-1;
if (mark_box.Checked) and (db_mark.Text<>'') then mark_p:=db_mark.KeyValue else mark_p:=-1;
if (model_box.Checked) and (db_model.Text<>'') then model_p:=Trim(db_model.Text) else model_p:='-1';
if (Source1_box.Checked) and (db_source1.Text<>'') then source1_p:=db_source1.KeyValue else source1_p:=-1;
if (Source2_box.Checked) and (db_source2.Text<>'') then source2_p:=db_source2.KeyValue else source2_p:=-1;
if (Group_box.Checked) and (db_group.Text<>'') then group_p:=db_group.KeyValue else group_p:=-1;

if (numb1_box.Checked) and (numb1_edit.Text<>'') then numb1_p:=numb1_edit.Text else numb1_p:='-1';
if (numb2_box.Checked) and (numb2_edit.Text<>'') then numb2_p:=numb2_edit.Text else numb2_p:='-1';
if (oldNumbBox.Checked) and (old_namb_text.Text<>'') then oldnumb_p:=old_namb_text.Text else oldnumb_p:='-1';
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

if State_box.Checked then State_p:=1 else State_p:=0;
if OutAccount_box.Checked then UotAc_p:=1 else UotAc_p:=0;
if life_box.Checked then life_p:=1 else life_p:=0;

if d1R.Date<>0 then d1Rr:=FormatDateTime('dd.mm.yyyy',d1R.Date) else d1Rr:='-1';
if d2R.Date<>0 then d2Rr:=FormatDateTime('dd.mm.yyyy',d2R.Date) else d2Rr:='-1';

if (dislok_box.Checked) and (db_dislok.Text<>'') then id_dislok:=db_dislok.KeyValue else id_dislok:=-1;
if (preserv_box.Checked) and (db_preserv.Text<>'') then preserv_p:=db_preserv.KeyValue else preserv_p:=-1;


if (gsm_box.Checked) and (db_gsm.Text<>'') then id_gsm:=db_gsm.KeyValue else id_gsm:=-1;

if TnotATX.Checked then notATX:=1 else notATX:=-1;

if (TTypeTCBox.Checked) and (db_typetc.Text<>'') then type_tc_p:=db_typetc.KeyValue else type_tc_p:=-1;

{������ � ��������, ��� ������, ��� �������}
howselect:=0;
if RadioHowSelect0.Checked then howselect:=0;
if RadioHowSelect1.Checked then howselect:=1;
if RadioHowSelect2.Checked then howselect:=2;

if what=3 then howselect:=3;





Main.CreateReport(what,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,model_p,numb1_p,numb2_p,oldnumb_p,
year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,d1Rr,d2Rr,'-1','-1',State_p,UotAc_p,life_p,'-1','-1','-1',
id_dislok,type_tc_p,-1,-1,-1,preserv_p,notATX,id_gsm,-1,'-1','-1',-1,-1, howselect);

end;

procedure Tfrmreport2.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmreport2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
with dm do
begin
    ado_reg.Close;
    ado_div.Close;
    ado_depart.Close;
    ado_pre.Close;
    ado_serv.Close;
    ado_mark.Close;
    ado_model.Close;
    ado_source.Close;
    ado_type.Close;
    ado_tech.Close;
    ado_group.Close;
    ado_preserv.Close;
end;
end;
procedure Tfrmreport2.osago_1(num_rep:integer);
begin
what:=num_rep;
State_box.Visible:=false;
OutAccount_box.Visible:=false;
life_box.Visible:=false;
//numb1_box.Checked:=true;
//numb1_edit.Enabled:=true;
if what=1 then begin
  Caption:='����� - ������ ������';
  d1L.Caption:='��������� ������ � ';
  d1L.Left:=8;
  LbB_Search.Caption:='������� �����';
end;
if what=3 then begin
  Caption:='����� - �� ����������� ������';
  d1L.Visible:=false;d2L.Visible:=false;
  d1R.Visible:=false;d2R.Visible:=false;
  RadioGroup1.Visible:=false;
  RadioHowSelect0.Visible:=RadioGroup1.Visible;
    RadioHowSelect1.Visible:=RadioGroup1.Visible;
      RadioHowSelect2.Visible:=RadioGroup1.Visible;
  LbB_Search.Caption:='������� �����';
end;
if what=2 then begin
  Caption:='������ ��������� � ����������';
  d1L.Caption:='��������� ������ � ';
  d1R.Date:=Now;
    d2R.Date:=Now;
    LbB_Search.Caption:='���������';
  d1L.Left:=8;
  case Main.UserRole of
    USER_USER: LbB_Search.Enabled:=false;
  end;
end;

if what=4 then begin
  Caption:='����� - ������� ������� ������';
  d1L.Caption:='��������� ������ � ';
  d1L.Left:=8;
  d2L.Visible:=false;
  d2R.Visible:=false;
  RadioGroup1.Visible:=false;
  RadioHowSelect0.Visible:=false;
  RadioHowSelect1.Visible:=false;
  RadioHowSelect2.Visible:=false;
  LbB_Search.Caption:='������� �����';
end;

end;






procedure Tfrmreport2.oldNumbBoxClick(Sender: TObject);
begin
if oldNumbBox.Checked then
old_namb_text.Enabled:=true
else
old_namb_text.Enabled:=false;

end;

procedure Tfrmreport2.model_boxClick(Sender: TObject);
begin
if db_mark.Text<>'' then
if model_box.Checked then
db_model.Enabled:=true
else
db_model.Enabled:=false;
end;

procedure Tfrmreport2.db_markChange(Sender: TObject);
begin
dm.ado_model.Close;
try
dm.ado_model.Open;
except
dm.ado_model.Close;
end;
end;

procedure Tfrmreport2.dislok_boxClick(Sender: TObject);
begin
if dislok_box.Checked then
db_dislok.Enabled:=true
else
db_dislok.Enabled:=false;
end;

procedure Tfrmreport2.preserv_boxClick(Sender: TObject);
begin
if preserv_box.Checked then
db_preserv.Enabled:=true
else
db_preserv.Enabled:=false;
end;

end.
