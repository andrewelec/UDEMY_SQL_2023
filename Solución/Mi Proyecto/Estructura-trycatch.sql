

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



begin try
	set @contador = 'texto'
end try

begin catch
		print 'no es posible asignar texto a una vble entera'
end catch