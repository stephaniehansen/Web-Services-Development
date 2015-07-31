package uts.wsd;

import javax.xml.bind.annotation.*;
import java.util.*;
import java.io.Serializable;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "authors")
public class Authors implements Serializable {

	@XmlElement(name = "author")
	private ArrayList<Author> list = new ArrayList<Author>();

	public ArrayList<Author> getList() {
		return list;
	}

	public void addAuthor(Author author) {
		list.add(author);
	}

	public void removeAuthor(Author author) {
		list.remove(author);
	}

	public Author login(String email, String password) {
		for (Author author : list) {
			if (author.getEmail().equals(email)
					&& author.getPassword().equals(password))
				return author; // Login correct. Return this user.
		}
		return null; // Login incorrect. Return null.
	}

	public boolean alreadyRegistered(String email) {
		for (Author author : list) {
			if (author.getEmail().equals(email))
				return true; // Email is already registered
		}
		return false; // Email is not registered
	}

	public Author getAuthor(String name) {
		for (Author author : list) {
			if (author.getName().equals(name))
				return author;
		}
		return null;
	}
}