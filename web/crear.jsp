<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
	 <link rel="stylesheet" type="text/css" href="estilos.css"/>
         <meta charset="utf-8"/>
	<title>Examen Practico </title>
	
</head>
    <body>
  

<header> 
      
 <div class="bienvenida">
     <center>
        <h1><i>Examen Practico</i>
         </h1> 
	</center>
</div>      
<nav class="menu">  
            <ul>
            <li class="menu"><a class="menu" href="crear.jsp">Crear</a></li>
            <li class="menu"><a class="menu" href="Leer.jsp">Leer</a></li>
            <li class="menu"><a class="menu" href="Actualizarlista.jsp">Actualizar</a></li>
            <li class="menu"><a class="menu" href="Borrarlista.jsp">Borrar</a></li>
            </ul><!-- comment -->
        </nav>

</header>
        <div class="clearfix"></div>

<div class="contenedorregistroproduct">
                <h1>Crear producto</h1>
               <form action="crear.jsp" method="POST" autocomplete="off">
            <input id="id" name="id" type="hidden"/>
            <p>
                Nombre del producto:
                <input id="nombre" name="nombre" type="text" autocomplete="off" required />
            </p>
             <p>
                 Cantidad:
                 <input  name="cantidad" type="number" minlength="2" placeholder="1" required/>
            </p>
            <p>
                Tipo de producto:
                <input id="tipo" name="tipo" type="text" autocomplete="off" required/>
            </p>
           
            <button id="guardar" name="guardar" type="submit" value="insertar" onclick="alerta()">guardar</button>
            
            <script>
               function alerta()
    {
    alert("Creacion del producto realizada correctamente");
}
</script>
             
            </script>    
        </form>
                <%
                    if(request.getParameter("guardar")!=null){
                    int idProducto=0;
                    String nombre= request.getParameter("nombre");
                     String cantidad= request.getParameter("cantidad");
                    String tipo= request.getParameter("tipo");
                   
                    Connection conex=null;
                    Statement sta=null;
                    ResultSet rs=null;
                    try{
                    Class.forName("com.mysql.jdbc.Driver");
                    conex= DriverManager.getConnection("jdbc:mysql://localhost:3306/examenpractico", "root", "12345");
                    System.out.println("conexion exitosa");
                    sta=conex.createStatement();
                    sta.executeUpdate("insert into productos values("+idProducto+",'"+nombre+"','"+cantidad+"','"+tipo+"')");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                    catch(Exception e){
                      System.out.println(e);
                       }
                    }
                %> 
</div>
	


</body>
</html>