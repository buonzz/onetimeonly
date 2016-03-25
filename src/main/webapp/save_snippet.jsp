<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="snippet" class="org.buonzz.onetimeonly.SnippetService" scope="session"/>
<jsp:setProperty name="snippet" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Snippet</title>
    </head>
    <body>
        <h1><%= snippet.getContent() %></h1>
    </body>
</html>
