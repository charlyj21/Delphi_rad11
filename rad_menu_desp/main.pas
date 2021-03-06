unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXPanels, Vcl.Buttons, Vcl.PlatformDefaultStyleActnCtrls,
  System.Actions, Vcl.ActnList, Vcl.ActnMan, System.ImageList, Vcl.ImgList;

type
  TUI = class(TForm)
    pan_principal: TPanel;
    pan_superior: TPanel;
    pan_inferior: TPanel;
    pan_deslizable: TPanel;
    pan_contenido: TPanel;
    lab_edit: TLabel;
    sbt_min: TSpeedButton;
    sbt_res: TSpeedButton;
    sbt_exp: TSpeedButton;
    sbt_close: TSpeedButton;
    sbt_menu: TSpeedButton;
    back_close: TPanel;
    back_exp: TPanel;
    back_min: TPanel;
    back_res: TPanel;
    back_menu: TPanel;
    CardPanel1: TCardPanel;
    sbt_uno: TSpeedButton;
    sbt_dos: TSpeedButton;
    sbt_config: TSpeedButton;
    sbt_tres: TSpeedButton;
    sbt_cuatro: TSpeedButton;
    procedure sbt_closeMouseEnter(Sender: TObject);
    procedure sbt_closeMouseLeave(Sender: TObject);
    procedure sbt_expMouseEnter(Sender: TObject);
    procedure sbt_expMouseLeave(Sender: TObject);
    procedure sbt_resMouseEnter(Sender: TObject);
    procedure sbt_resMouseLeave(Sender: TObject);
    procedure sbt_minMouseEnter(Sender: TObject);
    procedure sbt_minMouseLeave(Sender: TObject);
    procedure sbt_menuMouseEnter(Sender: TObject);
    procedure sbt_menuMouseLeave(Sender: TObject);
    procedure lab_editMouseEnter(Sender: TObject);
    procedure lab_editMouseLeave(Sender: TObject);
    procedure sbt_closeClick(Sender: TObject);
    procedure sbt_expClick(Sender: TObject);
    procedure sbt_resClick(Sender: TObject);
    procedure sbt_minClick(Sender: TObject);
    procedure pan_superiorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbt_menuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UI: TUI;

implementation

{$R *.dfm}

procedure TUI.lab_editMouseEnter(Sender: TObject);
begin
  lab_edit.font.Color:=$0000FF;
end;

procedure TUI.lab_editMouseLeave(Sender: TObject);
begin
  lab_edit.font.Color:=$FFFFFF;
end;

procedure TUI.pan_superiorMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  const
  SC_DRAGMOVE = $F012;
  begin
  if Button = mbLeft then
  begin
    ReleaseCapture;
    Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;
end;

procedure TUI.sbt_closeClick(Sender: TObject);
begin
  ui.Close;
end;

procedure TUI.sbt_closeMouseEnter(Sender: TObject);
begin
  back_close.Color:=$0000FF;
end;

procedure TUI.sbt_closeMouseLeave(Sender: TObject);
begin
  back_close.Color:=$2E110B;
end;

procedure TUI.sbt_expClick(Sender: TObject);
begin
  ui.Position:=podefault;
  ui.Width:=screen.WorkAreaWidth;
  ui.Height:=screen.WorkAreaHeight;
  back_min.Visible:=false;
  back_exp.Visible:=false;
  back_close.Visible:=false;
  back_close.Visible:=true;
  back_res.Visible:=true;
  back_min.Visible:=true;

end;

procedure TUI.sbt_expMouseEnter(Sender: TObject);
begin
  back_exp.Color:=$00F200;
end;

procedure TUI.sbt_expMouseLeave(Sender: TObject);
begin
  back_exp.Color:=$2E110B;
end;

procedure TUI.sbt_menuClick(Sender: TObject);
begin
    if pan_deslizable.Width=0 then
    begin
      pan_deslizable.Constraints.MinWidth:=200;
      pan_deslizable.Width:=200;
    end
    else
    begin
      pan_deslizable.Constraints.MinWidth:=0;
      pan_deslizable.Width:=0;
    end;
end;

procedure TUI.sbt_menuMouseEnter(Sender: TObject);
begin
  back_menu.Color:=$373413;
end;

procedure TUI.sbt_menuMouseLeave(Sender: TObject);
begin
  back_menu.Color:=$2E110B;
end;

procedure TUI.sbt_minClick(Sender: TObject);
begin
  ui.WindowState:=wsMinimized;
end;

procedure TUI.sbt_minMouseEnter(Sender: TObject);
begin
  back_min.Color:=$02C2F0;
end;

procedure TUI.sbt_minMouseLeave(Sender: TObject);
begin
  back_min.Color:=$2E110B;
end;

procedure TUI.sbt_resClick(Sender: TObject);
begin
  back_min.Visible:=false;
  back_res.Visible:=false;
  back_close.Visible:=false;
  back_close.Visible:=true;
  back_exp.Visible:=true;
  back_min.Visible:=true;
  ui.Width:=750;
  ui.Height:=460;
  ui.Position:=poDesktopCenter;

end;

procedure TUI.sbt_resMouseEnter(Sender: TObject);
begin
  back_res.Color:=$00F200;
end;

procedure TUI.sbt_resMouseLeave(Sender: TObject);
begin
  back_res.Color:=$2E110B;
end;

end.
