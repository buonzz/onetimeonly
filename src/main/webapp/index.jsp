<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="partials/head.jspf"/>
    </head>
    <body>
    <div class="container">
      <div class="header clearfix">
        <h3 class="text-muted">Share One-time Link</h3>
      </div>

      <div class="jumbotron" style="padding-right:0px;padding-left:0px;">
          <form method="POST" action="save_snippet.jsp">
              <div class="form-group">
                <textarea rows="10" cols="90"></textarea>
              </div>
              <button class="btn btn-lg btn-success" type="submit">Share</button>
          </form>
      </div>
      <jsp:include page="partials/footer.jspf"/>
  </body>
</html>
