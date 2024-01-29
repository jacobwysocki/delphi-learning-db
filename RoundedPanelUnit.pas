unit RoundedPanelUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, ExtCtrls;

type
  TRoundedPanel = class(TPanel)
  private
    procedure DrawRoundedRect(Canvas: TCanvas; ARect: TRect; ARadius: Integer);
  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{ TRoundedPanel }

constructor TRoundedPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  BevelOuter := bvNone;
end;

procedure TRoundedPanel.DrawRoundedRect(Canvas: TCanvas; ARect: TRect; ARadius: Integer) ;
var
  P: array [0..3] of TPoint;
begin
  P[0] := Point(ARect.Left, ARect.Top + ARadius);
  P[1] := Point(ARect.Left, ARect.Bottom - ARadius);
  P[2] := Point(ARect.Left + ARadius, ARect.Bottom);
  P[3] := Point(ARect.Right - ARadius, ARect.Bottom);

  Canvas.Pen.Style := psClear;
  Canvas.Brush.Style := bsSolid;
  Canvas.Brush.Color := Color;

  Canvas.RoundRect(ARect.Left, ARect.Top, ARect.Right, ARect.Bottom, ARadius, ARadius);

  Canvas.Pen.Style := psSolid;
  Canvas.Brush.Color := Color;
end;

procedure TRoundedPanel.Paint;
begin
  inherited;

  DrawRoundedRect(Canvas, ClientRect, 10);
end;

end.

