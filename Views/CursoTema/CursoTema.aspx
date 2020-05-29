<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.CursoTema>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body style="background-color:#C4E7EC;">
<style type="text/css">
    .caja { 
font-family: sans-serif; 
font-size: 50px; 
font-weight: 400; 
color: #D5FCF4; 
background:#602785}
</style>

<style type="text/css"">
    .BtnRegresar {
	box-shadow: 3px 4px 0px 0px #899599;
	background:linear-gradient(to bottom, #ededed 5%, #b2b1b8 100%);
	background-color:#ededed;
	border-radius:15px;
	border:1px solid #fff5ff;
	display:inline-block;
	cursor:pointer;
	color:#000ceb;
	font-family:Verdana;
	font-size:17px;
	padding:7px 25px;
	text-decoration:none;
	text-shadow:0px 1px 0px #e1e2ed;
	&:hover {
	background:linear-gradient(to bottom, #b2b1b8 5%, #ededed 100%);
	background-color:#b2b1b8;
}
 &:active {
	position:relative;
	top:1px;
}
 }
    
</style>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta> 
<meta name="description" content="CT CT"></meta>
<meta name="keywords" content="Lista,CT"></meta>
<meta name="author" content="Mauricio Hernandez Rangel"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
<center>
    <div class="caja">CursoTema</div>
    <br />
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
        <br />
        <a class="BtnRegresar" href="/Apartado/Index">Regresar</a>
        <br />
    </p>

</body>
</html>
