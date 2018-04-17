<%-- 
    Document   : index_action
    Created on : 26 Jul, 2015, 10:26:13 AM
    Author     : user pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.myspace.dataaccess.DataAccess" id="con"/> 
<%@page  import="java.sql.*" %>
<%
    String user=request.getParameter("txtEmailID");
    String pass=request.getParameter("txtPassword");
    String select="select * from adminlogin where name='"+user+"' and password='"+pass+"'; ";
    ResultSet rs=con.getData(select);
    if(rs.next())
    {
        session.setAttribute("name", rs.getString("name"));
        session.setAttribute("id", rs.getString("id"));
        response.sendRedirect("home.jsp");
    }
%>