<%-- 
    Document   : listaDeCategorias
    Created on : 10 oct. 2021, 21:34:23
    Author     : leoj_
--%>

<%@page import="com.ipn.mx.modelo.dto.CategoriaDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.ipn.mx.modelo.dao.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>

        <title>Listado de Categorias</title>
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
                        <a class="nav-link active" aria-current="page" href="listaDeCategorias.jsp">Listado De Categorias</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="nuevaCategoria.jsp">Nueva Categoria</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../productos/listaDeProductos.jsp">Lista de Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../productos/nuevoProducto.jsp">Nuevo Producto</a>
                    </li>
                </ul>
            </div>

            <br/>
            <br/>

            <div class="card border-prumary">
                <div class="card-header">
                    <h1>Lista de Categorias</h1>
                </div>
                <div class="card-body text-primary">
                    <table class="table table-striped">
                        <tr>
                            <th>Ver Datos</th>
                            <th>Clave Categorias</th>
                            <th>Nombre Categoria</th>
                            <th>Descripcion Categoria</th>
                            <th>Eliminar</th>
                            <th>Actualizar</th>
                        </tr>

                        <%
                            CategoriaDAO dao = new CategoriaDAO();
                            List lista = dao.readAll();

                            for (int i = 0; i < lista.size(); i++) {
                                CategoriaDTO cat = (CategoriaDTO) lista.get(i);


                        %>
                        <tr>
                            <td>
                                <a href="verDatos.jsp?id=<%= cat.getEntidad().getIdCategoria()%>" class="btn btn-warning">Ver Datos</a>
                            </td>
                            <td><%= cat.getEntidad().getIdCategoria()%></td>
                            <td><%= cat.getEntidad().getNombreCategoria()%></td>
                            <td><%= cat.getEntidad().getDescripcionCategoria()%></td>
                            <td>
                                <a href="eliminar.jsp?id=<%= cat.getEntidad().getIdCategoria()%>" class="btn btn-danger">Eliminar</a>
                            </td>
                            <td>
                                <a href="actualizar.jsp?id=<%= cat.getEntidad().getIdCategoria()%>" class="btn btn-success">Actualizar</a>
                            </td>
                        </tr>
                        <%}%>
                    </table>
                </div>
                <br/>
                <a href="nuevaCategoria.jsp" class="btn btn-primary">Nueva Categoria</a> 
            </div>
        </div>
    </body>
</html>
