<%@ page import="java.util.ArrayList" %>
<%@ page import="JavaBean.EvaluationBean" %>
<%@ page import="DAO.EvaluationDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: machenike
  Date: 2018/6/12 0012
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int companyid = Integer.parseInt(request.getParameter("companyid"));
    ArrayList<EvaluationBean> arrayList = new EvaluationDAO().getCompanyEvaluation("select * from evaluation where companyid="+companyid);
    request.setAttribute("arrayList", arrayList);
%>
<table border="1" align="center" style="text-align:center">
    <tr>
        <th>评价编号</th>
        <th>用户编号</th>
        <th>物流公司编号</th>
        <th>订单编号</th>
        <th>时间</th>
        <th>标题</th>
        <th>评论内容</th>
        <th>评论图片</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${arrayList}" var="ly">
        <form>
            <tr>
                <td><input type="text" name="evaluationId" value="${ly.evaluationId}" size="10" readOnly="true"></td>
                <td><input type="text" name="userId" value="${ly.userId}" size="10" readOnly="true"></td>
                <td><input type="text" name="companyId" value="${ly.companyId}" size="10" readOnly="true"></td>
                <td><input type="text" name="orderId" value="${ly.orderId}" size="10" readOnly="true"></td>
                <td><input type="text" name="time" value="${ly.time}" size="10" readOnly="true"></td>
                <td style="size: 20px">${ly.title}</td>
                <td>${ly.content}</td>
                <td><img src="/up_img/${ly.photo1}" width="160" height="120"></td>
                <td><input type="button"
                           onclick="window.location.href='DeleteEvaluation?id=${ly.evaluationId}'"
                           value="删除"></td>
            </tr>
        </form>
    </c:forEach>
</table>
</body>
</html>
