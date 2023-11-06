unit SelectorMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, SelectorMaxi;

type
  TSelectorMainForm = class(TForm)
    lblCaption: TLabel;
    lblCountriesEntry: TLabel;
    edtCountries: TEdit;
    edtCaption: TEdit;
    btnPassDetails: TButton;
    pnlDetails: TPanel;
    procedure btnPassDetailsClick(Sender: TObject) ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelectorMainForm: TSelectorMainForm ;


implementation

{$R *.dfm}

procedure TSelectorMainForm.btnPassDetailsClick(Sender: TObject);
var
  MaxiSelectorForm: TMaxiSelectorForm ;
  Countries: TArray<string> ;
  test: String ;
begin
  MaxiSelectorForm := TMaxiSelectorForm.Create(Application);
  try
    MaxiSelectorForm := TMaxiSelectorForm.Create(Application) ;
    MaxiSelectorForm.CaptionValue := edtCaption.Text ;
    test := edtCountries.Text ;

    Countries := test.Split([',']) ;


    if Length(Countries) >= 1 then
      MaxiSelectorForm.Country1Value := Countries[0].Trim;
    if Length(Countries) >= 2 then
      MaxiSelectorForm.Country2Value := Countries[1].Trim;
    if Length(Countries) >= 3 then
      MaxiSelectorForm.Country3Value := Countries[2].Trim;
    if Length(Countries) >= 4 then
      MaxiSelectorForm.Country4Value := Countries[3].Trim ;
    MaxiSelectorForm.ShowModal ;
  finally
    MaxiSelectorForm.Free;
  end ;
end ;

end.
