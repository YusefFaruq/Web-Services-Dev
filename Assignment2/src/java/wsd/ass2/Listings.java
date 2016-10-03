//Jack Huggart
package wsd.ass2;

import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "listings")
public class Listings implements Serializable {

    @XmlElement(name = "listing")
    private ArrayList<Listing> list = new ArrayList<Listing>();

    public Listings() {
    }

    public ArrayList<Listing> getList() {
        return list;
    }

    public void addListing(Listing listing) {
        list.add(listing);
    }

    public void removeListing(Listing listing) {
        list.remove(listing);
    }

    public Listing searchListingsId(int id) {
        for (Listing listing : list) {
            if (listing.getId() == id) {
                return listing;
            }
        }
        return null;
    }
    
    public ArrayList<Listing> searchListingsEmail(String email) {
        ArrayList<Listing> foundlistings = new ArrayList<Listing>();
        
        for (Listing listing : list) {
            if (listing.getEmail().equals(email)) {
                foundlistings.add(listing);
            }
        }
        return foundlistings;
    }
    
    public ArrayList<Listing> searchListingsLocation(String location) {
        ArrayList<Listing> foundlistings = new ArrayList<Listing>();
        
        for (Listing listing : list) {
            if (listing.getLocation().equals(location)) {
                foundlistings.add(listing);
            }
        }
        return foundlistings;
    }
    
    public ArrayList<Listing> searchListingsNumguests(int numguests) {
        ArrayList<Listing> foundlistings = new ArrayList<Listing>();
        
        for (Listing listing : list) {
            if (listing.getNumguests() == (numguests)) {
                foundlistings.add(listing);
            }
        }
        return foundlistings;
    }
    
    public ArrayList<Listing> searchListingsType(String type) {
        ArrayList<Listing> foundlistings = new ArrayList<Listing>();
        
        for (Listing listing : list) {
            if (listing.getType().equals(type)) {
                foundlistings.add(listing);
            }
        }
        return foundlistings;
    }
}
