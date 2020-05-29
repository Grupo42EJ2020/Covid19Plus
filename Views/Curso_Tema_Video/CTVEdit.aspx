<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.CTV>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body style="background-color:#A9BCDA;">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta> 
<meta name="description" content="Editar de CTV"></meta>
<meta name="keywords" content="Editar,CTV"></meta>
<meta name="author" content="Joaquin Flores Alcala"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>Editar CTV</title>
</head>
<center>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Datos</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdCTV) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IdCTV) %>
                <%: Html.ValidationMessageFor(model => model.IdCTV) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdCT) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IdCT) %>
                <%: Html.ValidationMessageFor(model => model.IdCT) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdVideo) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IdVideo) %>
                <%: Html.ValidationMessageFor(model => model.IdVideo) %>
            </div>
            
            <p>
                <input type="submit" value="Guardar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar", "CTV") %>
    </div>
</center>
</body>
</html>

