package essai;


import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;



@SuppressWarnings("deprecation")
public class HibernateUtils {

private static final SessionFactory sessionFactory;
    
    static {
        try {           
            sessionFactory = new Configuration().configure().buildSessionFactory();
        } catch (Throwable e) {
            System.err.println("Error in creating SessionFactory object." 
                + e.getMessage());
            throw new ExceptionInInitializerError(e);
        }
    }
    
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
	
}
