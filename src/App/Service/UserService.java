package App.Service;

import App.Modele.AuthenticatedUser;

public interface UserService {

	boolean login(String login, String pass); 
	void saveUser(AuthenticatedUser user);
	void updateUser(AuthenticatedUser user);
	AuthenticatedUser userProfile(String login);
	
}
