<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Empleado>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta> 
<meta name="description" content="Empleados Empleado"></meta>
<meta name="keywords" content="Lista,Empleado"></meta>
<meta name="author" content="Yareli Lizet Lucio Corona"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>Empleado</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                IdEmpleado
            </th>
            <th>
                Nombre
            </th>
            <th>
                Direccion
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "EmpleadoEdit", new {  id=item.IdEmpleado}) %> |
                <%: Html.ActionLink("Detalles", "EmpleadoDetails", new { id=item.IdEmpleado  })%> |
                <%: Html.ActionLink("Eliminar", "EmpleadoDelete", new {  id=item.IdEmpleado  })%>
            </td>
            <td>
                <%: item.IdEmpleado %>
            </td>
            <td>
                <%: item.Nombre %>
            </td>
            <td>
                <%: item.Direccion %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Registrar un nuevo Empleado", "EmpleadoCreate") %>
    </p>
        <a href="/Apartado/Index">Regresar</a>

</body>
</html>

