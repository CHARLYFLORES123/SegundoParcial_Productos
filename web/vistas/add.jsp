<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo Producto</h1>
        <form action="Controlador">         
            Descripcion: <input type="text" name="txtDescripcion"><br><br>
            Cantidad: <input type="number" name="txtCantidad"><br><br>
            Precio: <input type="number"  step="any" name="txtPrecio"><br><br>
            Categoria: <input type="text" name="txtCategoria"><br><br>
            <input type="submit" name="accion" value="AGREGAR"><br>
            <a href="Controlador?accion=listar">Regresar</a>
        </form>
    </body>
</html>
