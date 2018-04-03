unit AboutUnit;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg, ComCtrls, LbButton;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    LbButton2: TLbButton;
    Image1: TImage;
    GroupBox1: TGroupBox;
    ProductName: TLabel;
    Bevel2: TBevel;
    Version: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel3: TBevel;
    Label3: TLabel;
    procedure OKButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    protected
    procedure CreateParams( var Params: TCreateParams ); override;
  end;

var
  AboutBox: TAboutBox;

implementation
            uses dm_u;

{$R *.dfm}
procedure TAboutBox.CreateParams( var Params: TCreateParams );
begin
  inherited CreateParams( Params );
  with Params do
  begin
    Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
  end;
end;
procedure TAboutBox.FormShow(Sender: TObject);
begin
Label3.Caption:='Версия программы: '+IntToStr(dm.getVersionString());
end;

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
Close;
end;

end.

