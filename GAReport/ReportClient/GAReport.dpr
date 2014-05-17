program GAReport;

uses
  ShareMem,
  Forms,
  SysUtils,
  uWaitBox_R in 'uWaitBox_R.pas' {FrmWaitBox},
  DMPublic_R in 'DMPublic_R.pas' {DMPub: TDataModule},
  uDateSelect_R in 'uDateSelect_R.pas',
  uFormatcxGrid_R in 'uFormatcxGrid_R.pas' {FormatcxGridFrm},
  uReportEdit_R in 'uReportEdit_R.pas' {ReportEditFrm},
  uReportFind_R in 'uReportFind_R.pas' {ReportFindFrm},
  uReportFindvalue_R in 'uReportFindvalue_R.pas' {ReportFindvalueFrm},
  uReportFormat_R in 'uReportFormat_R.pas' {ReportFormatFrm},
  uReportPub_R in 'uReportPub_R.pas',
  uReportType_R in 'uReportType_R.pas' {FrmReportType},
  uReportView_R in 'uReportView_R.pas' {ReportViewFrm},
  uSubReportEdit_R in 'uSubReportEdit_R.pas' {SubReportEditFrm},
  uSubReportParaFrm_R in 'uSubReportParaFrm_R.pas' {SubReportParaFrm},
  uSubReportView_R in 'uSubReportView_R.pas' {SubReportViewFrm},
  uMpsPub_R in 'uMpsPub_R.pas',
  uPicView_R in 'uPicView_R.pas' {PicViewfrm},
  STPublic_R in 'STPublic_R.pas',
  uRight_R in 'uRight_R.pas' {RightFrm},
  uView_R in 'uView_R.pas' {ViewFrm},
  uWelcome_R in 'uWelcome_R.pas' {welcomeFrm},
  uSQL_R in 'uSQL_R.pas' {SQLFrm},
  Frm_TolZB_R in 'Frm_TolZB_R.pas' {FM_TolZB},
  uOrgFrm_R in 'uOrgFrm_R.pas' {OrgFrm},
  uSelecDataBaseFrm_R in 'uSelecDataBaseFrm_R.pas' {SelecDataBaseFrm},
  uSelectMaterialFrm_R in 'uSelectMaterialFrm_R.pas' {SelectMaterialFrm},
  uSelectClientFrm_R in 'uSelectClientFrm_R.pas' {SelectClientFrm},
  uselectSuppliersFrm_R in 'uselectSuppliersFrm_R.pas' {selectSuppliersFrm},
  uSelectWarehouseFrm_R in 'uSelectWarehouseFrm_R.pas' {SelectWarehouseFrm},
  uConnSystem_R in 'uConnSystem_R.pas' {ConnSystem},
  materialinfo_R in 'materialinfo_R.pas' {FrmMaterialinfo},
  Maximage_R in 'Maximage_R.pas' {FrmMaxImage},
  GetDSN_R in 'GetDSN_R.pas',
  VersionId_R in 'VersionId_R.pas',
  UntTIO_R in 'UntTIO_R.pas',
  uSort_R in 'uSort_R.pas' {SortFrm},
  uExportExcelFrm_R in 'uExportExcelFrm_R.pas' {ExportExcelFrm},
  uReportUserCRFrm_R in 'uReportUserCRFrm_R.pas' {ReportUserCRFrm},
  uRoleRight_R in 'uRoleRight_R.pas' {RoleRightFrm},
  uAlterLevel_R in 'uAlterLevel_R.pas' {uAlterLevelForm};

procedure Halt0;
begin
  Halt;
end;
{$R *.res}

begin
  if Pos('-',DateToStr(date))<=0 then
  begin
    ShowMsg('系统日期格式必须更改为长日期格式(yyyy-mm-dd),例:1999-09-01');
  end
  else
  begin
    Application.Initialize;
    Application.Title := '智能报表分析平台';
    softName:='智能报表分析平台';
    exe_name:='GAReport.exe';
//    welcomeFrm:=TwelcomeFrm.Create(Application);
//    welcomeFrm.Show;
//    welcomeFrm.Update;
    Application.ProcessMessages;
    Application.CreateForm(TDMPub, DMPub);
    Application.CreateForm(TReportViewFrm, ReportViewFrm_R);
  //    welcomeFrm.Update;
    Application.Run;
    asm    //屏蔽dephi的运行时错误,经常是使用第三方控件使用导致
      xor edx, edx
      push ebp
      push OFFSET @@safecode
      push dword ptr fs:[edx]
      mov fs:[edx],esp

      call Halt0
      jmp @@exit;

      @@safecode:
      call Halt0;

      @@exit:
    end;
  end;
end.
