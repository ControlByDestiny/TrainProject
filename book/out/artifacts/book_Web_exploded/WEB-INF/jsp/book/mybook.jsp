<%--
  Created by IntelliJ IDEA.
  User: dylan
  Date: 18-12-4
  Time: 下午4:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的图书</title>
    <link href="${pageContext.request.contextPath}/static/style/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div id="wrapper" >
        <div id="header" >
            <div class="logo" >
                这是Logo部分
            </div>
            <div class="menu" >
               <ul>
                   <li ><a href="#">我的图书</a></li>
                   <li ><a href="#">全部图书</a></li>
               </ul>
            </div>
            <div class="tool" >这是Tool部分</div>
        </div>
        <div id="breadcrumb" ></div>
        <div id="main" >
            <div id="left" ></div>
            <div id="content" ></div>
        </div>
        <div id="footer" ></div>
    </div>
</body>
</html>
