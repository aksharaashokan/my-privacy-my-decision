<%-- 
    Document   : viewposts
    Created on : Mar 22, 2015, 2:29:35 PM
    Author     : Dinesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.myspace.dataaccess.DataAccess" id="con"/> 
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
  <!-- box begin -->
    <div class="box">
        <div class="left-top-corner png"><div class="right-top-corner png"><div class="border-top png"></div></div></div>
        <div class="border-left png">
            <div class="border-right png">
                <div class="inside png">
<table border="1" cellspacing="1" cellpadding="2">
    <thead>
        <tr>
            <th>First name</th>
            <th>Last Name</th>
            <th>Profile Image</th>
            <th>Email Id</th>
            <th>Post Title</th>
            <th>Date</th>
            <th>Post</th>
        </tr>
    </thead>
    <%String QUERY = "SELECT * from post,user where post.userid=user.userid";        
        ResultSet rsp = con.getData(QUERY);
        while(rsp.next()){
            %>
    <tbody>
        <tr>
            <td><%=rsp.getString("firstname")%></td>
            <td><%=rsp.getString("lastname")%></td>
            <td><%
                                        if(!rsp.getString("profImage").equals("")){
                                        %>
                                        <img src="../profImages/<%=rsp.getString("profImage")%>" alt="no post image" width="80px" height="80px"/>
                                        <%}%></td>
            <td><%=rsp.getString("emailid")%></td>
            <td><%=rsp.getString("title")%></td>
            <td><%=rsp.getString("dateofupload")%></td>
            <td><%
                                        if(!rsp.getString("imageif").equals("")){
                                        %>
                                        <img src="../posts/<%=rsp.getString("imageif")%>" alt="no post image" width="80px" height="80px"/>
                                        <%}%></td>
        </tr>
    </tbody>
    <%
        }%>
    </div>
            </div>
        </div>
        <div class="left-bot-corner png"><div class="right-bot-corner png"><div class="border-bot png"></div></div></div>
    </div>
    <div class="button"><span><span><a href="createpost.jsp" >Upload post</a></span></span></div>
    <!-- box end -->
</div>
<%@include  file="footer.jsp" %>