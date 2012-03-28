package Service;

import Modele.AuthenticatedUser;

public interface UserService {

	boolean login(String username, String password); 
	void saveUser(AuthenticatedUser user);
	void updateUser(AuthenticatedUser user);
	AuthenticatedUser userProfile(String username);
	
}
