program NameProject_p;

uses
  Vcl.Forms,
  frmMain_u in 'frmMain_u.pas' {Form1},
  frmUser_u in 'frmUser_u.pas' {Form2},
  frmName_u in 'frmName_u.pas' {Form3},
  Vcl.Themes,
  Vcl.Styles,
  frmStringVariables_u in 'frmStringVariables_u.pas' {frmStringVariables},
  dmCD_u in 'dmCD_u.pas' {dmCD: TDataModule},
  dataView_u in 'dataView_u.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TfrmStringVariables, frmStringVariables);
  Application.CreateForm(TdmCD, dmCD);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
