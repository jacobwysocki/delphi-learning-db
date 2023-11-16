unit unitfrmMaxiSelector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.CheckLst;

type
  TformMaxiSelector = class(TForm)
    dtpDate: TDateTimePicker;
    lblDate: TLabel;
    btnSelectFile: TButton;
    pnlMaxi: TPanel;
    btnSubmit: TButton;
    btnCloseApp: TButton;
    OpenDialog1: TOpenDialog;
    selectedFile: TLabel;
    lblArea: TLabel;
    chkbxArea: TCheckListBox;
    cbLoadBuild: TCheckBox;
    pnlBottom: TPanel;
    procedure FormShow(Sender: TObject) ;
    procedure btnSubmitClick(Sender: TObject) ;
    procedure FormCreate(Sender: TObject);
    procedure btnSelectFileClick(Sender: TObject);

  private
    FsArea: String ;
    FsDate: String ;
    FsFiles: String ;
    FbLoadBuild: Boolean ;
    FsFileExt: String;
    procedure SetArea(const Value: String) ;
    procedure SetFileExt(const Value: String);

  public
    property Date: String read FsDate ;
    property Files: String read FsFiles ;
    property Area: String read FsArea write SetArea ;
    property LoadBuild: Boolean read FbLoadBuild ;
    property FileExt: String read FsFileExt write SetFileExt ;
  end ;

implementation

{$R *.dfm}

procedure TformMaxiSelector.FormCreate(Sender: TObject);
begin
  FsArea := 'EN,SC,NI,ROI' ;
  FsDate := '' ;
  FsFiles := '' ;
  FbLoadBuild := False ;
end;

procedure TformMaxiSelector.FormShow(Sender: TObject);
begin
  chkbxArea.Items.StrictDelimiter := True ;
  chkbxArea.Items.CommaText := FsArea ;
end;

procedure TformMaxiSelector.SetArea(const Value: String);
begin
  FsArea := Value;
end;

procedure TformMaxiSelector.SetFileExt(const Value: String);
begin
  FsFileExt := Value;
  OpenDialog1.Filter := Format('%s Files|*.%s', [FsFileExt, FsFileExt]) ;
end;


procedure TformMaxiSelector.btnSelectFileClick(Sender: TObject) ;
begin
  if OpenDialog1.Execute then
    FsFiles := OpenDialog1.Files.CommaText ;

end ;

procedure TformMaxiSelector.btnSubmitClick(Sender: TObject);
var
  i: Integer ;
begin
  if (dtpDate.DateTime < Now) then
    ShowMessage('The date is in the past.')
  else
  begin
    FsDate := DateTimeToStr(dtpDate.Date);
    FsFiles := OpenDialog1.Files.CommaText ;
    FbLoadBuild := cbLoadBuild.Checked ;

    FsArea := '';

    for i := 0 to Pred(chkbxArea.Items.Count) do
    begin
      if chkbxArea.Checked[i] then
        FsArea := FsArea + ',' + chkbxArea.Items[i];
    end;
    if (FsArea <> '') then
      Delete(FsArea,1,1)
    else
      FsArea := chkbxArea.Items.CommaText ;

    ModalResult := mrOK ;
  end;

end ;

end.

