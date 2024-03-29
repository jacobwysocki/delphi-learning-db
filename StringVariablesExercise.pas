unit StringVariablesExercise;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmStringVariables = class(TForm)
    btnUpperCase: TButton;
    btnLowerCase: TButton;
    btnCopy: TButton;
    btnTrim: TButton;
    btnInsert: TButton;
    btnStringReplace: TButton;
    btnDisplayPangram: TButton;
    pnlLengthHeader: TPanel;
    pnlMessageHeader: TPanel;
    pnlLength: TPanel;
    pnlMessage: TPanel;
    edtPhrase: TEdit;
    pnlPhrase: TPanel;
    procedure btnDisplayPangramClick(Sender: TObject);
    procedure btnUpperCaseClick(Sender: TObject);
    procedure btnLowerCaseClick(Sender: TObject);
    procedure btnTrimClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStringVariables: TfrmStringVariables;

implementation

{$R *.dfm}



procedure TfrmStringVariables.btnDisplayPangramClick(Sender: TObject);

const
  PANGRAM = ' The quick brown fox jumps over the lazy dog ' ;
  SPEED_OF_LIGHT = 299792458;

var
  strPhrase, strMessage : String;
  bteLetterCount : Byte;

begin
  edtPhrase.Text := PANGRAM;
  strPhrase := edtPhrase.Text;

  bteLetterCount := Length(strPhrase);

  pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount),
                              ' letters');
  pnlMessage.Caption := Concat('Default phrase loaded ine the speed of light('
                                ,IntToStr(SPEED_OF_LIGHT),' m/s)');


end;

procedure TfrmStringVariables.btnLowerCaseClick(Sender: TObject);
var
  strPhrase : String;
  bteLetterCount: Byte;

begin
  strPhrase := edtPhrase.Text;

  edtPhrase.Text := LowerCase(strPhrase);

  bteLetterCount := Length(strPhrase);
  pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount), ' letters');

  pnlMessage.Caption := Concat('You formatted the text to Lower Case letters');
end;

procedure TfrmStringVariables.btnTrimClick(Sender: TObject);

var
  strPhrase : String;
  bteLetterCount: Byte;

begin
  strPhrase := edtPhrase.Text;

  edtPhrase.Text := Trim(strPhrase);
  strPhrase := edtPhrase.Text;

  bteLetterCount := Length(strPhrase);
  pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount), ' letters');

  pnlMessage.Caption := Concat('You removed/timmed leading and trailing spaces');
end;

procedure TfrmStringVariables.btnUpperCaseClick(Sender: TObject);

var
  strPhrase : String;
  bteLetterCount: Byte;

begin
  strPhrase := edtPhrase.Text;

  edtPhrase.Text := UpperCase(strPhrase);

  bteLetterCount := Length(strPhrase);
  pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount), ' letters');

  pnlMessage.Caption := Concat('You formatted the text to Upper Case letters');
end;

procedure TfrmStringVariables.btnCopyClick(Sender: TObject);
var
  strPhrase, strSelectedWord, strCopied : String;
  bteLetterCount, bteCopyStartPos, bteCopyLength : Byte;

begin
  strPhrase := edtPhrase.Text;
  bteLetterCount := Length(strPhrase);

  strSelectedWord := InputBox('Copy', 'Which word do you want to copy?', 'dog');

  bteCopyStartPos := Pos(strSelectedWord, strPhrase);

  bteCopyLength := Length(strSelectedWord);

  strCopied := Copy(strPhrase, bteCopyStartPos, bteCopyLength);

  bteLetterCount := Length(strPhrase);
  pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount), ' letters');

  pnlMessage.Caption := 'You copied ' + Concat('"', strCopied, '"');
end;

end.
