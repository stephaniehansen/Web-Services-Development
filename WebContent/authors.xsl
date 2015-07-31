<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/authors">
<html>
		<body>
		<xsl:for-each select="author">
		<table border ="1">
		<tr>
		<th><h2><xsl:value-of select="name"/></h2></th>
		<th><xsl:value-of select="email"/></th>
		<th><xsl:value-of select="dob"/></th>
		</tr>
		<tr>
		<th><xsl:value-of select= "bio"/></th>
		</tr>
		<tr>
		<th><xsl:value-of select= "profileImage"/></th>
		</tr>
		</table>
		</xsl:for-each>
		</body>
		</html>
		</xsl:template>
</xsl:stylesheet>