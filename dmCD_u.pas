unit dmCD_u;

interface

uses
  System.SysUtils, System.Classes, JvComponentBase, JvDBGridExport, Data.DB,
  Data.Win.ADODB;

type
  TdmCD = class(TDataModule)
    conCDDatabase: TADOConnection;
    tblCD: TADOTable;
    dscCD: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCD: TdmCD;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
