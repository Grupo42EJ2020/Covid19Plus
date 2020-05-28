<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body style="background-color:#545764;">
<style type="text/css">
    .caja { 
font-family: sans-serif; 
font-size: 25px; 
font-weight: 400; 
color: #ffffff; 
background:#153DD3 }
</style>

<style type="text/css">
.BOTONEMPLEADO {
	box-shadow:inset 0px 2px 0px 0px #efdcfb;
	background:linear-gradient(to bottom, #c4bfc9 5%, #1021e0 100%);
	background-color:#c4bfc9;
	border-radius:20px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Trebuchet MS;
	font-size:15px;
	font-weight:bold;
	padding:20px 30px;
	text-decoration:none;
	text-shadow:0px 1px 0px #5472cc;
	&:hover {
	background:linear-gradient(to bottom, #1021e0 5%, #c4bfc9 100%);
	background-color:#1021e0;
}
 &:active {
	position:relative;
	top:1px;
}
 }
</style>
<style type="text/css">
    .BOTONVIDEO {
	box-shadow:inset 0px 2px 0px 0px #efdcfb;
	background:linear-gradient(to bottom, #c4bfc9 5%, #1021e0 100%);
	background-color:#c4bfc9;
	border-radius:20px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Trebuchet MS;
	font-size:15px;
	font-weight:bold;
	padding:20px 30px;
	text-decoration:none;
	text-shadow:0px 1px 0px #5472cc;
	&:hover {
	background:linear-gradient(to bottom, #1021e0 5%, #c4bfc9 100%);
	background-color:#1021e0;
}
 &:active {
	position:relative;
	top:1px;
}
 }
</style>

<style type="text/css">.BOTONTEMA {
	box-shadow:inset 0px 2px 0px 0px #efdcfb;
	background:linear-gradient(to bottom, #c4bfc9 5%, #1021e0 100%);
	background-color:#c4bfc9;
	border-radius:20px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Trebuchet MS;
	font-size:15px;
	font-weight:bold;
	padding:20px 30px;
	text-decoration:none;
	text-shadow:0px 1px 0px #5472cc;
	&:hover {
	background:linear-gradient(to bottom, #1021e0 5%, #c4bfc9 100%);
	background-color:#1021e0;
}
 &:active {
	position:relative;
	top:1px;
}
 }
</style>
<style type="text/css">
    .BOTONCURSO {
	box-shadow:inset 0px 2px 0px 0px #efdcfb;
	background:linear-gradient(to bottom, #c4bfc9 5%, #1021e0 100%);
	background-color:#c4bfc9;
	border-radius:20px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Trebuchet MS;
	font-size:15px;
	font-weight:bold;
	padding:20px 30px;
	text-decoration:none;
	text-shadow:0px 1px 0px #5472cc;
	&:hover {
	background:linear-gradient(to bottom, #1021e0 5%, #c4bfc9 100%);
	background-color:#1021e0;
}
 &:active {
	position:relative;
	top:1px;
}
 }
</style>
<style type="text/css">
    .BOTONCT {
	box-shadow:inset 0px 2px 0px 0px #efdcfb;
	background:linear-gradient(to bottom, #c4bfc9 5%, #1021e0 100%);
	background-color:#c4bfc9;
	border-radius:20px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Trebuchet MS;
	font-size:15px;
	font-weight:bold;
	padding:20px 30px;
	text-decoration:none;
	text-shadow:0px 1px 0px #5472cc;
	&:hover {
	background:linear-gradient(to bottom, #1021e0 5%, #c4bfc9 100%);
	background-color:#1021e0;
}
 &:active {
	position:relative;
	top:1px;
}
 }
</style>
<style type="text/css">
.BOTONCTV {
	box-shadow:inset 0px 2px 0px 0px #efdcfb;
	background:linear-gradient(to bottom, #c4bfc9 5%, #1021e0 100%);
	background-color:#c4bfc9;
	border-radius:20px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Trebuchet MS;
	font-size:15px;
	font-weight:bold;
	padding:20px 30px;
	text-decoration:none;
	text-shadow:0px 1px 0px #5472cc;
	&:hover {
	background:linear-gradient(to bottom, #1021e0 5%, #c4bfc9 100%);
	background-color:#1021e0;
}
 &:active {
	position:relative;
	top:1px;
}
 }
       
</style>

<style type="text/css">
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

<style type="text/css">
    
</style>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta> 
<meta name="description" content="Index del apartado"></meta> 
<meta name="keywords" content="Apartado,Indez"></meta>
<meta name="author" content="Angel Alejandro Escamilla Villarreal"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>Index</title>
</head>
<body>
    <center>
    <div class="caja">Lista de Apartados</div>

    <h1></h1>  
    <hr /> 
    <td>
         <img src="../../Content/empleados.png"  width="75" height="70"/>
         <a class="BOTONEMPLEADO" href="/Apartado/Empleado">Empleado</a>

    <br />
         <img src="../../Content/video.png" width="75" height="70" />
         <a class="BOTONVIDEO" href="/Apartado/Video">Video</a>
        
    <br />
        <img src="../../Content/tema.png"  width="75" height="70" />
         <a class="BOTONTEMA" href="/Apartado/Tema">Tema</a>

    <br />
        <img src="../../Content/curso.png" width="75" height="70" />
       <a class="BOTONCURSO" href="/Apartado/Curso">Curso</a>

    <br /> 
         <img src="../../Content/curso%20(1).png"  width="75" height="70" />
        <a class="BOTONCT" href="/Apartado/CT">Curso Tema</a> 
    <br />
        <img src="../../Content/formacion.png"  width="75" height="70" />
         <a class="BOTONCTV" href="/Apartado/CTV">Curso Tema Video</a>
    <br /> 
    <br />
      <br />
         <a class="BtnRegresar" href="/Home/Index">Regresar</a>     
         
     </td>
   
        <br />

    </center>

</body>
</html>