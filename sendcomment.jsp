<%-- 
    Document   : sendcomment
    Created on : Mar 22, 2015, 3:26:35 PM
    Author     : Dinesh
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.myspace.dataaccess.DataAccess" id="con"/> 
<%@page  import="java.sql.*" %>
<%
String postId=request.getParameter("postid");
String comment=request.getParameter("comment");
String userid=session.getAttribute("id").toString();
SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
java.util.Date d=new java.util.Date();
String dateofcomment=format.format(d);

String insertComment="insert into comment(postid,commentuserid,comment,dateofcomment)values('"+postId+"','"+userid+"','"+comment+"','"+dateofcomment+"')";
if(con.executeCommand(insertComment))
{
    response.sendRedirect("viewposts.jsp?err=Comment sent");
}else
{
    response.sendRedirect("viewposts.jsp?err=Server error while processing the request, please try again after some time.");
}
%>