package app.web;

public class UserForm {

	private String username;
	private String firstname;
	private String lastname;
	private String language;
	private String mail;
	private String password;
	private String password1;
	private String bio;
	private String picture;
	private String website;
	private String socialnetwork;
	
	public UserForm (String username, String firstname, String lastname, String language, String mail, String password, String password1, String bio, String picture, String website, String socialnetwork){
		this.username=username;
		this.firstname=firstname;
		this.lastname=lastname;
		this.language=language;
		this.mail=mail;
		this.password=password;
		this.password1=password1;
		this.bio=bio;
		this.picture=picture;
		this.website=website;
		this.socialnetwork=socialnetwork;
	}
	
	public UserForm (){
		this.username=null;
		this.firstname=null;
		this.lastname=null;
		this.language=null;
		this.mail=null;
		this.password=null;
		this.password1=null;
		this.bio=null;
		this.picture=null;
		this.website=null;
		this.socialnetwork=null;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword1() {
		return password1;
	}
	public void setPassword1(String password1) {
		this.password1 = password1;
	}
	public String getBio() {
		return bio;
	}
	public void setBio(String bio) {
		this.bio = bio;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getSocialnetwork() {
		return socialnetwork;
	}
	public void setSocialnetwork(String socialnetwork) {
		this.socialnetwork = socialnetwork;
	}
	
	
}
