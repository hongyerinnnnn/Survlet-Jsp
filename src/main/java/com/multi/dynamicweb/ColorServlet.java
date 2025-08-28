
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/colorServlet")
public class ColorServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 반드시 먼저 설정
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // 설정 후에 writer 생성
        PrintWriter pw = response.getWriter();

        String html =
                "<!DOCTYPE html>" +
                        "<html lang='ko'>" +
                        "<head>" +
                        "<meta charset='UTF-8'>" +
                        "<title>주간 시간표</title>" +
                        "<style>" +
                        "body{font-family:Arial, sans-serif; margin:40px;}" +
                        "h1{margin-bottom:16px;}" +
                        "table{border-collapse:collapse; width:800px;}" +
                        "th,td{border:1px solid #999; padding:10px; text-align:center;}" +
                        "th{background:#f3f4f6;}" +
                        ".time{background:#fafafa; font-weight:bold;}" +
                        ".lunch{background:#fff7e6;}" +
                        "</style>" +
                        "</head>" +
                        "<body>" +
                        "<h1>주간 시간표</h1>" +
                        "<table>" +
                        "<thead>" +
                        "<tr><th class='time'>시간</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th></tr>" +
                        "</thead>" +
                        "<tbody>" +
                        "<tr><td class='time'>09:00–10:00</td><td>Java</td><td>자료구조</td><td>웹기초</td><td>SQL</td><td>프로젝트</td></tr>" +
                        "<tr><td class='time'>10:00–11:00</td><td>Java</td><td>자료구조</td><td>웹기초</td><td>SQL</td><td>프로젝트</td></tr>" +
                        "<tr><td class='time'>11:00–12:00</td><td>알고리즘</td><td>HTML/CSS</td><td>Spring</td><td>JDBC</td><td>프로젝트</td></tr>" +
                        "<tr class='lunch'><td class='time'>12:00–13:00</td><td colspan='5'>점심시간</td></tr>" +
                        "<tr><td class='time'>13:00–14:00</td><td>Spring</td><td>MyBatis</td><td>React</td><td>REST API</td><td>프로젝트</td></tr>" +
                        "<tr><td class='time'>14:00–15:00</td><td>Spring</td><td>MyBatis</td><td>React</td><td>REST API</td><td>프로젝트</td></tr>" +
                        "</tbody>" +
                        "</table>" +
                        "</body></html>";
        pw.write(html);
    }
}
