program NameProject_p;

uses
  Vcl.Forms,
  frmMain_u in 'frmMain_u.pas' {frmPersonalDetails},
  frmUser_u in 'frmUser_u.pas' {Form2},
  frmName_u in 'frmName_u.pas' {Form3},
  Vcl.Themes,
  Vcl.Styles,
  frmStringVariables_u in 'frmStringVariables_u.pas' {frmStringVariables},
  dmCD_u in 'dmCD_u.pas' {dmCD: TDataModule},
  dataView_u in 'dataView_u.pas' {dataView},
  RevenueExercise in 'RevenueExercise.pas' {FormRevenue},
  unitMain in 'unitMain.pas' {MainForm},
  RevenueExercise2 in 'RevenueExercise2.pas' {FormRevenue2},
  SelectorMain in 'SelectorMain.pas' {SelectorMainForm},
  SelectorMaxi in 'SelectorMaxi.pas' {MaxiSelectorForm} ;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
