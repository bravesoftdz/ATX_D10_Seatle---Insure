unit print_shtate_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbSpeedButton, ExtCtrls, StdCtrls,  RxLookup, Mask,
  LbButton, LbStaticText, rxPlacemnt;

type
  TPrint_shtate = class(TForm)
    GroupBox6: TGroupBox;
    LbB_Search: TLbButton;
    LbButton2: TLbButton;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    serv_box: TCheckBox;
    reg_box: TCheckBox;
    pre_depart_box: TCheckBox;
    div_box: TCheckBox;
    depart_box: TCheckBox;
    db_serv: TRxDBLookupCombo;
    db_reg: TRxDBLookupCombo;
    db_pre: TRxDBLookupCombo;
    db_div: TRxDBLookupCombo;
    db_depart: TRxDBLookupCombo;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    preserv_box: TCheckBox;
    db_preserv: TRxDBLookupCombo;
    procedure bclClick(Sender: TObject);
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure reg_boxClick(Sender: TObject);
    procedure div_boxClick(Sender: TObject);
    procedure depart_boxClick(Sender: TObject);
    procedure pre_depart_boxClick(Sender: TObject);
    procedure serv_boxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LbB_SearchClick(Sender: TObject);
    procedure preserv_boxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  Print_shtate: TPrint_shtate;

implementation

uses main_u, dm_u;

{$R *.dfm}
procedure TPrint_shtate.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
  with Params do
  begin
    Style := Style or ws_Overlapped;
    WndParent := Main.Handle;
    //Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
  end;

end;

procedure TPrint_shtate.bclClick(Sender: TObject);
begin
Close;
end;

procedure TPrint_shtate.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TPrint_shtate.FormShow(Sender: TObject);
var
Layout: array[0.. KL_NAMELENGTH] of char;
begin
LoadKeyboardLayout( StrCopy(Layout,'00000419'),KLF_ACTIVATE);
Print_shtate.Left:=Main.Left+5;
Print_shtate.Top:=Main.Top+88;




end;

procedure TPrint_shtate.reg_boxClick(Sender: TObject);
begin
if reg_box.Checked then
db_reg.Enabled:=true
else
db_reg.Enabled:=false;
end;

procedure TPrint_shtate.div_boxClick(Sender: TObject);
begin
if div_box.Checked then
db_div.Enabled:=true
else
db_div.Enabled:=false;
end;

procedure TPrint_shtate.depart_boxClick(Sender: TObject);
begin
if depart_box.Checked then
db_depart.Enabled:=true
else
db_depart.Enabled:=false;
end;

procedure TPrint_shtate.pre_depart_boxClick(Sender: TObject);
begin
if pre_depart_box.Checked then
db_pre.Enabled:=true
else
db_pre.Enabled:=false;
end;

procedure TPrint_shtate.serv_boxClick(Sender: TObject);
begin
if serv_box.Checked then
db_serv.Enabled:=true
else
db_serv.Enabled:=false;
end;

procedure TPrint_shtate.FormCreate(Sender: TObject);
begin
with dm do
begin
    ado_reg.Open;ado_reg.Sort:='name';
    ado_div.Open;ado_div.Sort:='name';
    ado_depart.Open;ado_depart.Sort:='name';
    ado_pre.Open;ado_pre.Sort:='name';
    ado_serv.Open;ado_serv.Sort:='name';
    ado_preserv.Open;ado_preserv.Sort:='name';
end;

end;

procedure TPrint_shtate.LbB_SearchClick(Sender: TObject);
var
id_reg,id_div,id_depart,id_pred,id_serv,id_preserv:integer;
begin
id_reg:=0;id_div:=0;id_depart:=0;id_pred:=0;id_serv:=0;
if not reg_box.Checked then id_reg:=0 else if db_reg.Text='' then id_reg:=0 else id_reg:=db_reg.KeyValue;
if not div_box.Checked then id_div:=0 else if db_div.Text='' then id_div:=0 else id_div:=db_div.KeyValue;
if not depart_box.Checked then id_depart:=0 else if db_depart.Text='' then id_depart:=0 else id_depart:=db_depart.KeyValue;
if not pre_depart_box.Checked then id_pred:=0 else if db_pre.Text='' then id_pred:=0 else id_pred:=db_pre.KeyValue;
if not serv_box.Checked then id_serv:=0 else if db_serv.Text='' then id_serv:=0 else id_serv:=db_serv.KeyValue;

if not preserv_box.Checked then id_preserv:=0 else if db_preserv.Text='' then id_preserv:=0 else id_preserv:=db_preserv.KeyValue;


if RadioButton1.Checked then
Main.PreviewShtat2(id_reg,id_div,id_depart,id_pred,id_serv,id_preserv,1);
if RadioButton2.Checked then
Main.PreviewShtat2(id_reg,id_div,id_depart,id_pred,id_serv,id_preserv,2);
if RadioButton3.Checked then
Main.PreviewShtat2(id_reg,id_div,id_depart,id_pred,id_serv,id_preserv,3);
if RadioButton4.Checked then
Main.PreviewShtat2(id_reg,id_div,id_depart,id_pred,id_serv,id_preserv,4);

end;

procedure TPrint_shtate.preserv_boxClick(Sender: TObject);
begin
if preserv_box.Checked then
db_preserv.Enabled:=true
else
db_preserv.Enabled:=false;
end;

end.
