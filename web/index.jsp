<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <div id="cabecera">
          <h3 id = "titulo" align="center" >Gestión de modems <br> <img src="icon.png" alt="Modem" style="width:100px;height:100px;"></h3>
      </div>
  <hr>
  <hr>
      <!-- Carga del favicon y estilos -->
      <link rel="icon" href="favicon.ico" type="image/gif" sizes="16x16">
      <link rel="stylesheet" href="misestilos.css">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
        <!-- Bootstrap -->
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <title>Gestión</title>
  </head>

  <hr>
  <body id="cuerpo">
  <br><br>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "root");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery ("SELECT * FROM  modems ORDER BY id;");
        %>

        <div id="contenido">
        <table class="table table-striped">
        <tr><th style="text-align:right">ID Modem</th>
            <th style="text-align:right">Marca</th>
            <th style="text-align:right">Modelo</th>
            <th style="text-align:right">Color</th>
            <th style="text-align:right">Nº Puertos</th>
            <th></th>
            <th></th>
        </tr>
        <form method="get" action="grabaModem.jsp">
              <tr>
              <td><input type="text" name="id" size="4"></td>
              <td><input type="text" name="marca" size="10"></td>
              <td><input type="text" name="modelo" size="15"></td>
              <td><input type="text" name="color" size="10"></td>
              <td><input type="text" name="n_puertos" size="4"></td>
              <td><button type="submit"  class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Guardar</button>
              </tr>
        </form>
        <%
          while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("id") + "</td>");
            out.println("<td>" + listado.getString("marca") + "</td>");
            out.println("<td>" + listado.getString("modelo") + "</td>");
            out.println("<td>" + listado.getString("color") + "</td>");
            out.println("<td>" + listado.getString("n_puertos") + "</td>");
        %>
        <td>
        <form method="get" action="modificaModem.jsp">
	  <input type="hidden" name="id" value="<%=listado.getString("id") %>">
          <input type="hidden" name="marca" value="<%=listado.getString("marca") %>">
          <input type="hidden" name="modelo" value="<%=listado.getString("modelo") %>">
          <input type="hidden" name="color" value="<%=listado.getString("color") %>">
          <input type="hidden" name="n_puertos" value="<%=listado.getString("n_puertos") %>">
	  <button type="submit"  class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span> Modificar</button>
	</form>
	</td>
        <td>
        <form method="get" action="borraModem.jsp">
          <input type="hidden" name="id" value="<%=listado.getString("id") %>"/>
          <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Eliminar</button>
        </form>
        </td></tr>
        
        
        <%
          } // while   

          conexion.close();
        %>

        </table>
        </div>
     <div id="pie" align="center">
         <hr>
      Realizado por Lucas Lobato Botelho 1º DAW  
    </div>
  </body>
</html>