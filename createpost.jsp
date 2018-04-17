<%-- 
    Document   : createpost
    Created on : Mar 22, 2015, 2:32:07 PM
    Author     : Dinesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include  file="header.jsp" %>
<!DOCTYPE html>
<div class="section">
    <!-- box begin -->
    <div class="box">
        <div class="left-top-corner png"><div class="right-top-corner png"><div class="border-top png"></div></div></div>
        <div class="border-left png">
            <div class="border-right png">
                <div class="inside png">

                    <h2>Users search result</h2>
                    <div><%
                    String err=request.getParameter("err");
                    %><%=(err!=null?err:"")%></div>
                    <form enctype="multipart/form-data" method="POST" name="postForm" action="post_action.jsp">
                    <ul class="items-list">
                        <li>
                            <div><h2>Title</h2></div>
                            <div>
                                <input type="text" name="txtTitle" style="width: 300px"/>
                            </div>
                            <div><input type="file" name="flnPost"/></div>
                            <div  class="button"><span><span><input type="submit" value="Upload" /></span></span></div>
                        </li>
                    </ul>
                    </form>

                </div>
            </div>
        </div>
        <div class="left-bot-corner png"><div class="right-bot-corner png"><div class="border-bot png"></div></div></div>
    </div>
    <!-- box end -->
</div>

<%@include  file="footer.jsp" %>