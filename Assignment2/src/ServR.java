/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wsd.rest;

/**
 *
 * @author PC
 */
import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;
import java.io.*;
import java.util.ArrayList;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import wsd.ass2.*;

@Path("/servR")
public class ServR {

    @Context
    private ServletContext application;

    private appR getApp() throws JAXBException, IOException {
        // The web server can handle requests from different clients in parallel.
        // These are called "threads".
        //
        // We do NOT want other threads to manipulate the application object at the same
        // time that we are manipulating it, otherwise bad things could happen.
        //
        // The "synchronized" keyword is used to lock the application object while
        // we're manpulating it.
        synchronized (application) {
            appR App = (appR) application.getAttribute("App");
            if (App == null) {
                App = new appR();
                App.setFilePath(application.getRealPath("WEB-INF/Listings.xml"));
                application.setAttribute("App", App);
            }
            return App;
        }
    }

    //show all listings
    @Path("/")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public Listings getListings() throws JAXBException, IOException {
        return getApp().getListings();

    }

    //get username of lister
    @Path("lister/{email}")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public Listings getEmail(@PathParam("email") String email) throws JAXBException, IOException {
        appR applicationR = getApp();
        Listings listings = applicationR.getListings();
        Listings ret = new Listings();
        Boolean s = false;

        for (Listing listing : listings.getList()) {
            if (listing.getEmail().equals(email)) {
                ret.addListing(listing);
            }
        }
        return ret;
    }

    //method to get status
    @Path("status/{avaliability}")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public Listings getStatus(@PathParam("avaliability") String avaliability) throws JAXBException, IOException {
        appR applicationR = getApp();
        Listings listings = applicationR.getListings();
        Listings ret = new Listings();
        Boolean s = false;
        if (avaliability.equals("avaliable") || avaliability.equals("true")) {
            s = true;
        }

        for (Listing listing : listings.getList()) {
            if (listing.isAvailable() == s) {
                ret.addListing(listing);
            }
        }
        return ret;
    }

    //metohd to get num guests
    @Path("numofguests/{num}")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public Listings getNumOfGuests(@PathParam("num") int num) throws JAXBException, IOException {
        appR applicationR = getApp();
        Listings listings = applicationR.getListings();
        Listings ret = new Listings();

        for (Listing listing : listings.getList()) {
            if (listing.getNumguests() == num) {
                ret.addListing(listing);
            }
        }
        return ret;
    }

}
