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
		<table>
			<tr>
				<th colspan="2">入力の確認</th>
			</tr>
			<tr>
				<td>氏名</td>
				<td>${customer.name}</td>
			</tr>
			<tr>
				<td>郵便番号</td>
				<td>${customer.zip}</td>
			</tr>
			<tr>
				<td>住所1</td>
				<td>${customer.address1}</td>
			</tr>
			<tr>
				<td>住所2</td>
				<td>${customer.address2}</td>
			</tr>
			<tr>
				<td>TEL</td>
				<td>${customer.tel}</td>
			</tr>
			<tr>
				<td>FAX</td>
				<td>${customer.fax}</td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td>${customer.email}</td>
			</tr>
		</table>
        <form action="CustomerServlet" method="post">
        	<button name="state" value="add">登録</button>
        </form>

    </div>
</body>
</html>
