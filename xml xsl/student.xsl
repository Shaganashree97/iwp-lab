<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Student Information</title>
        <style>
          student { display: block; margin-top: 15px; color: blue; }
          name { display: block; margin-left: 40px; margin-top: 30pt; color: red; }
          firstname { font-size: 28pt; }
          lastname { font-size: 28pt; }
          address { display: block; margin-left: 40px; color: green; }
          street { display: block; font-size: 18pt; }
          city { display: block; font-size: 18pt; }
          email { display: block; font-size: 18pt; color: blue; }
          phone { display: block; font-size: 18pt; }
        </style>
      </head>
      <body>
        <h1>Student Information</h1>
        <xsl:for-each select="students/student">
          <div class="student" style="margin-top: 15px; color: blue;">
            <div class="name" style="margin-left: 40px; margin-top: 30pt; color: red;">
              <span class="firstname" style="font-size: 28pt;">
                <xsl:value-of select="name/firstname"/>
              </span>
              <span class="lastname" style="font-size: 28pt;">
                <xsl:value-of select="name/lastname"/>
              </span>
            </div>
            <div class="address" style="margin-left: 40px; color: green;">
              <span class="street" style="display: block; font-size: 18pt;">
                <b>Street:</b> <xsl:value-of select="address/street"/>
              </span>
              <span class="city" style="display: block; font-size: 18pt;">
                <b>City:</b> <xsl:value-of select="address/city"/>
              </span>
              <span class="email" style="display: block; font-size: 18pt; color: blue;">
                <b>Email:</b> <xsl:value-of select="address/email"/>
              </span>
              <span class="phone" style="display: block; font-size: 18pt;">
                <b>Phone:</b> <xsl:value-of select="address/phone"/>
              </span>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
