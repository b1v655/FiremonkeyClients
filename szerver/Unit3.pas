unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent, IdCustomTCPServer, IdTCPServer, Vcl.StdCtrls, IdContext;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    IdTCPServer1: TIdTCPServer;
    ListBox1: TListBox;
    Memo1: TMemo;
    Edit2: TEdit;
    procedure CheckBox1Click(Sender: TObject);
    procedure IdTCPServer1Execute(AContext: TIdContext);
    procedure IdTCPServer1Connect(AContext: TIdContext);
    procedure IdTCPServer1Disconnect(AContext: TIdContext);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
implementation

{$R *.dfm}
uses IDGlobal;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
    IdTCPServer1.Active:=false;
    IdTCPServer1.DefaultPort:=StrToIntDEf(Edit1.Text,2019);
  end;
  IdTCPServer1.Active:=CheckBox1.Checked;
end;

procedure TForm3.IdTCPServer1Connect(AContext: TIdContext);
var ip:string;
begin
  ip:=AContext.Connection.Socket.Binding.PeerIP;
  if ListBox1.Items.IndexOf(ip)<0 then begin
    ListBox1.Items.Add(ip);
  end;
end;

procedure TForm3.IdTCPServer1Disconnect(AContext: TIdContext);
var ip:string;
    ind:integer;
begin
  ip:=AContext.Connection.Socket.Binding.PeerIP;
  ind:=ListBox1.Items.IndexOf(ip);
  if ind>=0 then begin
    ListBox1.Items.Delete(ind);
  end;
end;

procedure TForm3.IdTCPServer1Execute(AContext: TIdContext);
var ip,s,answ:string;
begin
  //
  ip:=AContext.Connection.Socket.Binding.PeerIP;
  s:=AContext.Connection.IOHandler.ReadLn(IndyTextEncoding_UTF8);
  memo1.Lines.Add(DateTimeToStr(Now)+'  '+s);
  //feldolgozás
  answ:=Edit2.text;
  AContext.Connection.IOHandler.Writeln(answ,IndyTextEncoding_UTF8);
end;

end.
