<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <div id="cabecera">
          <h3 id = "titulo" align="center" > Modificación de Modems <br><img src="icon.png" alt="Modem" style="width:100px;height:100px;"></h3>
      </div>
  <hr>
  <hr>
  <hr>
  
    <link rel="icon" href="favicon.ico" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="misestilos.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <title>Gestión de Modems</title>
  </head>
  <body id = "cuerpo2">
    <% request.setCharacterEncoding("UTF-8"); %>
    <div class="container">
      <br><br>
<table class="table table-striped">
<form method="get" action="grabaModem2.jsp">
      <tr>
      </tr>
      <tr>
        <td>ID</td>
        <th colspan="2"><input type="text" size="4" name="id" value="<%= request.getParameter("id") %>" readonly></th>
      </tr>
      <tr>
        <td >Marca</td>
            <th colspan="2"><input type="text" size="10" name="marca" value="<%= request.getParameter("marca") %>"></th>
      </tr>
      <tr>
        <td>Modelo</td>
            <th colspan="2"><input type="text" size="15" name="modelo" value="<%= request.getParameter("modelo") %>"></th>
      </tr>
        <tr>
        <td>Color</td>
            <th colspan="2"><input type="text" size="10" name="color" value="<%= request.getParameter("color") %>"></th>
      </tr>
        <tr>
        <td >Número de puertos</td>
            <th colspan="3"><input type="text" name="n_puertos" size="4" value="<%= request.getParameter("n_puertos") %>"></th>
      </tr>

      </tr>
        <tr>
        <td><a href="index.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
        </td>
        <th colspan="2"><button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button></th>
      </tr>
    </form>
</table>
    <div class="text-center">&copy; 1º Desarrollo de Aplicaciones Web</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
