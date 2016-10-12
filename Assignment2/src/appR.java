/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wsd.rest;


import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.*;
import wsd.ass2.*;

/**
 *
 * @author PC
 */
public class appR {
      private String filePath;
    private Listings listings;

    /**
     * @return the filePath
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     * @param filePath the filePath to set
     */
    public void setFilePath(String filePath) throws FileNotFoundException, JAXBException, IOException {
        this.filePath = filePath;
        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Listings.class);
        Unmarshaller u = jc.createUnmarshaller();

        // Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(filePath);
        listings = (Listings)u.unmarshal(fin); // This loads the "shop" object
        fin.close();
    }
    
    /**
     * @return the users
     */
    public Listings getListings() {
        return listings;
    }
    

    /**
     * @param users the users to set
     */
    public void setListings(Listings listings) {
        this.listings = listings;
    }
}
