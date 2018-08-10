import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.FileWriter;
import java.io.File;

import javax.swing.*;
import javax.swing.JFrame;
import javax.swing.JTextArea;
import javax.swing.SwingUtilities;
import javax.swing.WindowConstants;

public class Dataselect extends HttpServlet{
  public void doGet(HttpServletRequest req, HttpServletResponse res)
  throws IOException, ServletException{

    res.setContentType("text/html; charset=utf-8");
    PrintWriter out = res.getWriter();
    HttpSession session = req.getSession();

    String path = "C:\\home\\sumitomo\\sol-server\\system\\Upfiles\\"+(String)session.getAttribute("userID")+"\\work";
    String prjpath = "C:\\home\\sumitomo\\sol-server\\system\\Upfiles\\"+(String)session.getAttribute("userID")+"\\prj";
    File dir = new File(path);
    File prjdir = new File(prjpath);
    String list[] = dir.list();
    String prjlist[] = prjdir.list();

    out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
    out.println("<html>");
    out.println("<head>");
    out.println("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\">");
    out.println("<title>FIle Upload</title>");
    out.println("<script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js\"></script>");

    out.println("<link rel=\"stylesheet\"");
    out.println("href=\"http://code.jquery.com/ui/1.10.4/themes/redmond/jquery-ui.min.css\" />");
    out.println("<link rel=\"stylesheet\" href=\"css/wizard.css\" />");
    out.println("<link rel=\"stylesheet\" href=\"css/style.css\"/>");

    out.println("</head>");
    out.println("<style>");
    out.println(".valid-err { color: Red;}");
    out.println("#choices { font-weight: lighter;}");
    out.println("</style>");
    out.println("<body>");
    out.println("<header id=\"head\">");
    out.println("<h1 id=\"snam\">EOS_server</h1>");
    out.println("<p>ようこそ！</p>");
    out.println("<nav>");
    out.println("<ul>");
    out.println("<li><a href=\"main.html\">トップ</a></li>");
    out.println("<li><a href=\"point.html\">ソルバ対応表</a></li>");
    out.println("<li><a href=\"https://asana.com/\">asana</a></li>");
    out.println("<li><a href=\"http://www.kansai-u.ac.jp/index.html\">関西大学</a></li>");
    out.println("<li><a href=\"http://typing.sakura.ne.jp/sushida/\">寿司打</a></li>");
    out.println("</ul>");
    out.println("</nav>");
    out.println("</header>");
    out.println("</br></br>");

    out.println("<div id=\"container\">");
    out.println("<div id=\"item2\">ソルバ選択　>></div>");
    out.println("<div id=\"item1\">計算条件選択　>></div>");
    out.println("<div id=\"item2\">計算実行　>></div>");
    out.println("<div id=\"item2\">ダウンロード　>></div>");
    out.println("</div>");
    out.println("<legend>計算条件選択画面</legend>");
    out.println("<hr>"); //水平線
    out.println("<div>");

    out.println("<label for=\"name\">1, 計算に使用するファイルをお選びください．</label>");
    out.println("<form name=\"serverselect\" method=\"post\" action=\"/server/createbat\">");
    out.println("<select id=\"list\" name=\"list\" required>");
    for (int i = 0; i < list.length; i++){
        String path2 = path+"\\"+list[i];
        if (list[i].equals(".git")) {continue;}
        out.println("<option value="+path2+">"+list[i]+"</opiton>");
    }
    out.println("</select></br>");

    out.println("<select id=\"list\" name=\"list\">");
    out.println("<option value=\"0\">２つ目の問題ファイルを選ばない</opiton>");
    for (int i = 0; i < list.length; i++){
        String path2 = path+"\\"+list[i];
        if (list[i].equals(".git")) {continue;}
        out.println("<option value="+path2+">"+list[i]+"</opiton>");
    }
    out.println("</select></br>");

    out.println("<select id=\"list\" name=\"list\">");
    out.println("<option value=\"0\">3つ目の問題ファイルを選ばない</opiton>");
    for (int i = 0; i < list.length; i++){
        String path2 = path+"\\"+list[i];
        if (list[i].equals(".git")) {continue;}
        out.println("<option value="+path2+">"+list[i]+"</opiton>");
    }
    out.println("</select></br>");

    out.println("<label for=\"name\">2, 使用するソルバを選択して下さい．</label>");
    //  out.println("<select name=\"solver\">");
    //  out.println("<option value=\"glpk\">GLPK</option>");
    //  out.println("<option value=\"gurobi\">Gurobi</option>");
    //  out.println("<option value=\"cplex\">CPLEX</option>");
    //  out.println("<option value=\"scip\">SCIP</option>");
    //  out.println("<option value=\"xpressmp\">XpressMP</option>");
    //  out.println("</select>");
    // out.println("<label for=\"solvertype\">");
    out.println("<span id=\"choices\">");
    out.println("<input type=\"radio\" name=\"solver\" id=\"solvertype\" value=\"glpk\" checked=\"checked\">GLPK");
    out.println("<input type=\"radio\" name=\"solver\" id=\"solvertype\" value=\"gurobi\" >Gurobi");
    out.println("<input type=\"radio\" name=\"solver\" id=\"solvertype\" value=\"cplex\" >CPLEX");
    out.println("<input type=\"radio\" name=\"solver\" id=\"solvertype\" value=\"scip\" >SCIP");
    out.println("<input type=\"radio\" name=\"solver\" id=\"solvertype\" value=\"xpressmp\">XpressMP");
    out.println("</span>");
    // out.println("</label>");

    out.println("<label for=\"name\">3, LP/MPSファイルへ変換しますか？</label>");
    out.println("<select name=\"fileformat\">");
    out.println("<option value=\"no\">変換なし</option>");
    out.println("<option value=\"lp\">LPファイルに変換</option>");
    out.println("<option value=\"mps\">MPSファイルに変換</option>");
    out.println("</select>");

    out.println("<label for=\"name\">4, 計算時間の指定を行いたい場合は，下記の欄に半角数字を入力してください．<br>計算時間の上限は86400秒 (24時間)であり、入力のない場合はその上限が設定されます． </label>");
    out.println("<td><input type=\"text\" name=\"time\" value=\"\" size=\"5\"></td>");

    out.println("<label for=\"name\">5, プロジェクト名を入力してください．(例：prob_@@@, etc...)"
                +"<br>無記入の場合は年月日+時刻がプロジェクト名になります．</label>");
    // out.println("<td><input type=\"text\" name=\"prj\" value=\"\"  style=\"width:250px;\" ></td>");
    out.println("<td>");
    out.println("<input id=\"project\" list=\"projects\" name=\"prj\" placeholder=\"プロジェクト名を入力 or ダブルクリックして選択\" style=\"width:350px;\" autocomplete=\"off\">");
    out.println("<datalist id=\"projects\">");
    for (int j = 0; j < prjlist.length; j++) {
      String prjpath2 = prjpath + "\\" + prjlist[j];
      out.println("<option value=" + prjlist[j] + ">");
    }
    out.println("</datalist>");
    out.println("</td>");

    out.println("<label for=\"name\">6, 計算終了通知をメールで送信したい場合はにチェックを入れてください．</label>");
    out.println("<td><input type=\"radio\" name=\"mail\" value=\"1\"><font size = \"3pt\">送信する</font></td>");
    out.println("<td><input type=\"radio\" name=\"mail\" value=\"0\" checked><font size = \"3pt\">送信しない</font></td><br><br>");

    out.println("<button id=\"back\" onClick=\"javascript:history.go(-1)\">1つ前へ戻る</button>");

    out.println("<button type=\"submit\" name=\"from\" value=\"server\"onClick=\"document.serverselect.action=\"document.serverselect.solver.value;\"\">Upload</button>");
    out.println("</form>");
    out.println("</div>");

    out.println("<script src=\"http://code.jquery.com/jquery-1.11.0.min.js\"></script>"
               + "<script src=\"js/jquery.validate.min.js\"></script>" +
                "<script src=\"http://code.jquery.com/ui/1.10.4/jquery-ui.min.js\"></script>" +
                "<script>" +
                "$(function() {" +
                "$(\"button\").button();" +
                "$(\"a\").button();" +
                "$(\"input[type=\"button\"]\").button();" +
                "$(\"input.one\").button();" +
                "$(\".set\").buttonset();" +
                "});" +
                "</script>" +
                "<script>" +
                "$(function() {" +
                "$(\"#home\").button({" +
                "icons: {" +
                "primary: \"ui-icon-home\"" +
                "}" +
                "});" +
                "$(\"#next\").button({" +
                "icons: {" +
                "secondary: \"ui-icon-circle-arrow-e\"" +
                "}" +
                "});" +
                "});" +
                "</script>");

    out.println("</br></br></br></br></br>");
    out.println("<footer>");
    out.println("<ul>");
    out.println("<li><a href=\"tou.html\">利用規約</a> | </li>");
    out.println("<li><a href=\"privacy.html\">プライバシーポリシー</a></li>");
    out.println("</ul>");
    out.println("<p><small>Copyright &copy; 2016 System Optimize chamber All Rights Reserved.</small></p>");
    out.println("</footer>");
    out.println("</body>");
    out.println("</html>");
  }
}
