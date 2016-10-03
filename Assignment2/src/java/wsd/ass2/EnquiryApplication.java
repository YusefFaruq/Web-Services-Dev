//Jack Huggart
package wsd.ass2;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Serializable;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

public class EnquiryApplication implements Serializable {

    private String filepath;
    private Enquiries enquiries;

    public EnquiryApplication() {
    }

    /**
     * @return the filepath
     */
    public String getFilepath() {
        return filepath;
    }

    public Enquiries getEnquiries() {
        return enquiries;
    }

    public void setEnquiries(Enquiries enquiries) {
        this.enquiries = enquiries;
    }

    /**
     * @param filepath the filepath to set
     * @throws javax.xml.bind.JAXBException
     * @throws java.io.FileNotFoundException
     */
    public void setFilePath(String filepath) throws JAXBException, FileNotFoundException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Enquiries.class);
        Unmarshaller u = jc.createUnmarshaller();

        FileInputStream fin = new FileInputStream(filepath);
        enquiries = (Enquiries) u.unmarshal(fin);
        fin.close();

    }
}
