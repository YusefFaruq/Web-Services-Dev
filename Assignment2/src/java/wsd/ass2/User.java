//Jack Huggart

package wsd.ass2;

import java.io.Serializable;
import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
public class User implements Serializable{
    
    @XmlElement(name = "email")
    private String email;
    @XmlElement(name = "name")
    private String name;
    @XmlElement(name = "password")
    private String password;
    @XmlElement(name = "listingids")
    private int[] listingids;
    
    public User() {
    }
    
    public User(String email, String name, String password, int[] listingids) {
        
        this.email = email;
        this.name = name;
        this.password = password;
        this.listingids = listingids;
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
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the listingids
     */
    public int[] getListingids() {
        return listingids;
    }

    /**
     * @param listingids the listingids to set
     */
    public void setListingids(int[] listingids) {
        this.listingids = listingids;
    }
    
}
