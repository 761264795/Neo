declare
  @ReturnValue int = 1,
  @ErrMsg varchar(400)
exec p_rpt_DoReportProc 1,p_rpt_partSale,@ReturnValue,@ErrMsg
select @ReturnValue
select @ErrMsg