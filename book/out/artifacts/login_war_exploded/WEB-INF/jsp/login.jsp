<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.william.LoginConstants" %><%--
  Created by IntelliJ IDEA.
  User: 袁学恒
  Date: 2018/11/20
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login</title>
  <style>
    .errorMessage {
      color: red;
    }
  </style>
  <script>

    function login() {
      var formObj = document.getElementById("loginForm");
      var submitForm = false;
      var userNameValue = document.getElementById("userName").value;
      if (!userNameValue) {
        document.getElementById("errorUserName").innerHTML = "User Name Is Required";
        submitForm = false;
      } else {
        document.getElementById("errorUserName").innerHTML = "";
        submitForm = true;
      }
      var passwordValue = document.getElementById("password").value;
      if (!passwordValue) {
        document.getElementById("errorPassword").innerHTML = "Password Is Required";
        submitForm = false;
      } else {
        document.getElementById("errorPassword").innerHTML = "";
        submitForm = true;
      }
      if (submitForm) {
        formObj.submit();
      }
    }

    function dataCheck() {
      var userNameValue = document.getElementById("userName").value;
      if (!userNameValue) {
        document.getElementById("errorUserName").innerHTML = "User Name Is Required";
      } else {
        document.getElementById("errorUserName").innerHTML = "";
      }
      var passwordValue = document.getElementById("password").value;
      if (!passwordValue) {
        document.getElementById("errorPassword").innerHTML = "Password Is Required";
      } else {
        document.getElementById("errorPassword").innerHTML = "";
      }
    }
  </script>
</head>
<body>
<%
  String tipMessage = (String) request.getAttribute(LoginConstants.TIP_MESSAGE);
  if (tipMessage != null) {
    out.println(tipMessage);
  }
  Map<String, String> errorFields = (Map<String, String>) request.getAttribute(LoginConstants.ERROR_FIELDS);
  if (errorFields == null) {
    errorFields = new HashMap<>();
  }
%>
<form action="${pageContext.request.contextPath}/login" method="post" id="loginForm">
  UserName:<input type="text" name="userName" id="userName" onblur="dataCheck()"/>
  <label id="errorUserName" class="errorMessage">
    <% String errorUserName = errorFields.get("errorName") == null ? "" : errorFields.get("errorName");
      out.print(errorUserName);
    %>
  </label><br/>
  Password:<input type="password" name="password" id="password" onblur="dataCheck()"/>
  <label id="errorPassword" class="errorMessage">
    <% String errorPassword = errorFields.get("errorPassword") == null ? "" : errorFields.get("errorPassword");
      out.print(errorPassword);
    %>
  </label><br/>
  <input type="button" value="Login" onclick="login()">
</form>
</body>
</html>
