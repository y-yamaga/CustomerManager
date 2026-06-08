<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean class="customer.CustomerBean" id="customer" scope="session" />
<!doctype html>
<html>
<head>
<title>顧客管理</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/style.css">
</head>
<body>
    <h1>顧客管理</h1>
    <div class="main">

        <!-- ｢削除確認｣画面 -->
        <h2>削除の確認</h2>
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
        		<!-- 現在使用していません
        		<input type="hidden" name="strName" value="<%=customer.getName()%>">
        		<input type="hidden" name="strZip" value="<%=customer.getZip()%>">
        		<input type="hidden" name="strAddress1" value="<%=customer.getAddress1()%>">
        		<input type="hidden" name="strAddress2" value="<%=customer.getAddress2()%>">
        		<input type="hidden" name="strTel" value="<%=customer.getTel()%>">
        		<input type="hidden" name="strFax" value="<%=customer.getFax()%>">
        		<input type="hidden" name="strEmail" value="<%=customer.getEmail()%>">
        		-->
        		<input type="hidden" name="token" value="${deleteToken}">
        	</p>
        	<p>
        		<button typy="button" name="state" value="delete">OK</button>
        		<input type="button" value="戻る" onclick="history.back()">
        	</p>
        </form>
    </div>
</body>