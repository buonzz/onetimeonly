<%@page 
    contentType="text/html" 
    pageEncoding="UTF-8"
    import="org.buonzz.onetimeonly.*"
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            if (request.getParameter("id") == null) {
                out.println("Not a valid secret");
            } else {
               SnippetService service = new SnippetService();
               int id = Integer.parseInt(request.getParameter("id"));
               out.println(service.get(id));
            }
        %>
    </body>
</html>
