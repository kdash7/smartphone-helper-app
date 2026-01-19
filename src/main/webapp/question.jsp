<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>質問</title>
</head>
<body>

<h2>${issueName} に関する質問</h2>

<form action="ResultServlet" method="post">
    <p>最近、スマホの使用時間が増えていますか？</p>

    <label>
        <input type="radio" name="answer" value="yes" required> はい
    </label><br>

    <label>
        <input type="radio" name="answer" value="no"> いいえ
    </label><br><br>

    <!-- hidden で引き継ぐ -->
    <input type="hidden" name="issueId" value="${issueId}">

    <button type="submit">診断する</button>
</form>

</body>
</html>
