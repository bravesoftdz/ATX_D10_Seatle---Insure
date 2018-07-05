unit listavto_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbSpeedButton, ExtCtrls, LbStaticText, Grids, DBGrids, LbButton,
  rxPlacemnt, Data.DB;
type
  TfrmListAvto = class(TForm)
    Panel3: TPanel;
    LbB_Save: TLbButton;
    DBGrid1: TDBGrid;
    SearchStorage: TFormStorage;
    LbButton2: TLbButton;
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bclClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmListAvto: TfrmListAvto;

implementation

uses main_u, dm_u, shtat_e_u, avtocard_u;

{$R *.dfm}
procedure TfrmListAvto.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
  with Params do
  begin
    Style := Style or ws_Overlapped;
    WndParent := Main.Handle;
    //Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
  end;
end;

procedure TfrmListAvto.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TfrmListAvto.bclClick(Sender: TObject);
begin
Close;
end;


procedure TfrmListAvto.FormShow(Sender: TObject);
begin
if SearchStorage.ReadInteger('Visible',1)<>1 then
SearchStorage.RestoreFormPlacement
else
begin
frmListAvto.Left:=Main.Left+5;
frmListAvto.Top:=Main.Top+88;
frmListAvto.Width:=Main.Width-12;
end;
DBGrid1.Columns.Clear;
with DBGrid1 do
begin
Columns.Add;
Columns[0].Title.Caption:='Гарнизон';
Columns[0].FieldName:='name';
Columns[0].Width:=50;
Columns.Add;
Columns[1].Title.Caption:='Управление';
Columns[1].FieldName:='Expr1';
Columns[1].Width:=100;
Columns.Add;
Columns[2].Title.Caption:='Отдел';
Columns[2].FieldName:='Expr2';
Columns[2].Width:=100;
Columns.Add;
Columns[3].Title.Caption:='Под-отдел';
Columns[3].FieldName:='Expr3';
Columns[3].Width:=100;
Columns.Add;
Columns[4].Title.Caption:='Служба';
Columns[4].FieldName:='Expr4';
Columns[4].Width:=100;
Columns.Add;
Columns[5].Title.Caption:='Бюджет';
Columns[5].FieldName:='Expr6';
Columns[5].Width:=100;
Columns.Add;
Columns[6].Title.Caption:='Марка';
Columns[6].FieldName:='Expr5';
Columns[6].Width:=100;
Columns.Add;
Columns[7].Title.Caption:='Гос.№';
Columns[7].FieldName:='numb_1';
Columns[7].Width:=50;
Columns.Add;
Columns[8].Title.Caption:='Год';
Columns[8].FieldName:='m_year';
Columns[8].Width:=50;
Columns.Add;
Columns[9].Title.Caption:='Цвет';
Columns[9].FieldName:='color';
Columns[9].Width:=50;


end;//with

end;

procedure TfrmListAvto.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TfrmListAvto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.Proc_ListAvt.Active:=false;
end;

end.
