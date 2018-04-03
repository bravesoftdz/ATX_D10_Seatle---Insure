unit SetActive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes;

type
  TSActivate = class(TObject)
  private
   function GetNumb(const S:AnsiString):String;
  public
   function ChecCode(c1,c2:String):boolean;
  end;

implementation

function  TSActivate.GetNumb(const S:AnsiString):String;
var
  I:Integer;
begin
  Result:='';
  for I := 1 to Length(S) do
  begin
    case S[I] of
'0':Result:=Result+'z';
'1':Result:=Result+'x';
'2':Result:=Result+'c';
'3':Result:=Result+'v';
'4':Result:=Result+'b';
'5':Result:=Result+'n';
'6':Result:=Result+'m';
'7':Result:=Result+'a';
'8':Result:=Result+'s';
'9':Result:=Result+'d';
'A':Result:=Result+'f';
'B':Result:=Result+'g';
'C':Result:=Result+'h';
'D':Result:=Result+'j';
'E':Result:=Result+'k';
'F':Result:=Result+'l';
'G':Result:=Result+'q';
'H':Result:=Result+'w';
'I':Result:=Result+'e';
'J':Result:=Result+'r';
'K':Result:=Result+'t';
'L':Result:=Result+'y';
'M':Result:=Result+'u';
'N':Result:=Result+'i';
'O':Result:=Result+'o';
'P':Result:=Result+'p';
'Q':Result:=Result+'1';
'R':Result:=Result+'2';
'S':Result:=Result+'3';
'T':Result:=Result+'4';
'U':Result:=Result+'5';
'V':Result:=Result+'6';
'W':Result:=Result+'7';
'X':Result:=Result+'8';
'Y':Result:=Result+'9';
'Z':Result:=Result+'0';
'a':Result:=Result+'Z';
'b':Result:=Result+'X';
'c':Result:=Result+'C';
'd':Result:=Result+'V';
'e':Result:=Result+'B';
'f':Result:=Result+'N';
'g':Result:=Result+'M';
'h':Result:=Result+'A';
'i':Result:=Result+'S';
'j':Result:=Result+'D';
'k':Result:=Result+'F';
'l':Result:=Result+'G';
'm':Result:=Result+'H';
'n':Result:=Result+'J';
'o':Result:=Result+'K';
'p':Result:=Result+'L';
'q':Result:=Result+'Q';
'r':Result:=Result+'W';
's':Result:=Result+'E';
't':Result:=Result+'R';
'u':Result:=Result+'T';
'v':Result:=Result+'Y';
'w':Result:=Result+'U';
'x':Result:=Result+'I';
'y':Result:=Result+'O';
'z':Result:=Result+'P';
    else ;
      Result:=Result+'';
    end;
  end;
end;

function TSActivate.ChecCode(c1,c2:String):boolean;
var
orig_cc1,orig_cc2:String;
VolumeSerialNumber : DWORD;
MaximumComponentLength : DWORD;
FileSystemFlags : DWORD;
begin
ChecCode:=false;
GetVolumeInformation('c:\', nil, 0, @VolumeSerialNumber, MaximumComponentLength, FileSystemFlags, nil, 0);
orig_cc1:=UpperCase(GetNumb(IntToHex(HiWord(VolumeSerialNumber), 4)));
orig_cc2:=UpperCase(GetNumb(IntToHex(LoWord(VolumeSerialNumber), 4)));
if (c1=orig_cc1) and (c2=orig_cc2) then
ChecCode:=true;
end;
end.

