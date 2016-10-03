//Jack Huggart
package wsd.ass2;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Serializable;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

public class ListingApplication implements Serializable {

    private String filepath;
    private Listings listings;

    public ListingApplication() {
    }

    /**
     * @return the filepath
     */
    public String getFilepath() {
        return filepath;
    }

    public Listings getListings() {
        return listings;
    }

    public void setListings(Listings listings) {
        this.listings = listings;
    }

    /**
     * @param filepath the filepath to set
     * @throws javax.xml.bind.JAXBException
     * @throws java.io.FileNotFoundException
     */
    public void setFilePath(String filepath) throws JAXBException, FileNotFoundException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Listings.class);
        Unmarshaller u = jc.createUnmarshaller();

        FileInputStream fin = new FileInputStream(filepath);
        listings = (Listings) u.unmarshal(fin);
        fin.close();

    }
}
