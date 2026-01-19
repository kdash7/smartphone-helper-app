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
        String q1 = request.getParameter("q1");
        String q2 = request.getParameter("q2");

        String result = "";

        // ① バッテリー
        if ("1".equals(issueId)) {
            if ("old".equals(q1) && "fast".equals(q2)) {
                result = "バッテリーの劣化が考えられます。交換や機種変更を検討しましょう。";
            } else if ("new".equals(q1) && "fast".equals(q2)) {
                result = "アプリの使用が原因かもしれません。バックグラウンド設定を確認しましょう。";
            } else {
                result = "大きな問題はなさそうです。様子を見ましょう。";
            }

        // ② データ容量
        } else if ("2".equals(issueId)) {
            if ("full".equals(q1) && "yes".equals(q2)) {
                result = "写真・動画が容量を圧迫しています。クラウド保存がおすすめです。";
            } else if ("full".equals(q1)) {
                result = "不要なアプリやデータを削除してみましょう。";
            } else {
                result = "容量には余裕があります。";
            }

        // ③ 通信速度
        } else if ("3".equals(issueId)) {
            if ("always".equals(q1) && "no".equals(q2)) {
                result = "通信環境が原因の可能性があります。場所を変えて試してみましょう。";
            } else if ("sometimes".equals(q1)) {
                result = "時間帯による混雑が考えられます。";
            } else {
                result = "大きな問題はなさそうです。";
            }

        // ④ 料金
        } else if ("4".equals(issueId)) {
            if ("high".equals(q1) && "yes".equals(q2)) {
                result = "料金プランの見直しで節約できそうです。";
            } else if ("high".equals(q1)) {
                result = "利用状況に合ったプランか確認しましょう。";
            } else {
                result = "現在の料金は適切そうです。";
            }

        // ⑤ セキュリティ
        } else if ("5".equals(issueId)) {
            if ("yes".equals(q1) && "no".equals(q2)) {
                result = "ウイルス感染の可能性があります。早めに対策しましょう。";
            } else if ("no".equals(q2)) {
                result = "OSアップデートを行いましょう。";
            } else {
                result = "特に問題はなさそうです。";
            }
        }

        request.setAttribute("result", result);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}

