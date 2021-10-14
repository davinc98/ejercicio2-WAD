<%-- 
    Document   : actualizar
    Created on : 11 oct. 2021, 00:15:33
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

        <title>Actualizar Categoria</title>
    </head>
    <body>
        <div class="container">

            <div class="mb-3"></div>
            <div class="card card-border-success">
                <div class="card-header">
                    <h1 class="text-primary text-center">Datos de la Categoria</h1>
                </div>
            </div>
            <div class="card-body">
                <form method="post" action="actualizarCategoria.jsp">
                    <%
                        CategoriaDAO dao = new CategoriaDAO();
                        CategoriaDTO dto = new CategoriaDTO();

                        dto.getEntidad().setIdCategoria(Integer.parseInt(request.getParameter("id")));
                        dto = dao.read(dto);

                        if (dto != null) {
                    %>
                    <div class="mb-3">
                        <label class="form-label">Clave de la Categoria</label>
                        <input type="text" name="txtId" id="txtId" placeholder="Id Categoria"
                               required readonly maxlength="50" class="form-control"
                               value="<%= dto.getEntidad().getIdCategoria()%>"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre de la Categoria</label>
                        <input type="text" name="txtNombre" id="txtNombre" placeholder="Nombre Categoria"
                               required maxlength="50" class="form-control"
                               value="<%= dto.getEntidad().getNombreCategoria()%>"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Descripcion de la Categoria</label>
                        <input type="text" name="txtDescripcion" id="txtDescripcion" placeholder="Descripcion Categoria"
                               required maxlength="100" class="form-control"
                               value="<%= dto.getEntidad().getDescripcionCategoria()%>"/>
                    </div>
                    <button type="submit" class="btn btn-success">Actualizar Categoria</button>

                    <%
                    } else {
                    %>
                    <label class="form-label">Registro no encontrado.</label>
                    <%
                        }
                    %>
                </form>
                <br/>
                <a href="listaDeCategorias.jsp" class="btn btn-warnig">Regresar</a> 
            </div>
        </div>
    </body>
</html>
