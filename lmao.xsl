<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : lmao.xsl
    Created on : 7 October 2016, 1:33 PM
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
                <link href="https://fonts.googleapis.com/css?family=Droid+Sans|Bree+Serif|Lato" rel="stylesheet"/>

                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>

                <link href="./css/style1.css" rel="stylesheet" type="text/css"/>
                <link href="./css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
                <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                <title>Welcome to LMAO</title>
            </head>
            <body style="background-color: #f5f4f4;">
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="listings">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <nav class = "navbar navbar-inverse navbar-fixed-top" role = "navigation">
                    <div class = "navbar-header">
                        <a class = "navbar-brand navbar-left"  href = "#home">Home</a>
                    </div>
                    <div class="nav navbar-nav navbar-right">
                        <a class="btn btn-primary" role="button" data-toggle="modal" data-target="#myModal" style="margin:7px 5px 0 0;font-family: 'Droid Sans', sans-serif;">
                            <b>Login</b>
                        </a>
                        <a class="btn btn-success" role="button" data-toggle="modal" data-target="#signupModal" style="margin: 7px 25px 0 0;font-family: 'Droid Sans', sans-serif;">
                            <b>Sign up</b>
                        </a>
                    </div>
                </nav>
            </div>
        </div>
        
        <div class="modal fade" id="myModal" >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"></button>
                        <h3 class="modal-title">Login</h3>
                    </div>
                    <div class="modal-body" style="margin-left:10px;margin-right:10px;">
                        <form action="login.jsp" method="POST" class="form-horizontal">
                            <div class="form-group">
                                <label>Username:</label>
                                <input type="email" class="form-control" name="email" placeholder="Enter your username"/>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Enter your password"/>
                            </div>
                            <div  align="right">
                                <input class="btn btn-default form-horizontal form-group " type="submit" value="Submit"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
                
        <div class="modal fade" id="signupModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"></button>
                        <h3 class="modal-title">Sign Up</h3>
                    </div>
                    <div class="modal-body" style="margin-left: 10px;margin-right: 10px;">
                        <form action="register.jsp" method="POST" class="form-horizontal">
                            <div class="form-group">
                                <label>Email address:</label>
                                <input type="email" class="form-control" name="email" placeholder="Enter your email address"/>
                            </div>
                            <div class="form-group">
                                <label>Full name:</label>
                                <input name="name" class="form-control" type="text" placeholder="Enter your full name"/>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Enter your password"/>
                            </div>
                            <div  align="right">
                                <input class="btn btn-default form-horizontal form-group " type="submit" value="Submit"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>                
        </div>
        
        <header style="font-family: 'Lato', sans-serif;">
            <div class="header-content">
                <div class="header-content-inner">
                    <h1 style="font-size: 45px;margin: 0px;">
                        <b>Welcome to Sydney</b>
                    </h1>
                    <hr/>
                    <h3>List of available properties in Sydney</h3>
                </div>
            </div>
        </header>
        <!--modal ends here-->
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="listing">
        <xsl:if test="available='true'">
            <div class="container" style="padding-right:200px; padding-left:200px; margin-top: 30px">
                <img src="image/{imageUrl}" class="img-responsive" alt="not applicable" name="image"/>
                <div class="detailBox">
                    <p>Location : <xsl:value-of select="location"/> </p>
                    <p>Listing type : <xsl:value-of select="type"/> </p>
                    <p>Number of guests : <xsl:value-of select="numguests"/></p>
                    <a href="listingDetail.jsp/?id={@id}" style="float:right;font-family: 'Droid Sans', sans-serif;">
                        <b>Details > </b>
                    </a>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    

</xsl:stylesheet>
