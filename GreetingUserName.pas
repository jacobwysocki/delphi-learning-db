unit GreetingUserName;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);

  private
    FEditValue: string;
  public
    property EditValue: string read FEditValue write FEditValue;
  end;

  var
  Form3 : TForm3 ;
implementation

{$R *.dfm}


procedure TForm3.FormShow(Sender: TObject);
begin
  if Length(EditValue) = 0 then
    Label1.Caption := 'Name not provided!'
    else
  Label1.Caption := 'Hi, ' + EditValue

end;

end.
