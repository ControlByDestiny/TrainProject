package com.william.servlet;

import com.william.LoginConstants;
import com.william.exception.ParameterException;
import com.william.exception.ServiceException;
import com.william.model.User;
import com.william.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

/*** Create By InteliJ IDEA
 **位置：${PACKAGE_NAME}
 **作者：袁学恒
 **时间：2018/11/20  17:52
 ***/
public class LoginServlet extends HttpServlet {
    private static final String LOGIN_PAGE = "/WEB-INF/jsp/login.jsp";
    private static final long serialVersionUID = 1140466145542311298L;

    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("-----------START INIT-----------");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取请求的数据
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        ////2.业务逻辑处理
        //执行登陆操作->(1) 从数据库取数据-->(UserDao) （2）判断用户是否合法
        try {
            UserService userService = new UserService();
            User user = userService.login(userName, password);
            //登陆成功
            HttpSession session = request.getSession();
            user.setUserPassword(null);
            session.setAttribute(LoginConstants.USER, user);
            response.sendRedirect(request.getContextPath() + "/mybook");
        } catch (ParameterException parameterException) {
            Map <String, String> errorFields = parameterException.getErrorFields();
            request.setAttribute(LoginConstants.ERROR_FIELDS, errorFields);
            request.getRequestDispatcher(LOGIN_PAGE).forward(request, response);
        } catch (ServiceException serviceException) {
            request.setAttribute(LoginConstants.TIP_MESSAGE,serviceException.getMessage() + "[" + serviceException.getCode() + "]");
            request.getRequestDispatcher(LOGIN_PAGE).forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
    }

    @Override
    public void destroy() {
        super.destroy();
        System.out.println("-----------START DESTROY-----------");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp);
        System.out.println("-----------SERVICE---->REQUEST_METHOD:" + req.getMethod() + "-----------");

    }
}
