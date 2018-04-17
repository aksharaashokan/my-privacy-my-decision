<%-- 
    Document   : like_action
    Created on : Mar 22, 2015, 7:50:31 PM
    Author     : Dinesh
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.myspace.dataaccess.DataAccess" id="con"/> 
<%@page  import="java.sql.*" %>
<%
String postid=request.getParameter("postid");
String status=request.getParameter("status");
String userid=session.getAttribute("id").toString();
SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
java.util.Date d=new java.util.Date();
String dateoflike=format.format(d);

String selectCount="Select count(*) as c from postlike where postid='"+postid+"' and likeuserid='"+userid+"'";
ResultSet rsData=con.getData(selectCount);
if(rsData.next() && rsData.getInt("c")>0){
    String update="update postlike set likestatus='"+status+"' where  postid='"+postid+"' and likeuserid='"+userid+"'";
    if(con.executeCommand(update))
    {
        response.sendRedirect("viewposts.jsp");
    }else
    {
        response.sendRedirect("viewposts.jsp?err=Server error while processing the request, please try again after some time.");
    }
}else
{
    String insert="insert into postlike(postid,likeuserid,dateoflike)values('"+postid+"','"+userid+"','"+dateoflike+"')";
    if(con.executeCommand(insert))
    {
        response.sendRedirect("viewposts.jsp");
    }else
    {
        response.sendRedirect("viewposts.jsp?err=Server error while processing the request, please try again after some time.");
    }
}

%>