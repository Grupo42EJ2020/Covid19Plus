<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.CursoTema>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta> 
<meta name="description" content="CT CT"></meta>
<meta name="keywords" content="Lista,CT"></meta>
<meta name="author" content="Mauricio Hernandez Rangel"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>CursoTema</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                IdCT
            </th>
            <th>
                idCurso
            </th>
            <th>
                idTema
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "CursoTemaEdit", new { id=item.IdCT }) %> |
                <%: Html.ActionLink("Detalles", "CursoTemaDetails", new { id = item.IdCT })%> |
                <%: Html.ActionLink("Eliminar", "CursoTemaDelete", new { id = item.IdCT })%>
            </td>
            <td>
                <%: item.IdCT %>
            </td>
            <td>
                <%: item.idCurso %>
            </td>
            <td>
                <%: item.idTema %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear un registro nuevo", "CursoTemaCreate") %>
        <br />
        <a href="/Apartado/Index">Regresar</a>
    </p>

</body>
</html>

