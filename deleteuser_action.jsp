<%-- 
    Document   : deleteuser_action
    Created on : 26 Jul, 2015, 11:18:58 AM
    Author     : user pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.myspace.dataaccess.DataAccess" id="con"/> 
<%@page  import="java.sql.*" %>
<%      String disid=request.getParameter("id");
        String DELETE = "DELETE FROM user WHERE userid='"+ disid +"'";
        if (con.executeCommand(DELETE)) {
            response.sendRedirect("viewuser.jsp");
        } else {
            response.sendRedirect("viewuser.jsp");
        }
%>