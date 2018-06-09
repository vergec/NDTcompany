package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import com.jspsmart.upload.*;
import JavaBean.EvaluationBean;
import DAO.EvaluationDAO;


@WebServlet(name = "AddEvaluation")
public class AddEvaluation extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("content-type", "text/html;charset=UTF-8");
        response.setCharacterEncoding("GBK");
        PrintWriter out = response.getWriter();
        request.setCharacterEncoding("UTF-8");
        SmartUpload up = new SmartUpload();
        up.initialize(getServletConfig(),request,response);

        try {
            up.upload();

            up.save("/upimg");
            //存数据库
            int userid = Integer.parseInt(up.getRequest().getParameter("userid"));
            int companyid = Integer.parseInt(up.getRequest().getParameter("userid"));
            int orderid = Integer.parseInt(up.getRequest().getParameter("userid"));
            String title = up.getRequest().getParameter("title");
            String content = up.getRequest().getParameter("content");
            String photo1 = up.getFiles().getFile(0).getFileName();

            EvaluationBean evaluationBean = new EvaluationBean();
            evaluationBean.setUserId(userid);
            evaluationBean.setCompanyId(companyid);
            evaluationBean.setOrderId(orderid);
            evaluationBean.setTitle(title);
            evaluationBean.setContent(content);
            evaluationBean.setPhoto1(photo1);
            EvaluationDAO evaluationDAO=new EvaluationDAO();
            evaluationDAO.insertEvaluation(evaluationBean);
            out.print("保存完成");
        } catch (SmartUploadException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();		}
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}