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
  unitfrmMaxiSelector in 'unitfrmMaxiSelector.pas' {formMaxiSelector},
  SelectorMaxi in 'SelectorMaxi.pas' {MaxiSelectorForm},
  MathFunctions in 'MathFunctions.pas' {frmFunctions},
  Procedures in 'Procedures.pas' {frmProcedures};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfrmPersonalDetails, frmPersonalDetails);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TfrmStringVariables, frmStringVariables);
  Application.CreateForm(TdmCD, dmCD);
  Application.CreateForm(TdataView, dataView);
  Application.CreateForm(TFormRevenue, FormRevenue);
  Application.CreateForm(TFormRevenue2, FormRevenue2);
  Application.CreateForm(TSelectorMainForm, SelectorMainForm);
  Application.CreateForm(TMaxiSelectorForm, MaxiSelectorForm);
  Application.CreateForm(TfrmFunctions, frmFunctions);
  Application.CreateForm(TfrmProcedures, frmProcedures);
  Application.Run ;
end.
