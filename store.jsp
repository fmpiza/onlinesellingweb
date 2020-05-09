<% @ Page import="java.sql.*"%>
<% @ page import="java.sql.Connection"%>
<% @ page import="java.sql.DriverManager" %>
<% @ page import="java.sql.PreparedStatement" %>

<%
   string fullname=request.getParameter("fullname");
   string username=request.getParameter("username");
   string password=request.getParameter("password");
   string password1=request.getParameter("confirmpass");
   string email=request.getParameter("email");
   string countryname=request.getParameter("countryname");
   string product=request.getParameter("product");
   string meansofpayment=request.getParameter("meansofpayment");
  
if password.equals(password1){
   try {
     connection conn=DriverManager.getConnection("jdbc:oracle:thin@localhost:8080:xe","FRIDOLINDB","88zamzam");
     PreparedStatement ps = conn.prepareStatement("insert into registration values (?,?,?,?,?,?,?)");
     ps.setString(1,fullname);
     ps.setString(2,username);
     ps.setString(3,password);
     ps.setString(4,email);
     ps.setString(5,countryname);
     ps.setString(6,product);
     ps.setString(7,meansofpayment);
    
     int x=ps.executeUpdate();
     if(x!=0){
       out.print("Submission done Successfully...");
     }else{
         out.print("Something went wrong...");
     }
   
   }catch(Exception e){
       out.print(e);
 }
}else{
    out.print("Password not matching...");

}

   %>