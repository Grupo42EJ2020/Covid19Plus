﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body style="background-color:#82CBE4;">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta>
<meta name="description" content="Eliminar del Video"></meta>
<meta name="keywords" content="Eliminar,Video"></meta>
<meta name="author" content="Juan Gabriel Lopez Solorzano"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>VideoDelete</title>
</head>
    <center>
<body>
    <h3>¿Estas seguro de borrar este Tema?</h3>
    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">IdVideo</div>
        <div class="display-field"><%: Model.IdVideo %></div>
        
        <div class="display-label">Nombre</div>
        <div class="display-field"><%: Model.Nombre %></div>
        
        <div class="display-label">Url</div>
        <div class="display-field"><%: Model.Url %></div>
        
        <div class="display-label">FechaPublicacion</div>
        <div class="display-field"><%: String.Format("{0:g}", Model.FechaPublicacion) %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Eliminar" /> |
		    <br />
		    <%: Html.ActionLink("Regresar al apartado Video", "Video") %>
        </p>
    <% } %>
    </center>
</body>
</html>

