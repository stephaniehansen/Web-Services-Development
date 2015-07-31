package uts.wsd;

import java.io.Serializable;

public class Author implements Serializable {
	private String name;
	private String email;
	private String password;
	private String dob;
	private String bio;
	private String profileImage;

	public Author() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Author(String name, String email, String password, String dob,
			String bio, String profileImage) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.dob = dob;
		this.bio = bio;
		this.profileImage = profileImage;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	public String getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
}
