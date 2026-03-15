<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
<title>Student Record</title>
</head>
<body>

<table border="1">
<tr><th colspan="4">Student Records</th>
</tr>

<tr>
<th>Id</th>
<th>Name</th>
<th>Course</th>
<th>Age</th>
</tr>

<xsl:for-each select="Student/user">

<tr>
<td><xsl:value-of select="@id" /></td>
<td><xsl:value-of select="name" /></td>
<td><xsl:value-of select="course" /></td>
<td><xsl:value-of select="age" /></td>
</tr>

</xsl:for-each>
</table>

</body>
</html>


</xsl:template>
</xsl:stylesheet>