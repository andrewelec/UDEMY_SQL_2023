


declare @var1 varchar(20)
set @var1 = 'Ramiro'
print LEFT (@var1,2)

declare @var1 varchar(20)
set @var1 = 'Ramiro'
print RIGHT (@var1,2)

declare @var1 varchar(20)
declare @var2 varchar(20)
set @var1 = 'Ramiro'
set @var2 = 'Gonzalez'
print LEFT (@var1,1) + LEFT (@var2,1)



DECLARE @i int=1
DECLARE @contador int
declare @varN varchar(20)
declare @varA varchar(20)
declare @concat varchar(20)

SET @contador = (select MAX(idPaciente) from Paciente)

WHILE @i <= @contador
BEGIN
	--print @i
	set @varN = LEFT((select nombre from Paciente WHERE idPaciente=@i),1)
	set @varA = LEFT((select apellido from Paciente WHERE idPaciente=@i),1)
	IF (@varN IS NOT NULL)
		BEGIN
		print @varN+@varA
		END
	set @i=@i+1
END