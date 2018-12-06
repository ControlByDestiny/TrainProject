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
  <link href="${pageContext.request.contextPath}/static/style/loginstyle.css" rel="stylesheet" type="text/css"/>
  <link href="${pageContext.request.contextPath}/static/style/reset.css" rel="stylesheet" type="text/css"/>
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
<body class="background_img">
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
    <div class="wrapper">
        <div class="login_title">奇文共欣赏，疑义相与析。<br /><label style="float: right">——陶渊明</label> </div>
            <div class="login_form">
              <div class="logo">Augmentum &#8482;</div>

              <div class="title">图书分享平台</div>

              <form action="${pageContext.request.contextPath}/login" method="post" id="loginForm">

                <div class="line">
                  <label >用户名</label>
                  <input type="text" name="userName" onblur="dataCheck()"/>
                </div>

                <div class="line" style="margin-top:20px; ">
                  <label class="login_form_name_label">密码</label>
                  <input type="password" name="password" id="password" onblur="dataCheck()"/>
                </div>

                <div class="button">登录</div>

                <label id="errorUserName" class="errorMessage">
                  <% String errorUserName = errorFields.get("errorName") == null ? "" : errorFields.get("errorName");
                  out.print(errorUserName);
                  %>
                </label><br/>
                <label id="errorPassword" class="errorMessage"><% String errorPassword = errorFields.get("errorPassword") == null ? "" : errorFields.get("errorPassword");out.print(errorPassword);%>
                </label><br/>
        <%--<input type="button" value="Login" onclick="login()">--%>
      </form>

      </div>

      <div class="login_footer">Copyright &copy; 2018 Augmentum Inc. All Rights Reserved</div>

    </div>

</body>
</html>
