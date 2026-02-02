<%@ page contentType="text/html; charset=UTF-8" %>

<link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">

<div class="container">

    <%
        String issueId = (String) request.getAttribute("issueId");
        String issueName = (String) request.getAttribute("issueName");
    %>

    <h2><%= issueName %></h2>

    <%-- バッテリー持ちが悪いの場合 --%>
    <% if ("1".equals(issueId)) { %>

    <form action="<%= request.getContextPath() %>/ResultServlet" method="post">
        <input type="hidden" name="issueId" value="1">

        <div class="question">
            <p>Q1. 100%から0%になるまでどのくらい？</p>
            <label>
                <input type="radio" name="q1" value="1" required class="battery-q1">
                1日以上
            </label><br>

            <label>
                <input type="radio" name="q1" value="2" class="battery-q1">
                半日〜1日
            </label><br>

            <label>
                <input type="radio" name="q1" value="3" class="battery-q1">
                半日持たない
            </label><br>

            <div id="battery-q2" style="display:none;">
                <p>Q2. 使い始めて何年くらい？</p>
                <label><input type="radio" name="q2" value="1"> 2年以上</label><br>
                <label><input type="radio" name="q2" value="2"> 1年以上2年未満</label><br>
                <label><input type="radio" name="q2" value="3"> 1年未満</label><br>
            </div>

            <button type="submit">診断する</button>
 
        </div>
    </form>

    <% } %>

    <%-- データ容量がいっぱいの場合 --%>
    <% if ("2".equals(issueId)) { %>

    <form action="<%= request.getContextPath() %>/ResultServlet" method="post">
        <input type="hidden" name="issueId" value="2">

        <div class="question">
            <p>Q1. 設定画面で見たストレージ使用量はどのくらい？</p>

            <label><input type="radio" name="q1" value="1" required> 70%未満</label><br>
            <label><input type="radio" name="q1" value="2"> 70〜90%</label><br>
            <label><input type="radio" name="q1" value="3"> 90%以上</label><br>

            <button type="submit">診断する</button>

        </div>
    </form>

    <% } %>

    <%-- 通信速度が遅い場合 --%>
    <% if ("3".equals(issueId)) { %>

    <form action="<%= request.getContextPath() %>/ResultServlet" method="post">
        <input type="hidden" name="issueId" value="3">

        <div class="question">
            <p>Q1. 遅く感じる通信方法は？</p>
            <label>
                <input type="radio" name="q1" value="1" required class="speed-q1">
                モバイルデータ
            </label><br>

            <label>
                <input type="radio" name="q1" value="2" class="speed-q1">
                Wi-Fi接続
            </label><br>

            <label>
                <input type="radio" name="q1" value="3" class="speed-q1">
                どっちも
            </label><br>

            <div id="speed-q2" style="display:none;">
                <p>Q2.（モバイルデータの場合）遅く感じるタイミングは？</p>
                <label><input type="radio" name="q2" value="1"> 常に</label><br>
                <label><input type="radio" name="q2" value="2"> 時々</label><br>
                <label><input type="radio" name="q2" value="3"> 月末あたり</label><br>
            </div>

            <button type="submit">診断する</button>

        </div>
    </form>

    <% } %>

    <%-- 月額料金が高い場合 --%>
    <% if ("4".equals(issueId)) { %>

    <form action="<%= request.getContextPath() %>/ResultServlet" method="post">
        <input type="hidden" name="issueId" value="4">

        <div class="question">
            <p>Q1. 使用可能データ通信量は足りてる？</p>
            <label>
                <input type="radio" name="q1" value="1" required class="plan-q1">
                結構余っている
            </label><br>

            <label>
                <input type="radio" name="q1" value="2" class="plan-q1">
                足りない
            </label><br>

            <label>
                <input type="radio" name="q1" value="3" class="plan-q1">
                足りている
            </label><br>

            <div id="plan-q2" style="display:none;">
                <p>Q2.（足りない場合）通話は自分からどのくらいかける？</p>
                <label>
                    <input type="radio" name="q2" value="1" class="plan-q2">
                    長時間かける
                </label><br>

                <label>
                    <input type="radio" name="q2" value="2" class="plan-q2">
                    短いけど何回もかける
                </label><br>

                <label>
                    <input type="radio" name="q2" value="3" class="plan-q2">
                    ほとんどかけない
                </label><br>
            </div>

            <div id="plan-q3" style="display:none;">
                <p>Q3. 通話かけ放題にしてる？</p>
                <label><input type="radio" name="q3" value="1"> している</label><br>
                <label><input type="radio" name="q3" value="2"> 5分（10分）かけ放題</label><br>
                <label><input type="radio" name="q3" value="3"> していない</label><br>
            </div>

            <button type="submit">診断する</button>

        </div>
    </form>

    <% } %>

    <%-- セキュリティが不安 --%>
    <% if ("5".equals(issueId)) { %>

    <form action="<%= request.getContextPath() %>/ResultServlet" method="post">
        <input type="hidden" name="issueId" value="5">

        <div class="question">
            <p>Q1. 怪しい出来事があった？</p>
            <label>
                <input type="radio" name="q1" value="1" required class="security-q1">
                あった
            </label><br>

            <label>
                <input type="radio" name="q1" value="2" class="security-q1">
                まだない
            </label><br>

            <div id="security-q2" style="display:none;">
                <p>Q2. セキュリティアプリは設定してる？</p>
                <label>
                    <input type="radio" name="q2" value="1">
                    している
                </label><br>

                <label>
                    <input type="radio" name="q2" value="2">
                    していない・分からない
                </label><br>
            </div>

            <button type="submit">診断する</button>

        </div>
    </form>

    <% } %>

    <script> // バッテリー
    document.addEventListener("DOMContentLoaded", function () {

        const q1Radios = document.querySelectorAll(".battery-q1");
        const q2Div = document.getElementById("battery-q2");
        const q2Radios = q2Div.querySelectorAll("input[name='q2']");

        q1Radios.forEach(radio => {
            radio.addEventListener("change", function () {

                if (this.value === "1") { // 2年以上
                    // Q1=1 → 即結果
                    q2Div.style.display = "none";
                    q2Radios.forEach(r => {
                        r.required = false;
                        r.checked = false;
                    });

                } else {
                    // Q1=2 or 3 → Q2必要
                    q2Div.style.display = "block";
                    q2Radios.forEach(r => r.required = true);
                }
            });
        });

    });
    </script>

    <script> // 通信速度
    document.addEventListener("DOMContentLoaded", function () {

        const speedQ1List = document.querySelectorAll(".speed-q1");
        const speedQ2Area = document.getElementById("speed-q2");
        const speedQ2Radios = speedQ2Area.querySelectorAll('input[type="radio"]');

        speedQ1List.forEach(radio => {
            radio.addEventListener("change", function () {

                if (this.value === "1") { // モバイルデータ
                    // Q1=1 → Q2必要
                    speedQ2Area.style.display = "block";
                    speedQ2Radios.forEach(r => r.required = true);

                } else {
                    // Q1=2 or 3 → 即結果
                    speedQ2Area.style.display = "none";
                    speedQ2Radios.forEach(r => {
                        r.required = false;
                        r.checked = false;
                    });
                }
            });
        });
    });
    </script>

    <script> // 月額料金
    document.addEventListener("DOMContentLoaded", function () {

        const planQ1Radios = document.querySelectorAll(".plan-q1");

        const planQ2Div = document.getElementById("plan-q2");
        const planQ2Radios = planQ2Div.querySelectorAll("input[name='q2']");

        const planQ3Div = document.getElementById("plan-q3");
        const planQ3Radios = planQ3Div.querySelectorAll("input[name='q3']");

        planQ1Radios.forEach(radio => {
            radio.addEventListener("change", function () {

                if (this.value === "1") { // 結構余っている
                    // Q1=1 → 即結果
                    planQ2Div.style.display = "none";
                    planQ3Div.style.display = "none";

                    planQ2Radios.forEach(r => {
                        r.required = false;
                        r.checked = false;
                    });

                    planQ3Radios.forEach(r => {
                        r.required = false;
                        r.checked = false;
                    });

                } else {
                    // Q1=2 or 3 → Q2 & Q3 必須
                    planQ2Div.style.display = "block";
                    planQ3Div.style.display = "block";

                    planQ2Radios.forEach(r => r.required = true);
                    planQ3Radios.forEach(r => r.required = true);
                }
            });
        });

    });
    </script>

    <script> // セキュリティ
    document.addEventListener("DOMContentLoaded", function () {

        const securityQ1Radios = document.querySelectorAll(".security-q1");
        const securityQ2Div = document.getElementById("security-q2");
        const securityQ2Radios = securityQ2Div.querySelectorAll("input[name='q2']");

        securityQ1Radios.forEach(radio => {
            radio.addEventListener("change", function () {

                if (this.value === "1") {
                    // Q1=あった → 即結果
                    securityQ2Div.style.display = "none";
                    securityQ2Radios.forEach(r => {
                        r.required = false;
                        r.checked = false;
                    });
                } else {
                    // Q1=まだない → Q2必要
                    securityQ2Div.style.display = "block";
                    securityQ2Radios.forEach(r => r.required = true);
                }
            });
        });

    });
    </script>

</div>
