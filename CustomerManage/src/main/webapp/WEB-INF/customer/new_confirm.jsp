<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean class="user.UserBean" id="user" scope="session" />
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
    
        <!-- ｢入力確認｣画面 -->
		<h2>入力の確認</h2>
		<table>
			<tr>
				<td class="title">氏名</td>
				<td>${customer.name}</td>
			</tr>
			<tr>
				<td class="title">郵便番号</td>
				<td>${customer.zip}</td>
			</tr>
			<tr>
				<td class="title">住所1</td>
				<td>${customer.address1}</td>
			</tr>
			<tr>
				<td class="title">住所2</td>
				<td>${customer.address2}</td>
			</tr>
			<tr>
				<td class="title">TEL</td>
				<td>${customer.tel}</td>
			</tr>
			<tr>
				<td class="title">FAX</td>
				<td>${customer.fax}</td>
			</tr>
			<tr>
				<td class="title">E-mail</td>
				<td>${customer.email}</td>
			</tr>
		</table>
        <form action="CustomerServlet" method="post">
        	<button name="state" value="add">OK</button>
        	<input type="button" value="戻る" onclick="history.back()">
        </form>

    </div>
</body>
</html>
