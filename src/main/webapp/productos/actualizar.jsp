<%-- 
    Document   : actualizar
    Created on : 11 oct. 2021, 10:35:58
    Author     : leoj_
--%>

<%@page import="com.ipn.mx.modelo.dto.ProductoDTO"%>
<%@page import="com.ipn.mx.modelo.dao.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
        
        <title>Actualizar Producto</title>
    </head>
    <body>
        <div class="container">
            
            <div class="mb-3"></div>
            <div class="card card-border-success">
                <div class="card-header">
                    <h1 class="text-primary text-center">Datos del Producto</h1>
                </div>
            </div>
            <div class="card-body">
                <form method="post" action="actualizarProducto.jsp">
                    <%
                        ProductoDAO dao = new ProductoDAO();
                        ProductoDTO dto = new ProductoDTO();

                        dto.getEntidad().setIdProducto(Integer.parseInt(request.getParameter("id")));
                        dto = dao.read(dto);
                        
                        if (dto != null) {
                    %>
                    <div class="mb-3">
                        <label class="form-label">Clave del Producto</label>
                        <input type="text" name="txtId" id="txtId" placeholder="Id Producto"
                               required readonly maxlength="50" class="form-control"
                               value="<%= dto.getEntidad().getIdProducto()%>"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre del Producto</label>
                        <input type="text" name="txtNombre" id="txtNombre" placeholder="Nombre Producto"
                               required maxlength="50" class="form-control"
                               value="<%= dto.getEntidad().getNombreProducto()%>"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Descripcion</label>
                        <input type="text" name="txtDescripcion" id="txtDescripcion" placeholder="Descripcion Producto"
                               required maxlength="100" class="form-control"
                               value="<%= dto.getEntidad().getDescripcionProducto()%>"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Precio</label>
                        <input type="number" name="txtPrecio"  id="txtPrecio" placeholder="Precio del producto"
                               required maxlength="50" class="form-control"
                               value="<%= dto.getEntidad().getPrecio()%>"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Eistencia</label>
                        <input type="number" name="txtExistencia" id="txtExistencia" step="1" min="1" max="100"
                               placeholder="Cantidad disponible del producto" class="form-control"
                               value="<%= dto.getEntidad().getExistencia()%>"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Stock Minimo</label>
                        <input type="number" id="txtStockMinimo" name="txtStockMinimo" step="1" min="10" max="100"
                               placeholder="Cantidad minima en stock del producto"  class="form-control"
                               value="<%= dto.getEntidad().getStockMinimo()%>"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Clave Categoria</label>
                        <input name="txtClaveCategoria" type="number" id="txtClaveCategoria"
                               placeholder="Clave de la categoria" required maxlength="100" class="form-control"
                               value="<%= dto.getEntidad().getClaveCategoria()%>"/>
                    </div>``
                    <button type="submit" class="btn btn-success">Actualizar Categoria</button>
                    <br/>
                    <a href="listaDeProductos.jsp" class="btn btn-warnig">Regresar</a> 
                    
                     <%
                    } else {
                    %>
                       <label class="form-label">Registro no encontrado.</label>
                       
                       <br/>
                       <a href="listaDeProductos.jsp" class="btn btn-warnig">Regresar</a> 
                    <%
                        }
                    %>
                </form>
            </div>
        </div>
    </body>
</html>
