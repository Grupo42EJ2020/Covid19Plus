<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta> 
<meta name="description" content="Detalles de Empleado"></meta>
<meta name="keywords" content="Detalles,Empleado"></meta>
<meta name="author" content="Yareli Lizet Lucio Corona"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>EmpleadoDetails</title>
</head>
<body>
    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">IdEmpleado</div>
        <div class="display-field"><%: Model.IdEmpleado %></div>
        
        <div class="display-label">Nombre</div>
        <div class="display-field"><%: Model.Nombre %></div>
        
        <div class="display-label">Direccion</div>
        <div class="display-field"><%: Model.Direccion %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Editar", "EmpleadoEdit", new {  id=Model.IdEmpleado }) %> |
        <%: Html.ActionLink("Regresar", "Empleado") %>
    </p>

</body>
</html>

