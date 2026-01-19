<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>診断結果</title>
</head>
<body>

<h2>診断結果</h2>
<p><%= request.getAttribute("result") %></p>

<a href="<%= request.getContextPath() %>/index.jsp">最初に戻る</a>

</body>
</html>
