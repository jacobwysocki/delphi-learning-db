unit dataView_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, dmCD_u, Vcl.StdCtrls, Vcl.Mask;

type
  TdataView = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    btnSort: TButton;
    procedure btnSortClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dataView: TdataView;

implementation

{$R *.dfm}

procedure TdataView.btnSortClick(Sender: TObject);
begin
dmCD.tblCD.Sort := 'Artist ASC, CD_Name DESC' ;
end;

end.
