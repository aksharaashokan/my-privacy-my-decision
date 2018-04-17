<%-- 
    Document   : post_action
    Created on : Mar 22, 2015, 2:37:22 PM
    Author     : Dinesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.myspace.dataaccess.DataAccess" id="con"/> 
<%@page  import="java.sql.*" %>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>

<%

    String title="";
    String filename="";
    String userid=session.getAttribute("id").toString();
   SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
java.util.Date d=new java.util.Date();
String dateofupload=format.format(d);
    FileItem f_item = null;
    File proj_path = new File(config.getServletContext().getRealPath("/"));
    String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\posts\\";
//checking if request cotains multipart data
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart) {

        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

        //declaring a list of form fields
        List items_list = null;

        //assigning fields to list 'items_list'
        try {
            items_list = upload.parseRequest(request);
        } catch (FileUploadException ex) {
            out.println(ex);
        }

        //declaring iterator
        Iterator itr = items_list.iterator();

        //iterating through the list 'items_list'
        while (itr.hasNext()) {
            //typecasting next element in items_list as fileitem
            f_item = (FileItem) itr.next();
            if (f_item.isFormField()) {
                if (f_item.getFieldName().equalsIgnoreCase("txtTitle")) {
                    title = f_item.getString();
                }
            } else {
                try {
                    if (f_item.getFieldName().equalsIgnoreCase("flnPost")) {
                        filename = f_item.getName();
                        File savedFile1 = new File(file_path + filename);
                        f_item.write(savedFile1);
                    }

                } catch (Exception e) {
                }
            }
        }

    }
   String insertPost="insert into post(userid,title,dateofupload,imageif)values('"+userid+"','"+title+"','"+dateofupload+"','"+filename+"')";
   if(con.executeCommand(insertPost)){
       response.sendRedirect("home.jsp?err=Post uploaded successfully");
   }else
   {
       response.sendRedirect("createpost.jsp?err=Server error while processing the request, please try again after some time");
   }

%>