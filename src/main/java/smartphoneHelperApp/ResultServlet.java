package smartphoneHelperApp;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
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
        String answer = request.getParameter("answer");

        String resultMessage = "";

        // 困りごと × 回答で結果分岐
        if ("1".equals(issueId)) { // バッテリー
            if ("yes".equals(answer)) {
                resultMessage = "バッテリーの劣化が原因の可能性があります。交換を検討しましょう。";
            } else {
                resultMessage = "アプリの使用状況を見直すことで改善する可能性があります。";
            }
        } else if ("2".equals(issueId)) { // 容量不足
            resultMessage = "不要なアプリや写真を削除することをおすすめします。";
        } else {
            resultMessage = "詳しい診断は店舗スタッフにご相談ください。";
        }

        request.setAttribute("resultMessage", resultMessage);

        RequestDispatcher dispatcher =
                request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request, response);
    }
}
