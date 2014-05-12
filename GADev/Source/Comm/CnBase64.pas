{*
调用：
Uses CnBase64；
CnBase64.Base64Encode(Edit1.Text, Psw64);
*}
Unit CnBase64;

Interface

Uses
   SysUtils, Windows;

Function Base64Encode_EX(InputData: String): String;
Function Base64Encode(InputData: String; Var OutputData: String): byte;
  {* 对数据进行BASE64编码，如编码成功返回Base64_OK
  |<PRE>
    InputData:string        - 要编码的数据
    var OutputData: string  - 编码后的数据
  |</PRE>}

Function Base64Decode(InputData: String; Var OutputData: String): byte;
  {* 对数据进行BASE64解码，如解码成功返回Base64_OK
  |<PRE>
    InputData:string        - 要解码的数据
    var OutputData: string  - 解码后的数据
  |</PRE>}

Const
   BASE64_OK        = 0;                // 转换成功
   BASE64_ERROR     = 1;
          // 转换错误（未知错误） (e.g. can't encode octet in input stream) -> error in implementation
   BASE64_INVALID   = 2;
          // 输入的字符串中有非法字符 (在 FilterDecodeInput=False 时可能出现)
   BASE64_LENGTH    = 3;                // 数据长度非法
   BASE64_DATALEFT  = 4;
          // too much input data left (receveived 'end of encoded data' but not end of input string)
   BASE64_PADDING   = 5;                // 输入的数据未能以正确的填充字符结束

Implementation

Var
   FilterDecodeInput: Boolean = true;
Const
   Base64TableLength = 64;
   Base64Table      : String[Base64TableLength] =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+*';
   Pad              = '=';

Function Base64Encode_EX(InputData: String): String;
var
  OutputData: string;
Begin
   Result := '';
   if Trim(InputData) = '' then exit;
   Base64Encode(InputData, OutputData);
   Result := OutputData;
End;

Function Base64Encode(InputData: String; Var OutputData: String): byte;
Var
   i                : integer;
   CurrentB, PrevB  : byte;
   c                : byte;
   s                : char;
   InputLength      : integer;

   Function ValueToCharacter(value: byte; Var character: char): Boolean;
  //******************************************************************
  // 将一个在0..Base64TableLength-1区间内的值，转换为与Base64编码相对应
  // 的字符来表示，如果转换成功则返回True
  //******************************************************************
   Begin
      result := true;
      If (value > Base64TableLength - 1) Then
         result := false
      Else
         character := Base64Table[value + 1];
   End;

Begin
   OutputData := '';
   InputLength := Length(InputData);
   i := 1;
   If (InputLength = 0) Then Begin
      result := BASE64_OK;
      Exit;
   End;

   Repeat
    // 第一次转换
      CurrentB := Ord(InputData[i]);
      i := i + 1;
      InputLength := InputLength - 1;
      c := (CurrentB Shr 2);
      If Not ValueToCharacter(c, s) Then Begin
         result := BASE64_ERROR;
         Exit;
      End;
      OutputData := OutputData + s;
      PrevB := CurrentB;

    // 第二次转换
      If InputLength = 0 Then
         CurrentB := 0
      Else Begin
         CurrentB := Ord(InputData[i]);
         i := i + 1;
      End;
      InputLength := InputLength - 1;
      c := (PrevB And $03) Shl 4 + (CurrentB Shr 4);
               //取出XX后4位并将其左移4位与XX右移4位合并成六位
      If Not ValueToCharacter(c, s) Then
      {//检测取得的字符是否在Base64Table内} Begin
         result := BASE64_ERROR;
         Exit;
      End;
      OutputData := OutputData + s;
      PrevB := CurrentB;

    // 第三次转换
      If InputLength < 0 Then
         s := Pad
      Else Begin
         If InputLength = 0 Then
            CurrentB := 0
         Else Begin
            CurrentB := Ord(InputData[i]);
            i := i + 1;
         End;
         InputLength := InputLength - 1;
         c := (PrevB And $0F) Shl 2 + (CurrentB Shr 6);
                    //取出XX后4位并将其左移2位与XX右移6位合并成六位
         If Not ValueToCharacter(c, s) Then
         {//检测取得的字符是否在Base64Table内} Begin
            result := BASE64_ERROR;
            Exit;
         End;
      End;
      OutputData := OutputData + s;

    // 第四次转换
      If InputLength < 0 Then
         s := Pad
      Else Begin
         c := (CurrentB And $3F);       //取出XX后6位
         If Not ValueToCharacter(c, s) Then
         {//检测取得的字符是否在Base64Table内} Begin
            result := BASE64_ERROR;
            Exit;
         End;
      End;
      OutputData := OutputData + s;
   Until InputLength <= 0;
   result := BASE64_OK;
End;

Function Base64Decode(InputData: String; Var OutputData: String): byte;
Var
   i                : integer;
   InputLength      : integer;
   CurrentB, PrevB  : byte;
   c                : byte;
   s                : char;

   Function CharacterToValue(character: char; Var value: byte): Boolean;
  //******************************************************************
  // 转换字符为一在0..Base64TableLength-1区间中的值，如果转换成功则返
  // 回True(即字符在Base64Table中)
  //******************************************************************
   Begin
      result := true;
      value := Pos(character, Base64Table);
      If value = 0 Then
         result := false
      Else
         value := value - 1;
   End;

   Function FilterLine(InputData: String): String;
  //******************************************************************
  // 过滤所有不在Base64Table中的字符，返回值为过滤后的字符
  //******************************************************************
   Var
      F             : byte;
      i             : integer;
   Begin
      result := '';
      For i := 1 To Length(InputData) Do
         If CharacterToValue(InputData[i], F) Or (InputData[i] = Pad) Then
            result := result + InputData[i];
   End;

Begin
   If (InputData = '') Then Begin
      result := BASE64_OK;
      Exit;
   End;
   OutputData := '';

   If FilterDecodeInput Then
      InputData := FilterLine(InputData);

   InputLength := Length(InputData);
   If InputLength Mod 4 <> 0 Then Begin
      result := BASE64_LENGTH;
      Exit;
   End;

   i := 0;
   Repeat
    // 第一次转换
      i := i + 1;
      s := InputData[i];
      If Not CharacterToValue(s, CurrentB) Then Begin
         result := BASE64_INVALID;
         Exit;
      End;
      i := i + 1;
      s := InputData[i];
      If Not CharacterToValue(s, PrevB) Then Begin
         result := BASE64_INVALID;
         Exit;
      End;

      c := (CurrentB Shl 2) + (PrevB Shr 4);
      OutputData := OutputData + Chr(c);

    // 第二次转换
      i := i + 1;
      s := InputData[i];
      If s = Pad Then Begin
         If (i <> InputLength - 1) Then Begin
            result := BASE64_DATALEFT;
            Exit;
         End
         Else
            If InputData[i + 1] <> Pad Then Begin
               result := BASE64_PADDING;
               Exit;
            End;
      End
      Else Begin
         If Not CharacterToValue(s, CurrentB) Then Begin
            result := BASE64_INVALID;
            Exit;
         End;
         c := (PrevB Shl 4) + (CurrentB Shr 2);
         OutputData := OutputData + Chr(c);
      End;

    // 第三次转换
      i := i + 1;
      s := InputData[i];
      If s = Pad Then Begin
         If (i <> InputLength) Then Begin
            result := BASE64_DATALEFT;
            Exit;
         End;
      End
      Else Begin
         If Not CharacterToValue(s, PrevB) Then Begin
            result := BASE64_INVALID;
            Exit;
         End;
         c := (CurrentB Shl 6) + (PrevB);
         OutputData := OutputData + Chr(c);
      End;

   Until (i >= InputLength);
   result := BASE64_OK;
End;

End.
