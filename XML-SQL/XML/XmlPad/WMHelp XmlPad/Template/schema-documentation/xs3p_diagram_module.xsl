<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 exclude-result-prefixes="xsd">

	<!--Prints out the diagram image-->

	<xsl:template name="PrintDiagram">
		<xsl:param name="base_IMG_URL"/>	
		<xsl:if test="normalize-space(translate($printDiagram,'TRUE','true'))='true' and local-name(.) = 'complexType' or local-name(.) = 'element'">
			<tr>
				<th>Diagram</th>
				<td>
					<xsl:element name="img">
						<xsl:attribute name="src">
							<xsl:value-of select="concat($base_IMG_URL, local-name(.), '_', @name, '.jpg')"/>
						</xsl:attribute>
					</xsl:element>
				</td>
			</tr>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>