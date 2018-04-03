unit activate_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, LbStaticText, LbButton;

type
  TfrmActivate = class(TForm)
    LbStaticText1: TLbStaticText;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    LbButton2: TLbButton;
    LbButton1: TLbButton;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
        protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmActivate: TfrmActivate;

implementation

{$R *.dfm}
procedure TfrmActivate.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
end;
procedure TfrmActivate.Edit1Change(Sender: TObject);
begin
if length(Edit1.Text)= 4 then
Edit2.SetFocus;
end;

procedure TfrmActivate.Edit2Change(Sender: TObject);
begin
if length(Edit2.Text)= 4 then
LbButton2.SetFocus;

end;



procedure TfrmActivate.FormCreate(Sender: TObject);
begin
LbButton1.Caption:='Отмена';
end;

procedure TfrmActivate.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

end.
