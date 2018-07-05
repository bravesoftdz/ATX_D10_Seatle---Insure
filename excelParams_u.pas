unit excelParams_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LbButton, Vcl.StdCtrls, RxPlacemnt;

type
  TfrmExcelParams = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    n_row_insure: TEdit;
    n_row_coast: TEdit;
    n_col_start: TEdit;
    LbButton2: TLbButton;
    LbB_Search: TLbButton;
    ExcelParamsStorage: TFormStorage;
    procedure LbButton2Click(Sender: TObject);
    procedure LbB_SearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure n_row_insureKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExcelParams: TfrmExcelParams;

implementation

{$R *.dfm}

procedure TfrmExcelParams.FormShow(Sender: TObject);
begin
ExcelParamsStorage.RestoreFormPlacement;
if n_row_insure.Text='' then n_row_insure.Text:='20';
if n_row_coast.Text='' then n_row_coast.Text:='19';
if n_col_start.Text='' then n_col_start.Text:='8';

end;

procedure TfrmExcelParams.LbButton2Click(Sender: TObject);
begin
Close;
end;

procedure TfrmExcelParams.LbB_SearchClick(Sender: TObject);
begin
ExcelParamsStorage.SaveFormPlacement;
Close;
end;

procedure TfrmExcelParams.n_row_insureKeyPress(Sender: TObject; var Key: Char);
begin
if not(AnsiChar(Key) in ['0' .. '9', Chr(VK_BACK)]) then
Key:=#0;
end;

end.
