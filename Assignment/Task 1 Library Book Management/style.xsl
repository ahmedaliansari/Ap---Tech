<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
<title>Library Book Management DTD</title>

<style>
  table {
    border-collapse: collapse;
    width: 80%;         
    margin: 50px auto; 
  }
  th, td {
    border: 1px solid black;
    padding: 8px;      
    text-align: left;
  }
  th {
    background-color: #f2f2f2;
  }
  h1{
    margin:50px;
    text-align:center;
  }
</style>    

</head>
<body>

<h1>Library Book Management</h1>

<table border="1">

<tr>
<th>ID</th>
<th>Title</th>
<th>Author 1</th>
<th>Author 2</th>
<th>Year</th>
<th>Category</th>
<th>Price</th>
</tr>

<xsl:for-each select="library/book">
<tr>
  <td><xsl:value-of select="@id"/></td>
  <td><xsl:value-of select="title"/></td>
  <td><xsl:value-of select="author[1]"/></td>
  <td><xsl:value-of select="author[2]"/></td>
  <td><xsl:value-of select="year"/></td>
  <td><xsl:value-of select="category"/></td>
  <td><xsl:value-of select="price"/></td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>