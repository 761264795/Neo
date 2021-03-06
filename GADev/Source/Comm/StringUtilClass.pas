unit StringUtilClass;
{
  �ַ���������
}
interface
   uses SysUtils, Variants, Classes;
   function ChnToPY(Value: string): string;           //ȡƴ������ĸ
implementation
const py: array[216..247] of string = (  
{216}'CJWGNSPGCGNESYPB' + 'TYYZDXYKYGTDJNMJ' + 'QMBSGZSCYJSYYZPG' +  
{216}'KBZGYCYWYKGKLJSW' + 'KPJQHYZWDDZLSGMR' + 'YPYWWCCKZNKYDG',  
{217}'TTNJJEYKKZYTCJNM' + 'CYLQLYPYQFQRPZSL' + 'WBTGKJFYXJWZLTBN' +  
{217}'CXJJJJZXDTTSQZYC' + 'DXXHGCKBPHFFSSYY' + 'BGMXLPBYLLLHLX',  
{218}'SPZMYJHSOJNGHDZQ' + 'YKLGJHXGQZHXQGKE' + 'ZZWYSCSCJXYEYXAD' +  
{218}'ZPMDSSMZJZQJYZCD' + 'JEWQJBDZBXGZNZCP' + 'WHKXHQKMWFBPBY',  
{219}'DTJZZKQHYLYGXFPT' + 'YJYYZPSZLFCHMQSH' + 'GMXXSXJJSDCSBBQB' +  
{219}'EFSJYHXWGZKPYLQB' + 'GLDLCCTNMAYDDKSS' + 'NGYCSGXLYZAYBN',  
{220}'PTSDKDYLHGYMYLCX' + 'PYCJNDQJWXQXFYYF' + 'JLEJBZRXCCQWQQSB' +  
{220}'ZKYMGPLBMJRQCFLN' + 'YMYQMSQYRBCJTHZT' + 'QFRXQHXMJJCJLX',  
{221}'QGJMSHZKBSWYEMYL' + 'TXFSYDSGLYCJQXSJ' + 'NQBSCTYHBFTDCYZD' +  
{221}'JWYGHQFRXWCKQKXE' + 'BPTLPXJZSRMEBWHJ' + 'LBJSLYYSMDXLCL',  
{222}'QKXLHXJRZJMFQHXH' + 'WYWSBHTRXXGLHQHF' + 'NMCYKLDYXZPWLGGS' +  
{222}'MTCFPAJJZYLJTYAN' + 'JGBJPLQGDZYQYAXB' + 'KYSECJSZNSLYZH',  
{223}'ZXLZCGHPXZHZNYTD' + 'SBCJKDLZAYFMYDLE' + 'BBGQYZKXGLDNDNYS' +  
{223}'KJSHDLYXBCGHXYPK' + 'DQMMZNGMMCLGWZSZ' + 'XZJFZNMLZZTHCS',  
{224}'YDBDLLSCDDNLKJYK' + 'JSYCJLKOHQASDKNH' + 'CSGANHDAASHTCPLC' +  
{224}'PQYBSDMPJLPCJOQL' + 'CDHJJYSPRCHNKNNL' + 'HLYYQYHWZPTCZG',  
{225}'WWMZFFJQQQQYXACL' + 'BHKDJXDGMMYDJXZL' + 'LSYGXGKJRYWZWYCL' +  
{225}'ZMSSJZLDBYDCPCXY' + 'HLXCHYZJQSQQAGMN' + 'YXPFRKSSBJLYXY',  
{226}'SYGLNSCMHCWWMNZJ' + 'JLXXHCHSYD CTXRY' + 'CYXBYHCSMXJSZNPW' +  
{226}'GPXXTAYBGAJCXLYS' + 'DCCWZOCWKCCSBNHC' + 'PDYZNFCYYTYCKX',  
{227}'KYBSQKKYTQQXFCWC' + 'HCYKELZQBSQYJQCC' + 'LMTHSYWHMKTLKJLY' +  
{227}'CXWHEQQHTQHZPQSQ' + 'SCFYMMDMGBWHWLGS' + 'LLYSDLMLXPTHMJ',  
{228}'HWLJZYHZJXHTXJLH' + 'XRSWLWZJCBXMHZQX' + 'SDZPMGFCSGLSXYMJ' +  
{228}'SHXPJXWMYQKSMYPL' + 'RTHBXFTPMHYXLCHL' + 'HLZYLXGSSSSTCL',  
{229}'SLDCLRPBHZHXYYFH' + 'BBGDMYCNQQWLQHJJ' + 'ZYWJZYEJJDHPBLQX' +  
{229}'TQKWHLCHQXAGTLXL' + 'JXMSLXHTZKZJECXJ' + 'CJNMFBYCSFYWYB',  
{230}'JZGNYSDZSQYRSLJP' + 'CLPWXSDWEJBJCBCN' + 'AYTWGMPABCLYQPCL' +  
{230}'ZXSBNMSGGFNZJJBZ' + 'SFZYNDXHPLQKZCZW' + 'ALSBCCJXJYZHWK',  
{231}'YPSGXFZFCDKHJGXD' + 'LQFSGDSLQWZKXTMH' + 'SBGZMJZRGLYJBPML' +  
{231}'MSXLZJQQHZSJCZYD' + 'JWBMJKLDDPMJEGXY' + 'HYLXHLQYQHKYCW',  
{232}'CJMYYXNATJHYCCXZ' + 'PCQLBZWWYTWBQCML' + 'PMYRJCCCXFPZNZZL' +  
{232}'JPLXXYZTZLGDLDCK' + 'LYRLZGQTGJHHGJLJ' + 'AXFGFJZSLCFDQZ',  
{233}'LCLGJDJCSNCLLJPJ' + 'QDCCLCJXMYZFTSXG' + 'CGSBRZXJQQCTZHGY' +  
{233}'QTJQQLZXJYLYLBCY' + 'AMCSTYLPDJBYREGK' + 'JZYZHLYSZQLZNW',  
{234}'CZCLLWJQJJJKDGJZ' + 'OLBBZPPGLGHTGZXY' + 'GHZMYCNQSYCYHBHG' +  
{234}'XKAMTXYXNBSKYZZG' + 'JZLQJDFCJXDYGJQJ' + 'JPMGWGJJJPKQSB',  
{235}'GBMMCJSSCLPQPDXC' + 'DYYKYWCJDDYYGYWR' + 'HJRTGZNYQLDKLJSZ' +  
{235}'ZGZQZJGDYKSHPZMT' + 'LCPWNJAFYZDJCNMW' + 'ESCYGLBTZCGMSS',  
{236}'LLYXQSXSBSJSBBGG' + 'GHFJLYPMZJNLYYWD' + 'QSHZXTYYWHMCYHYW' +  
{236}'DBXBTLMSYYYFSXJC' + 'SDXXLHJHF SXZQHF' + 'ZMZCZTQCXZXRTT',  
{237}'DJHNNYZQQMNQDMMG' + 'LYDXMJGDHCDYZBFF' + 'ALLZTDLTFXMXQZDN' +  
{237}'GWQDBDCZJDXBZGSQ' + 'QDDJCMBKZFFXMKDM' + 'DSYYSZCMLJDSYN',  
{238}'SPRSKMKMPCKLGDBQ' + 'TFZSWTFGGLYPLLJZ' + 'HGJJGYPZLTCSMCNB' +  
{238}'TJBQFKTHBYZGKPBB' + 'YMTDSSXTBNPDKLEY' + 'CJNYCDYKZDDHQH',  
{239}'SDZSCTARLLTKZLGE' + 'CLLKJLQJAQNBDKKG' + 'HPJTZQKSECSHALQF' +  
{239}'MMGJNLYJBBTMLYZX' + 'DCJPLDLPCQDHZYCB' + 'ZSCZBZMSLJFLKR',  
{240}'ZJSNFRGJHXPDHYJY' + 'BZGDLJCSEZGXLBLH' + 'YXTWMABCHECMWYJY' +  
{240}'ZLLJJYHLGBDJLSLY' + 'GKDZPZXJYYZLWCXS' + 'ZFGWYYDLYHCLJS',  
{241}'CMBJHBLYZLYCBLYD' + 'PDQYSXQZBYTDKYYJ' + 'YYCNRJMPDJGKLCLJ' +  
{241}'BCTBJDDBBLBLCZQR' + 'PPXJCGLZCSHLTOLJ' + 'NMDDDLNGKAQHQH',  
{242}'JHYKHEZNMSHRP QQ' + 'JCHGMFPRXHJGDYCH' + 'GHLYRZQLCYQJNZSQ' +  
{242}'TKQJYMSZSWLCFQQQ' + 'XYFGGYPTQWLMCRNF' + 'KKFSYYLQBMQAMM',  
{243}'MYXCTPSHCPTXXZZS' + 'MPHPSHMCLMLDQFYQ' + 'XSZYJDJJZZHQPDSZ' +  
{243}'GLSTJBCKBXYQZJSG' + 'PSXQZQZRQTBDKYXZ' + 'KHHGFLBCSMDLDG',  
{244}'DZDBLZYYCXNNCSYB' + 'ZBFGLZZXSWMSCCMQ' + 'NJQSBDQSJTXXMBLT' +  
{244}'XZCLZSHZCXRQJGJY' + 'LXZFJPHYXZQQYDFQ' + 'JJLZZNZJCDGZYG',  
{245}'CTXMZYSCTLKPHTXH' + 'TLBJXJLXSCDQXCBB' + 'TJFQZFSLTJBTKQBX' +  
{245}'XJJLJCHCZDBZJDCZ' + 'JDCPRNPQCJPFCZLC' + 'LZXBDMXMPHJSGZ',  
{246}'GSZZQLYLWTJPFSYA' + 'SMCJBTZYYCWMYTCS' + 'JJLQCQLWZMALBXYF' +  
{246}'BPNLSFHTGJWEJJXX' + 'GLLJSTGSHJQLZFKC' + 'GNNDSZFDEQFHBS',  
{247}'AQTGYLBXMMYGSZLD' + 'YDQMJJRGBJTKGDHG' + 'KBLQKBDMBYLXWCXY' +  
{247}'TTYBKMRTJZXQJBHL' + 'MHMJJZMQASLDCYXY' + 'QDLQCAFYWYXQHZ'  
    );
function ChnPy(Value: array of char): Char;
begin  
  Result := #0;  
  case Byte(Value[0]) of
   176:  
     case Byte(Value[1]) of  
       161..196: Result := 'A';  
        197..254: Result := 'B';  
      end; {case}  
    177:  
      Result := 'B';  
    178:  
      case Byte(Value[1]) of  
        161..192: Result := 'B';  
        193..205: Result := 'C';  
        206: Result := 'S';   
        207..254: Result := 'C';  
      end; {case}  
    179:  
      Result := 'C';  
    180:  
      case Byte(Value[1]) of  
        161..237: Result := 'C';  
        238..254: Result := 'D';  
      end; {case}  
    181:  
      Result := 'D';  
    182:  
      case Byte(Value[1]) of  
        161..233: Result := 'D';  
        234..254: Result := 'E';  
      end; {case}  
    183:  
      case Byte(Value[1]) of  
        161: Result := 'E';  
        162..254: Result := 'F';  
      end; {case}  
    184:  
      case Byte(Value[1]) of  
        161..192: Result := 'F';  
        193..254: Result := 'G';  
      end; {case}  
    185:  
      case Byte(Value[1]) of  
        161..253: Result := 'G';  
        254: Result := 'H';  
      end; {case}  
    186:  
      Result := 'H';  
    187:  
      case Byte(Value[1]) of  
        161..246: Result := 'H';  
        247..254: Result := 'J';  
      end; {case}  
    188..190:  
      Result := 'J';  
    191:  
      case Byte(Value[1]) of  
        161..165: Result := 'J';  
        166..254: Result := 'K';  
      end; {case}  
    192:  
      case Byte(Value[1]) of  
        161..171: Result := 'K';  
        172..254: Result := 'L';  
      end; {case}  
    193:  
      Result := 'L';  
    194:  
      case Byte(Value[1]) of  
        161..231: Result := 'L';  
        232..254: Result := 'M';  
      end; {case}  
    195:  
      Result := 'M';  
    196:  
      case Byte(Value[1]) of  
        161..194: Result := 'M';  
        195..254: Result := 'N';  
      end; {case}  
    197:  
      case Byte(Value[1]) of  
        161..181: Result := 'N';  
        182..189: Result := 'O';  
        190..254: Result := 'P';  
      end; {case}  
    198:  
      case Byte(Value[1]) of  
        161..217: Result := 'P';  
        218..254: Result := 'Q';  
      end; {case}  
    199:  
      Result := 'Q';  
    200:  
      case Byte(Value[1]) of  
        161..186: Result := 'Q';  
        187..245: Result := 'R';  
        246..254: Result := 'S';  
      end; {case}  
    201..202:  
      Result := 'S';  
    203:  
      case Byte(Value[1]) of  
        161..249: Result := 'S';  
        250..254: Result := 'T';  
      end; {case}  
    204:  
      Result := 'T';  
    205:  
      case Byte(Value[1]) of  
        161..217: Result := 'T';  
        218..254: Result := 'W';  
      end; {case}  
    206:  
      case Byte(Value[1]) of  
        161..243: Result := 'W';  
        244..254: Result := 'X';  
      end; {case}  
    207..208:  
      Result := 'X';  
    209:  
      case Byte(Value[1]) of  
        161..184: Result := 'X';  
        185..254: Result := 'Y';  
      end; {case}  
    210..211:  
      Result := 'Y';  
    212:  
      case Byte(Value[1]) of  
        161..208: Result := 'Y';  
        209..254: Result := 'Z';  
      end; {case}  
    213..215:  
      Result := 'Z';  
    216..247:  
      Result := py[Byte(Value[0])][Byte(Value[1]) - 160];  
  end; {case}  
end;  
  
function ChnToPY(Value: string): string;
var  
  I, L: Integer;  
  C: array[0..1] of char;  
  R: Char;  
begin  
  Result := '';  
  L := Length(Value);  
  I := 1;  
  while I <= (L - 1) do  
  begin  
    if Value[I] < #160 then  
    begin  
      Result := Result + Value[I];  
      Inc(I);  
    end  
    else  
    begin  
      C[0] := Value[I];  
      C[1] := Value[I + 1];  
      R := ChnPY(C);  
      if r <> #0 then  
        Result := Result + R;  
      Inc(I, 2);  
    end;  
  end;
  if I = L then
    Result := Result + Value[L];
end;
end.
