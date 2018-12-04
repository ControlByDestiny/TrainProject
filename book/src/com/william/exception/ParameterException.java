package com.william.exception;

import java.util.HashMap;
import java.util.Map;

/*** Create By InteliJ IDEA
 **位置：com.william.exception
 **作者：袁学恒
 **时间：2018/11/22  10:05
 ***/
public class ParameterException extends Exception {
    private Map<String, String> errorFields = new HashMap<>();

    public Map<String, String> getErrorFields() {
        return errorFields;
    }

    public void setErrorFields(Map<String, String> errorFields) {
        this.errorFields = errorFields;
    }

    public void addErrorField (String field, String message) {
        errorFields.put(field, message);
    }
    public boolean hasErrorField () {
        return !errorFields.isEmpty();
    }
}
