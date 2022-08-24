<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:msxsl="urn:schemas-microsoft-com:xslt"
   xmlns:user="http://mycompany.com/mynamespace">
  <xsl:output method="html" encoding="utf-8"/>

  <xsl:template match="/">
<!-- Start HTML -->
<html><p><html><head>
<META http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<TITLE>Welcome</TITLE>
<style type="text/css"><![CDATA[<!--
TD.bord1 {
	BORDER-RIGHT: #333333 1px solid; BORDER-TOP: #333333 1px solid; BORDER-LEFT: #333333 1px solid; BORDER-BOTTOM: #333333 1px solid
}
TD.bord2 {
	BORDER-RIGHT: #333333 1px solid; BORDER-TOP: #333333 1px; BORDER-LEFT: #333333 1px solid; BORDER-BOTTOM: #333333 1px solid
}
TR.bord1 {
	BORDER-TOP-WIDTH: 1px; BORDER-RIGHT: #333333 1px solid; BORDER-LEFT: #333333 1px solid; BORDER-BOTTOM: #333333 1px solid
}
TR.bord2 {
	BORDER-RIGHT: #333333 1px solid; BORDER-TOP: #333333 1px; BORDER-LEFT: #333333 1px solid; BORDER-BOTTOM: #333333 1px solid
}
TD {
	FONT: 10px MS Sans Serif, verdana, arial, sans-serif; COLOR: #006699
}
TR {
	FONT: 10px MS Sans Serif, verdana, arial, sans-serif; COLOR: #006699
}
A   { COLOR: #006699; text-decoration: none; }
.style5 {
	color: #FF0000;
	font-weight: bold;
}
-->//]]></style>
<script language="JavaScript" type="text/JavaScript"><![CDATA[
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//]]></script>
</head>
<body topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0" bgcolor="#ffffff" text="#000000" onload="MM_preloadImages('img/1_active.gif','img/2_active.gif','img/3_active.gif')">
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
      <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
        <tr>
          <td valign="bottom" align="left" height="70"><img src="img/quick_launch_logo.gif" width="204" height="70"/></td>
          <td valign="bottom" align="right"><img src="img/heaader_back.gif"/></td>
        </tr>
        <tr>
          <td class="bord1" colspan="2" height="20">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="72" height="20"><img height="20" src="img/menu_left.gif" width="72"/></td>
                <td width="66" height="20"><a href="launch.xml" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Button1','','img/1_active.gif',1)" HIDEFOCUS="true"><img src="img/1_inactive.gif" name="Button1" width="66" height="20" border="0"/></a></td>
                <td width="49" height="20"><a href="whatsnew.xml" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Button2','','img/2_active.gif',1)" HIDEFOCUS="true"><img src="img/2_inactive.gif" name="Button2" width="90" height="20" border="0"/></a></td>
                <td width="66" height="20"><a href="about.htm" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Button3','','img/3_active.gif',1)" HIDEFOCUS="true"><img src="img/3_inactive.gif" name="Button3" width="66" height="20" border="0"/></a></td>
                <td width="76" height="20"><img src="img/menu_right.gif"/></td>
	            <td height="20" align="right" background="img/menu_mid.gif"><a href="mailto:support@wmhelp.com"><img src="img/mail.gif" border="0"/></a><a href="javascript:window.external.openURL('http://www.wmhelp.com')"><img src="img/home.gif" border="0"/></a></td>
              </tr>
	        </table>		  </td>
		</tr>
        <tr>
          <td class="bord2" valign="top" align="left" colspan="2">
            <table width="100%" border="0" cellpadding="0" cellspacing="4">
              <tr>
                <td width="40%" valign="top" class="bord1">
				  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center">
<!-- Recent frame -->
                      <table border="0" cellpadding="4" cellspacing="3" width="98%">
                        <xsl:for-each select="document('%APPDATA%\WMHelp\eGenerator\rss.xml')/rss/channel/item">
                          <tr>
                            <td height="22">
                              <xsl:choose>
                                <xsl:when test="position() mod 2 != 0">
                                  <xsl:attribute name="bgcolor">#FFFFFF</xsl:attribute>
                                </xsl:when>
                                <xsl:otherwise>
                                  <xsl:attribute name="bgcolor">#DEDFD6</xsl:attribute>
                                </xsl:otherwise>
                              </xsl:choose>
                              <p>
                              <xsl:choose>
                                <xsl:when test="position() = 1">
                                  <a href="javascript:window.external.openURL('{link}')"><span class="style5"><xsl:value-of
                                    select="concat(substring(pubDate, 6, 11), ':: ', title)"/></span></a>
                                </xsl:when>
                                <xsl:otherwise>
                                  <strong><a href="javascript:window.external.openURL('{link}')"><xsl:value-of
                                    select="concat(substring(pubDate, 6, 11), ':: ', title)"/></a></strong>
                                </xsl:otherwise>
                              </xsl:choose>
                              <br/><xsl:value-of select="description"/>
                              </p>
                            </td>
                          </tr>
                        </xsl:for-each>
				      </table>
<!-- End Recent frame -->					</td>
                  </tr>
                </table></td>
                
              </tr>
			</table>	      </td>
		</tr>
			  <tr>
			  	<td colspan="2"><div align="center"><img src="img/thanks.gif"/></div></td>
			  </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
</p></html>
</xsl:template>

<xsl:template name="addrow">
    <xsl:param name="row"/>
    <xsl:param name="bgcolor">#FFFFFF</xsl:param>
   <tr>
   <xsl:choose>
     <xsl:when test="$row">    	
       <td height="22" bgcolor="{$bgcolor}">
         <a href="wmh:{$row/@href}"><xsl:value-of select="$row/@projectName"/></a>
       </td>
       <td width="20%" bgcolor="{$bgcolor}"><xsl:value-of select="$row/@lastOpen"/></td>
     </xsl:when>
     <xsl:otherwise>
       <td height="22" bgcolor="#FFFFFF">&#160;</td>
       <td width="20%" bgcolor="#FFFFFF">&#160;</td>
     </xsl:otherwise>
   </xsl:choose>
   </tr>
</xsl:template>

</xsl:stylesheet>
