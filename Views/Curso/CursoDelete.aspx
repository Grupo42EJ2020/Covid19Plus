<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body style="background-color:#8EC6F2;">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta>
<meta name="description" content="Eliminar Curso"></meta>
<meta name="keywords" content="Eliminar,Curso"></meta>
<meta name="author" content="Keila Alejandra Castro Hernández"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>CursoDelete</title>
</head>
<center>
<body>
    <h3>¿En realidad quiere borrar los Cursos?</h3>
    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">IdCurso</div>
        <div class="display-field"><%: Model.IdCurso %></div>
        
        <div class="display-label">Descripcion</div>
        <div class="display-field"><%: Model.Descripcion %></div>
        
        <div class="display-label">IdEmpleado</div>
        <div class="display-field"><%: Model.IdEmpleado %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Eliminar" /> |
		    <%: Html.ActionLink("Regresar al Curso", "Curso") %>
        </p>
    <% } %>
</center>
</body>
</html>

