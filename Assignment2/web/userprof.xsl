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
    </xsl:template>
    
    <xsl:template match="listings">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="listing">
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

</xsl:stylesheet>
