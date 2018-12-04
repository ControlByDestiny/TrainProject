package com.william.service;

import com.william.dao.UserDao;
import com.william.exception.ParameterException;
import com.william.exception.ServiceException;
import com.william.model.User;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/*** Create By InteliJ IDEA
 **位置：com.william.service
 **作者：袁学恒
 **时间：2018/11/21  19:51
 ***/
public class UserService {
    public User login (String userName, String password) throws ParameterException, ServiceException {
        ParameterException parameterException = new ParameterException();
        if (userName == null || userName.equals("")) {
            parameterException.addErrorField("errorName", "User Name Is Required");
        }
        if (password == null || password.equals("")) {
            parameterException.addErrorField("errorPassword", "Password Is Required");
        }
        if (parameterException.hasErrorField()) {
            throw parameterException;
        }
        UserDao userDao = new UserDao();
        User user = userDao.getUserByName(userName);
        if (user == null ) {
            throw new ServiceException(1000,"用户名不存在");
        }
        if (!password.equals(user.getUserPassword())) {
            throw new ServiceException(1001,"密码错误");
        }
        return user;
    }
}
