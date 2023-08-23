
--TABLA TEMPORAL EN MEMORIA

DECLARE @mitabla TABLE (id int IDENTITY(1,1), pais varchar(50))

insert into @mitabla values ('MEXICO')
insert into @mitabla values ('PERU')
insert into @mitabla values ('ARGENTINA')
insert into @mitabla values ('COLOMBIA')
insert into @mitabla values ('ECUADOR')

select * from @mitabla


--TABLA TEMPORAL FISICA

CREATE TABLE #mitabla (id int IDENTITY(1,1), nombre varchar(50), apellido varchar(50))

insert into #mitabla values('alejandro','lopez')
insert into #mitabla values('Rafael','Castillo')
insert into #mitabla values('Fernando','Gonzalez')
select * from #mitabla
DROP TABLE #mitabla

--SCRIPT
--select * from TurnoPaciente
DECLARE @turnos table(id int identity(1,1), idturno turno, idpaciente paciente)
DECLARE @idpaciente paciente
set @idpaciente = 5

insert into @turnos(idturno,idpaciente)
select TP.idTurno,P.idPaciente from Paciente P
	inner join TurnoPaciente TP
	on TP.idPaciente = P.idPaciente
	--select * from @turnos

declare @i int,@total int
set @i=1
set @total = (select count(*) from @turnos)
WHILE @i <= @total
BEGIN
	if(select idpaciente from @turnos where id = @i) <> @idpaciente
		delete from @turnos where id = @i

	set @i = @i + 1
END

select * from Paciente P
	inner join @turnos T
	on T.idpaciente = P.idpaciente