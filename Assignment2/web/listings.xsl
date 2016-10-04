<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : enquiries.xsl
    Created on : 2 October 2016, 12:57 PM
    Author     : HP
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    .container {
                    padding-right: 200px;
                    padding-left: 200px;
                    margin-right: auto;
                    margin-left: auto;
                    }
                    
                    .img-responsive {
                    display: block;
                    max-width: 100%;
                    height: auto;
                    }
                    
                    .detailBox{
                    background-color: #FFFFFF;
                    width: auto;
                    margin: 0;
                    font-size: 16px;
                    padding: 8px 10px 28px 10px;
                    }
                </style>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="listings">   
        <xsl:for-each select="listing">
            <div class="container" style="padding-right:200px; padding-left:200px; margin-top: 30px">
                <img src="image/{imageUrl}" class="img-responsive" alt="not applicable" name="image"/>
                <div class="detailBox">
                    <p>Location : <xsl:value-of select="location"/> </p>
                    <p>Listing type : <xsl:value-of select="type"/> </p>
                    <p>Number of guests : <xsl:value-of select="numguests"/></p>
                    <a href="listingDetail.jsp" style="float:right;font-family: 'Droid Sans', sans-serif;">
                        <b>Details > </b>
                    </a>
                </div>
            </div>
        </xsl:for-each>
 
    </xsl:template>
</xsl:stylesheet>