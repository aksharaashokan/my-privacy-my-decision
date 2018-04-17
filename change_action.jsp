<%-- 
    Document   : change_action
    Created on : Mar 22, 2015, 8:28:33 PM
    Author     : Dinesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.myspace.dataaccess.DataAccess" id="con"/> 
<%@page  import="java.sql.*" %>
<%
String currentPassword=request.getParameter("txtCurrentpassword");
String newPassword=request.getParameter("txtNewpassword");

String SELECT="SELECT id FROM adminlogin WHERE id='"+session.getAttribute("id")+"' AND Password='"+currentPassword+"'";
ResultSet rsData=con.getData(SELECT);
if(rsData.next())
{
    String UPDATE="UPDATE adminlogin SET Password='"+newPassword+"' WHERE id='"+session.getAttribute("id")+"' AND Password='"+currentPassword+"'";
    if(con.executeCommand(UPDATE))
    {
        response.sendRedirect("changepassword.jsp?err=Password changed successfully, you can feel the change from next login onwards");
    }else
    {
        response.sendRedirect("changepassword.jsp?err=Server error during the process, please do the same after some time");
    }
}else
{
    response.sendRedirect("changepassword.jsp?err=Either your password is incorrect or please do the same after logged in again");
}
%>