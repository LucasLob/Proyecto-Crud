package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("      <div id=\"cabecera\">\n");
      out.write("          <h3 id = \"titulo\" align=\"center\" >Gestión de modems <br> <img src=\"icon.png\" alt=\"Modem\" style=\"width:100px;height:100px;\"></h3>\n");
      out.write("      </div>\n");
      out.write("  <hr>\n");
      out.write("  <hr>\n");
      out.write("      <!-- Carga del favicon y estilos -->\n");
      out.write("      <link rel=\"icon\" href=\"favicon.ico\" type=\"image/gif\" sizes=\"16x16\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"misestilos.css\">\n");
      out.write("      <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    \n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("       <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n");
      out.write("       <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css\" integrity=\"sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp\" crossorigin=\"anonymous\">\n");
      out.write("       <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\" integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("        <title>Gestión</title>\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <hr>\n");
      out.write("  <body id=\"cuerpo\">\n");
      out.write("  <br><br>\n");
      out.write("        ");

          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "root");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery ("SELECT * FROM  modems ORDER BY id;");
        
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"contenido\">\n");
      out.write("        <table class=\"table table-striped\">\n");
      out.write("        <tr><th style=\"text-align:right\">ID Modem</th>\n");
      out.write("            <th style=\"text-align:right\">Marca</th>\n");
      out.write("            <th style=\"text-align:right\">Modelo</th>\n");
      out.write("            <th style=\"text-align:right\">Color</th>\n");
      out.write("            <th style=\"text-align:right\">Nº Puertos</th>\n");
      out.write("            <th></th>\n");
      out.write("            <th></th>\n");
      out.write("        </tr>\n");
      out.write("        <form method=\"get\" action=\"grabaModem.jsp\">\n");
      out.write("              <tr>\n");
      out.write("              <td><input type=\"text\" name=\"id\" size=\"4\"></td>\n");
      out.write("              <td><input type=\"text\" name=\"marca\" size=\"10\"></td>\n");
      out.write("              <td><input type=\"text\" name=\"modelo\" size=\"15\"></td>\n");
      out.write("              <td><input type=\"text\" name=\"color\" size=\"10\"></td>\n");
      out.write("              <td><input type=\"text\" name=\"n_puertos\" size=\"4\"></td>\n");
      out.write("              <td><button type=\"submit\"  class=\"btn btn-info\"><span class=\"glyphicon glyphicon-ok\"></span> Guardar</button>\n");
      out.write("              </tr>\n");
      out.write("        </form>\n");
      out.write("        ");

          while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("id") + "</td>");
            out.println("<td>" + listado.getString("marca") + "</td>");
            out.println("<td>" + listado.getString("modelo") + "</td>");
            out.println("<td>" + listado.getString("color") + "</td>");
            out.println("<td>" + listado.getString("n_puertos") + "</td>");
        
      out.write("\n");
      out.write("        <td>\n");
      out.write("        <form method=\"get\" action=\"modificaModem.jsp\">\n");
      out.write("\t  <input type=\"hidden\" name=\"id\" value=\"");
      out.print(listado.getString("id") );
      out.write("\">\n");
      out.write("          <input type=\"hidden\" name=\"marca\" value=\"");
      out.print(listado.getString("marca") );
      out.write("\">\n");
      out.write("          <input type=\"hidden\" name=\"modelo\" value=\"");
      out.print(listado.getString("modelo") );
      out.write("\">\n");
      out.write("          <input type=\"hidden\" name=\"color\" value=\"");
      out.print(listado.getString("color") );
      out.write("\">\n");
      out.write("          <input type=\"hidden\" name=\"n_puertos\" value=\"");
      out.print(listado.getString("n_puertos") );
      out.write("\">\n");
      out.write("\t  <button type=\"submit\"  class=\"btn btn-info\"><span class=\"glyphicon glyphicon-pencil\"></span> Modificar</button>\n");
      out.write("\t</form>\n");
      out.write("\t</td>\n");
      out.write("        <td>\n");
      out.write("        <form method=\"get\" action=\"borraModem.jsp\">\n");
      out.write("          <input type=\"hidden\" name=\"id\" value=\"");
      out.print(listado.getString("id") );
      out.write("\"/>\n");
      out.write("          <button type=\"submit\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span> Eliminar</button>\n");
      out.write("        </form>\n");
      out.write("        </td></tr>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

          } // while   

          conexion.close();
        
      out.write("\n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("        </div>\n");
      out.write("     <div id=\"pie\" align=\"center\">\n");
      out.write("         <hr>\n");
      out.write("      Realizado por Lucas Lobato Botelho 1º DAW  \n");
      out.write("    </div>\n");
      out.write("  </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
