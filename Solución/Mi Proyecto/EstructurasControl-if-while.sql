

/*DECLARE @idpaciente int
DECLARE @idturno int

SET @idpaciente = 1

IF @idpaciente = 1
	
BEGIN
	set @idturno = 20
	select * from Paciente where idPaciente=@idpaciente 
	print @idturno

	IF EXISTS(select * from Paciente where idPaciente=1)
		print 'existe'
END
ELSE
BEGIN
	print 'no se cumple la condicion'
END*/

DECLARE @contador int=0
WHILE @contador <= 10
BEGIN
	print @contador
	set @contador=@contador+1
	/*if @contador = 3
		RETURN*/
		if @contador=3
			BREAK
END
print 'sigue ejecutando'

