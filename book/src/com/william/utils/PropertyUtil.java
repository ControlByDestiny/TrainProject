package com.william.utils;

import java.util.ResourceBundle;

/*** Create By InteliJ IDEA
 **位置：com.william.utils
 **作者：袁学恒
 **时间：2018/11/22  16:53
 ***/
public class PropertyUtil {
    private static ResourceBundle resourceBundle = null;
    static {
        resourceBundle = ResourceBundle.getBundle("app");
    }
    public static String getProperty (String key) {
        return resourceBundle.getString(key);
    }

}
