package uts.wsd.rest;
 
import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;
import java.io.*;
import java.text.ParseException;
import java.util.ArrayList;
 
import uts.wsd.*;

@Path("/articlesApp")
public class ArticlesService {
 @Context
 private ServletContext application;
 
 private ArticlesApplication getArticlesApp() throws JAXBException, IOException {
  // "Synchronized" keyword locks the application object while it is being manipulated
  synchronized (application) {
   ArticlesApplication articlesApp = (ArticlesApplication)application.getAttribute("articlesApp");
   if (articlesApp == null) {
    articlesApp = new ArticlesApplication();
    articlesApp.setFilePath(application.getRealPath("WEB-INF/articles.xml"));
    application.setAttribute("articlesApp", articlesApp);
   }
   return articlesApp;
  }
 }
 
@Path("articles")
@GET
@Produces(MediaType.APPLICATION_XML)
//@Produces("application/xml")
public Articles getArticles() throws JAXBException, IOException {
		return getArticlesApp().getArticles();
}
 
 @GET
 @Path("articles/{category}") 
	//Filters articles based on "category" parameter
	@Produces(MediaType.APPLICATION_XML)
	public Articles getArticleTitle(@PathParam("category") String category) throws JAXBException, IOException, ParseException {
		return getArticlesApp().getArticles().getArticleCategory(category);
	}
}
