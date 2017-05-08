<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <link rel="icon" href="favicon.ico" type="image/gif" sizes="16x16">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "root");
      Statement s = conexion.createStatement();

      s.execute ("DELETE FROM modems WHERE id=" + request.getParameter("id"));
      
      s.close();
    %>	
    <script>document.location = "index.jsp"</script> 
  </body>
</html>
