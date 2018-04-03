unit search_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbSpeedButton, ExtCtrls, LbStaticText, StdCtrls, Mask,
  RxLookup, LbButton,DateUtils, rxPlacemnt, rxToolEdit;

type
  Tfrmsearch = class(TForm)
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
    LbButton2: TLbButton;
    State_box: TRadioButton;
    OutAccount_box: TRadioButton;
    life_box: TRadioButton;
    RadioButton1: TRadioButton;
    Label5: TLabel;
    Label6: TLabel;
    OutD1: TDateEdit;
    OutD2: TDateEdit;
    model_box: TCheckBox;
    insur_box: TCheckBox;
    insur_edit: TEdit;
    Date_Insur: TDateEdit;
    date_insur_box: TCheckBox;
    dislok_box: TCheckBox;
    db_dislok: TRxDBLookupCombo;
    oldNumBox: TCheckBox;
    old_number: TEdit;
    model_edit: TRxDBLookupCombo;
    preserv_box: TCheckBox;
    db_preserv: TRxDBLookupCombo;
    TnotATX: TCheckBox;
    year1: TMaskEdit;
    year2: TMaskEdit;
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
    procedure model_boxClick(Sender: TObject);
    procedure insur_boxClick(Sender: TObject);
    procedure date_insur_boxClick(Sender: TObject);
    procedure dislok_boxClick(Sender: TObject);
    procedure oldNumBoxClick(Sender: TObject);
    procedure db_markChange(Sender: TObject);
    procedure preserv_boxClick(Sender: TObject);
  private
    what:integer;
  public
    procedure Search;
    procedure List_Avto;
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmsearch: Tfrmsearch;

implementation

uses main_u, dm_u;

{$R *.dfm}
procedure Tfrmsearch.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
  with Params do
  begin
    Style := Style or ws_Overlapped;
    WndParent := Main.Handle;
//    Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
  end;

end;

procedure Tfrmsearch.bclClick(Sender: TObject);
begin
//save size
SearchStorage.SaveFormPlacement;
Close;
end;

procedure Tfrmsearch.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrmsearch.FormShow(Sender: TObject);
var
Layout: array[0.. KL_NAMELENGTH] of char;
//i:integer;
begin
//////////////////////////////////////
{
востанавливаем состояние формы
}
if Main.searchForm[1,1]=1 then
db_reg.KeyValue:=Main.searchForm[2,1];
if Main.searchForm[1,2]=1 then
db_div.KeyValue:=Main.searchForm[2,2];
if Main.searchForm[1,3]=1 then
db_depart.KeyValue:=Main.searchForm[2,3];
if Main.searchForm[1,4]=1 then
db_pre.KeyValue:=Main.searchForm[2,4];
if Main.searchForm[1,5]=1 then
db_serv.KeyValue:=Main.searchForm[2,5];
if Main.searchForm[1,6]=1 then
db_dislok.KeyValue:=Main.searchForm[2,6];
if Main.searchForm[1,7]=1 then
db_mark.KeyValue:=Main.searchForm[2,7];
if Main.searchForm[1,8]=1 then
db_source1.KeyValue:=Main.searchForm[2,8];
if Main.searchForm[1,9]=1 then
db_source2.KeyValue:=Main.searchForm[2,9];
if Main.searchForm[1,10]=1 then
db_group.KeyValue:=Main.searchForm[2,10];
if Main.searchForm[1,11]=1 then
begin
model_edit.KeyValue:=Main.searchForm[2,11];
model_edit.Enabled:=true;
end;

/////////////////////////////////////

LoadKeyboardLayout( StrCopy(Layout,'00000419'),KLF_ACTIVATE);
if SearchStorage.ReadInteger('Visible',1)<>1 then
SearchStorage.RestoreFormPlacement
else
begin
frmsearch.Left:=Main.Left+5;
frmsearch.Top:=Main.Top+88;
end;


end;

procedure Tfrmsearch.Search;
begin
what:=100;
LbB_Search.Caption:='Начать поиск';
end;
procedure Tfrmsearch.List_Avto;
begin
what:=101;
LbB_Search.Caption:='Список';
State_box.Visible:=false;
OutAccount_box.Visible:=false;
life_box.Visible:=false;
RadioButton1.Visible:=false;
end;

procedure Tfrmsearch.reg_boxClick(Sender: TObject);
begin
if reg_box.Checked then
db_reg.Enabled:=true
else
db_reg.Enabled:=false;
end;

procedure Tfrmsearch.div_boxClick(Sender: TObject);
begin
if div_box.Checked then
db_div.Enabled:=true
else
db_div.Enabled:=false;
end;

procedure Tfrmsearch.depart_boxClick(Sender: TObject);
begin
if depart_box.Checked then
db_depart.Enabled:=true
else
db_depart.Enabled:=false;
end;

procedure Tfrmsearch.pre_depart_boxClick(Sender: TObject);
begin
if pre_depart_box.Checked then
db_pre.Enabled:=true
else
db_pre.Enabled:=false;
end;

procedure Tfrmsearch.serv_boxClick(Sender: TObject);
begin
if serv_box.Checked then
db_serv.Enabled:=true
else
db_serv.Enabled:=false;
end;

procedure Tfrmsearch.mark_boxClick(Sender: TObject);
begin
if mark_box.Checked then
db_mark.Enabled:=true
else
db_mark.Enabled:=false;
end;

procedure Tfrmsearch.numb1_boxClick(Sender: TObject);
begin
if numb1_box.Checked then
numb1_edit.Enabled:=true
else
numb1_edit.Enabled:=false;
end;

procedure Tfrmsearch.numb2_boxClick(Sender: TObject);
begin
if numb2_box.Checked then
numb2_edit.Enabled:=true
else
numb2_edit.Enabled:=false;
end;

procedure Tfrmsearch.year_boxClick(Sender: TObject);
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

procedure Tfrmsearch.vin_boxClick(Sender: TObject);
begin
if vin_box.Checked then
vin_edit.Enabled:=true
else
vin_edit.Enabled:=false;
end;

procedure Tfrmsearch.Neng_boxClick(Sender: TObject);
begin
if Neng_box.Checked then
eng_edit.Enabled:=true
else
eng_edit.Enabled:=false;
end;

procedure Tfrmsearch.Nbody_boxClick(Sender: TObject);
begin
if Nbody_box.Checked then
body_edit.Enabled:=true
else
body_edit.Enabled:=false;
end;

procedure Tfrmsearch.NShas_boxClick(Sender: TObject);
begin
if NShas_box.Checked then
shas_edit.Enabled:=true
else
shas_edit.Enabled:=false;
end;

procedure Tfrmsearch.Npts_boxClick(Sender: TObject);
begin
if Npts_box.Checked then
pts_edit.Enabled:=true
else
pts_edit.Enabled:=false;
end;

procedure Tfrmsearch.Source1_boxClick(Sender: TObject);
begin
if Source1_box.Checked then
db_source1.Enabled:=true
else
db_source1.Enabled:=false;
end;

procedure Tfrmsearch.Source2_boxClick(Sender: TObject);
begin
if Source2_box.Checked then
db_source2.Enabled:=true
else
db_source2.Enabled:=false;
end;

procedure Tfrmsearch.Group_boxClick(Sender: TObject);
begin
if Group_box.Checked then
db_group.Enabled:=true
else
db_group.Enabled:=false;
end;

procedure Tfrmsearch.InAccount_boxClick(Sender: TObject);
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

procedure Tfrmsearch.FormCreate(Sender: TObject);
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
    ado_source.Open;ado_source.Sort:='name';
    //ado_type.Open;ado_type.Sort:='name';
    //ado_tech.Open;ado_tech.Sort:='name';
    ado_group.Open;ado_group.Sort:='name';
    ado_dislok.Open;ado_dislok.Sort:='name';
end;
end;

procedure Tfrmsearch.LbB_SearchClick(Sender: TObject);
var
reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,dislok_p,preserv_p,notATX_p:integer;
model,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,N_insur:String;
OutD1_p,OutD2_p,D_insur:String;
State_p,UotAc_p,life_p:integer;
//str:String;
begin
if (reg_box.Checked) and (db_reg.Text<>'') then reg_p:=db_reg.KeyValue else reg_p:=-1;
if (div_box.Checked) and (db_div.Text<>'') then div_p:=db_div.KeyValue else div_p:=-1;
if (depart_box.Checked) and (db_depart.Text<>'') then depart_p:=db_depart.KeyValue else depart_p:=-1;
if (pre_depart_box.Checked) and (db_pre.Text<>'') then pre_p:=db_pre.KeyValue else pre_p:=-1;
if (serv_box.Checked) and (db_serv.Text<>'') then serv_p:=db_serv.KeyValue else serv_p:=-1;
if (preserv_box.Checked) and (db_preserv.Text<>'') then preserv_p:=db_preserv.KeyValue else preserv_p:=-1;

if (dislok_box.Checked) and (db_dislok.Text<>'') then dislok_p:=db_dislok.KeyValue else dislok_p:=-1;
if (mark_box.Checked) and (db_mark.Text<>'') then mark_p:=db_mark.KeyValue else mark_p:=-1;
if (Source1_box.Checked) and (db_source1.Text<>'') then source1_p:=db_source1.KeyValue else source1_p:=-1;
if (Source2_box.Checked) and (db_source2.Text<>'') then source2_p:=db_source2.KeyValue else source2_p:=-1;
if (Group_box.Checked) and (db_group.Text<>'') then group_p:=db_group.KeyValue else group_p:=-1;

if (model_box.Checked) and (model_edit.Text<>'') then model:=Trim(model_edit.Text) else model:='-1';
if (numb1_box.Checked) and (numb1_edit.Text<>'') then numb1_p:=numb1_edit.Text else numb1_p:='-1';
if (numb2_box.Checked) and (numb2_edit.Text<>'') then numb2_p:=numb2_edit.Text else numb2_p:='-1';
if (oldNumBox.Checked) and (old_number.Text<>'') then oldnumb_p:=old_number.Text else oldnumb_p:='-1';
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
if (insur_box.Checked) and (insur_edit.Text<>'') then N_insur:=insur_edit.Text else N_insur:='-1';
if (date_insur_box.Checked) and (Date_Insur.Date<>0) then D_insur:=Date_Insur.Text else D_insur:='-1';

if (InAccount_box.Checked) and (InAc1.Date<>0) then InAc1_p:=InAc1.Text else InAc1_p:='-1';
if (InAccount_box.Checked) and (InAc2.Date<>0) then InAc2_p:=InAc2.Text else InAc2_p:='-1';

if OutD1.Date<>0 then OutD1_p:=OutD1.Text else OutD1_p:='-1';
if OutD2.Date<>0 then OutD2_p:=OutD2.Text else OutD2_p:='-1';
if TnotATX.Checked then notATX_p:=1 else notATX_p:=-1;

if what=100 then
begin
if State_box.Checked then State_p:=1 else State_p:=0;
if OutAccount_box.Checked then UotAc_p:=1 else UotAc_p:=0;
if life_box.Checked then life_p:=1 else life_p:=0;
if RadioButton1.Checked then
begin
{State_p:=-1;
UotAc_p:=-1;
life_p:=-1;  }
end;
Main.CreateAvtoCard(0,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,dislok_p,model,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,OutD1_p,OutD2_p,State_p,UotAc_p,life_p,N_insur,D_insur,preserv_p,notATX_p);
Application.ProcessMessages;
end;
if what=101 then
Main.CreateAvtoList(reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,0,0,0,N_insur,D_insur);
Application.ProcessMessages;
Close;
end;

procedure Tfrmsearch.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmsearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (reg_box.Checked) and (db_reg.Text<>'') then begin Main.searchForm[1,1]:=1;Main.searchForm[2,1]:=db_reg.KeyValue end else Main.searchForm[1,1]:=0;
if (div_box.Checked) and (db_div.Text<>'') then begin Main.searchForm[1,2]:=1;Main.searchForm[2,2]:=db_div.KeyValue end else Main.searchForm[1,2]:=0;
if (depart_box.Checked) and (db_depart.Text<>'') then begin Main.searchForm[1,3]:=1;Main.searchForm[2,3]:=db_depart.KeyValue end else Main.searchForm[1,3]:=0;
if (pre_depart_box.Checked) and (db_pre.Text<>'') then begin Main.searchForm[1,4]:=1;Main.searchForm[2,4]:=db_pre.KeyValue end else Main.searchForm[1,4]:=0;
if (serv_box.Checked) and (db_serv.Text<>'') then begin Main.searchForm[1,5]:=1;Main.searchForm[2,5]:=db_serv.KeyValue end else Main.searchForm[1,5]:=0;
if (dislok_box.Checked) and (db_dislok.Text<>'') then begin Main.searchForm[1,6]:=1;Main.searchForm[2,6]:=db_dislok.KeyValue end else Main.searchForm[1,6]:=0;
if (mark_box.Checked) and (db_mark.Text<>'') then begin Main.searchForm[1,7]:=1;Main.searchForm[2,7]:=db_mark.KeyValue end else Main.searchForm[1,7]:=0;
if (Source1_box.Checked) and (db_source1.Text<>'') then begin Main.searchForm[1,8]:=1;Main.searchForm[2,8]:=db_source1.KeyValue end else Main.searchForm[1,8]:=0;
if (Source2_box.Checked) and (db_source2.Text<>'') then begin Main.searchForm[1,9]:=1;Main.searchForm[2,9]:=db_source2.KeyValue end else Main.searchForm[1,9]:=0;
if (Group_box.Checked) and (db_group.Text<>'') then begin Main.searchForm[1,10]:=1;Main.searchForm[2,10]:=db_group.KeyValue end else Main.searchForm[1,10]:=0;
if (model_box.Checked) and (model_edit.Text<>'') then begin Main.searchForm[1,11]:=1;Main.searchForm[2,11]:=model_edit.KeyValue end else Main.searchForm[1,11]:=0;

with dm do
begin
if what=100 then
begin
    ado_reg.Close;
    ado_div.Close;
    ado_depart.Close;
    ado_pre.Close;
    ado_serv.Close;
    ado_preserv.Close;
end;
    ado_mark.Close;
    ado_source.Close;
    ado_type.Close;
    ado_tech.Close;
    ado_group.Close;
end;
end;

procedure Tfrmsearch.State_boxClick(Sender: TObject);
begin
if (State_box.Checked) or (OutAccount_box.Checked) or (life_box.Checked) then begin
OutD1.Enabled:=true;
OutD2.Enabled:=true;
end
else begin
OutD1.Enabled:=false;
OutD2.Enabled:=false;
end;

end;

procedure Tfrmsearch.RadioButton1Click(Sender: TObject);
begin
OutD1.Text:='';
OutD2.Text:='';
OutD1.Enabled:=false;
OutD2.Enabled:=false;

end;

procedure Tfrmsearch.model_boxClick(Sender: TObject);
begin
if db_mark.Text<>'' then
if model_box.Checked then
model_edit.Enabled:=true
else
model_edit.Enabled:=false;
end;

procedure Tfrmsearch.insur_boxClick(Sender: TObject);
begin
if insur_box.Checked then
insur_edit.Enabled:=true
else
insur_edit.Enabled:=false;
end;

procedure Tfrmsearch.date_insur_boxClick(Sender: TObject);
begin
if date_insur_box.Checked then
Date_Insur.Enabled:=true
else
Date_Insur.Enabled:=false;
end;

procedure Tfrmsearch.dislok_boxClick(Sender: TObject);
begin
if dislok_box.Checked then
db_dislok.Enabled:=true
else
db_dislok.Enabled:=false;

end;

procedure Tfrmsearch.oldNumBoxClick(Sender: TObject);
begin
if oldNumBox.Checked then
old_number.Enabled:=true
else
old_number.Enabled:=false;
end;

procedure Tfrmsearch.db_markChange(Sender: TObject);
begin
dm.ado_model.Close;
try
dm.ado_model.Open;
except
dm.ado_model.Close;
end;
end;

procedure Tfrmsearch.preserv_boxClick(Sender: TObject);
begin
if preserv_box.Checked then
db_preserv.Enabled:=true
else
db_preserv.Enabled:=false;
end;

end.
