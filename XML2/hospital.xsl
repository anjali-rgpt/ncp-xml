<?xml version="1.0" encoding-"UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
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

<xsl:for-each select="hospital/patient">
<tr>
<td><xsl:value-of select="patname"/></td>
<td><xsl:value-of select="patid"/></td>
<td><xsl:value-of select="paage"/></td>
<td><xsl:value-of select="disease"/></td>
<td><xsl:value-of select="tdname"/></td>
<td><xsl:value-of select="roomno"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>