
create FUNCTION [dbo].[FN_Base64encode](@source VARBINARY(6000))
  RETURNS VARCHAR(8000)
AS
BEGIN
  DECLARE @g_base64 AS VARCHAR(64)
  DECLARE @l_result AS VARCHAR(8000)
  DECLARE @l_length as int
  DECLARE @l BINARY(3)
  DECLARE @r1 BINARY(1)
  DECLARE @r2 BINARY(1)
  DECLARE @r3 BINARY(1)
  DECLARE @b1 TINYINT
  DECLARE @b2 TINYINT
  DECLARE @b3 TINYINT
  DECLARE @b4 TINYINT
  DECLARE @i AS INT

  SET @g_base64 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
  SET @l_length = DATALENGTH(@source)
  SET @i = 0
  SET @l_result =''
  WHILE FLOOR(@l_length/3) > @i
  BEGIN
    SET @l = SUBSTRING(@source,(@i*3)+1,3)
    SET @r1=  SUBSTRING(@l,1,1)
    SET @r2=  SUBSTRING(@l,2,1)
    SET @r3=  SUBSTRING(@l,3,1)
    SET @b1 = FLOOR(@r1/4)
    SET @b2 = ((@r1 & 3) *16 )+ FLOOR(@r2/16)
    SET @b3 = ((@r2 & 15) * 4)+ FLOOR(@r3/64)
    SET @b4 = (@r3 & 63)
    SET @l_result = @l_result + SUBSTRING(@g_base64,@b1+1,1) + SUBSTRING(@g_base64,@b2+1,1) +SUBSTRING(@g_base64,@b3+1,1) +SUBSTRING(@g_base64,@b4+1,1)
    SET @i = @i+1
  END
  IF @l_length % 3 = 1
  BEGIN
    SET @l = SUBSTRING(@source,@l_length,1)
    SET @r1 = @l
    SET @b1 = FLOOR(@r1/4)
    SET @b2 = (@r1 & 3) * 16
    SET @l_result = @l_result + SUBSTRING(@g_base64,@b1+1,1) + SUBSTRING(@g_base64,@b2+1,1) +'=='
  END
  ELSE IF @l_length % 3 = 2
  BEGIN
    SET @l = SUBSTRING(@source,@l_length-1,2)
    SET @r1=  SUBSTRING(@l,1,1)
    SET @r2=  SUBSTRING(@l,2,1)
    SET @b1 = FLOOR(@r1/4)
    SET @b2 = ((@r1 & 3) *16 )+ FLOOR(@r2/16)
    SET @b3 = ((@r2 & 15) * 4)
    SET @l_result = @l_result + SUBSTRING(@g_base64,@b1+1,1) + SUBSTRING(@g_base64,@b2+1,1) +SUBSTRING(@g_base64,@b3+1,1) +'='
  END
  RETURN  @l_result
END
GO
-- È¡µÃFID×Ö¶ÎÖµ
-- SELECT DBO.FN_Newbosid('F5E0059F')  LwTtR3Q9a0WJ2fbls19eUPXgBZ8=
create FUNCTION [dbo].[FN_Newbosid](@typeString VARCHAR(8))
  RETURNS VARCHAR(44)
AS
BEGIN
  DECLARE @newuuid AS BINARY(16)
  DECLARE @sbosid AS VARCHAR(20)
  DECLARE @bosid AS BINARY(20)
  DECLARE @typenumber AS BIGINT
  DECLARE @l_result AS VARCHAR(44)
  DECLARE @UUID AS UNIQUEIDENTIFIER
  SELECT @UUID = [FNEWID]  FROM VW_NEWID
  IF (LEN(@typeString) = 4)
  BEGIN
    SELECT  @l_result =   CAST(@UUID AS VARCHAR(40))+ @typeString
  END
  ELSE IF LEN(@typeString) = 8
  BEGIN
    DECLARE @hex AS CHAR(16)
    DECLARE @n AS INT
    DECLARE @c AS CHAR(1)
    DECLARE @pos AS BIGINT
    DECLARE @bint AS BIGINT
    DECLARE @l AS INT
    DECLARE @b_num AS BIT
    SET @hex = '0123456789ABCDEF'
    SET @n = 8
    SET @b_num = 1
    SET @bint = 0
    WHILE @n >0
    BEGIN
      SET @c = SUBSTRING(@typeString,@n,1)
      SET @pos = PATINDEX('%'+@c+'%',@hex)
      IF @pos = 0
      BEGIN
        SET @b_num = 0
        BREAK
      END
      SET @bint = @bint+ POWER(16,8-@n)*(@pos-1)
      SET @n = @n-1
    END
    IF @b_num = 0
    BEGIN
      SELECT  @l_result =   CAST(@UUID AS VARCHAR(40))+ @typeString
    END
    ELSE
    BEGIN
      SELECT @newuuid = CAST(@UUID AS BINARY(16))
      SELECT @bosid = @newuuid + CAST(@bint AS BINARY(4))
      SET @l_result = dbo.FN_Base64encode(@bosid)
    END
  END
  ELSE
  BEGIN
    SELECT  @l_result = NULL
  END
  RETURN @l_result
END
GO