<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>

<head>
<style>
th{
    font-family:sans-serif;
    font-size:16pt;
}

th,tr{
    padding:1em;
    text-align:center;
}


</style>
</head>

<body>
<h1>Patient Records</h1>

<table border="1">
<tr>
<th>Patient Name</th>
<th>Patient ID</th>
<th>Patient Age</th>
<th>Disease</th>
<th>Treating Doctor Name</th>
<th>Room Number</th>
</tr>

<xsl:for-each select="/hospital/patient">
<xsl:sort select="patname"/>
<tr>
<xsl:choose>
<xsl:when test="paage &gt; 50">
<td style="background-color:lightblue; color:black;"><xsl:value-of select="patname"/></td>
<td style="background-color:lightblue; color:black;"><xsl:value-of select="patid"/></td>
<td style="background-color:lightblue; color:black;"><xsl:value-of select="paage"/></td>
<td style="background-color:lightblue; color:black;"><xsl:value-of select="disease"/></td>
<td style="background-color:lightblue; color:black;"><xsl:value-of select="tdname"/></td>
<td style="background-color:lightblue; color:black;"><xsl:value-of select="roomno"/></td>
</xsl:when>
<xsl:otherwise>
<td style="background-color:red; color:white;"><xsl:value-of select="patname"/></td>
<td style="background-color:red; color:white;"><xsl:value-of select="patid"/></td>
<td style="background-color:red; color:white;"><xsl:value-of select="paage"/></td>
<td style="background-color:red; color:white;"><xsl:value-of select="disease"/></td>
<td style="background-color:red; color:white;"><xsl:value-of select="tdname"/></td>
<td style="background-color:red; color:white;"><xsl:value-of select="roomno"/></td>
</xsl:otherwise>
</xsl:choose>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>