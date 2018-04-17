<%-- 
    Document   : header
    Created on : Mar 21, 2015, 8:31:34 PM
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
        <script src="../scripts/jquery-1.11.2.min.js" type="text/javascript"></script>

        <script language="javascript" type="text/javascript">
            function clearText(field)
            {
                if (field.defaultValue == field.value)
                    field.value = '';
                else if (field.value == '')
                    field.value = field.defaultValue;
            }
        </script>
        <script>
            $(document).ready(function(){
                $('.edit').on('click',function(e){
                    e.preventDefault();
                   window.location='editimage.jsp';
                });
            });
        </script>

        <!--[if lt IE 7]><script type="text/javascript" src="ie_png.js"></script><script type="text/javascript">ie_png.fix('.png, #nav li a, .button span, .button a');</script><![endif]--> 
        <style type="text/css">
            .style2
            {
                left: -23px;
                top: 0px;
                width: 813px;
            }
            .style3
            {
                width: 150px;
            }
        </style>
    </head>

    <body id="page1">

        <div class="tail-right"></div>
        <div class="tail-top">
            <div class="tail-bottom">
                <div class="tail-bg">
                    <div class="top-bg">
                        <div class="bot-bg">
                            <div id="main">


                                <!-- header -->
                                <div id="header">
                                    <h1 style="color: #41CEF4;">MySpace</h1>
                                    <div id="templatemo_menu">
                                        <ul>
                                            <li><a href="home.jsp" class="current">Home</a></li>
                                            <li><a href="viewposts.jsp">Posts</a></li>
                                            <li><a href="viewuser.jsp">View User</a></li>
                                            <li><a href="Stressed.jsp">Stressed User</a></li>
                                            <li><a href="../index.jsp">Logout</a></li>
                                        </ul>    	
                                    </div> <!-- end of templatemo_menu -->
                                    <div id="searchh" style="float:right;position:absolute;margin-left:480px;margin-top:80px;width:350px">
                                        <form action="searchuser.jsp" method="get">
                                            <div id="nav2" style="float:left;position:absolute;margin-left:-400px;font-weight:bold;font-size:large;color:#41CEF4" > 
                                                    <%=session.getAttribute("name").toString()%><br/>
                                                </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="extra-img"></div>
                                <div class="wrapper">
                                    <!-- nav -->
                                    <div id="nav" class="style2" >
                                        <div id="nav1" >
                                            <div align="center">               
                                                
                                            </div>

                                        </div><br />
                                        <ul>
                                            <%-- <li><a href="messages.jsp">Messages</a></li>
                                                 <li><a href="createpost.jsp">Upload Post</a></li> --%>
                                            <li><a href="viewposts.jsp">Posts </a></li>
                                            <li><a href="changepassword.jsp">Change password</a></li>
                                            <li></li>
                                        </ul>
                                    </div>
                                    <!-- content -->
                                    <div id="content">