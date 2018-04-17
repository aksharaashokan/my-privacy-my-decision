<%-- 
    Document   : index
    Created on : Mar 21, 2015, 12:37:42 PM
    Author     : Dinesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <title>MySpace</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="Content-Style-Type" content="text/css" />
        <meta name="description" content="Place your description here" />
        <meta name="keywords" content="put, your, keyword, here" />
        <meta name="author" content="Templates.com - website templates provider" />
        <link href="../pool/style.css" rel="stylesheet" type="text/css" />
        <script src="scripts/registerScript.js" type="text/javascript"></script>
        <!--[if lt IE 7]><script type="text/javascript" src="ie_png.js"></script><script type="text/javascript">ie_png.fix('.png, #nav li a, .button span, .button a');</script><![endif]--> 
    </head>

    <body id="page5">
        <div class="tail-right"></div>
        <div class="tail-right-top"></div>
        <div class="tail-top">
            <div class="tail-bottom">
                <div class="tail-bg">
                    <div class="top-bg">
                        <div class="tail-right-bot"></div>
                        <div class="bot-bg">
                            <div id="main">
                                <!-- header -->
                                <div id="header">
                                    <h1 style="color: #41CEF4;">MySpace</h1>
                                    <div style="float:right;width:60%;height:100px;padding-top:6px">
                                        <form name="loginForm" action="index_action.jsp">
                                            <table style="float:right">
                                                <tr>
                                                    <td colspan="4" style="color: red;text-align: right"><%
                                                                        String err1 = request.getParameter("err");
                                                                            %><%=(err1 == null ? "" : err1)%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="color: blue">User Name</span></td><td><input type="text" name="txtEmailID"/><input type="hidden" value="login" name="hdnType"/></td>
                                                    <td><span style="color: blue">Password</span></td><td><input type="password" name="txtPassword"/></td><td><div  class="button"><span><span><input type="submit" value="Sign In" onclick=""/></span></span></div></td>
                                                </tr>
                                            </table>
                                        </form>
                                    </div>
                                </div>
                                                    <div class="extra-img"><img alt="extra-img" src="../pool/images/extra-img.png" class="png"/></div>
                                <div class="wrapper">
                                    <!-- nav -->
                                    <div id="nav">

                                    </div>
                                    <!-- content -->
                                    <div id="content">
                                        <div class="section">
                                            <!-- box begin -->
                                            <div class="box">
                                                <div class="left-top-corner png"><div class="right-top-corner png"><div class="border-top png"></div></div></div>
                                                <div class="border-left png">
                                                    <div class="border-right png">
                                                        <div class="inside png">
                         
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="left-bot-corner png"><div class="right-bot-corner png"><div class="border-bot png"></div></div></div>
                                            </div>
                                            <!-- box end -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- footer -->
                            <div id="footer">
                                <div class="indent">


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>