USE [UNIVER]
GO
/****** Object:  StoredProcedure [dbo].[PSUBJECT]    Script Date: 08.05.2023 16:19:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[PSUBJECT] @c int output, @p varchar(20) = null
as
begin
	declare @k int = (select count(*) from SUBJECT);
		print 'Параметры: @p=' + @p + ' @c= '+ cast(@c as varchar(3))
		select SUBJECT[код], SUBJECT_NAME[дисциплина], PULPIT[кафедра] from SUBJECT where PULPIT=@p;
		set @c=@@ROWCOUNT
	return @k;
end