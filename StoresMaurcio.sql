use piadsf1

CREATE PROCEDURE sp_Curso_Tema_Actualizar
	@IdCT int,
	@IdCurso int,
	@IdTema int
AS
BEGIN
	UPDATE Curso_Tema SET IdCurso=@IdCurso, IdTema=@IdTema
	WHERE IdCT = @IdCT
END;

CREATE PROCEDURE sp_Curso_Tema_ConsultarPorID
@idCT int
AS
BEGIN
	SELECT * FROM Curso_Tema
	WHERE IdCT = @idCT
END;

CREATE PROCEDURE sp_Curso_Tema_Eliminar
	@idCT int
AS
BEGIN
	DELETE FROM Curso_Tema
	WHERE IdCT = @IdCT
END;

CREATE PROCEDURE sp_Curso_Tema_ConsultarTodo
 AS
 BEGIN
	SELECT* FROM Curso_Tema
END;

CREATE PROCEDURE sp_Curso_Tema_Insertar
	@idCurso int,
	@idTema int
	AS
BEGIN
	INSERT INTO Curso_Tema(IdCurso,IdTema) VALUES(@idCurso, @idTema)
END;

