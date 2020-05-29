<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<style type="text/css">
  .boton_personalizado{
    text-decoration: none;
    padding: 10px;
    font-weight: 600;
    font-size: 20px;
    color: #ffffff;
    background-color: #1883ba;
    border-radius: 6px;
    border: 2px solid #0016b0;
  }
  .boton_personalizado:hover{
    color: #1883ba;
    background-color: #ffffff;
  }
</style>
<link href="../../Content/Site.css" rel="stylesheet" type="text/css" />

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="UTF-8"></meta> 
<meta name="description" content="Pagina de inicio"></meta>
<meta name="keywords" content="Home,Index"></meta>
<meta name="author" content="Angel Alejandro Escamilla Villarreal"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>Pia Desarrollo de Software</title>
</head>
<body style="overflow-x: hidden; overflow-y: hidden; margin-left: 0%; margin-right: 0%; margin-top: 0%; background-color: rgba(0, 0, 0, 0.70);;">
        <div style="width: 100%; background-color: #383838; height: 100px; max-height: 100px; padding-top: 5px;">
            <table style="width: 100%; height: 100px; max-height: 100px;">
                <tr style="width: 100%;">
                    <td style="width: 100%;">
                        &nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo.png" Height="75px" Width="75px" />
                    </td>
                    <td style="width: 50%; text-align: right;">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/logo2.png" Height="75px" Width="160px" />&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </div>
    <h1>
    <td>
    <center>
    <p style="color:White;">¡Bienvenido a nuestro sitio Web!</p>
    <a class="boton_personalizado" href="/Apartado/Index">Apartados</a>                                  
    </center>
    </td>
    <center>
         &nbsp;&nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/Images/logo3.png" Height="175px" Width="175px" />
   </center>
   <center>
   <p style="color:White;">Equipo de desarrolladores</p>
       &nbsp;&nbsp;<asp:Image class="imgRedonda" ID="Image4" runat="server" ImageUrl="~/Content/Mauricio.jpg" Height="95px" Width="95px" />

        &nbsp;&nbsp;<asp:Image class="imgRedonda" ID="Image5" runat="server" ImageUrl="~/Content/Yareli.jpg" Height="95px" Width="95px" />

        &nbsp;&nbsp;<asp:Image class="imgRedonda" ID="Image6" runat="server" ImageUrl="~/Content/Joaquin.jpg" Height="95px" Width="95px" />

         &nbsp;&nbsp;<asp:Image class="imgRedonda" ID="Image7" runat="server" ImageUrl="~/Content/Escamilla.jpg" Height="95px" Width="95px" />

          &nbsp;&nbsp;<asp:Image class="imgRedonda" ID="Image8" runat="server" ImageUrl="~/Content/Keila.jpg" Height="95px" Width="95px" />
      </center>
</body>
</html>
