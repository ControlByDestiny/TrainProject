<%@ page import="com.william.model.User" %>
<%@ page import="com.william.LoginConstants" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: 袁学恒
  Date: 2018/11/21
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Welcome</title>
  <script type="text/javascript">
    var today = new Date();
    var week = ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
    var year;
    var month;
    var date;
    var day;
    var hours;
    var min;
    var seconds;

    function startTime() {
      year = today.getFullYear();
      month = today.getMonth() + 1;
      date = today.getDate();
      day = today.getDay();
      hours = today.getHours();
      min = today.getMinutes();
      seconds = today.getSeconds();
      // add a zero in front of numbers<10
      document.getElementById("hour").innerHTML = checkTime(hours);
      document.getElementById("min").innerHTML = checkTime(min);
      document.getElementById("seconds").innerHTML = checkTime(seconds);
      document.getElementById("year").innerHTML = year + "";
      document.getElementById("month").innerHTML = checkTime(month);
      +"";
      document.getElementById("date").innerHTML = checkTime(date) + "";
      document.getElementById("week").innerHTML = week[day] + "";
      displayTime();
    }

    function displayTime() {
      if (seconds + 1 >= 60) {
        seconds = 0;
        min++;
        document.getElementById("min").innerHTML = checkTime(min);
      }
      if (min + 1 >= 60) {
        min = 0;
        hours++;
        document.getElementById("hour").innerHTML = checkTime(hours);
      }
      if (hours + 1 >= 12) {
        hours = 0;
        date++;
        day++;
        document.getElementById("date").innerHTML = checkTime(date);
        document.getElementById("week").innerHTML = week[day] + "";
      }
      document.getElementById("seconds").innerHTML = checkTime(seconds);
      seconds++;
    }
    window.setInterval("displayTime()",1000);
    function checkTime(i) {
      if (i < 10) {
        i = "0" + i
      }
      return i
    }
  </script>
</head>

<body onload="startTime()">
<label id="hour"></label>:<label id="min"></label>:<label id="seconds"></label>
<br/>
<label id="year"></label>年<label id="month"></label>月<label id="date"></label>日&nbsp;&nbsp;<label id="week"></label>
<br/>
<% User user = (User) session.getAttribute(LoginConstants.USER); %>
Welcome <%=user.getUserName()%>
</body>
</html>
