

--select * from pacientelog

CREATE TRIGGER PacientesCreados ON Paciente
AFTER INSERT
AS

IF (SELECT idpais FROM inserted) = 'MEX'
	INSERT into PacienteLog (idpaciente,idpais,fechaAlta)
		SELECT i.idpaciente,i.idpais,GETDATE() FROM Inserted i



ALTER TABLE Pacientelog ADD fechaModificacion DATETIME
SELECT * FROM Pacientelog

SELECT * FROM Paciente WHERE idpaciente = 18
UPDATE Paciente SET nombre='Francisco Manuel' WHERE idpaciente = 18

