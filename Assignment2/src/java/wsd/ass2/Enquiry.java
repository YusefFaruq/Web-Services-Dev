//Jack Huggart

package wsd.ass2;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;

@XmlAccessorType(XmlAccessType.FIELD)
public class Enquiry implements Serializable {
    
    @XmlElement(name = "name")
    private String name;
    @XmlElement(name = "email")
    private String email;
    @XmlElement(name = "listingid")
    private int listingid;
    @XmlElement(name = "bookingdate")
    private String bookingdate;
    @XmlElement(name = "message")
    private String message;
    
    public Enquiry() {
    }
    
    public Enquiry(String name, String email, int listingid, String bookingdate, String message) {
        this.name = name;
        this.email = email;
        this.listingid = listingid;
        this.bookingdate = bookingdate;
        this.message = message;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
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
     * @return the listingid
     */
    public int getListingid() {
        return listingid;
    }

    /**
     * @param listingid the listingid to set
     */
    public void setListingid(int listingid) {
        this.listingid = listingid;
    }

    /**
     * @return the bookingdate
     */
    public String getBookingdate() {
        return bookingdate;
    }

    /**
     * @param bookingdate the bookingdate to set
     */
    public void setBookingdate(String bookingdate) {
        this.bookingdate = bookingdate;
    }

    /**
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * @param message the message to set
     */
    public void setMessage(String message) {
        this.message = message;
    }
}
