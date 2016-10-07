/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wsd.ass2;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;

/**
 *
 * @author Jack Huggart
 */
public class Enquirymarshal {
    public static void marshal(String filepath, Enquiries enquiries) throws JAXBException, FileNotFoundException {
        JAXBContext jc = JAXBContext.newInstance(Enquiries.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        
        m.marshal(enquiries, new FileOutputStream(filepath));
    }
}
