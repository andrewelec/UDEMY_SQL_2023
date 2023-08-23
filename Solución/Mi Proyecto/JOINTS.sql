

select * from Paciente
select * from TurnoPaciente

select * from Paciente P
INNER JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

select * from Paciente P
LEFT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

select * from Paciente P
RIGHT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

-------------------------------------

select * from Turno WHERE estado=3
UNION
select * from Turno WHERE estado=1
