

CREATE TRIGGER PacientesModificados ON Paciente
AFTER UPDATE
AS

IF EXISTS (SELECT idpaciente FROM PacienteLog
			WHERE idpaciente = (SELECT idpaciente FROM inserted))
	UPDATE PacienteLog SET fechaModificacion = GETDATE()
			WHERE idpaciente = (SELECT idpaciente FROM Inserted)
ELSE
	INSERT INTO PacienteLog (idpaciente, idpais, fechaModificacion)
	SELECT idPaciente,idPais,GETDATE() FROM Inserted
