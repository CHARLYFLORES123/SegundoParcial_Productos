<%@page import="Modelo.Productos"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <div>
            <%
            ProductoDAO dao=new ProductoDAO();
            int id=Integer.parseInt((String)request.getAttribute("idpro"));
            Productos p=(Productos)dao.list(id);
            %>
        <h1>Editar Productos</h1>
        <form action="Controlador">         
            Descripcion: <input type="text" name="txtDescripcion" value="<%= p.getDescripcion()%>"><br><br>
            Cantidad: <input type="number" name="txtCantidad" value="<%= p.getCantidad()%>"><br><br>
            Precio: <input type="number" step="any" name="txtPrecio" value="<%= p.getPrecio()%>"><br><br>
            Categoria: <input type="text" name="txtCategoria" value="<%= p.getCategoria()%>"><br><br>
            <input type="hidden" name="txtid" value="<%= p.getId()%>"><br><br>
            <input type="submit" name="accion" value="Actualizar"><br>
            <a href="Controlador?accion=listar">Regresar</a>
        </form>
        </div>
    </body>
</html>

