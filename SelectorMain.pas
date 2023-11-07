unit SelectorMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DataShareUnit;

type
  TSelectorMainForm = class(TForm)
    lblCaption: TLabel;
    lblCountriesEntry: TLabel;
    edtCountries: TEdit;
    edtCaption: TEdit;
    btnPassDetails: TButton;
    pnlDetails: TPanel;
    lblUserInput: TLabel;
    pnlResults: TPanel;
    lblDateResult: TLabel;
    lblSelectFileResult: TLabel;
    lblCountryResult: TLabel;
    lblResults: TLabel;
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

uses
  SelectorMaxi ;

procedure TSelectorMainForm.btnPassDetailsClick(Sender: TObject);
var
  MaxiSelectorForm: TMaxiSelectorForm ;
begin
  MaxiSelectorForm := TMaxiSelectorForm.Create(Application);
  try
    MaxiSelectorForm.Caption := edtCaption.Text ;
    if ( edtCountries.Text <> '' ) then
      MaxiSelectorForm.Area := edtCountries.Text ;
    MaxiSelectorForm.OpenDialog1.DefaultExt := '.csv' ;
    MaxiSelectorForm.OpenDialog1.InitialDir := 'C:\test' ;

    MaxiSelectorForm.ShowModal ;
    lblDateResult.Caption := MaxiSelectorForm.Date ;
    lblSelectFileResult.Caption := MaxiSelectorForm.OpenDialog1.Files.CommaText;
    lblCountryResult.Caption := MaxiSelectorForm.Area ;
  finally
    MaxiSelectorForm.Free ;
  end ;
end ;

end.
