<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.CursoTema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta> 
<meta name="description" content="Editar de CT"></meta>
<meta name="keywords" content="Editar,CT"></meta>
<meta name="author" content="Mauricio Hernandez Rangel"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>CursoTemaEdit</title>
</head>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
           
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idCurso) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.idCurso) %>
                <%: Html.ValidationMessageFor(model => model.idCurso) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idTema) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.idTema) %>
                <%: Html.ValidationMessageFor(model => model.idTema) %>
            </div>
            
            <p>
                <input type="submit" value="Editar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar a la lista", "CursoTema") %>
    </div>

</body>
</html>

