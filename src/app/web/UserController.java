
package app.web;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import app.model.AuthenticatedUser;
import app.service.UserService;




@Controller
public class UserController {
	
	@Autowired
	private UserService user;
	
	@RequestMapping(value="userLogin.html", method = RequestMethod.GET)
	public String getLoginForm(Model model)
	{
		model.addAttribute("loginForm", new LoginForm());
		System.out.println("bullshit");
		return "login";
	}

	@RequestMapping(value="validation.html", method = RequestMethod.POST)
	public ModelAndView Authentification(@ModelAttribute("loginForm") LoginForm loginForm, HttpSession session) {
		if (user.login(loginForm.getUserName(), loginForm.getPassword())==true) {
				session.setAttribute("nom", loginForm.getUserName());
				System.out.println("kjvsskv");
				return new ModelAndView("index");}
				else {
					System.out.println("dvdg");
					ModelAndView mav= new ModelAndView("login", "loginForm", new LoginForm());
					mav.addObject("message", "Mauvais Login ou Mauvais mot de passe");
					return mav;}
	
	}
	
	@RequestMapping(value="userRegister.html", method = RequestMethod.GET)
	public String getUserForm(Model model)
	{
		model.addAttribute("userForm", new UserForm());
		System.out.println("polytech");
		return "register";
	}
	
	@RequestMapping(value="ajoutUser.html", method = RequestMethod.POST)
	public ModelAndView ajoutUser(@ModelAttribute("userForm") UserForm userForm, HttpSession session) {
		
		if (userForm.getUsername().isEmpty() || userForm.getPassword().isEmpty() || userForm.getPassword1().isEmpty() || userForm.getLastname().isEmpty() || userForm.getFirstname().isEmpty()){
			
			System.out.println("fgszgf");
			ModelAndView mav2= new ModelAndView("register", "userForm", new UserForm());
			mav2.addObject("errorEmptyfield", "Tous les champs obligatoires n'ont pas été remplis");
			return mav2;
		}
		else if ((userForm.getPassword().equals(userForm.getPassword1()))==false){
			System.out.println("cfsfvdv");
			ModelAndView mav3= new ModelAndView("register", "userForm", new UserForm());
			mav3.addObject("errorPassword", "Passwords non identique");
			return mav3;
		}
		else {
			AuthenticatedUser userAuth=new AuthenticatedUser(userForm.getUsername(), userForm.getPassword(), userForm.getMail(), userForm.getFirstname(), userForm.getLastname(), userForm.getBio(), userForm.getPicture(), userForm.getWebsite(), userForm.getSocialnetwork(), false, false);
			user.saveUser(userAuth);
			session.setAttribute("nom", userForm.getUsername());
			System.out.println("new user");
			return new ModelAndView("index");
		}
	
	}
	
	@RequestMapping(value="userProfil.html", method = RequestMethod.GET)
	public String getUserProfil(Model model, HttpSession session)
	{
		AuthenticatedUser authUser = user.userProfile((String) session.getAttribute("nom")); 
		model.addAttribute("userForm", new UserForm(authUser.getUsername(),authUser.getFirstname(),authUser.getLastname(),"", authUser.getMail(),"","", authUser.getBio(),authUser.getPicture(),authUser.getWebsite(),authUser.getSocialnetwork()));
		System.out.println("chargemnent");
		return "profil";
	}
	
	@RequestMapping(value="modifUser.html", method = RequestMethod.POST)
	public ModelAndView modifuser(@ModelAttribute("userForm") UserForm userForm, HttpSession session) {
		AuthenticatedUser authUser = user.userProfile((String) session.getAttribute("nom")); 
		user.updateUser(new AuthenticatedUser(userForm.getUsername(), authUser.getPassword(),userForm.getMail(), userForm.getFirstname(), userForm.getLastname(), userForm.getBio(), userForm.getPicture(), userForm.getWebsite(), userForm.getSocialnetwork(), false, false));
		ModelAndView mav4=new ModelAndView("profil");
		mav4.addObject("infosProfil", "Votre Profil à bien été mis à jour");
		return mav4;
	
	}
}
