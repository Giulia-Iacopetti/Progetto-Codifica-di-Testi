<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
   
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
   
    <xsl:template match="/tei:teiCorpus">

        <html>
            
            <head>
  <link rel="stylesheet" href="stile.css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:900"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat"></link>
  <script type="text/javascript" src="script.js"></script>

  <title>
      <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
  </title>

</head>

            <header>
<div id="centrato">
    <nav>
        <ul>
            <li><a href="#introduzione" class="navli">Home</a></li>
            <li><a href="#cartolina132" class="navli">Cartolina 132</a></li>
            <li><a href="#cartolina133" class="navli">Cartolina 133</a></li>
            <li><a href="#cartolina212" class="navli">Cartolina 212</a></li>
          </ul>
    </nav>
</div>
</header>

            <body>
                
                <section id="introduzione">
                    <div id="titolo">
                        <p id="prog">PROGETTO CODIFICA DEI TESTI</p> 
                        <p id="respi">
                            <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:resp"/>
               
                        </p>
                        <p id="stud">
                            <xsl:for-each select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@xml:id ='CB' or @xml:id='GI']">
                                <xsl:value-of select="."/> &#160;   
                            </xsl:for-each>
                        </p>
                    </div>
                    <div id="intro">  
                        <p class="pintro"> Questo progetto riguarda la codifica di cartoline appartenenti al <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@xml:id ='SP']"/> </p>
                        <p class="pintro"> I protagonisti sono due giovani innamorati che si scambiano lettere d'amore in periodo di guerra : <i> <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id ='Gi']/tei:persName/tei:forename"/> </i> e <i> <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id ='OT']/tei:persName/tei:forename"/> <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id ='OT']/tei:persName/tei:surname"/> </i> </p>
                        <p class="pintro"> Il giovane probabilmente si trovava al fronte poichè l'indirizzo dell'amata è sempre <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id ='RV']/tei:placeName"/> mentre lui invia le sue lettere d'amore da <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id ='MO']/tei:placeName"/> e <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id ='SF']/tei:placeName"/> </p>
                        
                        
                    </div>
                    
                    
                </section>
                
                <hr class="divisorio"/>
        
                <section id="cartolina132">
                    
                    <div class="contenitore">
                        
                        <div class="conti">
                        
                            <div class="imgfronte">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c132']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c132_fronte']" />
                            </div>
                        
                            <div class="descrizione">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c132']/tei:teiHeader/tei:fileDesc/tei:sourceDesc" />
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c132']/tei:text/tei:body/tei:div/tei:figure[@xml:id = 'fronte']"/>
                            </div>
                            
                        </div>
                        
                        <div class="conti">
                        
                            <div class="imgretro">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c132']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c132_retro']" />
                            </div>
                        
                            <div class="testo">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c132']/tei:text/tei:body/tei:div[@xml:id = 'retro132']"/>
                               
                            </div>
                            
                        </div>
                        
                    </div>
                    
                </section>
                
                <hr class="divisorio"/>

                <section id="cartolina133">
                    
                    <div class="contenitore">
                        
                        <div class="conti">
                            
                            <div class="imgfronte">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c133']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c133_fronte']" />
                                
                            </div>
                            
                            <div class="descrizione">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c133']/tei:teiHeader/tei:fileDesc/tei:sourceDesc" />
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c133']/tei:text/tei:body/tei:div/tei:figure[@xml:id = 'fronte133']"/>
                            </div>
                            
                        </div>
                        
                        <div class="conti">
                            
                            <div class="imgretro">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c133']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c133_retro']" />
                            </div>
                            
                            <div class="testo">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c133']/tei:text/tei:body/tei:div[@xml:id = 'retro133']"/>
                                
                            </div>
                            
                        </div>
                        
                    </div>
                    
                </section>
                
                <hr class="divisorio"/>
        
                <section id="cartolina212">
                    
                    <div class="contenitore">
                        
                        <div class="conti">
                            
                            <div class="imgfronte">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c212']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c212_fronte']" />
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c212']/tei:text/tei:body/tei:div/tei:figure[@xml:id = 'fronte212']"/>
                            </div>
                            
                            <div class="descrizione">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c212']/tei:teiHeader/tei:fileDesc/tei:sourceDesc" />
                            </div>
                            
                        </div>
                        
                        <div class="conti">
                            
                            <div class="imgretro">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c212']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c212_retro']" />
                            </div>
                            
                            <div class="testo">
                                <xsl:apply-templates select="tei:TEI[@xml:id = 'c212']/tei:text/tei:body/tei:div[@xml:id = 'retro212']"/>
                                
                                
                            </div>
                            
                        </div>
                        
                    </div>
                    
                </section>
                
                <hr class="divisorio"/>
            
            </body>
            
            <audio id='retro132' src="audio/retro132.mp3"></audio>
            <audio id='retro133' src="audio/retro133.mp3"></audio>
            <audio id='retro212' src="audio/retro212.mp3"></audio>
        
        </html>
    
    </xsl:template>
    
    
    
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:div[@xml:id = 'retro132' or @xml:id = 'retro133' or @xml:id = 'retro212']/tei:div[@xml:id = 'indirizzo' or @xml:id = 'indirizzo133' or @xml:id = 'indirizzo212']/tei:ab/tei:address/tei:addrLine/tei:choice/tei:expan">     
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:div[@xml:id = 'retro132' or @xml:id = 'retro133' or @xml:id = 'retro212']/tei:div/tei:opener/tei:dateline/tei:date">
        <p> <xsl:value-of select="."/> </p>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:div[@xml:id = 'retro132' or @xml:id = 'retro133' or @xml:id = 'retro212']/tei:div[@xml:id = 'indirizzo' or @xml:id = 'indirizzo133' or @xml:id = 'indirizzo212']">
        <p> <xsl:value-of select="."/> </p>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:div[@xml:id = 'retro132' or @xml:id = 'retro133' or @xml:id = 'retro212']/tei:div[@xml:id = 'catalogazione' or @xml:id = 'catalogazione133' or @xml:id = 'catalogazione212']">
        <p> <b>Numero catalogazione: </b> <xsl:value-of select="."/> </p>
    </xsl:template>
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:div[@xml:id = 'retro132' or @xml:id = 'retro133' or @xml:id = 'retro212']/tei:div[@xml:id = 'stampato' or @xml:id = 'stampato133' or @xml:id = 'stampato212']">
        <p> <b>Stampe:</b> <xsl:value-of select="."/> </p>
    </xsl:template>
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:div[@xml:id = 'retro132' or @xml:id = 'retro133' or @xml:id = 'retro212']/tei:div[@xml:id = 'affrancatura' or @xml:id = 'affrancatura133' or @xml:id = 'affrancatura212']">
        <p> <b>Francobolli e Timbri:</b> <xsl:value-of select="."/> </p>
    </xsl:template>
    
    
    
    
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:div/tei:figure[@xml:id = 'fronte' or @xml:id = 'fronte133' or @xml:id = 'fronte212']/tei:note">
        <p> <b>Nota: </b><xsl:value-of select="concat(., '&#xA;')"/> </p>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:div/tei:figure[@xml:id = 'fronte' or @xml:id = 'fronte133' or @xml:id = 'fronte212']/tei:figDesc">  
    </xsl:template>
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:div/tei:figure[@xml:id = 'fronte' or @xml:id = 'fronte133' or @xml:id = 'fronte212']/tei:head">  
    </xsl:template>
    
    <xsl:template match="tei:title">  
        
        <p> <b> Titolo: </b> <xsl:value-of select="."/> </p>
            
    </xsl:template>
    
    <xsl:template match="tei:date">
        <p> <b> Data: </b> <xsl:value-of select="."/> </p>
    </xsl:template>
   
    <xsl:template match="tei:msIdentifier">
        <p> <b> Collocazione: </b> <xsl:value-of select="tei:repository"/> di <xsl:value-of select="tei:settlement"/> </p> <xsl:text>&#xa;</xsl:text> <b> Codice identificativo: </b> <xsl:value-of select="tei:idno"/>
    </xsl:template>
    
    <xsl:template match="tei:msContents">
        <p> <b>Tipo: </b> <xsl:value-of select="tei:summary"/> </p>
        <p> <b> Lingua: </b> <xsl:value-of select="tei:textLang"/> </p>
    </xsl:template>
    
    <xsl:template match="tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support">
        <p> <b> Caratteristiche: </b> </p>
        <ul>
            <li>  Materiale: <xsl:value-of select="tei:material"/> </li>
            <li> Altezza X Lunghezza: <xsl:value-of select="tei:dimensions/tei:height"/> CM X <xsl:value-of select="tei:dimensions/tei:width"/> CM </li>
        </ul>
    </xsl:template>
    <xsl:template match="tei:condition">
        <p> <b> Stato: </b><xsl:value-of select="."/> </p>
    </xsl:template>
    
    <xsl:template match="tei:objectType">
    </xsl:template>
    <xsl:template match="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson">
    </xsl:template>
    <xsl:template match="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace">
    </xsl:template>
    
    
    
    <xsl:template match="tei:resp">
        <h3> <xsl:value-of select="."/> </h3>
    </xsl:template>
    
    <xsl:template match="tei:name">
        <h4> <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@xml:id ='CB' or @xml:id='GI']"/> </h4>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id ='c132_fronte' or @xml:id ='c133_fronte' or @xml:id ='c212_fronte']/tei:graphic">       
        <img class="frontino" src="{@url}"/>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id ='c132_retro']/tei:graphic">       
        <img onmouseover="PlaySound('retro132')" onmouseout="StopSound('retro132')" class="retrino" src="{@url}"/>
    </xsl:template>
    <xsl:template match="tei:TEI/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id ='c133_retro']/tei:graphic">       
        <img onmouseover="PlaySound('retro133')" onmouseout="StopSound('retro133')" class="retrino" src="{@url}"/>
    </xsl:template>
    <xsl:template match="tei:TEI/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id ='c212_retro']/tei:graphic">       
        <img onmouseover="PlaySound('retro212')" onmouseout="StopSound('retro212')" class="retrino" src="{@url}"/>
    </xsl:template>
    
    
    <xsl:template match="tei:country">
    </xsl:template>
    
  </xsl:stylesheet>