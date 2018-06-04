<%@ page import="java.util.ArrayList" %>
<%@ page import="JavaBean.CompanyBean" %>
<%@ page import="DAO.CompanyDAO" %><%--
  Created by IntelliJ IDEA.
  User: KevinWang
  Date: 2018/6/2
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>
<%
    ArrayList<CompanyBean> arrayList = new CompanyDAO().getAllCompany();
    request.setAttribute("arrayList", arrayList);
%>
<table border="1">
    <tr>
        <th>公司编号</th>
        <th>登录名</th>
        <th>密码</th>
        <th>公司名称</th>
        <th>地址</th>
        <th>电话</th>
        <th>邮箱</th>
        <th>操作</th>
        <th>重置</th>
    </tr>
    <c:forEach items="${arrayList}" var="ly">
    <form method="post" action="UpdateCompany">
        <tr>
            <td><input type="text" name="companyid" value="${ly.companyid}" size="10"></td>
            <td><input type="text" name="loginname" value="${ly.loginname}" size="10"></td>
            <td><input type="text" name="secret" value="${ly.secret}" size="10"></td>
            <td><input type="text" name="companyname" value="${ly.companyname}" size="10"></td>
            <td><input type="text" name="address" value="${ly.address}" size="10"></td>
            <td><input type="text" name="phone" value="${ly.phone}" size="10"></td>
            <td><input type="text" name="email" value="${ly.email}" size="10"></td>
            <td><input type="submit" value="修改"></td>
            <td><input type="reset" value="重置"></td>
        </tr>
    </form>
    </c:forEach>
</table>
</body>
</html>