<%-- 
    Document   : Message
    Created on : 10 Jan, 2017, 9:27:06 PM
    Author     : Vishnu Shaji
--%>

<%@include file="Header.jsp" %>
<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <%
                for(int i=1;i<=10;i++)
                {
                    if(i%2==0)
                    {
                %>
            <div class="col-lg-11 col-md-11 col-sm-11 col-lg-offset-1 col-md-offset-1  col-sm-offset-1 form-group">
            <div class="box box-primary form-group bg-aqua">
                <div class="box-header">
                    <h4>User messages</h4>
                </div>
                <div class="box-body">
                    <p>
                        Old messages
                    </p>
                </div>
            </div>
        </div>
            <%
                    }
                    else
                    {
                        %>
            <div class="col-lg-11 col-md-11 col-sm-11 col-lg-push-0 col-md-push-0 col-sm-push-0 form-group">
            <div class="box box-primary form-group bg-lime">
                <div class="box-header">
                    <h4>Your message</h4>
                </div>
                <div class="box-body">
                    <p>
                        Old messages
                    </p>
                </div>
            </div>
        </div>
            
            
                <%
                }
                }
                    %>
            <form role="form">
        <div class="col-lg-11 col-md-11 col-sm-11 col-lg-push-0 col-md-push-0 col-sm-push-0 form-group">
            <div class="box box-primary form-group">
                <div class="box-header">
                    <h4>Message</h4>
                </div>
                <div class="box-body">
                    <div class="col-lg-12">
                        <textarea name="txtpost" rows="4" cols="20" required="" class="form-control" placeholder="Type message"></textarea>
                    </div>
                    <div class="col-lg-12"><br>
                        <input type="submit" value="SEND" class="btn btn-flat bg-purple pull-right"/>
                    </div>
                </div>
            </div>
        </div>
        </form>
        </div>
    </section>
</div>
<%@include file="Footer.jsp" %>