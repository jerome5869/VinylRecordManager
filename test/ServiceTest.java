
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import App.Modele.AuthenticatedUser;
import App.Service.UserService;


public class ServiceTest {

	private static ClassPathXmlApplicationContext context;
	private static UserService userService;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		context=new ClassPathXmlApplicationContext("application-context.xml");
		userService = (UserService) context.getBean("UserService");
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		context.close();
	}

	@Test
	public void testLogin() {
		System.out.println(userService.login("jerome5869", "root"));
	}

	@Test
	public void testSaveUser() {
		AuthenticatedUser user=new AuthenticatedUser("username", "password", "mail", "firstname", "lastname", false, false);
		userService.saveUser(user);
	}

	@Test
	public void testUpdateUser() {
		AuthenticatedUser user=new AuthenticatedUser("username", "password", "ddgdssgserh", "rthshrshreh", "lastname", false, false);
		userService.updateUser(user); 
	}
		

	@Test
	public void testUserProfile() {
		AuthenticatedUser a=userService.userProfile("jerome5869");
		System.out.println(a.getFirstname());
	}

}
