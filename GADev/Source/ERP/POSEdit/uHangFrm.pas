unit uHangFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, Menus, cxLookAndFeelPainters, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, ExtCtrls, DB, DBClient, ADODB,StrUtils,
  dxSkinsCore, dxSkinOffice2007Black;

type
  TFrmHang = class(TSTBaseEdit)
    pnClient: TPanel;
    cbHang: TcxTextEdit;
    btOK: TcxButton;
    cxDate: TcxDateEdit;
    csMaster: TClientDataSet;
    csDetail: TClientDataSet;
    csRetailPRPRE: TClientDataSet;
    Image1: TImage;
    clBill: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    QryMater: TADOQuery;
    QryDetail: TADOQuery;
    qryPrepre: TADOQuery;
    dsMaster: TDataSource;
    dsDetail: TDataSource;
    dsRetailPRPRE: TDataSource;
    Bevel1: TBevel;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbHangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Bill_ID : string;
  public
    { Public declarations }
  end;

var
  FrmHang: TFrmHang;
  function GetHangBillID(New_BillIDValue,POSBillNumber :string;Master,Detail,RetailPepre: TDataSet) : Boolean;
  function CopyPOSBill(New_BillIDValue,POSBillNumber :string;Master,Detail,RetailPepre: TDataSet; oldPOSBillIDValue : string='';oldPOSBillNumber : string='') : Boolean;
implementation
  uses FrmCliDM,Pub_Fun, uPOSEditFrm;
{$R *.dfm}

function GetHangBillID(New_BillIDValue,POSBillNumber : string;Master,Detail,RetailPepre: TDataSet) : Boolean;
var Detail_ID,ErrMsg,sFieldName,CFVIPCardNumber : string;
    i : Integer;
    OpenTables: array[0..2] of string;
    _cds: array[0..2] of TClientDataSet;
begin
  Result := True;
  Application.CreateForm(TFrmHang,FrmHang);
  try
    FrmHang.ShowModal;
    if FrmHang.ModalResult = mrOk then
    begin
      if not UserInfo.Is_SysOnline then
      begin
        //复制表头和明细
        FrmHang.dsMaster.DataSet := FrmHang.QryMater;
        FrmHang.dsDetail.DataSet := FrmHang.QryDetail;
        FrmHang.dsRetailPRPRE.DataSet := FrmHang.qryPrepre;
        with FrmHang.QryMater do
        begin
          Close;
          sql.Clear;
          SQL.Add('Select * From CT_BIL_RetailPOS Where FID='+QuotedStr(FrmHang.Bill_ID));
          Open;
        end;
        
        with FrmHang.QryDetail do
        begin
          Close;
          sql.Clear;
          SQL.Add('Select * From ct_bil_retailposentry Where FPARENTID='+QuotedStr(FrmHang.Bill_ID));
          Open;
        end;
        with FrmHang.qryPrepre do
        begin
          Close;
          sql.Clear;
          SQL.Add('Select * From CT_BIL_RETAILPRPRE Where FPARENTID='+QuotedStr(FrmHang.Bill_ID));
          Open;
        end;
      end
      else
      if UserInfo.Is_SysOnline then
      begin
        FrmHang.dsMaster.DataSet := FrmHang.csMaster;
        FrmHang.dsDetail.DataSet := FrmHang.csDetail;
        FrmHang.dsRetailPRPRE.DataSet := FrmHang.csRetailPRPRE;
        CFVIPCardNumber := Master.fieldbyName('CFVIPCardNumber').AsString;
        OpenTables[0] := 'CT_BIL_RetailPOS';
        OpenTables[1] := 'ct_bil_retailposentry';
        OpenTables[2] := 'CT_BIL_RETAILPRPRE';
        _cds[0] := FrmHang.csMaster;
        _cds[1] := FrmHang.csDetail;
        _cds[2] := FrmHang.csRetailPRPRE;
        if not CliDM.Get_OpenClients(FrmHang.Bill_ID,_cds,OpenTables,ErrMsg) then
        begin
          ShowMsg(FrmHang.Handle, ErrMsg,[]);
          Abort;
        end
      end;
      
//--------------------------------------------复制POS表头  begin------------------------------------------
        try
          if not (Master.State in DB.dsEditModes) then Master.Edit;
          //查找出来的单据赋值给新的POS单，fsourcebillid记录原单FID
          for i := 0 to FrmHang.dsMaster.DataSet.FieldCount-1 do  //主表赋值
          begin
            sFieldName := FrmHang.dsMaster.DataSet.Fields[i].FieldName;
            if Master.FindField(sFieldName) <> nil then
            begin
              if UpperCase(sFieldName)=UpperCase('FID') then
                Master.FieldByName('FID').Value := New_BillIDValue
              else if UpperCase(sFieldName)=UpperCase('FNUMBER') then
                Master.FieldByName('FNUMBER').Value := POSBillNumber
              else if UpperCase(sFieldName)=UpperCase('fsourcebillid') then  //取挂单的单据FID
                Master.FieldByName('fsourcebillid').Value := FrmHang.dsMaster.DataSet.FieldbyName('FID').AsString
              else if UpperCase(sFieldName)=UpperCase('ISTATUS') then        //单据状态改为新单
                Master.FieldByName('ISTATUS').Value := 0
              else if UpperCase(sFieldName)=UpperCase('FCREATETIME') then    //制单时间
                Master.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime
              else if (UpperCase(sFieldName)=UpperCase('cfbalanceyear') ) or (UpperCase(sFieldName)=UpperCase('cfbalancemonth') )  or
               (UpperCase(sFieldName)=UpperCase('cfbalancedate') )  then Continue

              //else if UpperCase(sFieldName)=UpperCase('CFVIPCardNumber') then        //会员卡号
              ///  Master.FieldByName('CFVIPCardNumber').AsString := CFVIPCardNumber    //会员卡号复制到新单 owen
              else
              begin
                if FrmHang.dsMaster.DataSet.FindField(sFieldName) <> nil then   //20110728 避免服务器添加字段引起客户端报错
                Master.FieldByName(sFieldName).Value := FrmHang.dsMaster.DataSet.Fields[i].Value;
              end;
            end;
          end;
        except
          on E : Exception do
          begin
            Result := False;
            ShowMsg(FrmHang.Handle, '复制挂单表头出错：'+e.Message,[]);
          end;
        end;
//--------------------------------------------复制POS表头  end------------------------------------------

//--------------------------------------------复制POS明细  begin----------------------------------------
       if not FrmHang.dsDetail.DataSet.IsEmpty then  //有明细才复制
       begin
          try
          Detail.OnCalcFields := nil;  //隐藏POS单明细的计算事件  提高复制的速度     复制完以后要恢复
          //循环清空POS单明细表
          with Detail do
          begin
            if not IsEmpty then
            While not Eof do
            begin
            Delete;
            Next;
            end;
          end;

          try
            //逐条记录赋值明细
            if not (Detail.State in DB.dsEditModes) then Detail.Edit;
            if not FrmHang.dsDetail.DataSet.IsEmpty then
            begin
              FrmHang.dsDetail.DataSet.First;
              while not FrmHang.dsDetail.DataSet.Eof do
              begin
                Detail.Append;
                Detail_ID := CliDM.GetEASSID(UserInfo.RetailPOSEntryID);
                //明细表赋值
                for i := 0 to FrmHang.dsDetail.DataSet.FieldCount-1 do
                begin
                sFieldName := FrmHang.dsDetail.DataSet.Fields[i].FieldName;
                if Detail.FindField(sFieldName) <> nil then
                begin
                if UpperCase(sFieldName) =UpperCase('fid') then
                Detail.FieldByName(sFieldName).Value := Detail_ID
                else
                if UpperCase(sFieldName) =UpperCase('fparentid') then
                Detail.FieldByName(sFieldName).Value := New_BillIDValue
                else
                begin
                if FrmHang.dsDetail.DataSet.FindField(sFieldName) <> nil then   //20110728 避免服务器添加字段引起客户端报错
                Detail.FieldByName(sFieldName).Value := FrmHang.dsDetail.DataSet.Fields[i].Value;
                end;
                end;
                end;
                FrmHang.dsDetail.DataSet.Next;
              end;
            end;
          except
            on e : Exception do
            begin
            Result := False;
            ShowMsg(FrmHang.Handle, '复制挂单明细出错：'+e.Message,[]);
            end;
          end;
          finally
            Detail.OnCalcFields := frmPOSEdit.csDetailCalcFields;
            //触发计算字段事件
            Detail.Edit;
            Detail.Post;
          end;
       end;
//--------------------------------------------复制POS明细  end----------------------------------------------

//--------------------------------------------复制POS收款明细  begin----------------------------------------
        if not (RetailPepre.State in DB.dsEditModes) then RetailPepre.Edit;
        //循环清空POS单明细表
        with RetailPepre do
        begin
          First;
          if not IsEmpty then
          While not Eof do
          begin
            Delete;
            Next;
          end;
        end;

        try
        //逐条记录赋值明细
          if not FrmHang.dsRetailPRPRE.DataSet.IsEmpty then
          begin
            FrmHang.dsRetailPRPRE.DataSet.First;
            while not FrmHang.dsRetailPRPRE.DataSet.Eof do
            begin
              RetailPepre.Append;
              Detail_ID := CliDM.GetEASSID(UserInfo.RetailPOSReceiverEntryID);
              //明细表赋值
              for i := 0 to FrmHang.dsRetailPRPRE.DataSet.FieldCount-1 do
              begin
                sFieldName := FrmHang.dsRetailPRPRE.DataSet.Fields[i].FieldName;
                if RetailPepre.FieldByName(sFieldName) <> nil then
                begin
                if UpperCase(sFieldName) =UpperCase('fid') then
                RetailPepre.FieldByName(sFieldName).Value := Detail_ID
                else
                if UpperCase(sFieldName) =UpperCase('fparentid') then
                RetailPepre.FieldByName(sFieldName).Value := New_BillIDValue
                else
                begin
                  if RetailPepre.FindField(sFieldName) <> nil then
                  RetailPepre.FieldByName(sFieldName).Value := FrmHang.dsRetailPRPRE.DataSet.Fields[i].Value;
                end;
                end;
              end;
              FrmHang.dsRetailPRPRE.DataSet.Next;
            end;
          end;
        except
          on e : Exception do
          begin
            Result := False;
            ShowMsg(FrmHang.Handle, '复制挂单收款明细出错：'+e.Message,[]);
          end;
        end;
//--------------------------------------------复制POS收款  end----------------------------------------
  end;
  finally
    FrmHang.Free;
  end;
end;


//挂单直接结单
function CopyPOSBill(New_BillIDValue,POSBillNumber :string;Master,Detail,RetailPepre: TDataSet; oldPOSBillIDValue : string='';oldPOSBillNumber : string='') : Boolean;
var Detail_ID,ErrMsg,sFieldName,CFVIPCardNumber : string;
    i : Integer;
    OpenTables: array[0..2] of string;
    _cds: array[0..2] of TClientDataSet;
begin
  Result := True;
  Application.CreateForm(TFrmHang,FrmHang);
  try
    if oldPOSBillIDValue <> '' then
    begin
      FrmHang.Bill_ID := oldPOSBillIDValue;
    end;
    //FrmHang.ShowModal;
    //if FrmHang.ModalResult = mrOk then
    begin
      if not UserInfo.Is_SysOnline then
      begin
        //复制表头和明细
        FrmHang.dsMaster.DataSet := FrmHang.QryMater;
        FrmHang.dsDetail.DataSet := FrmHang.QryDetail;
        FrmHang.dsRetailPRPRE.DataSet := FrmHang.qryPrepre;
        with FrmHang.QryMater do
        begin
          Close;
          sql.Clear;
          SQL.Add('Select * From CT_BIL_RetailPOS Where FID='+QuotedStr(FrmHang.Bill_ID));
          Open;
        end;
        
        with FrmHang.QryDetail do
        begin
          Close;
          sql.Clear;
          SQL.Add('Select * From ct_bil_retailposentry Where FPARENTID='+QuotedStr(FrmHang.Bill_ID));
          Open;
        end;
        with FrmHang.qryPrepre do
        begin
          Close;
          sql.Clear;
          SQL.Add('Select * From CT_BIL_RETAILPRPRE Where FPARENTID='+QuotedStr(FrmHang.Bill_ID));
          Open;
        end;
      end
      else
      if UserInfo.Is_SysOnline then
      begin
        FrmHang.dsMaster.DataSet := FrmHang.csMaster;
        FrmHang.dsDetail.DataSet := FrmHang.csDetail;
        FrmHang.dsRetailPRPRE.DataSet := FrmHang.csRetailPRPRE;
        CFVIPCardNumber := Master.fieldbyName('CFVIPCardNumber').AsString;
        OpenTables[0] := 'CT_BIL_RetailPOS';
        OpenTables[1] := 'ct_bil_retailposentry';
        OpenTables[2] := 'CT_BIL_RETAILPRPRE';
        _cds[0] := FrmHang.csMaster;
        _cds[1] := FrmHang.csDetail;
        _cds[2] := FrmHang.csRetailPRPRE;
        if not CliDM.Get_OpenClients(FrmHang.Bill_ID,_cds,OpenTables,ErrMsg) then
        begin
          ShowMsg(FrmHang.Handle, ErrMsg,[]);
          Abort;
        end
      end;
      
//--------------------------------------------复制POS表头  begin------------------------------------------
        try
        //查找出来的单据赋值给新的POS单，fsourcebillid记录原单FID
          for i := 0 to FrmHang.dsMaster.DataSet.FieldCount-1 do  //主表赋值
          begin
            sFieldName := FrmHang.dsMaster.DataSet.Fields[i].FieldName;
            if Master.FindField(sFieldName) <> nil then
            begin
              if UpperCase(sFieldName)=UpperCase('FID') then
                Master.FieldByName('FID').Value := New_BillIDValue
              else if UpperCase(sFieldName)=UpperCase('FNUMBER') then
                Master.FieldByName('FNUMBER').Value := POSBillNumber
              else if UpperCase(sFieldName)=UpperCase('fsourcebillid') then  //取挂单的单据FID
                Master.FieldByName('fsourcebillid').Value := FrmHang.dsMaster.DataSet.FieldbyName('FID').AsString
              else if UpperCase(sFieldName)=UpperCase('ISTATUS') then        //单据状态改为新单
                Master.FieldByName('ISTATUS').Value := 0
              else if UpperCase(sFieldName)=UpperCase('FCREATETIME') then    //制单时间
                Master.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime
              else if UpperCase(sFieldName)=UpperCase('CFVIPCardNumber') then        //会员卡号
                Master.FieldByName('CFVIPCardNumber').AsString := CFVIPCardNumber
              else
              begin
                if FrmHang.dsMaster.DataSet.FindField(sFieldName) <> nil then   //20110728 避免服务器添加字段引起客户端报错
                Master.FieldByName(sFieldName).Value := FrmHang.dsMaster.DataSet.Fields[i].Value;
              end;
            end;
          end;
        except
          on E : Exception do
          begin
          Result := False;
          ShowMsg(FrmHang.Handle, '复制挂单表头出错：'+e.Message,[]);
          end;
        end;
//--------------------------------------------复制POS表头  end------------------------------------------

//--------------------------------------------复制POS明细  begin----------------------------------------
       if not FrmHang.dsDetail.DataSet.IsEmpty then  //有明细才复制
       begin
          try
          Detail.OnCalcFields := nil;  //隐藏POS单明细的计算事件  提高复制的速度     复制完以后要恢复
          //循环清空POS单明细表
          with Detail do
          begin
            if not IsEmpty then
            While not Eof do
            begin
            Delete;
            Next;
            end;
          end;

          try
            //逐条记录赋值明细
            if not FrmHang.dsDetail.DataSet.IsEmpty then
            begin
              FrmHang.dsDetail.DataSet.First;
              while not FrmHang.dsDetail.DataSet.Eof do
              begin
                Detail.Append;
                Detail_ID := CliDM.GetEASSID(UserInfo.RetailPOSEntryID);
                //明细表赋值
                for i := 0 to FrmHang.dsDetail.DataSet.FieldCount-1 do
                begin
                sFieldName := FrmHang.dsDetail.DataSet.Fields[i].FieldName;
                if Detail.FindField(sFieldName) <> nil then
                begin
                if UpperCase(sFieldName) =UpperCase('fid') then
                Detail.FieldByName(sFieldName).Value := Detail_ID
                else
                if UpperCase(sFieldName) =UpperCase('fparentid') then
                Detail.FieldByName(sFieldName).Value := New_BillIDValue
                else
                begin
                if FrmHang.dsDetail.DataSet.FindField(sFieldName) <> nil then   //20110728 避免服务器添加字段引起客户端报错
                Detail.FieldByName(sFieldName).Value := FrmHang.dsDetail.DataSet.Fields[i].Value;
                end;
                end;
                end;
                FrmHang.dsDetail.DataSet.Next;
              end;
            end;
          except
            on e : Exception do
            begin
            Result := False;
            ShowMsg(FrmHang.Handle, '复制挂单明细出错：'+e.Message,[]);
            end;
          end;
          finally
            Detail.OnCalcFields := frmPOSEdit.csDetailCalcFields;
            //触发计算字段事件
            Detail.Edit;
            Detail.Post;
          end;
       end;
//--------------------------------------------复制POS明细  end----------------------------------------------

//--------------------------------------------复制POS收款明细  begin----------------------------------------
        //循环清空POS单明细表
        with RetailPepre do
        begin
          First;
          if not IsEmpty then
          While not Eof do
          begin
            Delete;
            Next;
          end;
        end;
        try
        //逐条记录赋值明细
          if not FrmHang.dsRetailPRPRE.DataSet.IsEmpty then
          begin
            FrmHang.dsRetailPRPRE.DataSet.First;
            while not FrmHang.dsRetailPRPRE.DataSet.Eof do
            begin
              RetailPepre.Append;
              Detail_ID := CliDM.GetEASSID(UserInfo.RetailPOSReceiverEntryID);
              //明细表赋值
              for i := 0 to FrmHang.dsRetailPRPRE.DataSet.FieldCount-1 do
              begin
                sFieldName := FrmHang.dsRetailPRPRE.DataSet.Fields[i].FieldName;
                if RetailPepre.FieldByName(sFieldName) <> nil then
                begin
                if UpperCase(sFieldName) =UpperCase('fid') then
                RetailPepre.FieldByName(sFieldName).Value := Detail_ID
                else
                if UpperCase(sFieldName) =UpperCase('fparentid') then
                RetailPepre.FieldByName(sFieldName).Value := New_BillIDValue
                else
                begin
                  if RetailPepre.FindField(sFieldName) <> nil then
                  RetailPepre.FieldByName(sFieldName).Value := FrmHang.dsRetailPRPRE.DataSet.Fields[i].Value;
                end;
                end;
              end;
              FrmHang.dsRetailPRPRE.DataSet.Next;
            end;
          end;
        except
          on e : Exception do
          begin
            Result := False;
            ShowMsg(FrmHang.Handle, '复制挂单收款明细出错：'+e.Message,[]);
          end;
        end;
//--------------------------------------------复制POS收款  end----------------------------------------
  end;
  finally
    FrmHang.Free;
  end;
end;


procedure TFrmHang.FormShow(Sender: TObject);
begin
  inherited;
  cxDate.Date := CliDM.Get_ServerTime;
end;

//********************************************
//输入日期和挂单号（或挂单编号最后4位）到数据库查找是否有挂单，有则返回单据ID
//********************************************
procedure TFrmHang.btOKClick(Sender: TObject);
var RightBillNo,DateStr,ErrMsg : string;
begin
  inherited;
  try
    btOK.Enabled := False;
    RightBillNo := Trim(cbHang.Text);

    DateStr := FormatDateTime('YYYY-MM-DD',cxDate.Date);
    if DateStr='' then
    begin
      ShowMsg(Handle, '请输入挂单日期！',[]);
      cxDate.SetFocus;
      Abort;
    end;
    if RightBillNo='' then
    begin
      ShowMsg(Handle, '请输入挂单号！',[]);
      cbHang.SetFocus;
      Abort;
    end;
    try
     Bill_ID := CliDM.Get_PosFindHang(UserInfo.Warehouse_FID,RightBillNo,DateStr,ErrMsg);
    except
      on e : Exception do
      begin
        ShowMsg(Handle, '查找挂单异常：'+ErrMsg,[]);
        Abort;
      end;
    end;
    if Bill_ID = '' then
    begin
      ShowMsg(Handle, ErrMsg,[]);
      cbHang.SetFocus;
      Abort;
    end;
  finally
    btOK.Enabled := True;
  end;
  Self.ModalResult := mrOk;
end;

procedure TFrmHang.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
end;

procedure TFrmHang.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 // inherited;
  if key=27 then self.Close;
end;

procedure TFrmHang.cbHangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //回车 右键
  if (Key = VK_RETURN) or (Key=39) then  btOK.Click;

  if (Key = 38) then   //上键
    cxDate.SetFocus;
end;

procedure TFrmHang.cxDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=40) then   //下键
    cbHang.SetFocus;

  //回车 右键
  if (Key=39) then  btOK.Click;

end;

end.
