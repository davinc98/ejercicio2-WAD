<%-- 
    Document   : nuevaCategoria
    Created on : 10 oct. 2021, 22:26:29
    Author     : leoj_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
        
        <title>Nueva Categoria</title>
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
                <form method="post" action="agregarCategoria.jsp">
                    <div class="mb-3">
                        <label class="form-label">Nombre de la Categoria</label>
                        <input type="text" name="txtNombre" id="txtNombre" placeholder="Nombre Categoria"
                               required maxlength="50" class="form-control"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Descripcion de la Categoria</label>
                        <input type="text" name="txtDescripcion" id="txtDescripcion" placeholder="Descripcion Categoria"
                               required maxlength="100" class="form-control"/>
                    </div>
                    <button type="submit" class="btn btn-primary">Registrar Categoria</button>
                </form>
                <br/>
                <a href="listaDeCategorias.jsp" class="btn btn-warnig">Regresar</a> 
            </div>
        </div>
    </body>
</html>
