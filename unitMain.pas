unit unitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RevenueExercise, RevenueExercise2, dataView_u, frmMain_u, SelectorMain;

type
  TMainForm = class(TForm)
    btnRevenueTypes: TButton;
    btnPersonalDetails: TButton;
    btnMusic: TButton;
    btnRevenueTypes2: TButton;
    btnSelector: TButton;
    btnClose: TButton;
    procedure btnRevenueTypesClick(Sender: TObject);
    procedure btnMusicClick(Sender: TObject);
    procedure btnPersonalDetailsClick(Sender: TObject);
    procedure btnRevenueTypes2Click(Sender: TObject);
    procedure btnSelectorClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btnPersonalDetailsClick(Sender: TObject);
var
frmPersonalDetails : TfrmPersonalDetails ;

begin
  frmPersonalDetails := TfrmPersonalDetails.Create(Self) ;
  frmPersonalDetails.ShowModal ;
end;

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

procedure TMainForm.btnCloseClick(Sender: TObject);
begin
  Application.Terminate ;
end ;

end.
