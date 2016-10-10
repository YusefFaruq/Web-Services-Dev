<?xml version="1.0" encoding="UTF-8"?>

<!-- Jack Huggart -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="page">
        <html>
            <head>
                <title>
                    <xsl:value-of select="@title"/>
                </title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="profile">
        <h1>
            <xsl:value-of select="@name"/>
        </h1>
        <xsl:apply-templates/>
        <p>
            <a href="createlisting.jsp">Create a new listing</a>
        </p>
        <p>
            <a href="mainpage.jsp">Return to the main page</a>
        </p>
    </xsl:template>
    
    <xsl:template match="listingspage">
        <xsl:choose>
            <xsl:when test="@arelistings = 'true'">
                <table>
                    <thead>
                        Your listings:
                        <tr>
                            <th>Listing No.</th>
                            <th>Location</th>
                            <th>Type</th>
                            <th>Number of guests</th>
                            <th>Current availability</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates/>
                    </tbody>
                </table>
            </xsl:when>
            <xsl:otherwise>
                <p>You have no listings yet!</p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="brieflisting">
        <tr>
            <td>#<xsl:value-of select="@listingid"/></td>
            <td>
                <xsl:value-of select="location"/>
            </td>
            <td>
                <xsl:value-of select="type"/>
            </td>
            <td>
                <xsl:value-of select="numguests"/>
            </td>
            <xsl:choose>
                <xsl:when test="@available = 'true'">
                    <td>
                        Available
                    </td>
                </xsl:when>
                <xsl:otherwise>
                    <td>
                        Unavailable
                    </td>
                </xsl:otherwise>
            </xsl:choose>
            <td>
                <a href="listingdetail.jsp?id={@listingid}">Details</a>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="detailedlisting">
        <p>
            Location: <xsl:value-of select="location"/>
        </p>
        <xsl:choose>
            <xsl:when test="imageurl != 'null'">
                <p>
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="imageurl"/>
                        </xsl:attribute>
                    </img>
                </p>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="(@userowns = 'true') and (@status = 'true')">
                <p>
                    Currently available. <a href="listingdetail.jsp?id={@listingid}&amp;available=false" >Make unavailable</a>
                </p>
            </xsl:when>
            <xsl:when test="(@userowns = 'true') and (@status = 'false')">
                <p>
                    Currently unavailable. <a href="listingdetail.jsp?id={@listingid}&amp;available=true">Make available</a>
                </p>
            </xsl:when>
        </xsl:choose>
        <p>
            Type of listing: <xsl:value-of select="type"/>
        </p>
        <p>
            <xsl:value-of select="description"/>
        </p>
        <p>
            Recommended number of guests: <xsl:value-of select="numguests"/>
        </p>
        <p>
            Full address: <xsl:value-of select="address"/>
        </p>
    </xsl:template>
    
    <xsl:template match="enquiries">
        <xsl:choose>
            <xsl:when test="@areenquiries = 'true'">
                <table>
                    <thead>
                        <tr>
                            <th>User</th>
                            <th>Email address</th>
                            <th>Requested booking date</th>
                            <th>Message</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates/>
                    </tbody>
                </table>
            </xsl:when>
            <xsl:otherwise>
                <p>No enquiries have been made for this listing yet. Click <a href="listingdetail.jsp?id={@listingid}" >here</a> to return to the listing page.</p>
            </xsl:otherwise>
        </xsl:choose>
        <p>
            <a href="listingdetail.jsp?id={@listingid}" >Return to the listing page</a>
        </p>
    </xsl:template>
    
    <xsl:template match="enquiry">
        <tr>
            <td>
                <xsl:value-of select="user"/>
            </td>
            <td>
                <xsl:value-of select="email"/>
            </td>
            <td>
                <xsl:value-of select="bookingdate"/>
            </td>
            <td>
                <xsl:value-of select="message"/>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="enquirylink">
        <xsl:choose>
            <xsl:when test="@userowns = 'true'">
                <a href="enquiryview.jsp?id={@listingid}" >View enquiries for your listing</a>, or return to <a href="userprofile.jsp" >your profile</a>.
            </xsl:when>
            <xsl:otherwise>
                <a href="Enquiryform.jsp?id={@listingid}" >Make an enquiry!</a>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
</xsl:stylesheet>
