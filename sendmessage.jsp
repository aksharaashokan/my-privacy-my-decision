<%-- 
    Document   : sendmessage
    Created on : Mar 22, 2015, 12:50:57 PM
    Author     : Dinesh
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.myspace.dataaccess.DataAccess" id="con"/> 
<%@page  import="java.sql.*" %>
<%
    String m=request.getParameter("m");
String messagetouserid=request.getParameter("friendid");
String userid=session.getAttribute("id").toString();
String message=request.getParameter("message");
SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
java.util.Date d=new java.util.Date();
String dateofmessage=format.format(d);
String redirectPage=m==null?"home.jsp":"messages.jsp";
String insert="insert into message(userid,messagetouserid,messagecontent,dateofmessage)values('"+userid+"','"+messagetouserid+"','"+message+"','"+dateofmessage+"')";
if(con.executeCommand(insert))
{
    response.sendRedirect(redirectPage+"?err=Message sent");
}else
{
    response.sendRedirect(redirectPage+"?err=Server error while processing the request, please try again after some time.");
}

%>