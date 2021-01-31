unit kilt.dlgs.wait;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation;

type
  tkiltDlgsWait = class(TFrame)
    rectMessage: TRectangle;
    aniWait: TAniIndicator;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(pOwner: TComponent); override;
    destructor  Destroy; override;
  end;

var
  kiltDlgsWait: tkiltDlgsWait;

implementation

{$R *.fmx}

{ txutils_dlgs_wait }

constructor tkiltDlgsWait.Create(pOwner: TComponent);
begin
  inherited;

  aniWait.enabled := true;
end;

destructor tkiltDlgsWait.Destroy;
begin
  aniWait.enabled := false;

  inherited;
end;

procedure tkiltDlgsWait.FrameResize(Sender: TObject);
begin
  inherited;

//  {$IFDEF IOS}
//    pnl_message.height := self.height - ( self.height * 0.55);
//  {$ELSEIF ANDROID}
//    pnl_message.height := self.height - ( self.height * 0.55);
//  {$ENDIF}
//
//  if self.width < pnl_message.width then
//    pnl_message.width := self.width - 20;
end;

end.