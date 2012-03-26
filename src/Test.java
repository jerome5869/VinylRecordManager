import org.hibernate.Session;
import org.hibernate.Transaction;



public class Test {

	public static void main(String[] args) {
	Session session = HibernateUtils.getSessionFactory().openSession();
	Transaction tran = session.beginTransaction();
	//Artist art = new Artist(12122, "paul", "dubois");
	//Integer id = (Integer) session.save(art);
	tran.commit();
	session.close();
	
}	
}