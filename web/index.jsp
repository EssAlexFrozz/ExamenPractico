<%@page import="javax.crypto.ExemptionMechanismException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
	<title>Examen practico</title>
        <meta charset="utf-8"/>
        <link rel="stylesheet" type="text/css" href="estilos.css"/>
       </head> 
    <body>
	<header> 
            <div class="bienvenida">
    <center><h1 class="bienvenida"><i>Bienvenido</i>
         </h1> 
        <h1><i>Examen Practico</i>
         </h1> 
	</center>
</div>
        </header>
 

        <nav class="menu">  
            <ul>
            <li class="menu"><a class="menu" href="crear.jsp">Crear</a></li>
            <li class="menu"><a class="menu" href="Leer.jsp">Leer</a></li>
            <li class="menu"><a class="menu" href="Actualizarlista.jsp">Actualizar</a></li>
            <li class="menu"><a class="menu" href="Borrarlista.jsp">Borrar</a></li>
            </ul><!-- comment -->
        </nav>

</html>
 
