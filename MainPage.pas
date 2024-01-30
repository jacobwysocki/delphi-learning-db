unit MainPage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RevenueExerciseDBInteractiveForm, RevenueExerciseDBForm, StringVariablesExercise,
  MusicDBForm, PersonalInformationForm, SelectorMain, MathFunctions, Procedures, Game, Vcl.ExtCtrls, EnPngGr, ShellAPI, Vcl.ComCtrls;

type
  TMainForm = class(TForm)
    btnRevenueTypes: TButton;
    btnPersonalDetails: TButton;
    btnMusic: TButton;
    btnRevenueTypes2: TButton;
    btnSelector: TButton;
    btnClose: TButton;
    btnFunctions: TButton;
    btnProcedures: TButton;
    btnGame: TButton;
    pnlTopbar: TPanel;
    pnlSidebar: TPanel;
    pnlMain: TPanel;
    lblDBExercises: TLabel;
    pnlUIExercises: TPanel;
    pnlDBExercises: TPanel;
    imgDelphi: TImage;
    lblDelphiPortal: TLabel;
    lblDelphiVersion: TLabel;
    lblUIExercises: TLabel;
    imgAvatar: TImage;
    lblUsername: TLabel;
    lblUserTitle: TLabel;
    lblLinkedin: TLabel;
    lblContact: TLabel;
    imgLinkedin: TImage;
    imgGithub: TImage;
    lblGithubLink: TLabel;
    pnlResources: TPanel;
    lblResources: TLabel;
    btnLearnDelphiYT: TButton;
    btnDatabasesInDelphi: TButton;
    btnUdemyPracticalDelphi: TButton;
    btnAdvancedDb: TButton;
    pnlGithub: TPanel;
    pnlLinkedin: TPanel;
    btnLearnDelphi: TButton;
    btnStringVariables: TButton;
    procedure btnRevenueTypesClick(Sender: TObject);
    procedure btnMusicClick(Sender: TObject);
    procedure btnPersonalDetailsClick(Sender: TObject);
    procedure btnRevenueTypes2Click(Sender: TObject);
    procedure btnSelectorClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnFunctionsClick(Sender: TObject);
    procedure btnProceduresClick(Sender: TObject);
    procedure btnGameClick(Sender: TObject) ;
    procedure pnlGithubClick(Sender: TObject);
    procedure pnlGithubMouseEnter(Sender: TObject);
    procedure pnlGithubMouseLeave(Sender: TObject);
    procedure btnLearnDelphiYTClick(Sender: TObject);
    procedure btnDatabasesInDelphiClick(Sender: TObject);
    procedure btnUdemyPracticalDelphiClick(Sender: TObject);
    procedure btnAdvancedDbClick(Sender: TObject);
    procedure btnLearnDelphiClick(Sender: TObject);
    procedure pnlLinkedinClick(Sender: TObject);
    procedure pnlLinkedinMouseEnter(Sender: TObject);
    procedure pnlLinkedinMouseLeave(Sender: TObject);
    procedure btnStringVariablesClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm ;

implementation

{$R *.dfm}




procedure TMainForm.btnPersonalDetailsClick(Sender: TObject);
var
frmPersonalDetails : TfrmPersonalDetails ;

begin
  frmPersonalDetails := TfrmPersonalDetails.Create(Self) ;
  frmPersonalDetails.ShowModal ;
end;

procedure TMainForm.btnProceduresClick(Sender: TObject);
var
frmProcedures: TfrmProcedures ;

begin
  frmProcedures := TfrmProcedures.Create(Self) ;
  frmProcedures.ShowModal ;
end ;


procedure TMainForm.btnFunctionsClick(Sender: TObject);
var
frmFunctions: TfrmFunctions ;

begin
  frmFunctions := TfrmFunctions.Create(Self) ;
  frmFunctions.ShowModal ;
end;

procedure TMainForm.btnGameClick(Sender: TObject) ;
var
  frmGame: TfrmGame ;
begin
  frmGame := TfrmGame.Create(Self) ;
  frmGame.ShowModal ;
end ;

procedure TMainForm.btnMusicClick(Sender: TObject);
var
dataView : TdataView ;

begin
  dataView := TdataView.Create(Self) ;
  dataView.ShowModal ;
end;

procedure TMainForm.btnRevenueTypes2Click(Sender: TObject);
var
frmRevenue2 : TFormRevenue2 ;

begin
  frmRevenue2 := TFormRevenue2.Create(Self) ;
  frmRevenue2.ShowModal ;
end ;

procedure TMainForm.btnRevenueTypesClick(Sender: TObject);
var
frmRevenue : TFormRevenue ;

begin
  frmRevenue := TFormRevenue.Create(Self) ;
  frmRevenue.ShowModal ;
end ;

procedure TMainForm.btnSelectorClick(Sender: TObject);
var
frmSelector : TSelectorMainForm ;

begin
  frmSelector := TSelectorMainForm.Create(Self) ;
  frmSelector.ShowModal ;
end ;


procedure TMainForm.btnStringVariablesClick(Sender: TObject);
var
frmStringVariables : TfrmStringVariables ;

begin
  frmStringVariables := TfrmStringVariables.Create(Self) ;
  frmStringVariables.ShowModal ;
end ;

procedure OpenURL(const URL: string);
begin
  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.btnLearnDelphiYTClick(Sender: TObject);
const
  URLToOpen = 'https://www.youtube.com/playlist?list=PLZZqoiUyRBsRTgdPJPr-eqAiOnKlP3CaP';
begin
  OpenURL(URLToOpen);
end;

procedure TMainForm.btnDatabasesInDelphiClick(Sender: TObject);
const
  URLToOpen = 'https://www.youtube.com/watch?v=dwb0wv6IJqA&list=PLxAS51iVMjv_buZ6zbd6k3cMWrTrU0Nio&index=1&ab_channel=MrLongEducation-IT%26CAT';
begin
  OpenURL(URLToOpen);
end ;

procedure TMainForm.btnUdemyPracticalDelphiClick(Sender: TObject);
const
  URLToOpen = 'https://www.udemy.com/course/delphi_beginners/';
begin
  OpenURL(URLToOpen);
end ;

procedure TMainForm.btnAdvancedDbClick(Sender: TObject);
const
  URLToOpen = 'https://www.youtube.com/playlist?list=PLxAS51iVMjv8LO-wPGLu0jxriunhkvi94';
begin
  OpenURL(URLToOpen);
end ;

procedure TMainForm.btnLearnDelphiClick(Sender: TObject);
const
  URLToOpen = 'https://learndelphi.org/';
begin
  OpenURL(URLToOpen);
end ;


procedure TMainForm.pnlGithubClick(Sender: TObject);
const
  URLToOpen = 'https://github.com/jacobwysocki';
begin
  OpenURL(URLToOpen);
end ;

procedure TMainForm.pnlGithubMouseEnter(Sender: TObject);
begin
  lblGithubLink.Font.Color := clSilver ;
end ;

procedure TMainForm.pnlGithubMouseLeave(Sender: TObject);
begin
  lblGithubLink.Font.Color := clWhite ;
end ;

procedure TMainForm.pnlLinkedinClick(Sender: TObject);
const
  URLToOpen = 'https://www.linkedin.com/in/jakub-wysocki00';
begin
  OpenURL(URLToOpen);
end ;

procedure TMainForm.pnlLinkedinMouseEnter(Sender: TObject);
begin
  lblLinkedin.Font.Color := clSilver ;
end;

procedure TMainForm.pnlLinkedinMouseLeave(Sender: TObject);
begin
  lblLinkedin.Font.Color := clWhite ;
end;

procedure TMainForm.btnCloseClick(Sender: TObject);
begin
  Application.Terminate ;
end ;

end.
