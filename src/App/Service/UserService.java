package app.service;

import java.util.List;

import app.model.AuthenticatedUser;
import app.model.Record;
	


public interface UserService {

	boolean login(String login, String pass); 
	void saveUser(AuthenticatedUser user);
	void updateUser(AuthenticatedUser user);
	AuthenticatedUser getUser(String login);
	
}
