<%-- 
    Document   : Message
    Created on : 10 Jan, 2017, 9:27:06 PM
    Author     : Vishnu Shaji
--%>

<%@include file="Header.jsp" %>
<div class="content-wrapper">
    <section class="content">
        <div class="row">
           
           
            <form role="form">
        <div class="col-lg-10 col-md-10 col-sm-10 col-lg-push-1 col-md-push-1 col-sm-push-1 form-group">
            <div class="box box-primary form-group">
                <div class="box-header">
                    <h4>Suggestions</h4>
                </div>
                <div class="box-body">
                    <div class="col-lg-12">
                        <textarea name="txtpost" rows="4" cols="20" required="" class="form-control" placeholder="Your suggestion..."></textarea>
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