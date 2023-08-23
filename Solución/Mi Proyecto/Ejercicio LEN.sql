


declare @var1 varchar(20)
declare @var2 varchar(20)
set @var1 = 'Ramiro'
set @var2 = 'Gonzalez'
print LEFT (@var1,LEN(@var1)-1)-- + LEFT (@var2,1)

print LEN(@var2)



DECLARE @i int=1
DECLARE @contador int
declare @varDom varchar(20)

SET @contador = (select MAX(idPaciente) from Paciente)

WHILE @i <= @contador
BEGIN
	
	set @varDom = (select domicilio from Paciente WHERE idPaciente=@i)
	IF ((select nombre from Paciente WHERE idPaciente=@i) IS NOT NULL)
		BEGIN
		
		print LEN(@varDom)--(select nombre from Paciente WHERE idPaciente=@i)-- + (select apellido from Paciente WHERE idPaciente=@i)-- + print LEN(@varDom)
		END
	set @i=@i+1
END