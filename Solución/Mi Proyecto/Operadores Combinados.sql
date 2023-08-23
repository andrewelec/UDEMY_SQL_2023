




SELECT * FROM  Paciente WHERE apellido = 'Ramirez'
AND (nombre='Roberto' OR idPaciente=1 OR idPais='PER')
AND idPaciente NOT IN(6,3)
