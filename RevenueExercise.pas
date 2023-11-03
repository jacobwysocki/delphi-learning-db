unit RevenueExercise;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.ODBC, FireDAC.Phys.ODBCDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFormRevenue = class(TForm)
    dsRevenueTypes: TDataSource;
    fdMain: TFDConnection ;
    btnOpen: TButton;
    qryRevenueTypes: TFDQuery;
    dbgRevenueTypes: TDBGrid;
    qryRevenueTypesUniqueKey: TIntegerField;
    qryRevenueTypesDescription: TStringField;
    qryRevenueTypesSource: TByteField;
    qryRevenueTypesRevenueType: TIntegerField;
    qryRevenueTypesRevenueCountry: TStringField;
    qryRevenueTypesRevenueCategory: TIntegerField;
    qryRevenueTypesDefaultCurrency: TIntegerField;
    qryRevenueTypesActive: TStringField;
    btnClose: TButton;
    lblRevenueCountry: TLabel;
    lblSource: TLabel;
    lblRevenueType: TLabel;
    lblDescription: TLabel;
    lblRevenueCategory: TLabel;
    lblDefaultCurrency: TLabel;
    lblActive: TLabel;
    dbEdtDesc: TDBEdit;
    dbEdtSource: TDBEdit;
    dbEdtRevenueType: TDBEdit;
    dbEdtRevenueCountry: TDBEdit;
    dbEdtRevenueCategory: TDBEdit;
    dbEdtActive: TDBEdit;
    dbEdtDefaultCurrency: TDBEdit;
    pnlRevenueTypes: TPanel;
    procedure btnOpenClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRevenue: TFormRevenue;

implementation

{$R *.dfm}

procedure TFormRevenue.btnCloseClick(Sender: TObject);
begin
  fdMain.Connected := False ;
  qryRevenueTypes.Close ;
end;

procedure TFormRevenue.btnOpenClick(Sender: TObject);
begin
  fdMain.Connected := True ;
  qryRevenueTypes.Open ;

end;

end.
