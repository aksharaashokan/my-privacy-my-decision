<%-- 
    Document   : messages
    Created on : Mar 22, 2015, 1:07:55 PM
    Author     : Dinesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.myspace.dataaccess.DataAccess" id="con"/> 
<%@page  import="java.sql.*" %>
<%@include  file="header.jsp" %>
<!DOCTYPE html>
    <!-- box begin -->
    <div class="box">
        <div class="left-top-corner png"><div class="right-top-corner png"><div class="border-top png"></div></div></div>
        <div class="border-left png">
            <div class="border-right png">
                <div class="inside png">
                    <table border="" cellspacing="1" cellpadding="2">
                    <textarea name="message" rows="8" cols="80" id="messagebox"></textarea></table>
                    <h2>Messages</h2>     
                     <table border="0" style="alignment-adjust: central" cellspacing="3">
    <%
        String QUERY = "SELECT * from user";
        ResultSet rs = con.getData(QUERY);
        while (rs.next()) {
            %>
    <td> <img alt="no image" src="../profImages/<%=rs.getString("profImage")%>" />
                            <h3><%=rs.getString("firstname")+" "+rs.getString("lastname")%></h3></td>
    <td><div class="button"><span><span><a href="sendmessage.jsp?friendid=<%=rs.getString("userid")%>" id="sendmessage" >Send your replay!</a></span></span></div></td>
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

<%@include  file="footer.jsp" %>