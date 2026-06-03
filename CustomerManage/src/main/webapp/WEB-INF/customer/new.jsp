<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean class="user.UserBean" id="user" scope="session" />
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

        <!-- TODO ｢新規登録｣画面 -->
    <h2>新規登録</h2>
        <form name="form1" action="CostomerServlet" method="post"
            onsubmit="return funcConfirm()">
            <table>
                <tr>
                    <td class="title">氏名</td>
                    <td><input type="text" name="customer_name" maxlength="20"></td>
                </tr>
                <tr>
                    <td class="title">郵便番号</td>
                    <td><input type="text" name="zipcode" maxlength="20"></td>
                </tr>
                <tr>
                    <td class="title">住所1</td>
                    <td><input type="text" name="address1" maxlength="100"></td>
                </tr>
                <tr>
                    <td class="title">住所2</td>
                    <td><input type="text" name="address2"></td>
                </tr>
                <tr>
                    <td class="title">TEL</td>
                    <td><input type="text" name="telephone" maxlength="20"></td>
                </tr>
                <tr>
                    <td class="title">FAX</td>
                    <td><input type="text" name="fax_number" maxlength="20"></td>
                </tr>
                <tr>
                    <td class="title">E-mail</td>
                    <td><input type="text" name="email" maxlength="100"></td>
                </tr>
            </table>
            <p>
                <!--
                <input type="submit" value="送信">
             -->
                <button name="state" value="add">送信</button>
                <input type="button" value="戻る" onclick="history.back()">
            </p>
        </form>
    </div>
</body>
<script type="text/javascript">
    function funcConfirm() {

        // TODO バリデーションチェック･alertダイアログ処理
        
    	// 1. 氏名のチェック
        if (document.form1.customer_name.value.trim() == "") {
            alert("氏名が入力されていません。");
            return false;
        }

        // 2. 郵便番号のチェック
        if (document.form1.zipcode.value.trim() == "") {
            alert("郵便番号が入力されていません。");
            return false;
        }

        // 3. 住所1のチェック
        if (document.form1.address1.value.trim() == "") {
            alert("住所1が入力されていません。");
            return false;
        }

        // 4. 住所2のチェック
        if (document.form1.address2.value.trim() == "") {
            alert("住所2が入力されていません。");
            return false;
        }

        // 5. TELのチェック
        if (document.form1.telephone.value.trim() == "") {
            alert("TELが入力されていません。");
            return false;
        }

        // 6. FAXのチェック
        if (document.form1.fax_number.value.trim() == "") {
            alert("FAXが入力されていません。");
            return false;
        }

        // 7. E-mailのチェック
        if (document.form1.email.value.trim() == "") {
            alert("E-mailが入力されていません。");
            return false;
        }

        // すべての必須項目が入力されている場合のみ送信
        return true; 
    }
</script>
</html>
