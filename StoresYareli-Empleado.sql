use piadsf1

CREATE PROCEDURE sp_Empleado_Insertar
	@IdEmpleado int,
	@Nombre varchar(50),
	@Direccion varchar(80)
AS
BEGIN
	INSERT INTO Empleado (IdEmpleado,Nombre,Direccion)
	VALUES (@IdEmpleado,@Nombre,@Direccion)
END;

CREATE PROCEDURE sp_Empleado_ConsultarTodo
AS
BEGIN
	SELECT * FROM Empleado
END;

CREATE PROCEDURE sp_Empleado_ConsultarPorID
@IdEmpleado int
AS
BEGIN
	SELECT * FROM Empleado 
	WHERE IdEmpleado=@IdEmpleado
END;

CREATE PROCEDURE sp_Empleado_Eliminar
@IdEmpleado int
AS
BEGIN
	DELETE FROM Empleado
	WHERE IdEmpleado=@IdEmpleado
END;

CREATE PROCEDURE sp_Empleado_Actualizar
@IdEmpleado int,
@Nombre varchar(50),
@Direccion varchar(80)
AS
BEGIN
	UPDATE Empleado SET Nombre=@Nombre,Direccion=@Direccion
	WHERE IdEmpleado=@IdEmpleado 
END;
