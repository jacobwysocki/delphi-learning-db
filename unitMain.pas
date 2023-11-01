unit unitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RevenueExercise;

type
  TMainForm = class(TForm)
    btnRevenueTypes: TButton;
    procedure btnRevenueTypesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btnRevenueTypesClick(Sender: TObject);
var
frmRevenue : TFormRevenue ;

begin
  frmRevenue := TFormRevenue.Create(Self) ;
  frmRevenue.ShowModal ;
end;

end.
