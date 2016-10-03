//Jack Huggart
package wsd.ass2;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Serializable;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

public class RentApplication implements Serializable {

    private String filepath;
    private Users users;

    public RentApplication() {
    }

    /**
     * @return the filepath
     */
    public String getFilepath() {
        return filepath;
    }

    /**
     * @return the users
     */
    public Users getUsers() {
        return users;
    }

    /**
     * @param users the users to set
     */
    public void setUsers(Users users) {
        this.users = users;
    }

    /**
     * @param filepath the filepath to set
     * @throws javax.xml.bind.JAXBException
     * @throws java.io.FileNotFoundException
     */
    public void setFilePath(String filepath) throws JAXBException, FileNotFoundException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Unmarshaller u = jc.createUnmarshaller();

        FileInputStream fin = new FileInputStream(filepath);
        users = (Users) u.unmarshal(fin);
        fin.close();

    }

}
