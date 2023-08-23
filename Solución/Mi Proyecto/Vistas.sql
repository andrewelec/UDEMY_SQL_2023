

select * from PacientesYTurnosPendientes
select * from VistaPrueba


CREATE VIEW PacientesYTurnosPendientes AS

select P.idPaciente,P.nombre,P.apellido,T.idTurno,T.estado from Paciente P
	inner join TurnoPaciente TP
	on TP.idPaciente = P.idPaciente
	inner join Turno T
	on T.idTurno = TP.idTurno
WHERE isnull(T.estado,0) = 0

