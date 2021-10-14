<%-- 
    Document   : nuevoProducto
    Created on : 11 oct. 2021, 10:15:28
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

        <title>Nuevo Producto</title>
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
                <form name="frmDatos" method="post" action="agregarProducto.jsp"> 
                    <div class="mb-3">
                        <label for="txtNombreProducto" class="form-label">Nombre Producto: </label>
                        <input type="text" name="txtNombreProducto"  id="txtNombreProducto" placeholder="Nombre del producto" required/>
                    </div>

                    <div class="mb-3">
                        <label for="txtDescripcion" class="form-label">Descripcion: </label>
                        <input type="text" name="txtDescripcion"  id="txtDescripcion" placeholder="Descrpcion del producto" required/>
                    </div>

                    <div class="mb-3">
                        <label for="txtPrecio" class="form-label">Precio: </label>
                        <input type="number" name="txtPrecio"  id="txtPrecio" placeholder="Precio del producto" required/>
                    </div>

                    <div class="mb-3">
                        <label for="txtExistencia" class="form-label">Existencia: </label>
                        <input type="number" name="txtExistencia" id="txtExistencia" step="1" min="1" max="100"
                               placeholder="Cantidad disponible del producto" required/>
                    </div>

                    <div class="mb-3">
                        <label for="txtStockMinimo" class="form-label">Stock Minimo: </label>
                        <input type="number" id="txtStockMinimo" name="txtStockMinimo" step="1" min="10" max="100"
                               placeholder="Cantidad minima en stock del producto" required/>
                    </div>

                    <div class="mb-3">
                        <label for="txtClaveCategoria" class="form-label">Clave Categoria: </label>
                        <input name="txtClaveCategoria" type="number" id="txtClaveCategoria"
                               placeholder="Clave de la categoria" required/>
                    </div>

                    <button type="submit" class="btn btn-primary">Guardar</button>


                </form>
                <br/>
                <a href="listaDeProductos.jsp" class="btn btn-warnig">Regresar</a> 
            </div>
        </div>
    </body>
</html>
