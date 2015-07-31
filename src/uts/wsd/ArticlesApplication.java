package uts.wsd;

import java.io.FileInputStream;
import java.io.*;

import javax.xml.bind.*;

public class ArticlesApplication {
	private String filePath;
	private Articles articles;

	public ArticlesApplication() {
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;

		try {
			// Create the unmarshaller
			JAXBContext jc = JAXBContext.newInstance(Articles.class);
			Unmarshaller u = jc.createUnmarshaller();
			
			// Now unmarshal the object from the file
			FileInputStream fin = new FileInputStream(filePath);
			articles = (Articles) u.unmarshal(fin);
			fin.close();
		} catch (Exception ex) {
		}
		setArticles(articles);
	}

	public void updateFile() throws IOException, JAXBException {
		// Boilerplate code to convert objects to XML...
		JAXBContext jc = JAXBContext.newInstance(Articles.class);
		Marshaller m = jc.createMarshaller();

		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		FileOutputStream fout = new FileOutputStream(filePath);
		m.marshal(articles, fout);
		fout.close();
	}

	public Articles getArticles() {
		return articles;
	}

	public void setArticles(Articles articles) {
		this.articles = articles;
	}
}