unit SelectorMaxi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.ComCtrls, Vcl.ExtCtrls, DataShareUnit;

type
  TMaxiSelectorForm = class(TForm)
    cbxCountry: TComboBox;
    lblCountry: TLabel;
    dtpDate: TDateTimePicker;
    lblDate: TLabel;
    lblSelectFile: TLabel;
    btnSelectFile: TButton;
    pnlMaxi: TPanel;
    btnSubmit: TButton;
    btnCloseApp: TButton;
    OpenDialog1: TOpenDialog;
    selectedFile: TLabel;
    lblFileExtension: TLabel;
    edtFileExtension: TEdit;
    procedure FormShow(Sender: TObject) ;
    procedure btnSubmitClick(Sender: TObject);
    procedure btnCloseAppClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSelectFileClick(Sender: TObject);
  private
    FsArea: String;
    FsDate: String;
    FsFiles: String;
    procedure SetArea(const Value: String);
  public

    property Date: String read FsDate ;
    property Files: String read FsFiles ;
    property Area: String read FsArea write SetArea ;
  end ;

var
  MaxiSelectorForm: TMaxiSelectorForm;
  DataIntermediary: TDataIntermediary ;

implementation

{$R *.dfm}

procedure TMaxiSelectorForm.FormCreate(Sender: TObject);
begin
  FsArea := 'England,Scotland,Northern Ireland,ROI' ;
  FsDate := '' ;
  FsFiles := '' ;
end;

procedure TMaxiSelectorForm.FormShow(Sender: TObject);
begin
//ShowMessage('FormCreate is triggered') ;
  cbxCountry.Items.StrictDelimiter := True ;
  cbxCountry.Items.CommaText := 'All,' + FsArea ;
end;

procedure TMaxiSelectorForm.SetArea(const Value: String);
begin
  FsArea := Value;
end;

function IsDateInPast(dateToCheck: TDateTime): Boolean;
begin
  var
  currentDate := Now ;
  Result := dateToCheck < currentDate;
end ;

procedure TMaxiSelectorForm.btnSelectFileClick(Sender: TObject);
var
  FilterExtensions: string;
begin
  if edtFileExtension.Text = '' then
     ShowMessage('No extension privided.')
  else
  begin
    begin
      var ExtensionsList: TStrings := TStringList.Create;
      try
        ExtensionsList.StrictDelimiter := True;
        ExtensionsList.CommaText := edtFileExtension.Text;
        for var Extension in ExtensionsList do
        begin
          if FilterExtensions <> '' then
            FilterExtensions := FilterExtensions + '|';
          FilterExtensions := FilterExtensions + Format('%s Files|*.%s', [Extension, Extension]);
        end;
      finally
        ExtensionsList.Free;
      end;
    end;

    OpenDialog1.Filter := FilterExtensions;

    if OpenDialog1.Execute then
    begin
      selectedFile.Caption := OpenDialog1.Files.CommaText;
    end ;
  end
end;



procedure TMaxiSelectorForm.btnSubmitClick(Sender: TObject);
begin
  if IsDateInPast(dtpDate.DateTime) then
    ShowMessage('The date is in the past.')
  else

  //move the results to Selector Main Form
  begin
    FsDate := DateTimeToStr(dtpDate.Date) ;
    FsFiles := Opendialog1.Files.CommaText ;
    FsArea := cbxCountry.Text ;
    //DataIntermediary.SetResultData(sDate) ;
    ModalResult := mrOK ;
  end ;
end ;


procedure TMaxiSelectorForm.btnCloseAppClick(Sender: TObject);
begin
  Application.Terminate ;
end ;

end.

