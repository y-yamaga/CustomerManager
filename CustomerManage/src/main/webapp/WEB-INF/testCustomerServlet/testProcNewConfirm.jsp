<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>new_confirm</title>
</head>
<body>
	<form action="CustomerServlet" method="post">
		氏名<input type="text" name="strName"><br>
		郵便番号<input type="text" name="strZip"><br>
		住所１<input type="text" name="strAddress1"><br>
		住所２<input type="text" name="strAddress2"><br>
		TEL<input type="text" name="strTel"><br>
		FAX<input type="text" name="strFax"><br>
		Email<input type="text" name="strEmail"><br>
		<button name="state" value="new_confirm">送信</button>
	</form>
</body>
</html>