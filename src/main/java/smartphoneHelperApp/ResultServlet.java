package smartphoneHelperApp;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ResultServlet")
public class ResultServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String issueId = request.getParameter("issueId");
        String result = "";

        if ("1".equals(issueId)) { // バッテリー
            int q1 = Integer.parseInt(request.getParameter("q1"));

            if (q1 == 1) {
                result = "特に大きな問題はないようです。<br>"
                        + "気になることが別にある場合、ショップで相談しましょう。";
            } else {
                String q2Str = request.getParameter("q2");

                // ★ q2が未回答ならここで止める（保険）
                if (q2Str == null) {
                    result = "質問の回答が不足しています。<br>"
                           + "もう一度最初からお試しください。";
                } else {
                    int q2 = Integer.parseInt(q2Str);
                    int score = q1 + q2;

                    if (score == 3) {
                        result = "バッテリーの経年劣化がありそうです。<br>"
                                + "一度ショップで相談してもいいかもしれません。";
                    } else if (score == 4) {
                        result = "バッテリーの劣化が進んでいるかもしれません。<br>"
                                + "一度ショップで相談してもいいでしょう。";
                    } else {
                        result = "バッテリーの劣化がかなり激しい恐れがあります。<br>"
                                + "早めにショップで相談しましょう。";
                    }
                }
            }
        }

        if ("2".equals(issueId)) { // データ容量
            int q1 = Integer.parseInt(request.getParameter("q1"));

            switch (q1) {
                case 1:
                    result = "まだストレージには余裕があるようです。<br>"
                            + "気になる点があればショップで相談してみましょう。";
                    break;

                case 2:
                    result = "ストレージが圧迫され始めています。<br>"
                            + "写真や動画をクラウドに保存するのがおすすめです。";
                    break;

                case 3:
                    result = "不要なアプリやデータを削除しましょう。<br>"
                            + "なければ機種変更も視野に入れ、<br>"
                            + "ショップで相談した方がいいかもしれません。";
                    break;
            }
        }

        if ("3".equals(issueId)) { // 通信速度
            int q1 = Integer.parseInt(request.getParameter("q1"));

            if (q1 == 1) {
                int q2 = Integer.parseInt(request.getParameter("q2"));

                switch (q2) {
                    case 1:
                        result = "電波状況が悪い可能性があります。<br>"
                                + "違う場所でも遅い場合は、ショップで相談しましょう。";
                        break;

                    case 2:
                        result = "時間帯による通信の混雑が考えられます。<br>"
                                + "しばらく待ってからお試しください。";
                        break;

                    case 3:
                        result = "契約プランの使用可能通信量が小さい可能性があります。<br>"
                                + "プランの見直しを検討しましょう。";
                        break;

                }

            } else if (q1 == 2) {
                result = "Wi-Fiの性能やプロバイダが原因かもしれません。<br>"
                        + "ショップや家電量販店で相談してみましょう。";

            } else if (q1 == 3) {
                result = "本体に問題があるかもしれません。<br>"
                        + "一度ショップで相談してみましょう。";

            }
        }

        if ("4".equals(issueId)) { // 月額料金
            int q1 = Integer.parseInt(request.getParameter("q1"));

            // 即結果パターン
            if (q1 == 1) {
                result = "もっと安くできるかもしれません。<br>"
                        + "ショップでプラン相談してみましょう。";

            } else if (q1 == 2 || q1 == 3) {
                int q2 = Integer.parseInt(request.getParameter("q2"));
                int q3 = Integer.parseInt(request.getParameter("q3"));

                if (q2 == q3) {
                    result = "基本プランは安くできなさそうです。<br>"
                            + "オプションを見直したり、<br>"
                            + "他社への乗り換えを検討するのもありかもしれません。";
                } else {
                    result = "プランが合っていないようです。<br>"
                            + "早めにショップでプラン相談しましょう。";
                }
            }
        }

        if ("5".equals(issueId)) { // セキュリティ
            int q1 = Integer.parseInt(request.getParameter("q1"));

            if (q1 == 1) {
                result = "起きた出来事を具体的にまとめておいて、<br>"
                        + "ショップで相談しましょう。";

            } else if (q1 == 2) {
                int q2 = Integer.parseInt(request.getParameter("q2"));

                if (q2 == 1) {
                    result = "基本的なセキュリティ対策はできているようです。<br>"
                            + "それでも不安であればショップで相談してみましょう。";
                } else {
                    result = "セキュリティアプリを契約・設定しましょう。<br>"
                            + "不安であればショップで相談しましょう。";
                }
            }
        }

        request.setAttribute("result", result);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}

