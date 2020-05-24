CREATE TABLE Empleado(
	IdEmpleado int primary key IDENTITY(1,1),
	Nombre nvarchar(100),
	Direccion nvarchar(100))

CREATE TABLE Tema(
	IdTema int primary key IDENTITY(1,1),
	Nombre nvarchar(100))

CREATE TABLE Video(
	IdVideo int  primary key IDENTITY(1,1),
	Nombre nvarchar(200),
	Url nvarchar(100),
	FechaPublicacion datetime)

CREATE TABLE Curso(
	IdCurso int primary key IDENTITY(1,1),
	Descripcion nvarchar(200),
	IdEmpleado int,
	constraint fk_idEmp FOREIGN KEY(IdEmpleado) REFERENCES Empleado(IdEmpleado)
)

CREATE TABLE Curso_Tema(
	IdCT int  primary key IDENTITY(1,1),
	IdCurso int,
	IdTema int,
	constraint fk_idCurso FOREIGN KEY(IdCurso) REFERENCES Curso(IdCurso),
	constraint fk_idTema FOREIGN KEY(IdTema) REFERENCES Tema(IdTema),
)

CREATE TABLE Curso_Tema_Video(
	IdCTV int primary key IDENTITY(1,1),
	IdCT int,
	IdVideo int,
	constraint fk_idCT FOREIGN KEY(IdCT) REFERENCES Curso_Tema(IdCT),
	constraint fk_idVideo FOREIGN KEY(IdVideo) REFERENCES Video(IdVideo),
)

INSERT INTO Curso(Descripcion)
Values ('Este Curso esta preparado para ti')
GO
CREATE procedure sp_Curso_Insertar
	@Descripcion varchar (200),
	@IdEmpleado int	
AS
BEGIN
	INSERT INTO Curso(Descripcion,IdEmpleado)
	VALUES (@Descripcion,@IdEmpleado)
END;
go

GO
 CREATE PROCEDURE sp_Curso_ConsultarTodo
 AS
 BEGIN
	SELECT* FROM Curso
END;
go

GO
CREATE PROCEDURE sp_Curso_ConsultarporId
@IdCurso int
AS
BEGIN 
	Select * from Curso 
	where	IdCurso=@IdCurso
end;
go

GO
create procedure sp_Curso_Delete
	@IdCurso int 
AS
BEGIN
	Delete From Curso
	where IdCurso=@IdCurso
End;
go
DROP PROCEDURE sp_Curso_Insertar
Go
CREATE PROCEDURE sp_Curso_Actualizar
	@IdCurso int,
	@Descripcion nvarchar (200),
	@IdEmpleado int 

AS
BEGIN
	UPDATE Curso set Descripcion= @Descripcion,IdEmpleado=@IdEmpleado
	WHERE IdCurso= @IdCurso 
end;
go






