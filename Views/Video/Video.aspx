<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Video>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta>
<meta name="description" content="Videos Video"></meta>
<meta name="keywords" content="Lista,Video"></meta>
<meta name="author" content="Juan Gabriel Lopez Solorzano"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>Video</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                IdVideo
            </th>
            <th>
                Nombre
            </th>
            <th>
                Url
            </th>
            <th>
                FechaPublicacion
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "VideoEdit", new { id = item.IdVideo })%> |
                <%: Html.ActionLink("Detalles", "VideoDetails", new { id = item.IdVideo })%> |
                <%: Html.ActionLink("Eliminar", "VideoDelete", new { id = item.IdVideo })%>
            </td>
            <td>
                <%: item.IdVideo %>
            </td>
            <td>
                <%: item.Nombre %>
            </td>
            <td>
                <%: item.Url %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.FechaPublicacion) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear Nuevo", "VideoCreate")%>
        <br />
        <a href="/Apartado/Index">Regresar</a>
    </p>

</body>
</html>

