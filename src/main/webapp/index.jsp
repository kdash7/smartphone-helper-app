<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">
    <title>スマホお困りごと診断</title>
    <style>
        body { font-family: sans-serif; background-color: #f9fafc;
                text-align: center; margin-top: 50px; }
        h1 { color: #333; }
        form {
            display: inline-block;
            text-align: left;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
        }
        button {
            margin-top: 20px;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            background-color: #4caf50;
            color: white;
            font-size: 1em;
        }
        button:hover { background-color: #45a049; }
    </style>
</head>
<body class="index-page">

<h1>スマホのお困りごと診断</h1>
<p>次の中から、あなたの困りごとを選んでください。</p>

<form action="MainServlet" method="post">
    <label><input type="radio" name="issue" value="1" required> バッテリー持ちが悪い</label><br>
    <label><input type="radio" name="issue" value="2"> データ容量がいっぱい</label><br>
    <label><input type="radio" name="issue" value="3"> 通信速度が遅い</label><br>
    <label><input type="radio" name="issue" value="4"> 月額料金が高い</label><br>
    <label><input type="radio" name="issue" value="5"> セキュリティが不安</label><br>

    <button type="submit">次へ</button>
</form>

</body>
</html>
