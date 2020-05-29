<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body style="background-color:Black;">
<style type="text/css">
    .caja { 
font-family: sans-serif; 
font-size: 50px; 
font-weight: 400; 
color: #042654; 
background:#AFF8A1 }
</style>
<style type="text/css"">
.Btn1 {
	box-shadow:inset 0px 0px 14px -3px #b6d4d0;
	background:linear-gradient(to bottom, #d6d6d6 5%, #a8b2e3 100%);
	background-color:#d6d6d6;
	border-radius:10px;
	border:1px solid #b2c5ff;
	display:inline-block;
	cursor:pointer;
	color:#051047;
	font-family:Times New Roman;
	font-size:15px;
	font-weight:bold;
	padding:15px 45px;
	text-decoration:none;
	text-shadow:0px 1px 0px #a6c3f5;
	&:hover {
	background:linear-gradient(to bottom, #a8b2e3 5%, #d6d6d6 100%);
	background-color:#a8b2e3;
}
 &:active {
	position:relative;
	
	top:1px;
}
 }
</style>

<style type="text/css"">
.Btn2 {
	box-shadow:inset 0px 0px 14px -3px #b6d4d0;
	background:linear-gradient(to bottom, #d6d6d6 5%, #a8b2e3 100%);
	background-color:#d6d6d6;
	border-radius:10px;
	border:1px solid #b2c5ff;
	display:inline-block;
	cursor:pointer;
	color:#051047;
	font-family:Times New Roman;
	font-size:15px;
	font-weight:bold;
	padding:15px 45px;
	text-decoration:none;
	text-shadow:0px 1px 0px #a6c3f5;
	&:hover {
	background:linear-gradient(to bottom, #a8b2e3 5%, #d6d6d6 100%);
	background-color:#a8b2e3;
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
<meta name="description" content="Apartado de Tema"></meta>
<meta name="keywords" content="Apartado,Tema"></meta>
<meta name="author" content="Angel Alejandro Escamilla Villarreal"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
<center>
</br>
    <img src="../../Content/profesor.png"  width="150" height="150" />
    <br />
    <div class="caja">Tema</div>
</center>
</head>
<body>
        <center>
        <p style="color:#9B9BFE";>En este apartado se puede consultar, añadir, borrar y actualizar datos de  tema</p>
        <br />
        <p style="color:#9B9BFE";>¿Que desea hacer?</p>
        <br />
        <a class="Btn1" href="/Tema/Tema"> Ver Temas de la Base de Datos </a>
        <br />
        <br />
        <a class="Btn2" href="/Apartado/Index">Regresar a los Apartados</a>
        <br />
        </center>
</body>
</html>