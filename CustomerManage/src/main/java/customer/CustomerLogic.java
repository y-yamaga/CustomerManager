package customer;

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
        // リクエスト内の顧客情報CustomerBeanインスタンスを取得        
        int id = Integer.parseInt(request.getParameter("intId"));
        CustomerBean customerBean  = load(id);
        
        //CustomerBean customerBean = (CustomerBean)request.getAttribute(""); 
        
        //セッションスコープに顧客情報Beanを保存
        HttpSession session = request.getSession();
        session.setAttribute("Bean",customerBean);

    }
}