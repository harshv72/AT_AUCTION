<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style type="text/css">
	body
	{
	margin:10px;
	background-color:#ccff00;
	font-family:verdana,helvetica,sans-serif;
	}
</style>
</head>
<body>
<h1>Product Listing</h1>
<table border="1">
<tr>
<th>Product ID</th>
<th>Product Name</th>
<th>Category ID</th>
<th>Seller ID</th>
<th>Brand</th>
<th>Baseprice(INR)</th>
<th>Quantity</th>
<th>Description</th>
</tr>
<xsl:for-each select="products/product">
<tr>
<td>
<xsl:value-of select="@pid"/>
</td>
<td>
<xsl:value-of select="pname"/>
</td>
<td>
<xsl:value-of select="cid"/>
</td>
<td>
<xsl:value-of select="sid"/>
</td>
<td>
<xsl:value-of select="brand"/>
</td>
<td>
<xsl:value-of select="baseprice"/>
</td>
<td>
<xsl:value-of select="quantity"/>
</td>
<td>
<xsl:value-of select="description"/>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
