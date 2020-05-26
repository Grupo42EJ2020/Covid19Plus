<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.CursoTema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta> 
<meta name="description" content="Detalles de CT"></meta>
<meta name="keywords" content="Detalles,CT"></meta>
<meta name="author" content="Mauricio Hernandez Rangel"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>CursoTemaDetails</title>
</head>
<body>
    <fieldset>
        <legend>Información</legend>
        
        <div class="display-label">IdCT</div>
        <div class="display-field"><%: Model.IdCT %></div>
        
        <div class="display-label">idCurso</div>
        <div class="display-field"><%: Model.idCurso %></div>
        
        <div class="display-label">idTema</div>
        <div class="display-field"><%: Model.idTema %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Editar", "CursoTemaEdit", new { id = Model.IdCT })%> |
        <%: Html.ActionLink("Regresar a la lista", "CursoTema") %>
    </p>

</body>
</html>

