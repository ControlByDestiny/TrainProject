package com.william.utils;

import java.sql.*;

/*** Create By InteliJ IDEA
 **位置：com.william.utils
 **作者：袁学恒
 **时间：2018/11/21  17:44
 ***/
public class DButil {

    public static Connection getConnection(){
        Connection connection = null;
        try {
            Class.forName(PropertyUtil.getProperty("jdbc.Driver"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            connection = DriverManager.getConnection(PropertyUtil.getProperty("jdbc.url"), PropertyUtil.getProperty("jdbc.user"), PropertyUtil.getProperty("jdbc.password"));
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException();
        }
        return connection;
    }
    public static void close(ResultSet resultSet, PreparedStatement preparedStatement, Connection connection){
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
