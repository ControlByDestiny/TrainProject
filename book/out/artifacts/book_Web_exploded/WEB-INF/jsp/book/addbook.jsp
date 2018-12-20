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
    <title>添加图书</title>
    <link href="${pageContext.request.contextPath}/static/style/reset.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/static/style/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="wrapper" id="myBookPage">
        <div id="header_wrapper">
            <div id="header" >
                <div class="logo" >图书分享</div>
                <div class="menu" >
                    <ul>
                        <li ><a href="#">我的图书</a></li>
                        <li ><a href="#" style="background-color: #286C85;">全部图书</a></li>
                    </ul>
                </div>
                <div class="tool" >
                    <input name="searchKey" type="text">
                    <img class="search_button" src="${pageContext.request.contextPath}/static/images/BTN_Search_30x30.png" />
                    <img class="role_switch_button" src="${pageContext.request.contextPath}/static/images/BTN_SwitchRole_User_32x32.png" />
                </div>
            </div>
        </div>
        <div id="breadcrumb" >
            <ul>
                <li>当前位置&nbsp;&nbsp;:</li>
                <li><a href="#">我的图书</a></li>
            </ul>
        </div>
        <div class="main" id="addBookMain">
            <form id="editBook" method="post" action="/book/saveBook">
                <div class="info_area">
                    <div class="title">1、上传高清图书封面图片</div>
                    <div class="show_img"></div>
                </div>
                <div class="info_area">
                    <div class="title">2、编写书籍资料</div>
                    <ul>
                        <li><label>书名&nbsp;:&nbsp;&nbsp;&nbsp;</label><span><input type="text" name="bookName"></span></li>
                        <li><label>作者&nbsp;:&nbsp;&nbsp;&nbsp;</label><span><input type="text" name="bookAuthor"></span></li>
                        <li><label>简介&nbsp;:&nbsp;&nbsp;&nbsp;</label><span><textarea rows="5" cols="5" name="desc"></textarea>&nbsp;&nbsp;</span></li>
                    </ul>
                    <div class="button" onclick="addBook()">添加图书</div>
                </div>
            </form>
        </div>
        <div id="footer" ></div>
    </div>
</body>
</html>
