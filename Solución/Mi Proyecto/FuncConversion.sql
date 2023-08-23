


/*declare @numero money
set @numero = 500.40
print @numero*/
--SELECT CAST(@numero as INT) AS numero
--SELECT CAST(idpaciente as money) from Paciente

declare @fecha datetime
set @fecha = getdate()
print @fecha

print CONVERT (char(20),@fecha,104)