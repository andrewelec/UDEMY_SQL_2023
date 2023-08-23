


alter table Paciente
ADD FOREIGN KEY (idPais) REFERENCES Pais(idPais)

alter table HistoriaPaciente
ADD FOREIGN KEY (idPaciente) REFERENCES Paciente(idPaciente)