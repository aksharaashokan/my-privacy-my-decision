<%-- 
    Document   : Stressed
    Created on : Mar 4, 2018, 4:14:45 PM
    Author     : user
--%>

<jsp:useBean class="com.myspace.dataaccess.Client" id="sr"/> 
<jsp:useBean class="com.myspace.dataaccess.DataAccess" id="con"/>
<%@page  import="java.sql.*" %>
<%@include file="header.jsp" %>
<%
    String val="";
    int[] user=new int[100];
    int var=0;
    String select="select * from post where title!=''";
    ResultSet res=con.getData(select);
    while(res.next())
    {
        String sentence=res.getString("title");
        
        String[] result = sentence.split("\\s");
        for (int x=0; x<result.length; x++) {
             val=sr.search(result[x]);

   
           if(val.indexOf("unhappy")!=-1||val.indexOf("unhappiness")!=-1||val.indexOf("death")!=-1)
           {
              user[var]=res.getInt("userid");
              var++;
           }       
                }
    } 
    
    int[] temp = new int[var];
         
        // Start traversing elements
        int j = 0;
        for (int i=0; i<var-1; i++)
            
            if (user[i] != user[i+1])
                temp[j++] = user[i];
         
        
        
        temp[j++] = user[var];   
         
        // Modify original array
        for (int i=0; i<j; i++)
            user[i] = temp[i];
    
             for (int x=0; x<user.length; x++) {
                 
                     String get="select * from user where userid='"+user[x]+"'";
                     ResultSet r=con.getData(get);
                     if(r.next()){
            %>
            
            <%=user[x]%>&nbsp;&nbsp;&nbsp;&nbsp;<%=r.getString("firstname")%><br>
          <%
                     
                 }
             }%>
             
             
             <%@include file="footer.jsp" %>