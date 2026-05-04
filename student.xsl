<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Student Application</title>
    <style>
        body { font-family: Arial; background:#f2f2f2; }
        h2 { text-align:center; color:darkblue; }
        table {
            border-collapse: collapse;
            width: 70%;
            margin: auto;
            background: white;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
        th { background: lightblue; }
    </style>
</head>

<body>

<h2>Student Application</h2>

<table>
<tr>
    <th>Roll No</th>
    <th>Name</th>
    <th>Course</th>
    <th>Marks</th>
    <th>Result</th>
</tr>

<!-- Sorting by marks (descending) -->
<xsl:for-each select="students/student">
    <xsl:sort select="marks" data-type="number" order="descending"/>

    <tr>
        <td><xsl:value-of select="rollno"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="course"/></td>
        <td><xsl:value-of select="marks"/></td>

        <!-- Pass/Fail condition -->
        <td>
            <xsl:choose>
                <xsl:when test="marks &gt;= 40">Pass</xsl:when>
                <xsl:otherwise>Fail</xsl:otherwise>
            </xsl:choose>
        </td>
    </tr>

</xsl:for-each>

</table>

<!-- Average Marks -->
<h3 style="text-align:center;">
Average Marks:
<xsl:value-of select="sum(students/student/marks) div count(students/student)"/>
</h3>

</body>
</html>

</xsl:template>

</xsl:stylesheet>