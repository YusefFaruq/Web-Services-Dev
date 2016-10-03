//Jack Huggart

package wsd.ass2;

import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "enquiries")
public class Enquiries implements Serializable {

    @XmlElement(name = "enquiry")
    private ArrayList<Enquiry> list = new ArrayList<Enquiry>();

    public Enquiries() {
    }

    public ArrayList<Enquiry> getList() {
        return list;
    }

    public void addEnquiry(Enquiry enquiry) {
        list.add(enquiry);
    }

    public void removeUser(Enquiry enquiry) {
        list.remove(enquiry);
    }

    public ArrayList<Enquiry> searchEnquiries(int listingid) {
        ArrayList<Enquiry> foundenq = new ArrayList<Enquiry>();

        for (Enquiry enquiry : list) {
            if (enquiry.getListingid() == listingid) {
                foundenq.add(enquiry);
            }
        }
        return foundenq;
    }
}
