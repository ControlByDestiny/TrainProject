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
    <link href="${pageContext.request.contextPath}/static/style/reset.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/static/style/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div id="wrapper" >
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
        <div id="main" >
            <div id="left" >
                <!--用户信息开始-->
                <div class="user_info">
                    <div class="user_header">
                        <img src="${pageContext.request.contextPath}/static/images/MyBooks_IMG_DefaultAvatar_64x64.png" >
                        <div class="user_name">Dylan</div>
                    </div>

                    <div class="user_basis">
                        <div class="tip"><label>基本资料</label><img src="${pageContext.request.contextPath}/static/images/BTN_Edit_20x20.png" ></div>
                        <ul >
                            <li><label>部门&nbsp;:&nbsp;</label><span>开发部</span></li>
                            <li><label>电话&nbsp;:&nbsp;</label><span>15247128384</span></li>
                            <li><label>邮箱&nbsp;:&nbsp;</label><span>986641202@qq.com</span></li>
                            <li><label>地址&nbsp;:&nbsp;</label><span>内蒙古自治区呼和浩特市金川经济技术开发区内蒙古工业大学</span></li>
                        </ul>
                    </div>
                </div>
                <!--用户信息结束-->
                <div class="user_message">
                    <div class="my_message"><label>我的消息</label><label class="tip_count">5</label> </div>
                    <div class="my_request"><label>借书请求</label><label class="tip_count">6</label> </div>
                </div>
            </div>
            <div id="content" ></div>
        </div>
        <div id="footer" ></div>
    </div>
</body>
</html>
