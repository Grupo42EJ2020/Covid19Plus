<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body style="background-color:#8EC6F2;">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta>
<meta name="description" content="Detalles Curso"></meta>
<meta name="keywords" content="Detalles,Curso"></meta>
<meta name="author" content="Keila Alejandra Castro Hernández"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>CursoDetails</title>
</head>
<center>
<body>
    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">IdCurso</div>
        <div class="display-field"><%: Model.IdCurso %></div>
        
        <div class="display-label">Descripcion</div>
        <div class="display-field"><%: Model.Descripcion %></div>
        
        <div class="display-label">IdEmpleado</div>
        <div class="display-field"><%: Model.IdEmpleado %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Editar", "CursoEdit", new {  id=Model.IdCurso }) %> |
        <%: Html.ActionLink("Regresar a la lista de Cursos", "Curso") %>
    </p>
</center>
</body>
</html>

