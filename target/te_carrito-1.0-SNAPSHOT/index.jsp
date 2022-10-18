<%@page import="java.util.ArrayList"%>
<%
    if(session.getAttribute("lista")==null){
        //inicializar la lista
        ArrayList<String> lis=new ArrayList<String>();
        //creando una lsta vacia
        session.setAttribute("lista", lis);
                
    }
    //se obtien la coleccion lista comoo aatributo de sesion
    ArrayList<String> lista=(ArrayList<String>)session.getAttribute("lista");
    //session.setAttribute("lista", listado);
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Carrito de Compras</h1>
        <p>Inserte los productos que desea</p>
        <form action="PrecesaServlet" method="POST">
            Producto: <input type="text" name="producto">
            <input type="submit" value="enviar">
        </form>
        <br>
        <a href="ProcesaServlet">Vaciar el carrito</a>
        <h3>Conntenido del carriito:</h3>
        <ul>
            <%
                if(lista !=null){
                    for(String item :lista){
                        out.println("<li>"+item+"</li>");
                    }
                }
            %>
             
        </ul>
        
        
    </body>
</html>
