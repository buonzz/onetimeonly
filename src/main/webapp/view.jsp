<%@page 
    contentType="text/html" 
    pageEncoding="UTF-8"
    import="org.buonzz.onetimeonly.*"
 %>
<!DOCTYPE html>
<html>
    <head>
         <jsp:include page="partials/head.jspf"/>
    </head>
    <body>
       <div class="container">
      <div class="header clearfix">
        <h3 class="text-muted">View One-time Link</h3>
      </div>

      <div class="jumbotron" style="padding-right:0px;padding-left:0px;">
         <%
             String secret;
             
            if (request.getParameter("id") == null) {
                secret = "Not a valid secret ID";
            } else {
               String id = request.getParameter("id");
               secret = SnippetService.get(id);
            }
        %>
              <div class="alert alert-info" role="alert">This data is for one-time viewing only! This data is automatically destroyed upon viewing it.</div>
              <div class="form-group">
                <textarea name="content" rows="10" cols="90"><%= secret %></textarea>
              </div>
      </div>
    </body>
    <jsp:include page="partials/footer.jspf"/>
</html>