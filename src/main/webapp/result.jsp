<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">
    <title>診断結果</title>
</head>
<body class="result-page">

<div class="container">
    <div class="result">
        <h2>診断結果</h2>
        <p class="result-answer"><%= request.getAttribute("result") %></p>

        <a href="<%= request.getContextPath() %>/index.jsp">最初に戻る</a>
    </div>
</div>

</body>
</html>
