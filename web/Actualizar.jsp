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
      
        
       
<nav class="menu">
     
    <ul class="menu">
	
    <li class="menu"><a class="menu" href="index.jsp">Inicio</a></li>
</ul>
</nav>

</header>

<div class="contenedorregistroproduct">
                <h1> Actualizar Datos</h1>
                <%
                String id=request.getParameter("id");
                Connection conex=null;
                Statement sta=null;
                ResultSet rs=null;
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    conex= DriverManager.getConnection("jdbc:mysql://localhost:3306/examenpractico", "root", "12345");
                    System.out.println("conexion exitosa");
                    sta=conex.createStatement();
                    rs=sta.executeQuery("SELECT * FROM productos where idProducto='"+id+"'");
                     while(rs.next()){
                %>
               <form action="" method="POST" autocomplete="off">
            <input id="id" name="id" type="hidden"/>
            <p>
                Nombre del producto:
                <input id="nombre" name="nombre" type="text" value="<%=rs.getString(2)%>" required/>
            </p>
            <p>
                 Cantidad:
                 <input  name="cantidad" type="number" value="<%=rs.getString(3)%>" maxlength="5" required />
            </p>
            <p>
                Tipo de producto:
                <input rows="9" id="tipo" name="tipo" value="<%=rs.getString(4)%>" required />
            </p>
            
            <button id="guardar" name="actualizar" type="submit" value="insertar" onclick="alerta()">Actualizar</button>
        </form>
            <script>
               function alerta()
    {
    alert("Producto actualizado");
}
</script>
                <%
            }
              
         
                }
                catch(Exception e){
                System.out.println(e);
                }
                if(request.getParameter("actualizar")!=null){
                    
                    String nombre= request.getParameter("nombre");
                    int cantidad= Integer.parseInt(request.getParameter("cantidad"));
                    String tipo= request.getParameter("tipo");
                    

                  sta.executeUpdate("update productos set NombreProducto='"+nombre+"', Cantidad="+cantidad+", TipoProducto  ='"+tipo+"' where idProducto='"+id+"'");
                 request.getRequestDispatcher("Actualizarlista.jsp").forward(request, response);

                    }

            
            %>
</div>

</body>
</html>
