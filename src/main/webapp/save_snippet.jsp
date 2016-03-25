<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="snippet" class="org.buonzz.onetimeonly.Snippet" scope="session"/>
<jsp:setProperty name="snippet" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="partials/head.jspf"/>
    </head>
    <body>
        <%
            String url = request.getRequestURL().toString();
            String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) + request.getContextPath() + "/";
            String onetime_link = baseURL + "view.jsp?id=" + snippet.getId();
        %>
        <div class="container">
      <div class="header clearfix">
        <h3 class="text-muted">Share One-time Link</h3>
      </div>

      <div class="jumbotron" style="padding-right:10px;padding-left:10px;">
          <form method="POST" action="save_snippet.jsp">
              <div class="form-group">
                 <input type="text" value="<%= onetime_link %>"class="form-control"/>
              </div>
              <a href="<%= baseURL %>" class="btn btn-lg btn-success">Share Another Secret</a>
          </form>
      </div>
        <jsp:include page="partials/footer.jspf"/>
    </body>
</html>
