<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body style="background-color:#A0C1FC;">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta>
<meta name="description" content="Editar de Tema"></meta>
<meta name="keywords" content="Editar,Tema"></meta>
<meta name="author" content="Angel Alejandro Escamilla Villarreal"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>TemaEdit</title>
</head>
<center>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Datos del Tema</legend>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
            
            <p>
                <input type="submit" value="Editar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar al apartado Tema", "Tema") %>
    </div>
    </center>
</body>
</html>

