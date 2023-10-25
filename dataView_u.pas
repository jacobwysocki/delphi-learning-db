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
    DBGrid1: TDBGrid;
    btnFindAverage: TButton;
    edtFindAverage: TEdit;
    btnSortPriceAsc: TButton;
    btnSortPriceDesc: TButton;
    procedure btnSortClick(Sender: TObject);
    procedure btnFindRecordClick(Sender: TObject);
    procedure btnSortPriceAscClick(Sender: TObject);
    procedure btnSortPriceDescClick(Sender: TObject);
    procedure btnFindAverageClick(Sender: TObject);
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
end;

end;

end.
