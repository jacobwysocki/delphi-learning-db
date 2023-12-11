unit MathFunctions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmFunctions = class(TForm)
    lblRadius: TLabel;
    edtRadius: TEdit;
    btnCalculate: TButton;
    lblCirc: TLabel;
    lblArea: TLabel;
    lblCircResult: TLabel;
    lblAreaResult: TLabel;
    function calcCirc(iRadius: Integer): Real ;
    function calcArea(iRadius: Integer): Real ;
    procedure btnCalculateClick(Sender: TObject);
    function joinStrings(sText: String): String ;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFunctions: TfrmFunctions;

implementation

{$R *.dfm}

{ TfrmFunctions }

procedure TfrmFunctions.btnCalculateClick(Sender: TObject);
var
  iRadius:Integer ;
begin
  iRadius := strToInt(edtRadius.text) ;
  lblCircResult.Caption := floatToStr(calcCirc(iRadius)) ;
  lblAreaResult.Caption := floatToStr(calcArea(iRadius)) ;
  ShowMessage(joinStrings('Calculations completed!')) ;
end;

function TfrmFunctions.calcArea(iRadius: Integer): Real;
begin
  result := Pi*sqr(iRadius) ;
end;

function TfrmFunctions.calcCirc(iRadius: Integer): Real;
begin
  result := 2*Pi*iRadius ;
end;

function TfrmFunctions.joinStrings(sText: String): String;
begin
  result := sText;
end;

end.
