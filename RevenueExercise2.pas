unit RevenueExercise2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.ODBC, FireDAC.Phys.ODBCDef, FireDAC.VCLUI.Wait, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Comp.Client, FireDAC.Comp.DataSet, RevenueExercise;

type
  TFormRevenue2 = class(TForm)
    dbgRevenueTypes: TDBGrid;
    dsRevenueTypes2: TDataSource;
    qryRevenueTypes2: TFDQuery;
    qryRevenueTypes2UniqueKey: TIntegerField;
    qryRevenueTypes2Description: TStringField;
    qryRevenueTypes2Source: TByteField;
    qryRevenueTypes2RevenueType: TIntegerField;
    qryRevenueTypes2RevenueCountry: TStringField;
    qryRevenueTypes2RevenueCategory: TIntegerField;
    qryRevenueTypes2DefaultCurrency: TIntegerField;
    qryRevenueTypes2Active: TStringField;
    pnlRevenueTypes: TPanel;
    lblDefaultCurrency: TLabel;
    lblDescription: TLabel;
    lblRevenueCategory: TLabel;
    lblRevenueCountry: TLabel;
    lblRevenueType: TLabel;
    lblSource: TLabel;
    lblActive: TLabel;
    dbEdtActive: TDBEdit;
    dbEdtDefaultCurrency: TDBEdit;
    dbEdtDesc: TDBEdit;
    dbEdtRevenueCategory: TDBEdit;
    dbEdtRevenueCountry: TDBEdit;
    dbEdtRevenueType: TDBEdit;
    dbEdtSource: TDBEdit;
    fdMain2: TFDConnection;
    qryRevenueTypes3: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    ByteField1: TByteField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField3: TStringField;
    dsRevenueTypes3: TDataSource;
    btnOpenClose: TButton ;
    procedure dsRevenueTypes2StateChange(Sender: TObject);
    procedure btnOpenCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRevenue2: TFormRevenue2;

implementation

{$R *.dfm}


procedure TFormRevenue2.btnOpenCloseClick(Sender: TObject);
begin
  if btnOpenClose.Caption = 'Open' then
  begin
    fdMain2.Connected := True ;
    qryRevenueTypes2.Open ;
  end
  else
  begin
    fdMain2.Connected := False ;
    qryRevenueTypes2.Close ;
  end ;
end;

procedure TFormRevenue2.dsRevenueTypes2StateChange(Sender: TObject);
begin

begin
  if not qryRevenueTypes2.Active then
    btnOpenClose.Caption := 'Open'
  else
    btnOpenClose.Caption := 'Close' ;
end;
end ;

end.
