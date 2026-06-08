<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="user.UserBean" id="user" scope="session" />
<jsp:useBean class="customer.CustomerBean" id="customer" scope="session" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>顧客管理</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/style.css">
</head>
<body>
    <h1>顧客管理</h1>
    <div class="main">

        <!-- ｢編集確認｣画面 -->
        <h2>修正の確認</h2>
        <table>
        	<tr>
                <td class="title">氏名</td>
                <td><%=customer.getName()%></td>
            </tr>
            <tr>
                <td class="title">郵便番号</td>
                <td><%=customer.getZip()%></td>
            </tr>
            <tr>
                <td class="title">住所1</td>
                <td><%=customer.getAddress1()%></td>
            </tr>
            <tr>
                <td class="title">住所2</td>
                <td><%=customer.getAddress2()%></td>
            </tr>
            <tr>
                <td class="title">TEL</td>
                <td><%=customer.getTel()%></td>
            </tr>
            <tr>
                <td class="title">FAX</td>
                <td><%=customer.getFax()%></td>
            </tr>
            <tr>
                <td class="title">E-mail</td>
                <td><%=customer.getEmail()%></td>
            </tr>
        </table>
        <form action="CustomerServlet" method="post">
        <!--  隠しパラメーターとしてリクエストする値  -->
        	<p style="display:none;">
        		<input tytpe="hidden" name="strName" vlue="<%=customer.getName()%>">
        		<input tytpe="hidden" name="strZip" vlue="<%=customer.getZip()%>">
        		<input tytpe="hidden" name="strAddress1" vlue="<%=customer.getAddress1()%>">
        		<input tytpe="hidden" name="strAddress2" vlue="<%=customer.getAddress2()%>">
        		<input tytpe="hidden" name="strTel" vlue="<%=customer.getTel()%>">
        		<input tytpe="hidden" name="strFax" vlue="<%=customer.getFax()%>">
        		<input tytpe="hidden" name="strEmail" vlue="<%=customer.getEmail()%>">
        		<input type="hidden" name="token" value="${editToken}">
        	</p>
        	<p>
        		<button typy="button" name="state" value="update,<%=customer.getId()%>">OK</button>
        		<input type="button" value="戻る" onclick="history.back()">
        	</p>
        </form>

    </div>
</body>
</html>
