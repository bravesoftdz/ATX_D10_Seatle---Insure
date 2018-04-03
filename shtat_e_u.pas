unit shtat_e_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbStaticText, LbSpeedButton, ExtCtrls, LbButton, Grids, DBGrids,DB,ADODB,
  RxLookup, StdCtrls, Menus, Mask, ComCtrls;

type
  TfrmShtatEdit = class(TForm)
    ScrollBox1: TScrollBox;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel3: TPanel;
    LbB_Save: TLbButton;
    db_reg: TRxDBLookupCombo;
    db_div: TRxDBLookupCombo;
    db_depart: TRxDBLookupCombo;
    db_pre: TRxDBLookupCombo;
    db_serv: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Lb_Open: TLbButton;
    LbSpeedButton3: TLbSpeedButton;
    LbSpeedButton1: TLbSpeedButton;
    LbSpeedButton2: TLbSpeedButton;
    LbSpeedButton4: TLbSpeedButton;
    LbSpeedButton5: TLbSpeedButton;
    ScrollBox2: TScrollBox;
    GroupBox2: TGroupBox;
    sg2_m: TStringGrid;
    GroupBox1: TGroupBox;
    sg1_m: TStringGrid;
    ScrollBox3: TScrollBox;
    GroupBox3: TGroupBox;
    sg2_f: TStringGrid;
    GroupBox4: TGroupBox;
    sg1_f: TStringGrid;
    Panel2: TPanel;
    LbSpeedButton6: TLbSpeedButton;
    LbSpeedButton7: TLbSpeedButton;
    Panel4: TPanel;
    LbSpeedButton8: TLbSpeedButton;
    LbSpeedButton9: TLbSpeedButton;
    LbButton2: TLbButton;
    Label6: TLabel;
    db_preserv: TRxDBLookupCombo;
    LbSpeedButton10: TLbSpeedButton;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure bclClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Lb_OpenClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LbSpeedButton3Click(Sender: TObject);
    procedure LbSpeedButton1Click(Sender: TObject);
    procedure LbSpeedButton2Click(Sender: TObject);
    procedure LbSpeedButton4Click(Sender: TObject);
    procedure LbSpeedButton5Click(Sender: TObject);
    procedure sg2_mDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sg2_fDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sg2_mDblClick(Sender: TObject);
    procedure sg1_mDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sg2_mSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sg2_fSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ElPageControl1Change(Sender: TObject);
    procedure LbB_SaveClick(Sender: TObject);
    procedure LbSpeedButton6Click(Sender: TObject);
    procedure LbSpeedButton7Click(Sender: TObject);
    procedure LbSpeedButton8Click(Sender: TObject);
    procedure LbSpeedButton9Click(Sender: TObject);
    procedure LbSpeedButton10Click(Sender: TObject);
  private
    changeValue:boolean;
    id_setting:integer;
    ActiveSG:TStringGrid;
    aR:integer;
  public
    procedure AddAvt(id:integer;Mark,numb:String);
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmShtatEdit: TfrmShtatEdit;

implementation

uses main_u, dm_u, search_u;

{$R *.dfm}
procedure TfrmShtatEdit.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
  with Params do
  begin
    Style := Style or ws_Overlapped;
    WndParent := Main.Handle;
    //Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
  end;

end;

procedure TfrmShtatEdit.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);

end;

procedure TfrmShtatEdit.FormCreate(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet2;
SG1_m.Cells[0,0]:='Штат личного состава';
SG1_m.Cells[1,0]:='Штат транспорта';
SG2_m.Cells[0,0]:='Марка';
SG2_m.Cells[1,0]:='Гос.№';
SG2_m.ColWidths[0]:=200;
SG2_m.ColWidths[1]:=100;
SG1_f.Cells[0,0]:='Штат личного состава';
SG1_f.Cells[1,0]:='Штат транспорта';
SG2_f.Cells[0,0]:='Марка';
SG2_f.Cells[1,0]:='Гос.№';
SG2_f.ColWidths[0]:=200;
SG2_f.ColWidths[1]:=100;

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

procedure TfrmShtatEdit.bclClick(Sender: TObject);
begin
if changeValue then
begin
  case Main.ATXMessageDlg('Сохранить изменения?',
    3,mtConfirmation) of
  mrYes:begin
  LbB_SaveClick(Self);
  Close;
  end;
  mrNo:Close;
  end;
end else Close;

end;


procedure TfrmShtatEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
with dm do
begin
    ado_reg.Close;
    ado_div.Close;
    ado_depart.Close;
    ado_pre.Close;
    ado_serv.Close;
    ado_preserv.Close;
end;
frmShtatEdit:=nil;
end;

procedure TfrmShtatEdit.Lb_OpenClick(Sender: TObject);
var
i:integer;
begin
if changeValue then
begin
if Main.ATXMessageDlg('Сохранить изменения?', 2,mtConfirmation) = mrYes then
begin
     LbB_SaveClick(Self);
end;
end;
changeValue:=false;
PageControl1.ActivePage:=TabSheet2;
LbB_Save.Enabled:=true;
id_setting:=0;
sg1_m.Cells[0,1]:='';
sg1_m.Cells[1,1]:='';
sg1_f.Cells[0,1]:='';
sg1_f.Cells[1,1]:='';
sg2_m.RowCount:=2;
sg2_m.Cells[0,1]:='';
sg2_m.Cells[1,1]:='';
sg2_m.Cells[2,1]:='';
sg2_m.Cells[3,1]:='';
sg2_f.RowCount:=2;
sg2_f.Cells[0,1]:='';
sg2_f.Cells[1,1]:='';
sg2_f.Cells[2,1]:='';
sg2_f.Cells[3,1]:='';
sg2_m.Enabled:=true;
sg2_f.Enabled:=sg2_m.Enabled;
Panel2.Enabled:=sg2_m.Enabled;
Panel4.Enabled:=sg2_m.Enabled;
with dm do
begin
if ADO.Connected then begin
if StoredProc1.Active then StoredProc1.Active:=false;
StoredProc1.Parameters.Clear;
StoredProc1.ProcedureName:='GetShtatForEdit;1';
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[0].Name:='@RETURN_VALUE';
StoredProc1.Parameters[0].DataType:=ftInteger;
StoredProc1.Parameters[0].Direction:=pdReturnValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[1].Name:='@id_r';
StoredProc1.Parameters[1].DataType:=ftInteger;
StoredProc1.Parameters[1].Value:=db_reg.KeyValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[2].Name:='@id_div';
StoredProc1.Parameters[2].DataType:=ftInteger;
StoredProc1.Parameters[2].Value:=db_div.KeyValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[3].Name:='@id_depк';
StoredProc1.Parameters[3].DataType:=ftInteger;
StoredProc1.Parameters[3].Value:=db_depart.KeyValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[4].Name:='@id_pred';
StoredProc1.Parameters[4].DataType:=ftInteger;
StoredProc1.Parameters[4].Value:=db_pre.KeyValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[5].Name:='@id_s';
StoredProc1.Parameters[5].DataType:=ftInteger;
StoredProc1.Parameters[5].Value:=db_serv.KeyValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[6].Name:='@id_ps';
StoredProc1.Parameters[6].DataType:=ftInteger;
StoredProc1.Parameters[6].Value:=db_preserv.KeyValue;
StoredProc1.Open;
id_setting:=0;
if not StoredProc1.Eof then
begin
id_setting:=StoredProc1.Fields[0].AsInteger;
sg1_m.Cells[0,1]:=StoredProc1.Fields[1].AsString;
sg1_m.Cells[1,1]:=StoredProc1.Fields[3].AsString;
sg1_f.Cells[0,1]:=StoredProc1.Fields[2].AsString;
sg1_f.Cells[1,1]:=StoredProc1.Fields[4].AsString;
//avto
if StoredProc1.Active then StoredProc1.Active:=false;
StoredProc1.Parameters.Clear;
StoredProc1.ProcedureName:='GetShtatForEdit02;1';
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[0].Name:='@RETURN_VALUE';
StoredProc1.Parameters[0].DataType:=ftInteger;
StoredProc1.Parameters[0].Direction:=pdReturnValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[1].Name:='@what';
StoredProc1.Parameters[1].DataType:=ftInteger;
StoredProc1.Parameters[1].Value:=1;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[2].Name:='@id';
StoredProc1.Parameters[2].DataType:=ftInteger;
StoredProc1.Parameters[2].Value:=id_setting;
StoredProc1.Open;
i:=1;
while not StoredProc1.Eof do
begin
if i>=sg2_m.RowCount then
sg2_m.RowCount:=sg2_m.RowCount+1;
    sg2_m.Cells[0,i]:=StoredProc1.Fields[1].AsString+'-'+StoredProc1.Fields[2].AsString;
    sg2_m.Cells[1,i]:=StoredProc1.Fields[3].AsString;
    sg2_m.Cells[2,i]:=StoredProc1.Fields[0].AsString;
    if StoredProc1.Fields[4].AsBoolean then
    sg2_m.Cells[3,i]:='1';
    StoredProc1.Next;
    inc(i);
end;
if StoredProc1.Active then StoredProc1.Active:=false;
StoredProc1.Parameters.Clear;
StoredProc1.ProcedureName:='GetShtatForEdit02;1';
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[0].Name:='@RETURN_VALUE';
StoredProc1.Parameters[0].DataType:=ftInteger;
StoredProc1.Parameters[0].Direction:=pdReturnValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[1].Name:='@what';
StoredProc1.Parameters[1].DataType:=ftInteger;
StoredProc1.Parameters[1].Value:=2;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[2].Name:='@id';
StoredProc1.Parameters[2].DataType:=ftInteger;
StoredProc1.Parameters[2].Value:=id_setting;
StoredProc1.Open;
i:=1;
while not StoredProc1.Eof do
begin
if i>=sg2_f.RowCount then
sg2_f.RowCount:=sg2_f.RowCount+1;
    sg2_f.Cells[0,i]:=StoredProc1.Fields[1].AsString+'-'+StoredProc1.Fields[2].AsString;
    sg2_f.Cells[1,i]:=StoredProc1.Fields[3].AsString;
    sg2_f.Cells[2,i]:=StoredProc1.Fields[0].AsString;
    if StoredProc1.Fields[4].AsBoolean then
    sg2_f.Cells[3,i]:='1';

    StoredProc1.Next;
    inc(i);
end;
end;
end;
if StoredProc1.Active then StoredProc1.Active:=false;
end;
end;

procedure TfrmShtatEdit.FormKeyPress(Sender: TObject; var Key: Char);
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



procedure TfrmShtatEdit.LbSpeedButton3Click(Sender: TObject);
begin
db_reg.KeyValue:=-1;
end;

procedure TfrmShtatEdit.LbSpeedButton1Click(Sender: TObject);
begin
db_div.KeyValue:=-1;
end;

procedure TfrmShtatEdit.LbSpeedButton2Click(Sender: TObject);
begin
db_depart.KeyValue:=-1;
end;

procedure TfrmShtatEdit.LbSpeedButton4Click(Sender: TObject);
begin
db_pre.KeyValue:=-1;
end;

procedure TfrmShtatEdit.LbSpeedButton5Click(Sender: TObject);
begin
db_serv.KeyValue:=-1;
end;

procedure TfrmShtatEdit.sg2_mDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
S,A:TColor;
begin
sg2_m.ColWidths[sg2_m.ColCount-1]:=0;
sg2_m.ColWidths[sg2_m.ColCount-2]:=0;
  if (gdFocused in State) or (gdSelected in State) then
  S:=$EFE3DF else S:=clWhite;
  if sg2_m.Cells[3,aRow]='1' then
  A:=clRed else A:=clBlack;
if aRow>0 then
    with TStringGrid(Sender), Canvas do
    begin
      Brush.Color := S;
      Font.Color:=A;
      FillRect(Rect);
      TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[aCol, aRow]);
    end


end;

procedure TfrmShtatEdit.sg2_fDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
S,A:TColor;
begin
sg2_f.ColWidths[sg2_f.ColCount-1]:=0;
sg2_f.ColWidths[sg2_f.ColCount-2]:=0;
  if (gdFocused in State) or (gdSelected in State) then
  S:=$EFE3DF else S:=clWhite;
  if sg2_f.Cells[3,aRow]='1' then
  A:=clRed else A:=clBlack;
if aRow>0 then
    with TStringGrid(Sender), Canvas do
    begin
      Brush.Color := S;
      Font.Color:=A;
      FillRect(Rect);
      TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[aCol, aRow]);
    end
end;

procedure TfrmShtatEdit.sg2_mDblClick(Sender: TObject);
begin
frmShtatEdit.Hide;
Main.CreateAvtoCard(StrToInt(ActiveSG.Cells[2,aR]),-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,'-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',-1,-1,-1,'-1','-1',-1,-1);
end;

procedure TfrmShtatEdit.sg1_mDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if (gdFocused in State) or (gdSelected in State) then
    with TStringGrid(Sender), Canvas do
    begin
      Brush.Color := $EFE3DF;
      Font.Color:=clBlack;
      FillRect(Rect);
      TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[aCol, aRow]);
    end;
end;
procedure TfrmShtatEdit.AddAvt(id:integer;Mark,numb:String);
begin
if ActiveSG.Cells[2,ActiveSG.RowCount-1]<>'' then
ActiveSG.RowCount:=ActiveSG.RowCount+1;
ActiveSG.Cells[0,ActiveSG.RowCount-1]:=Mark;
ActiveSG.Cells[1,ActiveSG.RowCount-1]:=numb;
ActiveSG.Cells[2,ActiveSG.RowCount-1]:=IntToStr(id);
ActiveSG.Cells[3,ActiveSG.RowCount-1]:='1';
changeValue:=true
end;


procedure TfrmShtatEdit.sg2_mSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
aR:=ARow;
end;

procedure TfrmShtatEdit.sg2_fSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
aR:=ARow;
end;

procedure TfrmShtatEdit.ElPageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then
ActiveSG:=sg2_m
else
ActiveSG:=sg2_f;
end;

procedure TfrmShtatEdit.LbB_SaveClick(Sender: TObject);
var
i:integer;
begin
with dm do
begin
        if ADO.Connected then begin
        if StoredProc1.Active then StoredProc1.Active:=false;
        StoredProc1.Parameters.Clear;
        StoredProc1.ProcedureName:='SetShtatAvto;1';
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[0].Name:='@what';
        StoredProc1.Parameters[0].DataType:=ftInteger;
        StoredProc1.Parameters[0].Value:=1;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[1].Name:='@id';
        StoredProc1.Parameters[1].DataType:=ftInteger;
        StoredProc1.Parameters[1].Value:=id_setting;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[2].Name:='@id_avt';
        StoredProc1.Parameters[2].DataType:=ftInteger;
        StoredProc1.Parameters[2].Value:=0;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[3].Name:='@other';
        StoredProc1.Parameters[3].DataType:=ftBoolean;
        StoredProc1.Parameters[3].Value:=false;
        try
        StoredProc1.ExecProc;
        for i:=1 to sg2_m.RowCount-1 do
        begin
           if sg2_m.Cells[2,i]<>'' then
           begin
                StoredProc1.Active:=false;
                StoredProc1.Parameters.Clear;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[0].Name:='@what';
                StoredProc1.Parameters[0].DataType:=ftInteger;
                StoredProc1.Parameters[0].Value:=2;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[1].Name:='@id';
                StoredProc1.Parameters[1].DataType:=ftInteger;
                StoredProc1.Parameters[1].Value:=id_setting;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[2].Name:='@id_avt';
                StoredProc1.Parameters[2].DataType:=ftInteger;
                StoredProc1.Parameters[2].Value:=StrToInt(sg2_m.Cells[2,i]);
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[3].Name:='@other';
                StoredProc1.Parameters[3].DataType:=ftBoolean;
                if sg2_m.Cells[3,i]='1' then
                StoredProc1.Parameters[3].Value:=true else StoredProc1.Parameters[3].Value:=false;
                try
                StoredProc1.ExecProc;
                except
                end;
           end;
        end;
        for i:=1 to sg2_f.RowCount-1 do
        begin
           if sg2_f.Cells[2,i]<>'' then
           begin
                StoredProc1.Active:=false;
                StoredProc1.Parameters.Clear;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[0].Name:='@what';
                StoredProc1.Parameters[0].DataType:=ftInteger;
                StoredProc1.Parameters[0].Value:=3;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[1].Name:='@id';
                StoredProc1.Parameters[1].DataType:=ftInteger;
                StoredProc1.Parameters[1].Value:=id_setting;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[2].Name:='@id_avt';
                StoredProc1.Parameters[2].DataType:=ftInteger;
                StoredProc1.Parameters[2].Value:=StrToInt(sg2_f.Cells[2,i]);
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[3].Name:='@other';
                StoredProc1.Parameters[3].DataType:=ftBoolean;
                if sg2_f.Cells[3,i]='1' then
                StoredProc1.Parameters[3].Value:=true else StoredProc1.Parameters[3].Value:=false;
                try
                StoredProc1.ExecProc;
                except
                end;
           end;
        end;
        CommitTR;
        StoredProc1.Active:=false;
        except
        RollBTR
        end;
end;
end;
end;
procedure TfrmShtatEdit.LbSpeedButton6Click(Sender: TObject);
begin
//add avto m
ActiveSG:=sg2_m;
  Main.listAvt_From:=1;
  Application.CreateForm(Tfrmsearch, frmsearch);
  frmsearch.List_Avto;
  frmsearch.ShowModal;
end;

procedure TfrmShtatEdit.LbSpeedButton7Click(Sender: TObject);
var
i,j:integer;
begin
if Main.ATXMessageDlg('Вы действительно хотите удалить автотранспорт '+sg2_m.Cells[0,aR]+' №'+sg2_m.Cells[1,aR]+' из расписания?',
    2,mtConfirmation) = mrYes then
    begin
changeValue:=true;
j:=sg2_m.Row;
  sg2_m.Rows[j].Clear;
  if sg2_m.RowCount>sg2_m.FixedRows+1 then begin
  for i:=j to sg2_m.RowCount-1 do
    sg2_m.Rows[i].Assign(sg2_m.Rows[i+1]);
  sg2_m.RowCount:=sg2_m.RowCount-1;
  end;
end;
end;

procedure TfrmShtatEdit.LbSpeedButton8Click(Sender: TObject);
begin
ActiveSG:=sg2_f;
  Main.listAvt_From:=1;
  Application.CreateForm(Tfrmsearch, frmsearch);
  frmsearch.List_Avto;
  frmsearch.ShowModal;

end;

procedure TfrmShtatEdit.LbSpeedButton9Click(Sender: TObject);
var
i,j:integer;
begin
if Main.ATXMessageDlg('Вы действительно хотите удалить автотранспорт '+sg2_f.Cells[0,aR]+' №'+sg2_f.Cells[1,aR]+' из расписания?',
    2,mtConfirmation) = mrYes then
    begin
changeValue:=true;
j:=sg2_f.Row;
  sg2_f.Rows[j].Clear;
  if sg2_f.RowCount>sg2_f.FixedRows+1 then begin
  for i:=j to sg2_f.RowCount-1 do
    sg2_f.Rows[i].Assign(sg2_f.Rows[i+1]);
  sg2_f.RowCount:=sg2_f.RowCount-1;
  end;
end;
end;
procedure TfrmShtatEdit.LbSpeedButton10Click(Sender: TObject);
begin
db_preserv.KeyValue:=-1;
end;

end.




