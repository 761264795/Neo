{*
���ã�
Uses CnBase64��
CnBase64.Base64Encode(Edit1.Text, Psw64);
*}
Unit CnBase64;

Interface

Uses
   SysUtils, Windows;

Function Base64Encode_EX(InputData: String): String;
Function Base64Encode(InputData: String; Var OutputData: String): byte;
  {* �����ݽ���BASE64���룬�����ɹ�����Base64_OK
  |<PRE>
    InputData:string        - Ҫ���������
    var OutputData: string  - ����������
  |</PRE>}

Function Base64Decode(InputData: String; Var OutputData: String): byte;
  {* �����ݽ���BASE64���룬�����ɹ�����Base64_OK
  |<PRE>
    InputData:string        - Ҫ���������
    var OutputData: string  - ����������
  |</PRE>}

Const
   BASE64_OK        = 0;                // ת���ɹ�
   BASE64_ERROR     = 1;
          // ת������δ֪���� (e.g. can't encode octet in input stream) -> error in implementation
   BASE64_INVALID   = 2;
          // ������ַ������зǷ��ַ� (�� FilterDecodeInput=False ʱ���ܳ���)
   BASE64_LENGTH    = 3;                // ���ݳ��ȷǷ�
   BASE64_DATALEFT  = 4;
          // too much input data left (receveived 'end of encoded data' but not end of input string)
   BASE64_PADDING   = 5;                // ���������δ������ȷ������ַ�����

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
  // ��һ����0..Base64TableLength-1�����ڵ�ֵ��ת��Ϊ��Base64�������Ӧ
  // ���ַ�����ʾ�����ת���ɹ��򷵻�True
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
    // ��һ��ת��
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

    // �ڶ���ת��
      If InputLength = 0 Then
         CurrentB := 0
      Else Begin
         CurrentB := Ord(InputData[i]);
         i := i + 1;
      End;
      InputLength := InputLength - 1;
      c := (PrevB And $03) Shl 4 + (CurrentB Shr 4);
               //ȡ��XX��4λ����������4λ��XX����4λ�ϲ�����λ
      If Not ValueToCharacter(c, s) Then
      {//���ȡ�õ��ַ��Ƿ���Base64Table��} Begin
         result := BASE64_ERROR;
         Exit;
      End;
      OutputData := OutputData + s;
      PrevB := CurrentB;

    // ������ת��
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
                    //ȡ��XX��4λ����������2λ��XX����6λ�ϲ�����λ
         If Not ValueToCharacter(c, s) Then
         {//���ȡ�õ��ַ��Ƿ���Base64Table��} Begin
            result := BASE64_ERROR;
            Exit;
         End;
      End;
      OutputData := OutputData + s;

    // ���Ĵ�ת��
      If InputLength < 0 Then
         s := Pad
      Else Begin
         c := (CurrentB And $3F);       //ȡ��XX��6λ
         If Not ValueToCharacter(c, s) Then
         {//���ȡ�õ��ַ��Ƿ���Base64Table��} Begin
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
  // ת���ַ�Ϊһ��0..Base64TableLength-1�����е�ֵ�����ת���ɹ���
  // ��True(���ַ���Base64Table��)
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
  // �������в���Base64Table�е��ַ�������ֵΪ���˺���ַ�
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
    // ��һ��ת��
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

    // �ڶ���ת��
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

    // ������ת��
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
