<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<body>
<h2>Student List</h2>

<table border="1">
<tr>
  <th>Name</th>
  <th>Age</th>
  <th>Course</th>
</tr>

<xsl:for-each select="students/student">
<tr>
  <td><xsl:value-of select="name"/></td>
  <td><xsl:value-of select="age"/></td>
  <td><xsl:value-of select="course"/></td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>