<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
   
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
   
    <xsl:template match="/tei:teiCorpus">

        <html>
            
            <head>
  <link rel="stylesheet" href="prova.css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:900"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat"></link>

  <title>
      <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
  </title>

</head>

            <header>
<div id="centrato">
    <nav>
        <ul>
            <li><a href="#introduzione" style="color:black;">Home</a></li>
            <li><a href="#cartolina132" style="color:black;">Cartolina 132</a></li>
            <li><a href="#cartolina133" style="color:black;">Cartolina 133</a></li>
            <li><a href="#cartolina212" style="color:black;">Cartolina 212</a></li>
          </ul>
    </nav>
</div>
</header>

            <body>
                
                <section id="introduzione">
                    <div id="titolo">
                        <p style = "font-weight: 900; font-size: 2vw ;">PROGETTO CODIFICA DEI TESTI</p> 
                        <p style ="background-color: whitesmoke ; font-weight:900; color:gray ; font-size: 1.5vw ;">
                            <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:resp"/>
               
                        </p>
                        <p style ="font-weight:900 ;font-size: 1.5vw ;">
                            <xsl:for-each select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@xml:id ='CB' or @xml:id='GI']">
                                <xsl:value-of select="."/> &#160;   
                            </xsl:for-each>
                        </p>
                    </div>
                    <div id="intro">  
                        <p style="font-size: 1vw ;"> Questo progetto riguarda la codifica di cartoline appartenenti al <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@xml:id ='SP']"/> </p>
                        <p style="font-size: 1vw ;"> I protagonisti sono due giovani innamorati che si scambiano lettere d'amore in periodo di guerra : <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id ='Gi']/tei:persName/tei:forename"/> e <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id ='OT']/tei:persName/tei:forename"/> <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[@xml:id ='OT']/tei:persName/tei:surname"/> </p>
                        <p style="font-size: 1vw ;"> Il giovane probabilmente si trovava al fronte poichè l'indirizzo dell'amata è sempre <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id ='RV']/tei:placeName"/> mentre lui invia le sue lettere d'amore da <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id ='MO']/tei:placeName"/> e <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place[@xml:id ='SF']/tei:placeName"/> </p>
                        
                        
                    </div>
                    
                    <hr style="width:90%; height:2px;border-width:0;color:gray;background-color:gray"/>
                </section>
        
                <section id="cartolina132">
                    
                    <div class="contenitore">
                        
                        <div class="imgfronte">
                            <xsl:apply-templates select="tei:TEI[@xml:id = 'c132']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c132_fronte']" />
                        </div>
                        
                        <div class="descrizione">
                            <xsl:apply-templates select="tei:TEI[@xml:id = 'c132']/tei:teiHeader/tei:fileDesc/tei:sourceDesc" />
                        </div>
                        
                        <div class="imgretro">
                            <xsl:apply-templates select="tei:TEI[@xml:id = 'c132']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c132_retro']" />
                        </div>
                        
                        <div class="testo">
                        </div>                   
                    </div>
                </section>

                <section id="cartolina133">
                    <div class="contenitore">
                        
                        <div class="imgfronte">
                            <xsl:apply-templates select="tei:TEI[@xml:id = 'c133']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c133_fronte']" />
                        </div>
                        
                        <div class="descrizione">
                            <xsl:apply-templates select="tei:TEI[@xml:id = 'c133']/tei:teiHeader/tei:fileDesc/tei:sourceDesc" />
                        </div>
                        
                        <div class="imgretro">
                            <xsl:apply-templates select="tei:TEI[@xml:id = 'c133']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c133_retro']" />
                        </div>
                        
                        <div class="testo">
                        </div>
                        
                        
                    </div>
                    <hr style="width:90%; height:2px;border-width:0;color:gray;background-color:gray"/>
                </section>
        
                <section id="cartolina212">
                    <div class="contenitore">
                        
                        <div class="imgfronte">
                            <xsl:apply-templates select="tei:TEI[@xml:id = 'c212']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c212_fronte']" />
                        </div>
                        
                        <div class="descrizione">
                            <xsl:apply-templates select="tei:TEI[@xml:id = 'c212']/tei:teiHeader/tei:fileDesc/tei:sourceDesc" />
                        </div>
                        
                        <div class="imgretro">
                            <xsl:apply-templates select="tei:TEI[@xml:id = 'c212']/tei:facsimile/tei:surfaceGrp/tei:surface[@xml:id = 'c212_retro']" />
                        </div>
                        
                        <div class="testo">
                        </div>
                        
                
                    </div>
                    <hr style="width:90%; height:2px;border-width:0;color:gray;background-color:gray"/>
                </section>
            
            </body>
        
        </html>
    
    </xsl:template>
    
    
    <xsl:template match="tei:title">  
        
        <p> Titolo : <xsl:value-of select="."/> </p>
            
    </xsl:template>
    
    <xsl:template match="tei:date">
        <p> Data: <xsl:value-of select="."/> </p>
    </xsl:template>
   
    <xsl:template match="tei:settlement">
        <p> Collocazione: <xsl:value-of select="."/>, </p> <xsl:text>&#xa;</xsl:text> Codice identificativo: 
    </xsl:template>
    
    <xsl:template match="tei:summary">
        <p> Tipo: <xsl:value-of select="."/> </p>
    </xsl:template>
    
    <xsl:template match="tei:textLang">
        <p> Lingua: <xsl:value-of select="."/> </p>
    </xsl:template>
    
    <xsl:template match="tei:objectType">
        <p> Caratteristiche: <xsl:value-of select="."/> </p>
    </xsl:template>
    <xsl:template match="tei:material">
        <p> Materiale: <xsl:value-of select="."/> </p>
    </xsl:template>
    <xsl:template match="tei:height">
        <p> Altezza: <xsl:value-of select="."/> CM </p>
    </xsl:template>
    <xsl:template match="tei:width">
        <p> Larghezza: <xsl:value-of select="."/> CM </p>
    </xsl:template>
    <xsl:template match="tei:stamp">
        <p> Francobollo: <xsl:value-of select="."/> </p>
    </xsl:template>
    <xsl:template match="tei:stamp">
        <p> Stato: <xsl:value-of select="."/> </p>
    </xsl:template>
    
    
    
    
    <xsl:template match="tei:resp">
        <h3> <xsl:value-of select="."/> </h3>
    </xsl:template>
    
    <xsl:template match="tei:name">
        <h4> <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@xml:id ='CB' or @xml:id='GI']"/> </h4>
    </xsl:template>
    
    <xsl:template match="tei:graphic">       
        <img style="height: auto; width: 20%; padding-left: 5%; padding-top: 5%;" src="{@url}"/>
    </xsl:template>
    
    <xsl:template match="tei:country">
    </xsl:template>
    
    
 
 
 
 
 
 
 
 
 
 
 
</xsl:stylesheet>