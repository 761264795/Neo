unit CommonConstPublic;

interface

uses Forms,Windows;

var
  HintTitle:  string = '金蝶提示';
  WarnTitle:  string = '金蝶提示';
  ErrorTitle: string = '金蝶提示';
  AskTitle:   string = '金蝶提示';

const
  //----------对话框窗体标题分类---------

  M_Warn:  Cardinal = MB_Ok or MB_ICONWARNING;
  M_Error: Cardinal = MB_Ok or MB_ICONERROR;
  M_Hint:  Cardinal = MB_Ok or MB_ICONINFORMATION;
  M_YesNo: Cardinal = MB_YESNO or MB_ICONQUESTION;
  M_YewNoCancel: Cardinal = MB_YESNOCANCEL or MB_ICONQUESTION;
 


implementation

end.
