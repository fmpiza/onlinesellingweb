<html>
<head>
<title>Validate New User</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF" text="#000000">
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<%
        Connection con = null;

        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String password1 = request.getParameter("confirmpass");
        String email = request.getParameter("email");
        String countryname = request.getParameter("countryname");
        String product = request.getParameter("product");
        String meansofpayment = request.getParameter("meansofpayment");


        String queryText = "insert into user_details (\"fullname\", \"username\",

\"password\", \"password1\", \"email\", \"countryname\", \"product\", \"meansofpayment\")

values('"+fullname+"','"+username+"','"+password+"','"+password1+"','"+email+",'"+countryname+"','"+product+"'','"+meansofpayment+"'')";

        try {
              Class.forName("com.mysql.jdbc.Driver").newInstance ();
              con =

DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");

            Statement stat = con.createStatement();

            ResultSet rst = stat.executeQuery(queryText);

            rst.close();
            stat.close();
            con.close();
        } catch (Exception e) { }

        response.sendRedirect("success.htm");
%>



</body>
</html>
