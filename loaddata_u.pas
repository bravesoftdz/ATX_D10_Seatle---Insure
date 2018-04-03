unit loaddata_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, ComCtrls, RxGIF, rxAnimate, rxGIFCtrl, Vcl.Imaging.GIFImg;

type
  TfrmLoadData = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
  private
    { Private declarations }
  public
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmLoadData: TfrmLoadData;

implementation

uses main_u;

{$R *.dfm}
procedure TfrmLoadData.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
  with Params do
  begin
    Style := Style or ws_Overlapped;
    WndParent := Main.Handle;
    Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
  end;

end;

end.
