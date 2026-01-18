package smartphoneHelperApp;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().println("MainServlet は正常に動いています");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String issue = request.getParameter("issue"); // ラジオボタンの選択値を取得
        String issueName;

        switch (issue) {
            case "1": issueName = "バッテリーの劣化・持ち"; break;
            case "2": issueName = "データ容量不足"; break;
            case "3": issueName = "通信速度の不足"; break;
            case "4": issueName = "料金プランに関する不満"; break;
            case "5": issueName = "セキュリティ上のトラブル"; break;
            default:  issueName = "不明"; break;
        }

        // 次の画面（質問ページ）に渡すデータ
        request.setAttribute("issueName", issueName);
        request.setAttribute("issueId", issue);

        // 質問ページへフォワード（次回作成するJSP）
        RequestDispatcher dispatcher = request.getRequestDispatcher("question.jsp");
        dispatcher.forward(request, response);
    }
}
