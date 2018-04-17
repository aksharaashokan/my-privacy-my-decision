<%-- 
    Document   : Post
    Created on : 9 Jan, 2017, 8:35:18 PM
    Author     : christy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp" %>

<div class="content-wrapper">
    <section class="content">
        <div class="row">
        <form role="form">
        <div class="col-lg-8 col-md-8 col-sm-12  pull-left form-group">
            <div class="box box-primary form-group">
                <div class="box-header">
                    <h4>Your Mind...</h4>
                </div>
                <div class="box-body">
                    <div class="col-lg-12">
                        <textarea name="txtpost" rows="4" cols="20" required="" class="form-control" placeholder="Your mind..."></textarea>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <label style="color: #006666">Photo</label>
                        <input type="file" name="photo" value="" placeholder="Photo" class="form-control" accept="image/*"/>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <label style="color: #006666">Video</label>
                        <input type="file" name="video" value="" placeholder="Video" class="form-control" accept="video/*"/>
                    </div>
                    <div class="col-lg-12"><br>
                        <input type="submit" value="POST" class="btn btn-flat bg-purple pull-right"/>
                    </div>
                </div>
            </div>
        </div>
        </form>
            
            <div class="col-lg-4 col-md-4 pull-right form-group">
                <div class="box box-warning form-group">
                    <div class="box-header">
                        <h4>Your Friends...</h4>
                    </div>
                    <div class="box-body">
                        <ul class="list-group-unbordered list-unstyled">
                            <li>First friend</li>
                            <li>Second friend</li>
                            <li>Third friend</li>
                            <li>Forth friend</li>
                        </ul>
                    </div>
                </div>
            </div>
             <div class="col-lg-4 col-md-4 pull-right form-group">
                 <div class="box box-warning form-group" >
                    <div class="box-header">
                        <h4>Something more..</h4>
                    </div>
                    <div class="box-body">
                        <ul class="list-group-unbordered list-unstyled">
                            <li>First friend</li>
                            <li>Second friend</li>
                            <li>Third friend</li>
                            <li>Forth friend</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-8 col-md-8 col-sm-12  pull-left form-group">
                <div class="box box-default form-group">
                    <div class="box-header">
                        <h4>Posts...</h4>
                    </div>
                    <div class="box-body">
                        <%
                            for(int i=1;i<=10;i++)
                            {
                            %>
                        <div class="">
                            <label>Name <%=i%></label>
                        </div>
                        <div class="">
                            <img src="../123.jpg" alt="Loading" class="image img-responsive img-bordered"/>
                        </div>
                        <div class="">
                            <p>Some text here...</p>
                        </div>
                        <hr>
                        <%
                            }  
                                %>
                    </div>
                </div>
            </div>
                    
        </div>
    </section>
</div>

<%@include file="Footer.jsp" %>