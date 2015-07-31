package uts.wsd;

import java.io.FileInputStream;
import java.io.*;

import javax.xml.bind.*;

public class AuthorsApplication {
	private String filePath;
	private Authors authors;

	public AuthorsApplication() {
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;

		try {
			// Create the unmarshaller
			JAXBContext jc = JAXBContext.newInstance(Authors.class);
			Unmarshaller u = jc.createUnmarshaller();

			// Now unmarshal the object from the file
			FileInputStream fin = new FileInputStream(filePath);
			authors = (Authors) u.unmarshal(fin);

			fin.close();
		} catch (Exception ex) {
		}
		setAuthors(authors);
	}

	public void updateFile() throws IOException, JAXBException {
		// Boilerplate code to convert objects to XML...
		JAXBContext jc = JAXBContext.newInstance(Authors.class);
		Marshaller m = jc.createMarshaller();

		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		FileOutputStream fout = new FileOutputStream(filePath);
		m.marshal(authors, fout);
		fout.close();
	}

	public Authors getAuthors() {
		return authors;
	}

	public void setAuthors(Authors authors) {
		this.authors = authors;
	}
}