CREATE TABLE Curso_Tema_Video(
	IdCTV int primary key IDENTITY(1,1),
	IdCT int,
	IdVideo int,
	constraint fk_idCT FOREIGN KEY(IdCT) REFERENCES Curso_Tema(IdCT),
	constraint fk_idVideo FOREIGN KEY(IdVideo) REFERENCES Video(IdVideo)
)

drop table Curso_Tema_Video

select * from Curso_Tema_Video

CREATE PROCEDURE sp_CTV_Insertar
	@IdCT int,
	@IdVideo int
AS
BEGIN
	INSERT INTO Curso_Tema_Video(IdCT,IdVideo)
	VALUES(@IdCT,@IdVideo)
END;


CREATE PROCEDURE sp_CTV_Eliminar
	@IdCTV int
AS
BEGIN
	DELETE FROM Curso_Tema_Video
	WHERE IdCTV = @IdCTV
END;


CREATE PROCEDURE sp_CTV_ConsultarPorID
@IdCTV int
AS
BEGIN
	SELECT * FROM Curso_Tema_Video
	WHERE IdCTV = @IdCTV
END;




CREATE PROCEDURE sp_CTV_Actualizar
	@IdCTV int,
	@IdCT int,
	@IdVideo int
AS
BEGIN
	UPDATE Curso_Tema_Video SET IdCT=@IdCT,IdVideo=@IdVideo
	WHERE @IdCTV = @IdCTV
END;

CREATE PROCEDURE sp_CTV_ConsultarTodo
AS
BEGIN
	SELECT * FROM Curso_Tema_Video
END;


Drop procedure "sp_CTV_Actualizar"	