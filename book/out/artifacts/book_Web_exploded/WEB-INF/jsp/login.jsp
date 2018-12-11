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
        var submitForm = true;
        var userNameIsNull = false;
        var passwordIsNull = false;

        var userNameObj = document.getElementById("userName");
        var userNameValue =userNameObj.value;

        var errorMsg = "";
        var errorMsgObj=document.getElementById("errorMsg");

        if (!userNameValue) {
            userNameIsNull = true;
            errorMsg = "请输入用户名";
            submitForm = false;
            userNameObj.style.cssText = "border:1px solid #EB340A;";
        } else {
            userNameObj.style.cssText = "border: 1px solid #858585"
        }

        var passwordObj = document.getElementById("password");
        var passwordValue = passwordObj.value;
        if (!passwordValue) {
            passwordIsNull = true;
            errorMsg = "请输入密码";
            passwordObj.style.cssText = "border:1px solid #EB340A;";
            submitForm = false;
        } else {
            passwordObj.style.cssText = "border: 1px solid #858585"
        }
        if (userNameIsNull && passwordIsNull) {
            errorMsg = "请输入用户名和密码";
        }
        if (submitForm) {
            formObj.submit();
        } else {
            errorMsgObj.innerHTML = errorMsg;
            errorMsgObj.style.visibility="visible";
        }
    }
  </script>
</head>
<body class="background_img">
    <%
      String tipMessage = (String) request.getAttribute(LoginConstants.TIP_MESSAGE);
      String visibility = "hidden";
      if (tipMessage != null && !tipMessage.equals("")) {
          visibility = "visible";
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
                  <input type="text" name="userName" id="userName"/>
                </div>

                <div class="line" style="margin-top:20px; ">
                  <label >密码</label>
                  <input type="password" name="password" id="password" />
                </div>
                <div id="errorMsg" class="line" style="margin-top: 10px;visibility: <%=visibility %>;color: #EB340A;font-size: 14px"  >
                <%=tipMessage%>
                </div>
                <div class="button" onclick="login()">登录</div>
      </form>

      </div>

      <div class="login_footer">Copyright &copy; 2018 Augmentum Inc. All Rights Reserved</div>
    </div>

</body>
</html>
