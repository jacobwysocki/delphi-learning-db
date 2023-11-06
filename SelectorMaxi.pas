unit SelectorMaxi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TMaxiSelectorForm = class(TForm)
    cbxCountry: TComboBox;
    lblCountry: TLabel;
    dtpDate: TDateTimePicker;
    lblDate: TLabel;
    lblSelectFile: TLabel;
    btnSelectFile: TButton;
    pnlResults: TPanel;
    pnlMaxi: TPanel;
    lblDateResult: TLabel;
    lblSelectFileResult: TLabel;
    lblCountryResult: TLabel;
    btnSubmit: TButton;
    btnCloseApp: TButton;
    btnReset: TButton;
    procedure FormShow(Sender: TObject) ;
    procedure btnSubmitClick(Sender: TObject);
    procedure btnCloseAppClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    FCaptionValue: string;
    FCountry1Value: string ;
    FCountry2Value: string ;
    FCountry3Value: string ;
    FCountry4Value: string ;
  public
    property CaptionValue: string read FCaptionValue write FCaptionValue;
    property Country1Value: string read FCountry1Value write FCountry1Value ;
    property Country2Value: string read FCountry2Value write FCountry2Value ;
    property Country3Value: string read FCountry3Value write FCountry3Value ;
    property Country4Value: string read FCountry4Value write FCountry4Value ;
  end ;

var
  MaxiSelectorForm: TMaxiSelectorForm;

implementation

{$R *.dfm}




procedure TMaxiSelectorForm.FormShow(Sender: TObject);
begin
//ShowMessage('FormCreate is triggered') ;
    Caption := CaptionValue ;
    cbxCountry.Items.Add(Country1Value) ;
    cbxCountry.Items.Add(Country2Value) ;
    cbxCountry.Items.Add(Country3Value) ;
    cbxCountry.Items.Add(Country4Value);
end;

function IsDateInPast(dateToCheck: TDateTime): Boolean;
begin
  var
  currentDate := Now ;
  Result := dateToCheck < currentDate;
end ;

procedure TMaxiSelectorForm.btnSubmitClick(Sender: TObject);
begin
  if IsDateInPast(dtpDate.DateTime) then
    ShowMessage('The date is in the past.')
  else

  //move the results to Selector Main
  begin
    lblDateResult.Caption := DateTimeToStr(dtpDate.Date) ;
    lblSelectFileResult.Caption := 'File' ;
    lblCountryResult.Caption := cbxCountry.Text ;
  end ;
end ;


procedure TMaxiSelectorForm.btnCloseAppClick(Sender: TObject);
begin
  Application.Terminate ;
end ;

procedure TMaxiSelectorForm.btnResetClick(Sender: TObject);
begin
  lblDateResult.Free ;
  lblSelectFileResult.Free ;
  lblCountryResult.Free ;
end ;


end.
