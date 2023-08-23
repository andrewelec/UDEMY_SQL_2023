USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[S_paciente]    Script Date: 6/08/2023 1:54:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER PROC [dbo].[S_paciente] (
			@idPaciente int
)
AS

DECLARE @ordenamiento CHAR(1)
DECLARE @valorordenamiento CHAR(1)

SET @valorordenamiento = ISNULL (@ordenamiento,'A')

PRINT @valorordenamiento

--SET @ordenamiento = 'A'



SELECT apellido,nombre FROM Paciente WHERE idPaciente = @idPaciente

--SET @ordenamiento = 'D'



--------------------------------
