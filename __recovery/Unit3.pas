unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;

  private
    FEditValue: string;
  public
    { Public declarations }
  end;

var
  name : String;
  Form3: TForm3;
implementation

{$R *.dfm}

end.
