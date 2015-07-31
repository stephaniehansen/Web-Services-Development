package uts.wsd;

import javax.xml.bind.annotation.*;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.*;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "article")
public class Article implements Serializable {
	@XmlElement(name = "title")
	private String title;
	@XmlElement(name = "author")
	private String author;
	@XmlElement(name = "startDate")
	private String startDate;
	@XmlElement(name = "category")
	private String category;
	@XmlElement(name = "leadText")
	private String leadText;
	@XmlElement(name = "fullText")
	private String fullText;
	@XmlElement(name = "visibility")
	private String visibility;
	@XmlElement(name = "articleImage")
	private String articleImage;

	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Article(String title, String author, String startDate,
			String category, String leadText, String fullText,
			String visibility, String articleImage) {
		super();
		this.title = title;
		this.author = author;
		this.startDate = startDate;
		this.category = category;
		this.leadText = leadText;
		this.fullText = fullText;
		this.visibility = visibility;
		this.articleImage = articleImage;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getCategory() {
		category = category.substring(0, 1).toUpperCase() + category.substring(1);
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getLeadText() {
		return leadText;
	}

	public void setLeadText(String leadText) {
		this.leadText = leadText;
	}

	public String getFullText() {
		return fullText;
	}

	public void setFullText(String fullText) {
		this.fullText = fullText;
	}

	public String getVisibility() {
		return visibility;
	}

	public void setVisibility(String visibility) {
		this.visibility = visibility;
	}

	public String getArticleImage() {
		return articleImage;
	}

	public void setArticleImage(String articleImage) {
		this.articleImage = articleImage;
	}

}
