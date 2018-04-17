<%-- 
    Document   : viewuser
    Created on : 26 Jul, 2015, 11:03:22 AM
    Author     : user pc
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
<table border="1" style="alignment-adjust: central" cellspacing="3">
    <thead>
        <tr>
            <th>First name</th>
            <th>Last Name</th>
            <th>Contact Number</th>
            <th>Email ID</th>
            <th>Profile Image</th>
            <th>Action</th>
        </tr>
    </thead>
    <%
        String QUERY = "SELECT * from user";
        ResultSet rs = con.getData(QUERY);
        while (rs.next()) {
            %>
    <tbody>
        <tr>
            <td><%=rs.getString("firstname")%></td>
            <td><%=rs.getString("lastname")%></td>
            <td><%=rs.getString("contactnumber")%></td>
            <td><%=rs.getString("emailid")%></td>
            <td><%
                                        if(!rs.getString("profImage").equals("")){
                                        %>
                                        <img src="../profImages/<%=rs.getString("profImage")%>" alt="no post image" width="80px" height="80px"/>
                                        <%}%></td>
            <td><a style="color:white;" href="../admin/deleteuser_action.jsp?id=<%=rs.getString("userid")%>">Delete</a></td>            
        </tr>
    </tbody>
    <%
        }
        %>
</table>       
                </div>
            </div>
        </div>
        <div class="left-bot-corner png"><div class="right-bot-corner png"><div class="border-bot png"></div></div></div>
    </div>
    <!-- box end -->
</div>     
        <%@include file="footer.jsp" %>