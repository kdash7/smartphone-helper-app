<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>スマホお困りごと診断</title>
    <style>
        body { font-family: sans-serif; background-color: #f9fafc; text-align: center; margin-top: 50px; }
        h1 { color: #333; }
        form {
            display: inline-block;
            text-align: left;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
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
<body>

<h1>スマホのお困りごと診断</h1>
<p>次の中から、あなたの困りごとを選んでください：</p>

<form action="MainServlet" method="post">
    <label><input type="radio" name="issue" value="1" required> バッテリーの劣化・持ち</label><br>
    <label><input type="radio" name="issue" value="2"> データ容量不足</label><br>
    <label><input type="radio" name="issue" value="3"> 通信速度の不足</label><br>
    <label><input type="radio" name="issue" value="4"> 料金プランに関する不満</label><br>
    <label><input type="radio" name="issue" value="5"> セキュリティ上のトラブル</label><br>

    <button type="submit">次へ</button>
</form>

</body>
</html>
