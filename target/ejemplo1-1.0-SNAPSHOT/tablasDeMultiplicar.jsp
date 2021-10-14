<%-- 
    Document   : tablasDeMultiplicar
    Created on : 29 sep. 2021, 22:14:22
    Author     : leoj_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla de Multiplicar</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>

    </head>
    <body>




        <div class="container">

            <div class="nav nav-pills nav-fill">
                <ul class="nav justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link " href="index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="tablasDeMultiplicar.jsp">Tabla de Multiplicar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="categorias/listaDeCategorias.jsp">Listado De Categorias</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="categorias/nuevaCategoria.jsp">Nueva Categoria</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="productos/listaDeProductos.jsp">Listado de Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="productos/nuevoProducto.jsp">Nuevo Producto</a>
                    </li>
                </ul>
            </div>

            <br/>
            <br/>

            <center>
                <h1>Tabla de Multiplicar</h1>
                <br/>

                <table class="table table-striped">
                    <%
                        for (int i = 1; i <= 10; i++) {
                            out.println("<tr>");
                            for (int j = 1; j <= 10; j++) {
                                out.println("<td>" + (i * j) + "</td>");
                            }
                            out.println("</tr>");
                        }
                    %>
                </table>
            </center>

        </div>

    </body>
</html>
