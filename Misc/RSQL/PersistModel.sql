USE [TaxiNYC_Sample]
GO
/****** Object:  StoredProcedure [dbo].[PersistModel]    Script Date: 11/05/2015 23:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PersistModel]
@m nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	insert into nyc_taxi_models (model) values (convert(varbinary(max),@m,2))
END
GO
