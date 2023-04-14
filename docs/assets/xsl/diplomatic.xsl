<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:html="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xs tei html" version="2.0">
    <xsl:output method="html"/>

    <!-- transform the root element (TEI) into an HTML template -->
    <xsl:template match="tei:TEI">
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text><xsl:text>&#xa;</xsl:text>
        <html lang="en" xml:lang="en">
            <head>
                <title>
                    <!-- add the title from the metadata. This is what will be shown
                    on your browsers tab-->
                    frankensTEIn: diplomatic view
                </title>
                <!-- load bootstrap css (requires internet!) so you can use their pre-defined css classes to style your html -->
                <link rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                    crossorigin="anonymous"/>
                <!-- load the stylesheets in the assets/css folder, where you can modify the styling of your website -->
                <link rel="stylesheet" href="assets/css/main.css"/>
                <link rel="stylesheet" href="assets/css/desktop.css"/>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:apply-templates select="//tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                    </h1>
                </header>
                <nav id="sitenav">
                    <a href="index.html">Home</a> |
                    <a href="diplomatic.html">Diplomatic Transcription</a> |
                    <a href="reading.html">Reading Text</a> |
                    <a href="toplayer.html">Top Layer</a> |
                </nav>
                <main id="manuscript">
                    <!-- bootstrap "container" class makes the columns look pretty -->
                    <div class="container">
                    <!-- define a row layout with bootstrap's css classes (two columns) -->
                        <div class="row">
                            <!-- first column: load the image based on the IIIF link in the graphic above -->
                            <div class="col-sm">
                               <article id="scan">
                                   <h3>Image</h3>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH01']//tei:graphic/@url"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH01']//tei:label"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH01']//tei:figDesc"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="width">
                                        500
                                    </xsl:attribute>
                                </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH02']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH02']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH02']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH03']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH03']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH03']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH04']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH04']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH04']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH05']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH05']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH05']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH06']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH06']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH06']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH07']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH07']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH07']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH08']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH08']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH08']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH09']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH09']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH09']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH10']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH10']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH10']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH11']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH11']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH11']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH12']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH12']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH12']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH13']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH13']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH13']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH14']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH14']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH14']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH15']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH15']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH15']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH16']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH16']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH16']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH17']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH17']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH17']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH18']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH18']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH18']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH19']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH19']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH19']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH20']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH20']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH20']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH21']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH21']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH21']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH22']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH22']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH22']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH23']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH23']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH23']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH24']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH24']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH24']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH25']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH25']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH25']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH26']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH26']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH26']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH27']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH27']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH27']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH28']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH28']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH28']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH29']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH29']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH29']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH30']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH30']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH30']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH31']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH31']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH31']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH32']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH32']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH32']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH33']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH33']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH33']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH34']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH34']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH34']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH35']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH35']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH35']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH36']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH36']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH36']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH37']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH37']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH37']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH38']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH38']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH38']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH39']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH39']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH39']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH40']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH40']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH40']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH41']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH41']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH41']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH42']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH42']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH42']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH43']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH43']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH43']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH44']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH44']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH44']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH45']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH45']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH45']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH46']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH46']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH46']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH47']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH47']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH47']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH48']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH48']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH48']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH49']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH49']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH49']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH50']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH50']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH50']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH51']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH51']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH51']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                   <img>
                                       <xsl:attribute name="src">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH52']//tei:graphic/@url"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="title">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH52']//tei:label"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="alt">
                                           <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='KH52']//tei:figDesc"/>
                                       </xsl:attribute>
                                       <xsl:attribute name="width">
                                           500
                                       </xsl:attribute>
                                   </img>
                                  
                                   </article>  
                            </div>
                            <!-- second column: apply matching templates for anything nested underneath the tei:text element -->
                            <div class="col-sm">
                                <article id="transcription">
                                    <h3>Transcription</h3>
                                    <xsl:apply-templates select="//tei:TEI//tei:text"/>
                                </article>
                            </div>
                        </div>
                    </div>
                </main>
                <footer>
                <div class="row" id="footer">
                  <div class="col-sm copyright">
                      <div>
                        <a href="https://creativecommons.org/licenses/by/4.0/legalcode">
                          <img src="assets/img/logos/cc.svg" class="copyright_logo" alt="Creative Commons License"/><img src="assets/img/logos/by.svg" class="copyright_logo" alt="Attribution 4.0 International"/>
                        </a>
                      </div>
                      <div>
                         2022 Wout Dillen.
                      </div>
                    </div>
                </div>
                </footer>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>

    <!-- by default all text nodes are printed out, unless something else is defined.
    We don't want to show the metadata. So we write a template for the teiHeader that
    stops the text nodes underneath (=nested in) teiHeader from being printed into our
    html-->
    <xsl:template match="tei:teiHeader"/>

    <!-- turn tei linebreaks (lb) into html linebreaks (br) -->
    <xsl:template match="tei:lb">
        <br/>
    </xsl:template>
    <!-- not: in the previous template there is no <xsl:apply-templates/>. This is because there is nothing to
    process underneath (nested in) tei lb's. Therefore the XSLT processor does not need to look for templates to
    apply to the nodes nested within it.-->

    <!-- we turn the tei head element (headline) into an html h2 element-->
    <xsl:template match="tei:head[@type='1']">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    
    <!-- we turn the tei head element (headline) into an html h3 element-->
    <xsl:template match="tei:head[@type='2']">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>
    
    <!-- we turn the tei head element (headline) into an html h1 element-->
    <xsl:template match="tei:head[@type='3']">
        <h4>
            <xsl:apply-templates/>
        </h4>
    </xsl:template>

    <!-- we turn the tei head element (headline) into an html h1 element-->
    <xsl:template match="tei:head[@type='4']">
        <h6>
            <xsl:apply-templates/>
        </h6>
    </xsl:template>

    <!-- we turn the byline element into an html h6 element-->
    <xsl:template match="tei:byline">
        <h6>
            <xsl:apply-templates/>
        </h6>
    </xsl:template>

    <!-- transform tei paragraphs into html paragraphs -->
    <xsl:template match="tei:p">
        <p>
            <!-- apply matching templates for anything that was nested in tei:p -->
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <!-- transform tei anonymous blocks into html paragraphs -->
    <xsl:template match="tei:ab">
        <p>
            <!-- apply matching templates for anything that was nested in tei:ab -->
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <!-- transform tei line groups into html paragraphs -->
    <xsl:template match="tei:lg">
        <p>
            <!-- apply matching templates for anything that was nested in tei:lg -->
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!-- transform tei del into html del -->
    <xsl:template match="tei:del">
        <del>
            <xsl:apply-templates/>
        </del>
    </xsl:template>

    <!-- transform tei add into html sup -->
    <xsl:template match="tei:add">
        <sup>
            <xsl:apply-templates/>
        </sup>
    </xsl:template>

    <!-- transform tei hi (highlighting) with the attribute @rend="u" into html u elements -->
    <!-- how to read the match? "For all tei:hi elements that have a rend attribute with the value "u", do the following" -->
    <xsl:template match="tei:hi[@rend = 'u']">
        <u>
            <xsl:apply-templates/>
        </u>
    </xsl:template>


</xsl:stylesheet>
