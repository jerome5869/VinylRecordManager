package Service;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import Modele.AuthenticatedUser;
@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean login(String username, String password) {
		Object[] params = {username, password};
		return sessionFactory.getCurrentSession().createFilter(params,"From authenticated_user Where username=? and password=?") != null;
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
	return (AuthenticatedUser) sessionFactory.getCurrentSession().load(AuthenticatedUser.class,username);
		
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


}
