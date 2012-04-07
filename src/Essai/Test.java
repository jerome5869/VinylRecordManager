package essai;

import org.hibernate.Session;
import org.hibernate.Transaction;





public class Test {

	public static void main(String[] args) {
	Session session = HibernateUtils.getSessionFactory().openSession();
	Transaction tran = session.beginTransaction();
	Object[] params = {"jerome5869", "8K5ERRCL"};
	session.createFilter(params, "from authenticated_user where username=? and password=?");
	tran.commit();
	session.close();
	}	
}