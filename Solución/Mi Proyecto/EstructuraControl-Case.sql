


DECLARE @valor int
DECLARE @resultado char(10)=''
SET @valor = 20

SET @resultado = (CASE WHEN @VALOR = 10 THEN 'ROJO'
						WHEN @VALOR = 20 THEN 'VERDE'
						WHEN @VALOR = 30 THEN 'AZUL'
						ELSE 'GRIS'
					END)
PRINT @RESULTADO

SELECT *,(CASE WHEN estado = 1 THEN 'VERDE'
				WHEN ESTADO = 2 THEN 'ROJO'
				WHEN ESTADO = 3 THEN 'AZUL'
				ELSE 'GRIS'
				END) as colorturno from Turno