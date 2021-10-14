<%-- 
    Document   : listaDeProductos
    Created on : 11 oct. 2021, 10:15:11
    Author     : leoj_
--%>

<%@page import="com.ipn.mx.modelo.dto.ProductoDTO"%>
<%@page import="com.ipn.mx.modelo.dao.ProductoDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>

        <title>Listado de Productos</title>
    </head>
    <body>

        <div class="container">

            <div class="nav nav-pills nav-fill">
                <ul class="nav justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link"  href="../index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../tablasDeMultiplicar.jsp">Tabla de Multiplicar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../categorias/listaDeCategorias.jsp">Listado De Categorias</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../categorias/nuevaCategoria.jsp">Nueva Categoria</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="listaDeProductos.jsp">Lista de Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="nuevoProducto.jsp">Nuevo Producto</a>
                    </li>
                </ul>
            </div>

            <br/>
            <br/>

            <div class="card border-prumary">
                <div class="card-header">
                    <h1>Lista de Productos</h1>
                </div>
                <div class="card-body text-primary">
                    <table class="table table-striped">
                        <tr>
                            <th>Ver Datos</th>
                            <th>Clave Producto</th>
                            <th>Nombre Producto</th>
                            <th>Descripcion Producto</th>
                            <th>Precio</th>
                            <th>Existencia</th>
                            <th>Stock Minimo</th>
                            <th>Categoria</th>
                            <th>Eliminar</th>
                            <th>Actualizar</th>
                        </tr>

                        <%
                            ProductoDAO dao = new ProductoDAO();
                            List lista = dao.readAll();

                            for (int i = 0; i < lista.size(); i++) {
                                ProductoDTO prod = (ProductoDTO) lista.get(i);


                        %>
                        <tr>
                            <td>
                                <a href="verDatos.jsp?id=<%= prod.getEntidad().getIdProducto()%>" class="btn btn-warning">Ver Datos</a>
                            </td>
                            <td><%= prod.getEntidad().getIdProducto()%></td>
                            <td><%= prod.getEntidad().getNombreProducto()%></td>
                            <td><%= prod.getEntidad().getDescripcionProducto()%></td>
                            <td><%= prod.getEntidad().getPrecio()%></td>
                            <td><%= prod.getEntidad().getExistencia()%></td>
                            <td><%= prod.getEntidad().getStockMinimo()%></td>
                            <td><%= prod.getEntidad().getClaveCategoria()%></td>
                            <td>
                                <a href="eliminar.jsp?id=<%= prod.getEntidad().getIdProducto()%>" class="btn btn-danger">Eliminar</a>
                            </td>
                            <td>
                                <a href="actualizar.jsp?id=<%= prod.getEntidad().getIdProducto()%>" class="btn btn-success">Actualizar</a>
                            </td>
                        </tr>
                        <%}%>
                    </table>
                </div>
                <br/>
                <a href="nuevoProducto.jsp" class="btn btn-primary">Nuevo Producto</a> 
            </div>

        </div>
    </body>
</html>
