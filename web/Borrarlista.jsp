<%@page import="javax.crypto.ExemptionMechanismException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" type="text/css" href="estilos.css"/>
         <meta charset="utf-8"/>
	<title>Examen practico</title>
	
</head>
    <body>
  

<header> 
      
        
 <<div class="bienvenida">
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

<center>
        
           
         <table  width="95%">
            
                <tr bgcolor="lightblue">
                     <th>Nombre del producto</th>
                    <th>Cantidad</th>
                    <th>Tipo</th>
                    
                    
                </tr>
          
            <% 
                Connection conex=null;
                Statement sta=null;
                ResultSet rs=null;
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    conex= DriverManager.getConnection("jdbc:mysql://localhost:3306/examenpractico", "root", "12345");
                    System.out.println("conexion exitosa");
                    sta=conex.createStatement();
                    rs=sta.executeQuery("SELECT * FROM productos");
                    
                    
                     while(rs.next()){
                 %>
                 <tr> 
                      <th><%=rs.getString(2) %></th>
                      <th><%=rs.getString(3) %></th>
                      <th><%=rs.getString(4) %></th>
                      <th><a href="Borrar.jsp?id=<%=rs.getString(1)%>" onclick="alerta()">Eliminar</a></th>
                       
                       <script>
               function alerta()
    {
    alert("has eliminado el producto");
}
</script>
                 </tr>
                 <%
            }
                sta.close();
                rs.close();
                conex.close();
         
                }
                catch(Exception e){
                System.out.println(e);
                }
            
            %>
</body>
</html>

