<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>Document</title>
    <style>
        table{
            color: black;
        }
    </style>
</head>
<body>
    <header><h1>Employee Management System</h1></header>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Salary</th>
            <th>Email</th>
            <th>MobNum</th>
            <th>Designation</th>
            <th>Promotion</th>
        </tr>
        <xsl:for-each select="company/employee"></xsl:for-each>
        <tr>
            <td><xsl:value-of select="Emp-Id"/></td>
            <td><xsl:value-of select="Emp-name"/></td>
            <td><xsl:value-of select="Emp-age"/></td>
            <td><xsl:value-of select="Emp-salary"/></td>
            <td><xsl:value-of select="Emp-emailid"/></td>
            <td><xsl:value-of select="Emp-phonenum"/></td>
            <td><xsl:value-of select="Emp-designation"/></td>
            <xsl:choose>
                <xsl:when test="age &gt;=50">
                    <td>Associate Project Manager</td>
                </xsl:when>
                <xsl:when test="age &gt;= 40 &amp; age &lt; 49">
                    <td>Team Leader</td>
                </xsl:when>
                <xsl:when test="age &lt; 40">
                    <td>Developer</td>
                </xsl:when>
                </xsl:choose>
        </tr>
    </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>