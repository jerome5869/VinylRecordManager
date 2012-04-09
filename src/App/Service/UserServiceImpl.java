package app.service;



import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import app.model.AuthenticatedUser;


@Service("UserService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private SessionFactory sessionFactory;
	

	public boolean login(String login, String pass) {
		Criteria crit = sessionFactory.getCurrentSession().createCriteria(AuthenticatedUser.class);
		 crit.add( Restrictions.eq("username", login));
		 crit.add( Restrictions.eq("password", pass));
		 AuthenticatedUser user=(AuthenticatedUser) crit.uniqueResult();
		 return (user!=null);
		
	}

	@Override
	public void saveUser(AuthenticatedUser user) {
		sessionFactory.getCurrentSession().save(user);
	}

	@Override
	public void updateUser(AuthenticatedUser user) {
		sessionFactory.getCurrentSession().update(user);
	}
	
	@Override
	public AuthenticatedUser userProfile(String username) {
		return (AuthenticatedUser) sessionFactory.getCurrentSession().get(AuthenticatedUser.class,username);
		
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


}
