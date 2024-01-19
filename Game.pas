unit Game;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmGame = class(TForm)
    rdgOptions: TRadioGroup;
    btnReset: TButton;
    lblComputerSelected: TLabel;
    lblComputerResult: TLabel;
    lblWinner: TLabel;
    lblResult: TLabel;
    pnlUserSelect: TPanel;
    pnlComputerSelect: TPanel;
    pnlResult: TPanel;
    procedure rdgOptionsClick(Sender: TObject);
    function computerSelect(): Integer;
    procedure computerSelectMapper(iComputerOption: Integer);
    procedure calculateWinner(iPlayerOption, iComputerOption: Integer);
    procedure btnResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGame: TfrmGame;

implementation

{$R *.dfm}

procedure TfrmGame.btnResetClick(Sender: TObject);
begin
  rdgOptions.ItemIndex :=-1 ;
  lblWinner.Caption :='Result' ;
  lblComputerResult.Caption := '' ;
end;

procedure TfrmGame.calculateWinner(iPlayerOption, iComputerOption: Integer);
begin
  if (iPlayerOption = iComputerOption) then
  begin
    lblWinner.Caption := 'Its a draw';
  end

  else if ((iPlayerOption = 0) and (iComputerOption = 1)) or
          ((iPlayerOption = 1) and (iComputerOption = 2)) or
          ((iPlayerOption = 3) and (iComputerOption = 0)) or
          ((iPlayerOption = 2) and (iComputerOption = 0))then
  begin
    lblWinner.Caption := 'You lost!';
  end

  else if ((iPlayerOption = 0) and (iComputerOption = 2)) or
          ((iPlayerOption = 1) and (iComputerOption = 0)) or
          ((iPlayerOption = 2) and (iComputerOption = 1)) then
  begin
    lblWinner.Caption := 'You won!';
  end

  else
  begin
    lblWinner.Caption := 'Nobody won!';
  end;
end;

function TfrmGame.computerSelect: Integer;
begin
  result := random(3);
end;

procedure TfrmGame.computerSelectMapper(iComputerOption: Integer);
begin
  if (iComputerOption = 0) then
  begin
    lblComputerResult.Caption := 'Rock';
  end
  else if (iComputerOption = 1) then
  begin
    lblComputerResult.Caption := 'Paper';
  end
  else if (iComputerOption = 2) then
  begin
    lblComputerResult.Caption := 'Scissors';
  end

end;

procedure TfrmGame.rdgOptionsClick(Sender: TObject);
var
  player1Selected: Integer;
  computerChoice: Integer;

begin
  player1Selected := rdgOptions.ItemIndex;
  computerChoice := computerSelect;
  computerSelectMapper(computerChoice);

  calculateWinner(player1Selected, computerChoice) ;
  // ShowMessage(IntToStr(player1Selected)) ;

end;

end.
