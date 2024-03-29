
package app.web;




import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import app.model.AuthenticatedUser;
import app.model.Playlist;
import app.model.Record;
import app.service.UserService;



@Controller
public class UserController {
	
	@Autowired
	private UserService user;
	
	@RequestMapping(value="index.html", method = RequestMethod.GET)
	public String getIndex(){
		return "index";
	}
	
	@RequestMapping(value="userLogin.html", method = RequestMethod.GET)
	public String getLoginForm(Model model){
		model.addAttribute("loginForm", new LoginForm());
		return "login";
	}

	@RequestMapping(value="validation.html", method = RequestMethod.POST)
	public ModelAndView Authentification(@ModelAttribute("loginForm") LoginForm loginForm, HttpSession session) {
		if (user.login(loginForm.getUserName(), loginForm.getPassword())==true) {
			session.setAttribute("nom", loginForm.getUserName());
			AuthenticatedUser authuser= user.getUser(loginForm.getUserName());
			Set<Playlist> playlists=authuser.getPlaylists();
			session.setAttribute("playlists", playlists);
			return new ModelAndView("index");
		}
		else {
				ModelAndView mav= new ModelAndView("login", "loginForm", new LoginForm());
				mav.addObject("message", "Mauvais Login ou Mauvais mot de passe");
				return mav;
		}
	
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
			ModelAndView mav2= new ModelAndView("register", "userForm", new UserForm());
			mav2.addObject("errorEmptyfield", "Tous les champs obligatoires n'ont pas �t� remplis");
			return mav2;
		}
		else if ((userForm.getPassword().equals(userForm.getPassword1()))==false){
			ModelAndView mav3= new ModelAndView("register", "userForm", new UserForm());
			mav3.addObject("errorPassword", "Passwords non identique");
			return mav3;
		}
		else {
			AuthenticatedUser userAuth=new AuthenticatedUser(userForm.getUsername(), userForm.getPassword(), userForm.getMail(), userForm.getFirstname(), userForm.getLastname(), userForm.getBio(), userForm.getPicture(), userForm.getWebsite(), userForm.getSocialnetwork(), false, false);
			user.saveUser(userAuth);
			session.setAttribute("nom", userForm.getUsername());
			return new ModelAndView("index");
		}
	
	}
	
	@RequestMapping(value="userProfil.html", method = RequestMethod.GET)
	public String getUserProfil(Model model, HttpSession session)
	{
		AuthenticatedUser authUser = user.getUser((String) session.getAttribute("nom")); 
		model.addAttribute("userForm", new UserForm(authUser.getUsername(),authUser.getFirstname(),authUser.getLastname(),"", authUser.getMail(),"","", authUser.getBio(),authUser.getPicture(),authUser.getWebsite(),authUser.getSocialnetwork()));
		return "profil";
	}
	
	@RequestMapping(value="modifUser.html", method = RequestMethod.POST)
	public ModelAndView modifuser(@ModelAttribute("userForm") UserForm userForm, HttpSession session) {
		AuthenticatedUser authUser = user.getUser((String) session.getAttribute("nom")); 
		user.updateUser(new AuthenticatedUser(userForm.getUsername(), authUser.getPassword(),userForm.getMail(), userForm.getFirstname(), userForm.getLastname(), userForm.getBio(), userForm.getPicture(), userForm.getWebsite(), userForm.getSocialnetwork(), false, false));
		ModelAndView mav4=new ModelAndView("profil");
		mav4.addObject("infosProfil", "Votre Profil � bien �t� mis � jour");
		return mav4;
	
	}
	
	@RequestMapping(value="trackedList.html", method = RequestMethod.GET)
	public ModelAndView getCollection(HttpSession session)
	{
		AuthenticatedUser authuser=user.getUser((String) session.getAttribute("nom"));
		Set<Record> trackedList = authuser.getRecords();
		ModelAndView mav6=new ModelAndView("tracked", "trackedList", trackedList);
		return mav6;
	}
	
}
