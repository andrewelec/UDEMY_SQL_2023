


ALTER PROC [dbo].[S_paciente] (
			@idPaciente int
)
AS


SELECT apellido,nombre,idPais,observacion,
	(SELECT ps.pais FROM Pais ps WHERE ps.idPais = pa.idPais) descPais

FROM Paciente pa WHERE idPaciente = @idPaciente