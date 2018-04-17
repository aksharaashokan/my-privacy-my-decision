<%-- 
    Document   : changepassword
    Created on : Mar 22, 2015, 8:26:38 PM
    Author     : Dinesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>
<script src="../scripts/changeScript.js" type="text/javascript"></script>
<div class="section">
    <!-- box begin -->
    <div class="box">
        <div class="left-top-corner png"><div class="right-top-corner png"><div class="border-top png"></div></div></div>
        <div class="border-left png">
            <div class="border-right png">
                <div class="inside png">
                    <h2>Sign Up</h2>
                    <form id="registerForm" name="registerForm"  action="change_action.jsp">
                        <fieldset style="width:100%">
                            <div class="field"><label style="width: 100%"><%
                                String err = request.getParameter("err");
                                    %><%=(err == null ? "" : err)%></label></div>
                                    <div class="field"><label style="width:150px">Current password</label>&nbsp;<input class="fieldInput" type="password" name="txtCurrentpassword" /></div><span id="errCurrent" style="color: red"></span>
                            <div class="field"><label style="width:150px">New password</label>&nbsp;<input class="fieldInput" type="password" name="txtNewpassword" /></div><span id="errNew" style="color: red"></span>
                            <div class="field"><label style="width:150px">Confirm password</label>&nbsp;<input class="fieldInput" type="password" name="txtConfirmpassword" /></div><span id="errConfirm" style="color: red"></span>
                            <div class="wrapper">
                                <div style="padding-right: 229px" class="button"><span><span><input type="submit" value="Change passsword" onclick="return valid();"/></span></span></div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <div class="left-bot-corner png"><div class="right-bot-corner png"><div class="border-bot png"></div></div></div>
    </div>
    <!-- box end -->
</div>
<%@include  file="footer.jsp" %>