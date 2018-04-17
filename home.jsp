<%-- 
    Document   : home
    Created on : Mar 21, 2015, 8:38:50 PM
    Author     : Dinesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.myspace.dataaccess.DataAccess" id="con"/> 
<%@page  import="java.sql.*" %>
<%@include  file="header.jsp" %>
<div class="section">
    <!-- box begin -->
    <div class="box">
        <div class="left-top-corner png"><div class="right-top-corner png"><div class="border-top png"></div></div></div>
        <div class="border-left png">
            <div class="border-right png">
                <div class="inside png">
                    <h2>welcome to <%=session.getAttribute("name") != null ? session.getAttribute("name").toString() : "User"%></h2>
                    <p>&nbsp;</p>
                </div>
            </div>
        </div>
        <div class="left-bot-corner png"><div class="right-bot-corner png"><div class="border-bot png"></div></div></div>
    </div>
    <!-- box end -->
</div>
<div class="section">
    <!-- box begin -->
    <div class="box">
        <div class="left-top-corner png"><div class="right-top-corner png"><div class="border-top png"></div></div></div>
        <div class="border-left png">
            <div class="border-right png">
                <div class="inside png">
 <table border="0" style="alignment-adjust: central" cellspacing="3">
    <%
        String QUERY = "SELECT * from post where userid='"+session.getAttribute("id")+"'";
        ResultSet rs = con.getData(QUERY);
        while (rs.next()) {
            %>
            <td> <%if(!rs.getString("imageif").equals("")){
                                        %>
                                        <img src="../posts/<%=rs.getString("imageif")%>" alt="no post image" width="200px" height="200px"/>
                                        <%}%>
                <h3 style="font-size:small;font-weight:bold;margin-left:80px;"><%=rs.getString("title")%></h3><td>
                            <span style="font-size:small;font-weight:bold;float:right;margin-left:150px;"><%=rs.getString("dateofupload") %></span><br/><br/>
    <input type="hidden" name="uid" value="<%=session.getAttribute("id")%>" />
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