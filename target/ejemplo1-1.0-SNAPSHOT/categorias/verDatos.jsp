<%-- 
    Document   : verDatos
    Created on : 10 oct. 2021, 22:17:59
    Author     : leoj_
--%>

<%@page import="com.ipn.mx.modelo.dto.CategoriaDTO"%>
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
        <title>Ver Categoria</title>
    </head>
    <body>

        <div class="card border-prumary">
            <div class="card-header">
                <h1>Categoria</h1>
            </div>
            <div class="card-body text-primary">
                <table class="table table-striped">
                    <%
                        CategoriaDAO dao = new CategoriaDAO();
                        CategoriaDTO dto = new CategoriaDTO();

                        dto.getEntidad().setIdCategoria(Integer.parseInt(request.getParameter("id")));
                        dto = dao.read(dto);

                        if (dto != null) {


                    %>
                    <tr>
                        <th>Clave Categorias</th>
                        <td><%= dto.getEntidad().getIdCategoria()%></td>
                    </tr>
                    <tr>
                        <th>Nombre Categoria</th>
                        <td><%= dto.getEntidad().getNombreCategoria()%></td>
                    </tr>
                    <tr>
                        <th>Descripcion Categoria</th>
                        <td><%= dto.getEntidad().getDescripcionCategoria()%></td>
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
            <a href="listaDeCategorias.jsp" class="btn btn-warnig">Regresar</a> 
        </div>


    </body>
</html>
