<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>JSP Page</title> 
    </head> 
    <body> 
        <%-- Here we fetch the data using the name attribute  
             of the text from the previous page 
        --%> 
        <% String fullname= request.getParameter("fullname");
           String username= request.getParameter("username");
           String password= request.getParameter("password");
           String password1= request.getParameter("confirmpass");
           String email= request.getParameter("email");
           String country= request.getParameter("countryname");
           String Product= request.getParameter("product");
           String meansofpayment= request.getParameter("meansofpayment");
        if(password.equals(password1)){
           try{
               Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1520:xe","FRIDOLINDB","88zamzam");
               PreparedStatement ps = conn.prepareStatement("insert into registrationdb values(?,?,?,?,?,?,?)");

               ps.setString(1,fullname);
               ps.setString(2,username);
               ps.setString(3,password);
               ps.setString(4,email);
               ps.setString(5,country);
               ps.setString(6,Product);
               ps.setString(7,meansofpayment);
               int x=ps.executeUpdate();
               if(x!=0){
                   out.print("Submission done successfully...");
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
    </body> 
    <%-- Here we use the JSP expression tag to display value  
         stored in a variable --%> 
    <h2>
    
</html> 