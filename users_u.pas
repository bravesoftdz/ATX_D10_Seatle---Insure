unit users_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbButton, LbStaticText, Grids, DBGrids,DB,ADOdb, StdCtrls,
  ExtCtrls, LbSpeedButton;

type

  Tfrmusers = class(TForm)
    LbButton2: TLbButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    LbButton1: TLbButton;
    user_edit: TLabeledEdit;
    pwd1_edit: TLabeledEdit;
    Label1: TLabel;
    pwd2_edit: TLabeledEdit;
    LbButton3: TLbButton;
    role_box: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure LbButton2Click(Sender: TObject);
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LbButton1Click(Sender: TObject);
    procedure LbButton3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure role_boxKeyPress(Sender: TObject; var Key: Char);
  private
    procedure GetList;
  public
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmusers: Tfrmusers;

implementation

uses dm_u, main_u;

{$R *.dfm}
procedure Tfrmusers.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
  with Params do
  begin
    Style := Style or ws_Overlapped;
    WndParent := Main.Handle;
    //Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
  end;

end;

procedure Tfrmusers.GetList;
begin
with dm do begin
if ADO.Connected then begin
if StoredProc1.Active then StoredProc1.Active:=false;
StoredProc1.Parameters.Clear;
StoredProc1.ProcedureName:='GetUsersList;1';
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[0].Name:='@RETURN_VALUE';
StoredProc1.Parameters[0].DataType:=ftInteger;
StoredProc1.Parameters[0].Direction:=pdReturnValue;
StoredProc1.Active:=true;
DBGrid1.Columns[0].FieldName:='users';
DBGrid1.Columns[1].FieldName:='role';
end;
end;
end;

procedure Tfrmusers.FormShow(Sender: TObject);
var
Layout: array[0.. KL_NAMELENGTH] of char;
begin
LoadKeyboardLayout( StrCopy(Layout,'00000419'),KLF_ACTIVATE);
GetList;
end;

procedure Tfrmusers.LbButton2Click(Sender: TObject);
begin
Close;
end;

procedure Tfrmusers.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrmusers.LbButton1Click(Sender: TObject);
begin
// add user
if (user_edit.Text<>'') and (pwd1_edit.Text=pwd2_edit.Text) and (role_box.Text<>'') then
begin
    with dm do
    begin
       if ADO.Connected then begin
        if StoredProc1.Active then StoredProc1.Active:=false;
        StoredProc1.Parameters.Clear;
        StoredProc1.ProcedureName:='SetUsers;1';
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[0].Name:='@what';
        StoredProc1.Parameters[0].DataType:=ftInteger;
        StoredProc1.Parameters[0].Value:=1;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[1].Name:='@id';
        StoredProc1.Parameters[1].DataType:=ftInteger;
        StoredProc1.Parameters[1].Value:=0;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[2].Name:='@name';
        StoredProc1.Parameters[2].DataType:=ftString;
        StoredProc1.Parameters[2].Value:=user_edit.Text;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[3].Name:='@pwd';
        StoredProc1.Parameters[3].DataType:=ftString;
        StoredProc1.Parameters[3].Value:=pwd1_edit.Text;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[4].Name:='@role';
        StoredProc1.Parameters[4].DataType:=ftInteger;
        if role_box.Text='�������������' then
        StoredProc1.Parameters[4].Value:=ADMIN_USER;
        if role_box.Text='���������� ���������' then
        StoredProc1.Parameters[4].Value:=INSURE_USER;
        try
        StoredProc1.ExecProc;
        CommitTR;
        except
        RollBTR;
        end;
       end;
     end;
     GetList;
end else
begin
if user_edit.Text='' then
Main.ATXMessageDlg('������� ��� ������������ !',1, mtError)
else
if pwd1_edit.Text<>pwd2_edit.Text then
Main.ATXMessageDlg('��������� ������������ ������ !', 1,mtError)
else
if role_box.Text='' then
Main.ATXMessageDlg('�������� ����� !', 1,mtError)
end;
end;

procedure Tfrmusers.LbButton3Click(Sender: TObject);
var
id:Integer;
begin
if Main.ATXMessageDlg('������� ������������ '+dm.StoredProc1.Fields[1].AsString+'?',
    2,mtWarning) = mrYes then
begin
    with dm do
    begin
       if ADO.Connected then begin
       id:=StoredProc1.Fields[0].asinteger;
        if StoredProc1.Active then StoredProc1.Active:=false;
        StoredProc1.Parameters.Clear;
        StoredProc1.ProcedureName:='SetUsers;1';
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[0].Name:='@what';
        StoredProc1.Parameters[0].DataType:=ftInteger;
        StoredProc1.Parameters[0].Value:=3;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[1].Name:='@id';
        StoredProc1.Parameters[1].DataType:=ftInteger;
        StoredProc1.Parameters[1].Value:=id;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[2].Name:='@name';
        StoredProc1.Parameters[2].DataType:=ftString;
        StoredProc1.Parameters[2].Value:='';
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[3].Name:='@pwd';
        StoredProc1.Parameters[3].DataType:=ftString;
        StoredProc1.Parameters[3].Value:='';
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[4].Name:='@role';
        StoredProc1.Parameters[4].DataType:=ftBoolean;
        StoredProc1.Parameters[4].Value:=0;
        try
        StoredProc1.ExecProc;
        CommitTR;
        except
        RollBTR;
        end;
       end;
     end;
     GetList;
 end;     
end;

procedure Tfrmusers.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
DBGrid1.Canvas.Font.Color :=clBlack;
if gdSelected in state then
  DBGrid1.Canvas.Brush.Color:=$EFE3DF
  else
  DBGrid1.Canvas.Brush.Color:=clWhite;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure Tfrmusers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.StoredProc1.Active:=false;
end;

procedure Tfrmusers.role_boxKeyPress(Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

end.


