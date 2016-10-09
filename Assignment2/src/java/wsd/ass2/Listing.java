//Jack Huggart
package wsd.ass2;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;

@XmlAccessorType(XmlAccessType.FIELD)
public class Listing implements Serializable {

    @XmlElement(name = "email")
    private String email;
    @XmlElement(name = "id")
    private int id;
    @XmlElement(name = "type")
    private String type;
    @XmlElement(name = "location")
    private String location;
    @XmlElement(name = "address")
    private String address;
    @XmlElement(name = "description")
    private String description;
    @XmlElement(name = "numguests")
    private int numguests;
    @XmlElement(name = "imageurl")
    private String imageUrl;
    @XmlAttribute(name = "available")
    private boolean available;

    public Listing() {
    }

    public Listing(String email, int id, String type, String location, String address, String description, int numguests) {
        this.email = email;
        this.id = id;
        this.type = type;
        this.location = location;
        this.address = address;
        this.description = description;
        this.numguests = numguests;
        this.available = true;
    }
    
    public Listing(String email, int id, String type, String location, String address, String description, int numguests, String imageUrl) {
        this.email = email;
        this.id = id;
        this.type = type;
        this.location = location;
        this.address = address;
        this.description = description;
        this.numguests = numguests;
        this.imageUrl = imageUrl;
        this.available = true;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the location
     */
    public String getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(String location) {
        this.location = location;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the numguests
     */
    public int getNumguests() {
        return numguests;
    }

    /**
     * @param numguests the numguests to set
     */
    public void setNumguests(int numguests) {
        this.numguests = numguests;
    }

    /**
     * @return the imageUrl
     */
    public String getImageUrl() {
        return imageUrl;
    }

    /**
     * @param imageUrl the imageUrl to set
     */
    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    /**
     * @return the available
     */
    public boolean isAvailable() {
        return available;
    }

    /**
     * @param available the available to set
     */
    public void setAvailable(boolean available) {
        this.available = available;
    }
}
