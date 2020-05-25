CREATE PROCEDURE sp_Video_Insertar
	@Nombre nvarchar(200),
	@Url nvarchar(100),
	@FechaPublicacion datetime
AS
BEGIN
	INSERT INTO Video(Nombre,Url,FechaPublicacion)
	VALUES(@Nombre,@Url,@FechaPublicacion)
END;
GO
CREATE PROCEDURE sp_Video_ConsultarTodo
AS
BEGIN
	SELECT * FROM VIDEO
END;
go

CREATE PROCEDURE sp_Video_ConsultarPorID
@IdVideo int
AS
BEGIN
	SELECT * FROM VIDEO
	WHERE IdVideo = @idVideo
END;
go
GO
CREATE PROCEDURE sp_Video_Eliminar
	@IdVideo int
AS
BEGIN
	DELETE FROM VIDEO
	WHERE IdVideo = @idVideo
END;
go
GO
CREATE PROCEDURE sp_Video_Actualizar
	@IdVideo int,
	@Nombre nvarchar(200),
	@Url nvarchar(100),
	@FechaPublicacion datetime
AS
BEGIN
	UPDATE Video SET Nombre=@Nombre,Url=@Url,FechaPublicacion=@FechaPublicacion
	WHERE IdVideo = @IdVideo
END;