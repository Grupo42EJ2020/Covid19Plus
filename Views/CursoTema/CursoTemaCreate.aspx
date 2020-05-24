<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.CursoTema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CursoTemaCreate</title>
</head>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Información</legend>
            
                   
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
                <input type="submit" value="Crear" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar al apartado de Curso Tema", "CursoTema") %>
    </div>

</body>
</html>

