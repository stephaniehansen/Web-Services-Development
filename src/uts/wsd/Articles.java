package uts.wsd;

import javax.xml.bind.annotation.*;
import java.util.*;
import java.io.Serializable;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "articles")
public class Articles implements Serializable {

	@XmlElement(name = "article")
	private ArrayList<Article> list = new ArrayList<Article>();
	private ArrayList<Article> resultsList = new ArrayList<Article>();

	public ArrayList<Article> getList() {
		return list;
	}
	public ArrayList<Article> resultsList() {
		return resultsList;
	}

	public void addArticle(Article article) {
		list.add(article);
	}

	public void removeArticle(Article article) {
		list.remove(article);
	}
	
	public void addResult(Article article) {
		resultsList.add(article);
	}

	public Article getArticle(String title) {
		for (Article article : list) {
			if (article.getTitle().equals(title))
				return article; //If article exists, return the article
		}
		return null; //Return null if the article does not exist
	}

	public Articles getArticleCategory(String category) {
		Articles articles = new Articles();
		for (Article article : list) {
			
			//If article matches the specified category, add article to resultsList
			if (article.getCategory().equals(category))
				articles.addResult(article); 
		}
		return articles;
	}
}