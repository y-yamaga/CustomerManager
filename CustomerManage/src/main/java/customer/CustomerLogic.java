package customer;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.CustomerDao;
import util.LogUtil;

/**
 * 顧客情報のロジック
 */
public class CustomerLogic {

    /**
     * DAO経由で顧客情報をDBから取得する
     * @param id 取得する顧客情報のID
     * @return 顧客情報Bean
     */
    public CustomerBean load(int id) {
        LogUtil.println(this.getClass().getSimpleName() + "#load");

        CustomerDao customerDao = new CustomerDao();
        CustomerBean customer = customerDao.load(id);

        return customer;
    }

    /**
     * DAO経由で顧客情報をDBに追加する
     * @param customer 顧客情報Bean
     * @return エラーメッセージ(処理成功時、null)
     */
    public String add(CustomerBean customer) {
        LogUtil.println(this.getClass().getSimpleName() + "#add");

        // TODO 未実装
        // CustomerDaoインスタンスのaddメソッドの実行
        CustomerDao customerDao = new CustomerDao();
        String errMsg = customerDao.add(customer);
        if (errMsg != null) {
        	return errMsg;
        }
        return null;
    }

    /**
     * DAO経由でDBの顧客情報を更新する
     * @param customer 顧客情報Bean
     * @return エラーメッセージ(処理成功時、null)
     */
    public String update(CustomerBean customer) {
        LogUtil.println(this.getClass().getSimpleName() + "#update");

        // TODO 未実装
        // CustomerDaoインスタンスのupdateメソッドの実行
        CustomerDao customerDao = new CustomerDao();
        String errMsg  = customerDao.update(customer);
        if (errMsg != null) {
        	return errMsg;
        }
        return null;
    }

    /**
     * DAO経由でDBの顧客情報を削除する
     * @param customer 顧客情報Bean
     * @return エラーメッセージ(処理成功時、null)
     */
    public String delete(CustomerBean customer) {
        LogUtil.println(this.getClass().getSimpleName() + "#delete");
        // TODO 未実装
        // CustomerDaoインスタンスのdeleteメソッドの実行
        CustomerDao customerDao = new CustomerDao();
        String errMsg  = customerDao.delete(customer.getId());
        if (errMsg != null) {
        	return errMsg;
        }
        return null;
    }

    /**
     * リクエスト内の顧客情報をセッションに顧客情報Beanとして設定する
     * @param request 顧客情報を含むリクエスト
     */
    public void setCustomerBeanFromRequestToSession(HttpServletRequest request) {
        LogUtil.println(this.getClass().getSimpleName() + "#setCustomerBeanFromRequestToSession");

        // TODO 未実装
        // セッションcustomerがnullでないか確認
        HttpSession session = request.getSession();
        CustomerBean customer = (CustomerBean)session.getAttribute("customer");
        if (customer == null) {
            customer = new CustomerBean();
        }
        
        // リクエストパラメーターを取得しインスタンス生成
    	try {
			request.setCharacterEncoding("UTF-8");
			String strName = request.getParameter("strName");
	    	String strZip = request.getParameter("strZip");
	    	String strAddress1 = request.getParameter("strAddress1");
	    	String strAddress2 = request.getParameter("strAddress2");
	    	String strTel = request.getParameter("strTel");
	    	String strFax = request.getParameter("strFax");
	    	String strEmail = request.getParameter("strEmail");
	    	
	    	// 更新箇所の値を変更（空白は変更しない）
	    	if (strName != null && !strName.isEmpty()) {
	    		customer.setName(strName);
	    	}
	    	if (strZip != null && !strZip.isEmpty()) {
	    		customer.setZip(strZip);
	    	}
	    	if (strAddress1 != null && !strAddress1.isEmpty()) {
	    		customer.setAddress1(strAddress1);
	    	}
	    	if (strAddress2 != null && !strAddress2.isEmpty()) {
	    		customer.setAddress2(strAddress2);
	    	}
	    	if (strTel != null && !strTel.isEmpty()) {
	    		customer.setTel(strTel);
	    	}
	    	if (strFax != null && !strFax.isEmpty()) {
	    		customer.setFax(strFax);
	    	}
	    	if (strEmail != null && !strEmail.isEmpty()) {
	    		customer.setEmail(strEmail);
	    	}
	    	
	    	// 変更後の顧客情報をセッションに保存
	    	session.setAttribute("customer", customer);
	    	
		} catch (UnsupportedEncodingException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
    	
    }
}