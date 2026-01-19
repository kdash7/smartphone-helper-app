<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String issueId = (String) request.getAttribute("issueId");
    String issueName = (String) request.getAttribute("issueName");
%>

<h2><%= issueName %></h2>

<form action="<%= request.getContextPath() %>/ResultServlet" method="post">
    <input type="hidden" name="issueId" value="<%= issueId %>">

<% if ("1".equals(issueId)) { %>
    <!-- バッテリー -->
    <p>Q1. 使用年数は？</p>
    <input type="radio" name="q1" value="old" required>2年以上
    <input type="radio" name="q1" value="new">2年未満

    <p>Q2. 減りの早さは？</p>
    <input type="radio" name="q2" value="fast" required>かなり早い
    <input type="radio" name="q2" value="normal">普通

<% } else if ("2".equals(issueId)) { %>
    <!-- データ容量 -->
    <p>Q1. 容量は？</p>
    <input type="radio" name="q1" value="full" required>ほぼ満杯
    <input type="radio" name="q1" value="half">余裕あり

    <p>Q2. 写真や動画が多い？</p>
    <input type="radio" name="q2" value="yes" required>はい
    <input type="radio" name="q2" value="no">いいえ

<% } else if ("3".equals(issueId)) { %>
    <!-- 通信速度 -->
    <p>Q1. 遅いのは？</p>
    <input type="radio" name="q1" value="always" required>常に
    <input type="radio" name="q1" value="sometimes">時々

    <p>Q2. Wi-Fi使ってる？</p>
    <input type="radio" name="q2" value="yes" required>はい
    <input type="radio" name="q2" value="no">いいえ

<% } else if ("4".equals(issueId)) { %>
    <!-- 料金 -->
    <p>Q1. 月額料金は？</p>
    <input type="radio" name="q1" value="high" required>高い
    <input type="radio" name="q1" value="normal">普通

    <p>Q2. ギガ余る？</p>
    <input type="radio" name="q2" value="yes" required>余る
    <input type="radio" name="q2" value="no">足りない

<% } else if ("5".equals(issueId)) { %>
    <!-- セキュリティ -->
    <p>Q1. 不審な表示ある？</p>
    <input type="radio" name="q1" value="yes" required>ある
    <input type="radio" name="q1" value="no">ない

    <p>Q2. OS更新してる？</p>
    <input type="radio" name="q2" value="no" required>してない
    <input type="radio" name="q2" value="yes">してる
<% } %>

<br><br>
<button type="submit">結果を見る</button>
</form>
