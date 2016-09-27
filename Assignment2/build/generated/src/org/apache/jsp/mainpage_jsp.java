package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mainpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>    \n");
      out.write("            .button-style{\n");
      out.write("                padding: 5px 15px;\n");
      out.write("                margin-top: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .floating{\n");
      out.write("                float:left;\n");
      out.write("                width: 640px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            table tr td{\n");
      out.write("                font-size: 24px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            hr{\n");
      out.write("                margin: 0px 700px 700px 700px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .pad{padding-top: 40px;\n");
      out.write("                 padding-left: 15px;}\n");
      out.write("\n");
      out.write("            table {\n");
      out.write("                width:100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            header {\n");
      out.write("                position: relative;\n");
      out.write("                width: 100%;\n");
      out.write("                min-height: auto;\n");
      out.write("                text-align: center;\n");
      out.write("                color: #fff;\n");
      out.write("                opacity: 0.9;\n");
      out.write("                background-image: url(./image/1.jpg);\n");
      out.write("                background-position: ;\n");
      out.write("                -webkit-background-size: cover;\n");
      out.write("                -moz-background-size: cover;\n");
      out.write("                background-size: cover;\n");
      out.write("                -o-background-size: cover;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            header .header-content {\n");
      out.write("                position: relative;\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 100px 15px;\n");
      out.write("                text-align: center;\n");
      out.write("                color: #0f0f0f;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            header .header-content .header-content-inner h3 {\n");
      out.write("                margin-top: 0;\n");
      out.write("                margin-bottom: 300px;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                font-weight: 700;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <link href=\"./css/bootstrap-theme.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"./css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("        <title>Main Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #f5f4f4;\">\n");
      out.write("        <!-- navbar -->\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <nav class = \"navbar navbar-default navbar-fixed-top\" role = \"navigation\">\n");
      out.write("                    <div class = \"navbar-header\">\n");
      out.write("                        <a class = \"navbar-brand navbar-left\" href = \"#\">Home</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"login.jsp\" role=\"button\" style=\"margin:7px 5px 0 0;\">Login</a>\n");
      out.write("                        <a class=\"btn btn-success\" href=\"#\" role=\"button\" style=\"margin: 7px 25px 0 0;\">Sign up</a>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- navbar ends here-->\n");
      out.write("\n");
      out.write("        <header>\n");
      out.write("            <div class=\"header-content\">\n");
      out.write("                <div class=\"header-content-inner\">\n");
      out.write("                    <h1><b>Welcome to Sydney</b></h1>\n");
      out.write("                    <hr>\n");
      out.write("                    <h3>List of available properties</h3>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <div class=\"container\" style=\"padding-right:200px; padding-left:200px; margin-top: 30px\">\n");
      out.write("            <img src=\"image/2.JPG\" class=\"img-responsive\" alt=\"not applicable\" >\n");
      out.write("            <table class=\"table table-bordered table-hover\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Location</td>\n");
      out.write("                    <td>Listing type</td>\n");
      out.write("                    <td>Number of guests</td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"container\" style=\"padding-right:200px; padding-left:200px; margin-top: 30px\">\n");
      out.write("            <img src=\"image/2.JPG\" class=\"img-responsive\" alt=\"not applicable\" >\n");
      out.write("            <table class=\"table table-bordered table-hover\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Location</td>\n");
      out.write("                    <td>Listing type</td>\n");
      out.write("                    <td>Number of guests</td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
