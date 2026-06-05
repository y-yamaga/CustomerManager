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

        <!-- TODO ｢既存データ編集･削除｣画面 -->
        <h2>既存データの編集</h2>
        <!-- アラートを出すためformにname属性つけました -->
        <form name="form_edit" action="CustomerServlet" method="post"
            onsubmit="return funcConfirm()">
            <table>
            <tr>
                    <td class="title">氏名</td>
                    <td><input type="text" name="strName" maxlength="20"></td>
            </tr>
            <tr>
                    <td class="title">郵便番号</td>
                    <td><input type="text" name="strZip" maxlength="20"></td>
            </tr>
            <tr>
                    <td class="title">住所1</td>
                    <td><input type="text" name="strAddress1" maxlength="100"></td>
            </tr>
            <tr>
                    <td class="title">住所2</td>
                    <td><input type="text" name="strAddress2" maxlength="100"></td>
            </tr>
            <tr>
                    <td class="title">TEL</td>
                    <td><input type="text" name="strTel" maxlength="20"></td>
            </tr>
            <tr>
                    <td class="title">FAX</td>
                    <td><input type="text" name="strFax" maxlength="20"></td>
            </tr>
            <tr>
                    <td class="title">E-mail</td>
                    <td><input type="email" name="strEmail" maxlength="100"></td>
            </tr>
            </table>
            <p>
            	 <button name="state"  value="edit_confirm,<%=customer.getId()%>">送信</button>
                <input type="button" value="戻る" onclick="history.back()">
            </p>
        </form>
        </table>
        <!-- //TODO ｢既存データ編集｣画面 -->

    </div>
</body>
<script type="text/javascript">
    function funcConfirm() {

        // TODO バリデーションチェック･alertダイアログ処理
        /* 空文字一旦保留
        if (document.form_edit.strName.value == "") {
                alert("氏名が入力されていません。");
                return false;
            }
        if(document.form_edit.strZip.value == ""){
       	 alert("郵便番号が入力されていません。");
            return false;
           }
        */
     	// 正規表現パターン郵便番号
        if (!document.form_edit.strZip.value.match(/^\d{3}-\d{4}$/)) {
            alert("郵便番号形式ではありません。文字数を確認の上、ハイフンをいれてください。");
            return false;
        }
        /*
        if(document.form_edit.strAddress1.value == ""){
          	 alert("住所1が入力されていません。");
               return false;
             }
        if(document.form_edit.strAddress2.value == ""){
         	 alert("住所2が入力されていません。");
              return false;
            }
        if(document.form_edit.strTel.value == ""){
        	 alert("TELが入力されていません。");
             return false;
           } 
        */
        //正規表現パターン電話番号形式
        const regexStrict = /^(0[1-9]\d{0,3})-\d{1,4}-\d{4}$/;
        if (!document.form_edit.strTel.value.match(regexStrict)) {
            alert("電話番号形式ではありません。ハイフンをいれてください。");
            return false;
        } 
        /*
        if(document.form_edit.strFax.value == ""){
       	 alert("FAXが入力されていません。");
            return false;
          }
         */
          
        if (!document.form_edit.strFax.value.match(regexStrict)) {
            alert("FAX番号形式ではありません。ハイフンをいれてください。");
            return false;
        }
         
         /*
        if(document.form_edit.strEmail.value == ""){
          	 alert("メールアドレスが入力されていません。");
               return false;
             }
        */

        //TODO バリデーションチェック･alertダイアログ処理

    }
</script>
</html>
