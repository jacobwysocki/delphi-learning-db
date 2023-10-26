unit frmMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frmUser_u, frmName_u, frmStringVariables_u
  ,Vcl.ExtCtrls, Vcl.Buttons, EnPngGr, Vcl.ComCtrls, dataView_u;

type
  TForm1 = class(TForm)
    btnSubmit: TButton;
    edtFirstName: TEdit;
    lblFirstName: TLabel;
    lblDetails: TLabel;
    btnClose: TButton;
    pnlContactInfo: TPanel;
    pnlPersonalInfo: TPanel;
    pnlAddress: TPanel;
    pnlContactDetails: TPanel;
    pnlActions: TPanel;
    bmbReset: TBitBtn;
    bmbHelp: TBitBtn;
    bmbClose: TBitBtn;
    lblLastName: TLabel;
    lblAge: TLabel;
    edtLastName: TEdit;
    lblStreet: TLabel;
    chkShareNameNo: TCheckBox;
    chkShareNameYes: TCheckBox;
    lblShareName: TLabel;
    lblCity: TLabel;
    lblCountry: TLabel;
    lblPostalCode: TLabel;
    lblMobile: TLabel;
    lblEmail: TLabel;
    edtStreet: TEdit;
    edtCity: TEdit;
    edtPostalCode: TEdit;
    edtCountry: TEdit;
    edtMobile: TEdit;
    edtEmail: TEdit;
    cbxAge: TComboBox;
    imgAvatar: TImage;
    redCompanyOutput: TRichEdit;
    pnlCompanyDetails: TPanel;
    pnlCustomerDetails: TPanel;
    redCustomerOutput: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pnlCustomerDetailsSubmitted: TPanel;
    pnlCompanyInfo: TPanel;
    btnStringVariables: TButton;
    Button1: TButton;
    procedure btnSubmitClick(Sender: TObject);
    procedure chkShareNameYesClick(Sender: TObject);
    procedure chkShareNameNoClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
    procedure btnStringVariablesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


var
chkShareNameYesChecked: Boolean;
chkShareNameNoChecked: Boolean;

procedure TForm1.chkShareNameYesClick(Sender: TObject);

begin
  chkShareNameYesChecked := chkShareNameYes.Checked;
end;

procedure TForm1.chkShareNameNoClick(Sender: TObject);

begin
  chkShareNameNoChecked := chkShareNameNo.Checked;
end;

procedure TForm1.bmbResetClick(Sender: TObject);

var
I : integer;
J: Integer;
L: TLabel;


begin
  cbxAge.ItemIndex := 0;

  for J := 1 to 7 do
    begin
      L := FindComponent('Label' + IntToStr(J)) as TLabel;
      L.Free();
    end;


  for I := 0 to componentcount -1 do
    begin
      if components[I] is Tedit then
        begin
          Tedit(components[I]).Clear;
      end;
    end;

end;


procedure TForm1.btnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.btnStringVariablesClick(Sender: TObject);
begin
  frmStringVariables.Show;
end;

procedure TForm1.btnSubmitClick(Sender: TObject);
begin
  Form3.EditValue := edtFirstName.Text +' '+ edtLastName.Text;
    if (chkShareNameYesChecked) and (not chkShareNameNoChecked)
    then
      Form3.ShowModal
    else if (not chkShareNameYesChecked) and (chkShareNameNoChecked)
    then
      Form2.ShowModal
    else if (chkShareNameYesChecked) and (chkShareNameNoChecked)
    then
    begin
      Form2.Show;
      Form3.Show;
    end;

  Label1.Caption := edtFirstName.Text + ' ' + edtLastName.Text;
  Label2.Caption := cbxAge.Text;
  Label3.Caption := edtStreet.Text;
  Label4.Caption := edtCity.Text + ', ' + UpperCase(edtCountry.Text);
  Label5.Caption := UpperCase(edtPostalCode.Text);
  Label6.Caption := edtMobile.Text;
  Label7.Caption := LowerCase(edtEmail.Text);

end;



procedure TForm1.Button1Click(Sender: TObject);
begin
  dataView.Show;
end;

end.
