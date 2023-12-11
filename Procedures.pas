unit Procedures;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmProcedures = class(TForm)
    btnExctract: TButton;
    btnDisplay: TButton;
    lblID: TLabel;
    edtID: TEdit;
    mmProcedure: TMemo ;
    procedure btnDisplayClick(Sender: TObject) ;
    procedure displayInfo() ;
    procedure displayInfoWithParam(iText:String) ;
    procedure extractDate(sID:String) ;
    procedure extractDateModifyParams(sID:String ; var iYear,iMonth,iDay:Integer) ;
    procedure btnExctractClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcedures: TfrmProcedures;

implementation

{$R *.dfm}

procedure TfrmProcedures.btnDisplayClick(Sender: TObject);
begin
  //displayInfo();
  displayInfoWithParam('Test 5') ;
end;

procedure TfrmProcedures.btnExctractClick(Sender: TObject);
var
  iYear, iMonth, iDay: Integer ;
begin
  //extractDate(edtID.text) ;
  mmProcedure.Lines.Add('---BEFORE---:') ;
  mmProcedure.Lines.Add('Year: '+ IntToStr(iYear)) ;
  mmProcedure.Lines.Add('Month: '+ IntToStr(iMonth)) ;
  mmProcedure.Lines.Add('Day: '+ IntToStr(iDay)) ;

  extractDateModifyParams(edtID.text, iYear, iMonth, iDay) ;

  mmProcedure.Lines.Add('---AFTER---:') ;
  mmProcedure.Lines.Add('Year: '+ IntToStr(iYear)) ;
  mmProcedure.Lines.Add('Month: '+ IntToStr(iMonth)) ;
  mmProcedure.Lines.Add('Day: '+ IntToStr(iDay)) ;
end;

procedure TfrmProcedures.displayInfo;
begin
  mmProcedure.Lines.Add('Test') ;
  mmProcedure.Lines.Add('Test 2') ;
  mmProcedure.Lines.Add('Test 3') ;
  mmProcedure.Lines.Add('Test 4') ;
end;

procedure TfrmProcedures.displayInfoWithParam(iText: string);
begin
  mmProcedure.Lines.Add('Test') ;
  mmProcedure.Lines.Add('Test 2') ;
  mmProcedure.Lines.Add('Test 3') ;
  mmProcedure.Lines.Add('Test 4 ' + iText + ' Test 6');
end;

procedure TfrmProcedures.extractDate(sID: String);
begin
  mmProcedure.Lines.Add('Year: '+ sID.Substring(0,2)) ;
  mmProcedure.Lines.Add('Month: '+ sID.Substring(2,2)) ;
  mmProcedure.Lines.Add('Day: '+ sID.Substring(4,2)) ;
end;

procedure TfrmProcedures.extractDateModifyParams(sID: String; var iYear, iMonth, iDay: Integer);
begin
  iYear := strToInt(sID.Substring(0,2)) ;
  iMonth := strToInt(sID.Substring(2,2)) ;
  iDay := strToInt(sID.Substring(4,2)) ;

  mmProcedure.Lines.Add('---IN PROCEDURE---:') ;
  mmProcedure.Lines.Add('Year: '+ IntToStr(iYear)) ;
  mmProcedure.Lines.Add('Month: '+ IntToStr(iMonth)) ;
  mmProcedure.Lines.Add('Day: '+ IntToStr(iDay)) ;
end;

end.
