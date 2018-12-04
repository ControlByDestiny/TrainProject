package com.william.exception;

/*** Create By InteliJ IDEA
 **位置：com.william.exception
 **作者：袁学恒
 **时间：2018/11/22  10:27
 ***/
public class ServiceException extends Exception {
    private int code;
    private String message;

    public ServiceException(int code, String message) {
        super();
        this.code = code;
        this.message = message;
    }

    public ServiceException(String message) {
        super();
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
