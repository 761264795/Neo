unit CommonConstPublic;

interface

uses Forms,Windows;

var
  HintTitle:  string = '�����ʾ';
  WarnTitle:  string = '�����ʾ';
  ErrorTitle: string = '�����ʾ';
  AskTitle:   string = '�����ʾ';

const
  //----------�Ի�����������---------

  M_Warn:  Cardinal = MB_Ok or MB_ICONWARNING;
  M_Error: Cardinal = MB_Ok or MB_ICONERROR;
  M_Hint:  Cardinal = MB_Ok or MB_ICONINFORMATION;
  M_YesNo: Cardinal = MB_YESNO or MB_ICONQUESTION;
  M_YewNoCancel: Cardinal = MB_YESNOCANCEL or MB_ICONQUESTION;
 


implementation

end.
