unit SelectorMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TSelectorMainForm = class(TForm)
    lblCaption: TLabel;
    lblAreasEntry: TLabel;
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
    lblLoadBuild: TLabel;
    btnPassToFileExtChecker: TButton;
    procedure btnPassDetailsClick(Sender: TObject) ;
    procedure btnPassToFileExtCheckerClick(Sender: TObject);
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
  SelectorMaxi, unitfrmMaxiSelector ;

procedure TSelectorMainForm.btnPassDetailsClick(Sender: TObject);
var
  formMaxiSelector: TformMaxiSelector ;
begin
  formMaxiSelector := TformMaxiSelector.Create(Application);
  try
    if Length(edtCaption.Text) = 0 then
       formMaxiSelector.Caption := 'Default Caption'
    else
        formMaxiSelector.Caption := edtCaption.Text ;

    if ( edtCountries.Text <> '' ) then
      formMaxiSelector.Area := edtCountries.Text ;
    formMaxiSelector.OpenDialog1.DefaultExt := '.csv' ;
    formMaxiSelector.OpenDialog1.InitialDir := 'C:\test' ;

    formMaxiSelector.ShowModal ;
    lblDateResult.Caption := formMaxiSelector.Date ;
    lblSelectFileResult.Caption := formMaxiSelector.OpenDialog1.Files.CommaText;
    lblCountryResult.Caption := formMaxiSelector.Area ;

    if formMaxiSelector.LoadBuild = True then
       lblLoadBuild.Caption := 'Load Build Checked'
    else
        lblLoadBuild.Caption := 'Load Build Not Checked' ;

  finally
    formMaxiSelector.Free ;
  end ;
end ;

procedure TSelectorMainForm.btnPassToFileExtCheckerClick(Sender: TObject);
var
  MaxiSelectorForm: TMaxiSelectorForm ;
begin
  MaxiSelectorForm := TMaxiSelectorForm.Create(Application);
  try
    if Length(edtCaption.Text) = 0 then
       MaxiSelectorForm.Caption := 'Default Caption'
    else
        MaxiSelectorForm.Caption := edtCaption.Text ;

    if ( edtCountries.Text <> '' ) then
      MaxiSelectorForm.Area := edtCountries.Text ;
    MaxiSelectorForm.OpenDialog1.DefaultExt := '.csv' ;
    MaxiSelectorForm.OpenDialog1.InitialDir := 'C:\test' ;

    MaxiSelectorForm.ShowModal ;
    lblDateResult.Caption := MaxiSelectorForm.Date ;
    lblSelectFileResult.Caption := MaxiSelectorForm.OpenDialog1.Files.CommaText;
    lblCountryResult.Caption := MaxiSelectorForm.Area ;

    if MaxiSelectorForm.LoadBuild = True then
       lblLoadBuild.Caption := 'Load Build Checked'
    else
        lblLoadBuild.Caption := 'Load Build Not Checked' ;

  finally
    MaxiSelectorForm.Free ;
  end ;
end ;

end.
