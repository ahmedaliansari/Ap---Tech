<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
<title>Student Records</title>
</head>

<body>

<table border="1">
<tr><th colspan="4">Student Records</th></tr>
<tr>
<th>Id</th>
<th>Name</th>
<th>Age</th>
<th>Pass</th>

</tr>

<xsl:for-each select="Teacher/student">

<tr>
<td><xsl:value-of select="@id" /></td>
<td><xsl:value-of select="name" /></td>
<td><xsl:value-of select="age" /></td>
<td><xsl:value-of select="pass" /></td>
</tr>


</xsl:for-each>


</table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>