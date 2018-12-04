package com.william.dao;

import com.william.model.User;
import com.william.utils.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*** Create By InteliJ IDEA
 **位置：com.william.dao
 **作者：袁学恒
 **时间：2018/11/21  19:51
 ***/
public class UserDao {
    public User getUserByName (String userName) {
        if (userName == null || userName.equals("")) {
            return null;
        }
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        User user = null;

        //连接数据库，查询数据
        try {
            connection = DButil.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM user WHERE user_name=?");
            preparedStatement.setString(1, userName);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                user = new User();
                int userIdInDB = resultSet.getInt("id");
                String userNameInDB = resultSet.getString("user_name");
                String passwordInDB = resultSet.getString("password");
                user.setId(userIdInDB);
                user.setUserName(userNameInDB);
                user.setUserPassword(passwordInDB);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException();
        } finally {
            DButil.close(resultSet,preparedStatement,connection);
        }
        return user;
    }
}
