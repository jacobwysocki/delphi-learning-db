unit SelectorMaxi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.CheckLst;

type
  TMaxiSelectorForm = class(TForm)
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
    lblArea: TLabel;
    chkbxArea: TCheckListBox;
    cbLoadBuild: TCheckBox;
    procedure FormShow(Sender: TObject) ;
    procedure btnSubmitClick(Sender: TObject);
    procedure btnCloseAppClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSelectFileClick(Sender: TObject);
  private
    FsArea: String ;
    FsDate: String ;
    FsFiles: String ;
    FbLoadBuild: Boolean ;
    procedure SetArea(const Value: String) ;
  public

    property Date: String read FsDate ;
    property Files: String read FsFiles ;
    property Area: String read FsArea write SetArea ;
    property LoadBuild: Boolean read FbLoadBuild ;
  end ;

var
  MaxiSelectorForm: TMaxiSelectorForm ;

implementation

{$R *.dfm}

procedure TMaxiSelectorForm.FormCreate(Sender: TObject);
begin
  FsArea := 'England,Scotland,Northern Ireland,ROI' ;
  FsDate := '' ;
  FsFiles := '' ;
  FbLoadBuild := False ;
end;

procedure TMaxiSelectorForm.FormShow(Sender: TObject);
begin
//ShowMessage('FormCreate is triggered') ;

  chkbxArea.Items.StrictDelimiter := True ;
  chkbxArea.Items.CommaText := FsArea ;
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
var
  CheckedItems: TStringList;
begin
  if IsDateInPast(dtpDate.DateTime) then
    ShowMessage('The date is in the past.')
  else
  begin
    FsDate := DateTimeToStr(dtpDate.Date);
    FsFiles := OpenDialog1.Files.CommaText ;
    FbLoadBuild := cbLoadBuild.Checked ;

    CheckedItems := TStringList.Create;
    try
      // Collect checked items from chkbxCountry
      for var i := 0 to chkbxArea.Items.Count - 1 do
      begin
        if chkbxArea.Checked[i] then
          CheckedItems.Add(chkbxArea.Items[i]);
      end;

      // Set FsArea based on checked items
      if CheckedItems.Count > 0 then
        FsArea := CheckedItems.CommaText
      else
        FsArea := chkbxArea.Items.CommaText; // All items selected
    finally
      CheckedItems.Free;
    end;

    ModalResult := mrOK;
  end;
end;





procedure TMaxiSelectorForm.btnCloseAppClick(Sender: TObject);
begin
  Application.Terminate ;
end ;

end.

