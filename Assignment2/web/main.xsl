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
                <xsl:value-of select="@location"/>
            </td>
            <td>
                <xsl:value-of select="@type"/>
            </td>
            <td>
                <xsl:value-of select="@numguests"/>
            </td>
            <td>
                <a href="listingdetail.jsp?id={@listingid}">Details</a>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="detailedlisting">
        <p>
            Location: <xsl:value-of select="location"/>
        </p>
        <p>
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="imageurl"/>
                </xsl:attribute>
            </img>
        </p>
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
    
    <xsl:template match="enquiry">
        <a href="Enquiryform.jsp?id={@listingid}" >Make an enquiry!</a>
    </xsl:template>

</xsl:stylesheet>
