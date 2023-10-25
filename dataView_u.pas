unit dataView_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, dmCD_u, Vcl.StdCtrls, Vcl.Mask;

type
  TdataView = class(TForm)
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    btnSort: TButton;
    btnFindRecord: TButton;
    edtFind: TEdit;
    btnFindAverage: TButton;
    btnSortPriceAsc: TButton;
    btnSortPriceDesc: TButton;
    Panel1: TPanel;
    lblAveragePrice: TLabel;
    btnInsertRecord: TButton;
    btnEditRecord: TButton;
    btnDeleteRecord: TButton;
    DBGrid1: TDBGrid;
    procedure btnSortClick(Sender: TObject);
    procedure btnFindRecordClick(Sender: TObject);
    procedure btnSortPriceAscClick(Sender: TObject);
    procedure btnSortPriceDescClick(Sender: TObject);
    procedure btnFindAverageClick(Sender: TObject);
    procedure btnInsertRecordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dataView: TdataView;

implementation

{$R *.dfm}

procedure TdataView.btnFindRecordClick(Sender: TObject);

var sFind : string;

begin
sFind := edtFind.Text;
if dmCD.tblCD.Locate('CD_Name', sFind, []) = true then
  begin
    ShowMessage('Found! The artist for the CD "'+ sFind +'" is: ' + dmCD.tblCD['Artist']);
  end
else
  begin
    ShowMessage('"'+ sFind +'"' + ' Not Found!');
  end;
end;

procedure TdataView.btnSortClick(Sender: TObject);
begin
dmCD.tblCD.Sort := 'Artist ASC, CD_Name DESC' ;
end;

procedure TdataView.btnSortPriceAscClick(Sender: TObject);
begin
  dmCD.tblCD.Sort := 'Price ASC' ;
end;

procedure TdataView.btnSortPriceDescClick(Sender: TObject);
begin
  dmCD.tblCD.Sort := 'Price DESC' ;
end;



procedure TdataView.btnFindAverageClick(Sender: TObject);

var rSum, rAverage : real;

begin
with dmCD do
begin
  rSum := 0;

  tblCD.First;

  while not tblCD.eof do
  begin

    rSum := rSum + tblCD['Price'];
    tblCD.Next;
  end;

  rAverage := rSum / tblCD.RecordCount;

  ShowMessage('Average Price is: �' + FloatToStr(rAverage) + '. ' + 'Total Cost of all CDs is: �' + FloatToStr(rSum) + '. ');
  lblAveragePrice.Caption := '�' + FloatToStr(rAverage);
end;

end;

procedure TdataView.btnInsertRecordClick(Sender: TObject);
var sArtist, sCDName, sGenre : string;
    iPrice, iID, iOwnerID : integer;
begin
    sArtist := Inputbox('Artist', 'Enter Artist name: ', '49 Cent');
    sCDName := InputBox('CD Name', 'Enter CD Name: ', 'Life of a Cent');
    sGenre := InputBox('Genre', 'Enter Genre of the Music: ', 'Hip Hop');
    iPrice := StrToInt(InputBox('Price', 'Enter the Price: ', '14'));
    iOwnerID := StrToInt(InputBox('Owner', 'Enter owners ID: ', '1'));

    dmCD.tblCD.Sort := 'ID ASC';
    dmCD.tblCD.Last;

    //If ID is not set as an AutoNumbr
    //iID := dmCD.tblCD['ID'] + 1;

    begin
      dmCD.tblCD.Insert;
      //dmCD.tblCD['ID'] := iID;
      dmCD.tblCD['Artist'] := sArtist;
      dmCD.tblCD['CD_Name'] := sCDName;
      dmCD.tblCD['Genre'] := sGenre;
      dmCD.tblCD['Price'] := iPrice;
      dmCD.tblCD['OwnerID'] := iOwnerID;
      dmCD.tblCD.Post;
    end;
end;


end.
