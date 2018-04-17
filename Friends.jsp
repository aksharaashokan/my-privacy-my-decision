<%-- 
    Document   : Friends
    Created on : 10 Jan, 2017, 9:26:51 PM
    Author     : christy eldhose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp" %>
<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-1">
            <div class="box box-success">
                <div class="box-header">
                    <h4>Friends</h4>
                    <div class="">
                    <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-search"></i>
                  </div>
                      <input type="text" name="txtfind" value="" class="form-control" title="Search..." placeholder="Search..." />
                </div>
                    </div>
                </div>
                <div class="box-body">
                    <div class="">
                    <%
                        int i;
                        for(i=1;i<=10;i++)
                        {
                        %>
                    <table border="0" class="table table-condensed text-left">
                        <tbody>
                            <tr>
                                <td width="50px"><img src="../321.jpg" alt="☺" width="50px" class="image user-image img-circle img-responsive"/></td>
                                <td class="text-left"><label> User name <%=i%></label><br><p>Friends...</p></td>
                            </tr>
                        </tbody>
                    </table>
                        <%
                        }
                            %>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </section>
</div>
<%@include file="Footer.jsp" %>