CREATE PROCEDURE sp_Tema_Insertar
	@Nombre nvarchar(100)
AS
BEGIN
	INSERT INTO Tema(Nombre)
	VALUES(@Nombre)
END;


CREATE PROCEDURE sp_Tema_ConsultarTodo
AS
BEGIN
	SELECT * FROM Tema
END;


CREATE PROCEDURE sp_Tema_ConsultarPorID
@IdTema int
AS
BEGIN
	SELECT * FROM Tema
	WHERE IdTema = @idTema
END;


CREATE PROCEDURE sp_Tema_Eliminar
	@IdTema int
AS
BEGIN
	DELETE FROM Tema
	WHERE IdTema= @idTema
END;


CREATE PROCEDURE sp_Tema_Actualizar
	@IdTema int,
	@Nombre nvarchar(100)
AS
BEGIN
	UPDATE Tema SET Nombre=@Nombre
	WHERE IdTema = @IdTema
END;

