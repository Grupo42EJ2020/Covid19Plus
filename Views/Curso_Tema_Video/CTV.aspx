<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.CTV>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CTV</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                IdCTV
            </th>
            <th>
                IdCT
            </th>
            <th>
                IdVideo
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "Edit", new { id=item.IdCTV  }) %> |
                <%: Html.ActionLink("Detalles", "Details", new {  id=item.IdCT })%> |
                <%: Html.ActionLink("Eliminar", "Delete", new {  id=item.IdVideo  })%>
            </td>
            <td>
                <%: item.IdCTV %>
            </td>
            <td>
                <%: item.IdCT %>
            </td>
            <td>
                <%: item.IdVideo %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear Nuevo ", "CTVCreate") %>
        <br />  
        <a href="/Apartado/Index">Regresar</a>
    </p>

</body>
</html>

