﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.CTV>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body style="background-color:#A9BCDA;">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta> 
<meta name="description" content="Eliminar de CTV"></meta>
<meta name="keywords" content="Eliminar,CTV"></meta>
<meta name="author" content="Joaquin Flores Alcala"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>Eliminar CTV</title>
</head>
<center>
<body>
    <h3>Estas seguro que deseas eliminar?</h3>
    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">IdCTV</div>
        <div class="display-field"><%: Model.IdCTV %></div>
        
        <div class="display-label">IdCT</div>
        <div class="display-field"><%: Model.IdCT %></div>
        
        <div class="display-label">IdVideo</div>
        <div class="display-field"><%: Model.IdVideo %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Eliminar" /> |
		    <%: Html.ActionLink("Regresar", "CTV") %>
        </p>
    <% } %>
</center>
</body>
</html>

