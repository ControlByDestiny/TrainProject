package com.william.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*** Create By InteliJ IDEA
 **位置：${PACKAGE_NAME}
 **作者：袁学恒
 **时间：2018/11/22  15:50
 ***/
public class DashboardServlet extends HttpServlet {
    private static final long serialVersionUID = 7333487597335581109L;

    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("----DashboardServlet-------START INIT-----------");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp);
        System.out.println("----DashboardServlet-------SERVICE---->REQUEST_METHOD:" + req.getMethod() + "-----------");

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/welcome.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    @Override
    public void destroy() {
        super.destroy();
        System.out.println("----DashboardServlet-------START DESTROY-----------");
    }
}
