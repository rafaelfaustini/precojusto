unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, TFlatMemoUnit, TFlatEditUnit, TFlatButtonUnit,
  sSkinManager, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    XPManifest1: TXPManifest;
    Label9: TLabel;
    Label11: TLabel;
    Edit10: TFlatEdit;
    Edit9: TFlatEdit;
    Edit1: TFlatEdit;
    Edit2: TFlatEdit;
    Edit3: TFlatEdit;
    Edit4: TFlatEdit;
    Edit5: TFlatEdit;
    Edit6: TFlatEdit;
    Button1: TFlatButton;
    Edit7: TFlatEdit;
    sSkinManager1: TsSkinManager;
    Image1: TImage;
    CheckBox1: TCheckBox;
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

procedure TForm1.Button1Click(Sender: TObject);
var
a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,sr,srinflacao,lol : real;
Begin

a:= StrToFloat(edit1.text);
b:= StrToFloat(edit2.text);
c:= StrToFloat(edit3.text);
d:= StrToFloat(edit4.text);
e:= StrToFloat(edit5.text);
f:= StrToFloat(edit6.text);
j:= StrToFloat(edit9.Text);
k:= StrToFloat(edit10.Text);
if (edit1.text<> 'Salario Minimo') and (edit2.Text<> 'Média') and (edit3.Text<> 'Inflação') and (edit4.Text<> 'Estaduais') and (edit5.Text<> 'Federais') and (edit6.Text<> 'Municipais') and (edit9.Text<> 'Tempo') and (edit10.Text<> 'Preço')then
begin
lol:= ((a+b)*(5))/100;
srinflacao := ((lol)*(c))/100;
g:= lol - srinflacao;
h:= d+e+f;
i:= (2*(g)*(h))/100;
l:= ((j+k)*(5))/100;
m:= i + l;
if m > 200 then m:= m/2;
if m < 20 then m:= 2*m;
edit7.Text:= floattostr(m)
end
else
showmessage('Ha valores em branco !')
end;

end.
