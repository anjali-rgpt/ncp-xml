<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">

<html>
<body>
<table border="1">
<tr>
<th>Region</th>
<th>Location</th>
<th>Feature type</th>
<th>ROV Dives</th>
<th>Area covered(ha)</th>
<th>Depth range surveyed(m)</th>
<th>Distance from land (km)</th>
<th>Shipping activity proxy</th>
<th>Items (ha <sup>-1</sup>)</th>
</tr>

<xsl:for_each select="survey/isro">

<xsl:sort select="Items">
<tr>
<td>
<xsl:value_of select="Region" />
</td>
<td>
<xsl:value_of select="Location" />
</td>
<td>
<xsl:value_of select="FeatureType" />
</td>
<td>
<xsl:value_of select="ROVDives" />
</td>
<td>
<xsl:value_of select="AreaCovered" />
</td>
<td>
<xsl:value_of select="Depth" />
</td>
<td>
<xsl:value_of select="LandDistance" />
</td>

<xsl:choose>
<xsl:when test="Proxy = 0.00">
<td color="red">
<xsl:value_of select="Proxy" />
</td>
</xsl:when>

<xsl:otherwise>
<xsl:value_of select="Proxy" />
</xsl:otherwise>
</xsl:choose>

<td>
<xsl:value_of select="Items" />
</td>
</tr>
</xsl:sort>
</xsl:for_each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>