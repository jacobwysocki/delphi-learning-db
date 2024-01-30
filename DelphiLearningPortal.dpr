program DelphiLearningPortal;

uses
  Vcl.Forms,
  PersonalInformationForm in 'PersonalInformationForm.pas' {frmPersonalDetails},
  GreetingUserNoName in 'GreetingUserNoName.pas' {Form2},
  GreetingUserName in 'GreetingUserName.pas' {Form3},
  Vcl.Themes,
  Vcl.Styles,
  StringVariablesExercise in 'StringVariablesExercise.pas' {frmStringVariables},
  dmCD_u in 'dmCD_u.pas' {dmCD: TDataModule},
  MusicDBForm in 'MusicDBForm.pas' {dataView},
  RevenueExerciseDBForm in 'RevenueExerciseDBForm.pas' {FormRevenue},
  MainPage in 'MainPage.pas' {MainForm},
  RevenueExerciseDBInteractiveForm in 'RevenueExerciseDBInteractiveForm.pas' {FormRevenue2},
  SelectorMain in 'SelectorMain.pas' {SelectorMainForm},
  unitfrmMaxiSelector in 'unitfrmMaxiSelector.pas' {formMaxiSelector},
  SelectorMaxi in 'SelectorMaxi.pas' {MaxiSelectorForm},
  MathFunctions in 'MathFunctions.pas' {frmFunctions},
  Procedures in 'Procedures.pas' {frmProcedures},
  Game in 'Game.pas' {frmGame};

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
  Application.CreateForm(TfrmGame, frmGame);
  Application.Run ;
end.
