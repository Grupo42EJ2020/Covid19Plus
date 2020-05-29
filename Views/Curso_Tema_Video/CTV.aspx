<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.CTV>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body style="background-color:#C1D0EB;">
<style type="text/css">
    .caja { 
font-family: sans-serif; 
font-size: 50px; 
font-weight: 400; 
color: #A0F6C1; 
background:#D11B47}
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
<meta name="description" content="CTV CTV"></meta>
<meta name="keywords" content="Lista,CTV"></meta>
<meta name="author" content="Joaquin Flores Alcala"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
<center>
    <div class="caja">Curso Tema Video</div>
    <br />
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
                <%: Html.ActionLink("Editar", "CTVEdit", new { id=item.IdCTV  }) %> |
                <%: Html.ActionLink("Detalles", "CTVDetails", new { id = item.IdCTV })%> |
                <%: Html.ActionLink("Eliminar", "CTVDelete", new { id = item.IdCTV })%>
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
        <br />
        <a class="BtnRegresar" href="/Apartado/Index">Regresar</a>
        <br />
    </p>

</body>
</html>

