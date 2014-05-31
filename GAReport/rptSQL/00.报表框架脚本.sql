--过滤条件临时中间表
if not exists (select 1 from sysobjects where name=UPPER('ct_reportparams') and xtype='U')
begin
	create table ct_reportparams(
		fid varchar(44) not null,
		freportnumber varchar(50),
		fparamname varchar(80) not null,
		fparamvalue varchar(400)
	);
	alter table ct_reportparams add constraint pk_reportparams primary key(fid,fparamname)
end;
GO
--过滤条件类型
if not exists (select 1 from systypes where name=UPPER('tp_reportparams'))
create type tp_reportparams as table (
	fparamname varchar(80) not null,
	fparamvalue varchar(400)
)
GO
--执行报表存储过程关健接口
if exists (select 1 from sysobjects where name=UPPER('p_rpt_DoReportProc') and xtype='P')
	drop procedure p_rpt_DoReportProc;
GO
create procedure p_rpt_DoReportProc
  @ReportParamID varchar(44),
  @ReportProcName varchar(100),
  @ReturnValue int = 1 output,
  @ErrMsg varchar(400) output
as
if not exists (select 1 from sysobjects where name=UPPER(@ReportProcName) and xtype='P')
  begin
    set @ReturnValue = 0
    set @ErrMsg = '亲，存储过程'+@ReportProcName+'不存在哦！'
  end
--declare @ReportParams as tp_reportparams
--insert into @ReportParams
--select fparamname,fparamvalue from ct_reportparams where fid=@ReportParamID
exec @ReportProcName @ReportParamID,@ReturnValue,@ErrMsg
GO