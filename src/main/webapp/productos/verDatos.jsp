<%-- 
    Document   : verDatos
    Created on : 11 oct. 2021, 10:26:20
    Author     : leoj_
--%>

<%@page import="com.ipn.mx.modelo.dao.ProductoDAO"%>
<%@page import="com.ipn.mx.modelo.dto.ProductoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
        <title>Ver Producto</title>
    </head>
    <body>

        <div class="card border-prumary">
            <div class="card-header">
                <h1>Producto</h1>
            </div>
            <div class="card-body text-primary">
                <table class="table table-striped">
                    <%
                        ProductoDAO dao = new ProductoDAO();
                        ProductoDTO dto = new ProductoDTO();

                        dto.getEntidad().setIdProducto(Integer.parseInt(request.getParameter("id")));
                        dto = dao.read(dto);

                        if (dto != null) {
                    %>
                    <tr>
                        <th>Clave Producto</th>
                        <td><%= dto.getEntidad().getIdProducto()%></td>
                    </tr>
                    <tr>
                        <th>Nombre Producto</th>
                        <td><%= dto.getEntidad().getNombreProducto()%></td>
                    </tr>
                    <tr>
                        <th>Descripcion Producto</th>
                        <td><%= dto.getEntidad().getDescripcionProducto()%></td>
                    </tr>
                    <tr>
                        <th>Precio</th>
                        <td><%= dto.getEntidad().getPrecio()%></td>
                    </tr>
                    <tr>
                        <th>Existencia</th>
                        <td><%= dto.getEntidad().getExistencia()%></td>
                    </tr>
                    <tr>
                        <th>Stock Minimo</th>
                        <td><%= dto.getEntidad().getStockMinimo()%></td>
                    </tr>
                    <tr>
                        <th>Categoria</th>
                        <td><%= dto.getEntidad().getClaveCategoria()%></td>
                    </tr>
                    <%

                    } else {
                    %>
                    <tr>
                        <td colspan="3">Registro no encontrado.</td>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>
            <br/>
            <a href="listaDeProductos.jsp" class="btn btn-warnig">Regresar</a> 
        </div>


    </body>
</html>
