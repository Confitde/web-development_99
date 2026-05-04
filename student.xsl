<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Student Data</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }
        h2 {
            text-align: center;
            color: darkblue;
        }
        table {
            border-collapse: collapse;
            width: 60%;
            margin: auto;
            background-color: white;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: lightblue;
        }
        tr:hover {
            background-color: #e6f7ff;
        }
    </style>
</head>

<body>

<h2>Student Information</h2>

<table>
    <tr>
        <th>Name</th>
        <th>Roll No</th>
        <th>Course</th>
    </tr>

    <xsl:for-each select="students/student">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="rollno"/></td>
            <td><xsl:value-of select="course"/></td>
        </tr>
    </xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>