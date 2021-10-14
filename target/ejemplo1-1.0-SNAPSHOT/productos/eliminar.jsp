<%-- 
    Document   : eliminar
    Created on : 11 oct. 2021, 10:30:21
    Author     : leoj_
--%>

<%@page import="com.ipn.mx.modelo.dto.ProductoDTO"%>
<%@page import="com.ipn.mx.modelo.dao.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            ProductoDAO dao = new ProductoDAO();
            ProductoDTO dto = new ProductoDTO();
            
            dto.getEntidad().setIdProducto(Integer.parseInt(request.getParameter("id")));
            dao.delete(dto);
            
            response.sendRedirect("listaDeProductos.jsp");
        %>
    </body>
</html>
