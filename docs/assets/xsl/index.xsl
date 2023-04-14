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
                    Kvinnan och hemmet: Home
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
                   
                </nav>
                <main id="manuscript">
                    <!-- bootstrap "container" class makes the columns look pretty -->
                    <div class="container">
                    <!-- define a row layout with bootstrap's css classes (two columns) -->
                        <div class="row">
                            <!-- first column: load the image based on the IIIF link in the graphic above -->
                            <div class="col-sm">
                               <article id="thumbnail">
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
                               </article>
                            </div>
                            <!-- second column: apply matching templates for anything nested underneath the tei:text element -->
                            <div class="col-sm">
                                <article id="transcription">
                                    <h2>Welcome!</h2>
                                    <p>Here you can see the result of a digitisation project carried out on the September issue of Kvinnan och Hemmet from 1930. The original title was Kvinden og Hjemmet and was published in Norwegian and Danish between 1888-1947. From 1893 the magazine was also released in Swedish. Kvinnan och Hemmet was a monthly magazine intended for Scandinavian women who had moved to the United States and the goal was to help Scandinavian women transition to the American way of life. The editor, Ida Hansen, had first hand experience as an immigrant to the United States from Norway.</p>
                                        
                                        <p>The journal was distributed all around the country as well as in Canada and the Scandinavian countries. It was the biggest Scandinavian women’s journal in the United States at the time and could print as many as 80 000 copies of an issue. Kvinden og Hjemmet brought up topics such as women’s right to vote, family, politics, child rearing and usually concluded recipes, short stories, serials, poems, handicraft and also supplements such as Vårt bibliotek (“Our library”) and Mönster tidning (“Pattern paper”).</p>
                                    <p><xsl:apply-templates select="//tei:encodingDesc"/> </p>
                                </article>
                            </div>
                        </div>
                        <div class="row">
                                <div class="col-sm">
                                    <article id="details">
                                   
                                      
                                      
                                    </article>
                                </div>
                        </div>
                    </div>
                </main>
                <footer>
                <div class="row" id="footer">
                  <div class="col-sm copyright">
                  		<div class="copyright_logos">
                  			<a href="https://creativecommons.org/licenses/by/4.0/legalcode">
                  			    <img src="assets/img/logos/cc.svg" class="copyright_logo" alt="Creative Commons License"/><img src="assets/img/logos/by.svg" class="copyright_logo" alt="Attribution 4.0 International"/>
                  			</a>
                  		</div>
                  		<div class="copyright_text">
                         2023 Carolina Jimmerskog.
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
</xsl:stylesheet>
