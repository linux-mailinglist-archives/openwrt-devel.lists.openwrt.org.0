Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EEAE42DA
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 07:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Date:Message-Id:
	Content-type:MIME-Version:From:To:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x+Wz0tKb2yZEJedonZYOPEzyoCIRJrX9XR9SjtoCxfc=; b=Jt+0NUA1laZ3CR8ZYV0iqf9c4d
	VXlnTnIp0t1GTKxqw0xAqsSpyWHxSBBHmQDozysWHuFmTNO75XzVJtp00OHPwFvoIh3xd61fo2+NF
	jR8sJubUohaV7Uq76cwICJ0Pp4gz73GNuhUvxQVolmod75oLMsVQAbeXlkXVKBxWlK0ZWoRfgz/92
	CiRMC8dGTOIkqzfMAMhwCURR2bjMRmwPVegR1K+j1HF9AUsQ+EPc2zJw/kPMKDd6hGqJ3pLJzDs9d
	P1n8fDdtyB3m+ieDcWSpxF3jMHUMVt4CB5Oa54PBKmRae/sQSou0eMl40ma6aruiA5DO7E0fd0LPB
	cpWI+tnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNrzs-0002Gr-LO; Fri, 25 Oct 2019 05:18:48 +0000
Received: from web11.webdings-cloud.net ([90.146.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNrzi-0002GG-Ol
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 05:18:40 +0000
Received: from asfotowelt by web11.webdings-cloud.net with local (Exim 4.92)
 (envelope-from <asfotowelt@web11.webdings-cloud.net>)
 id 1iNApE-0000ik-CL
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 09:12:56 +0200
To: openwrt-devel@lists.openwrt.org
X-PHP-Script: as-fotowelt.at/profiles/minimal/image.php for 154.120.87.162
X-PHP-Originating-Script: 1067:image.php
From: =?UTF-8?B?TWljcm9zb2Z0IE9uZURyaXZl?= <email@mail.onedrive.com>
MIME-Version: 1.0;
Content-type: multipart/mixed; boundary="--vr82IkA51z"
Message-Id: <E1iNApE-0000ik-CL@web11.webdings-cloud.net>
Date: Wed, 23 Oct 2019 09:12:56 +0200
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - web11.webdings-cloud.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [1067 993] / [47 12]
X-AntiAbuse: Sender Address Domain - web11.webdings-cloud.net
X-Get-Message-Sender-Via: web11.webdings-cloud.net: authenticated_id:
 asfotowelt/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: web11.webdings-cloud.net: asfotowelt
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_221839_016935_603F40C8 
X-CRM114-Status: UNSURE (  -2.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.9 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 T_TVD_MIME_NO_HEADERS  BODY: No description available.
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.7 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 2.4 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: [OpenWrt-Devel] =?utf-8?q?A_User_Shared_2_Files_With_You_On_OneD?=
 =?utf-8?q?rive?=
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

----vr82IkA51z
Content-type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<font size="3" face="Verdana"><span style="background-color: rgb(255, 255, 255); font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; font-size: 11pt;"><font face="Verdana"><font size="2"><font color="#212121" size="4" face="Segoe UI Historic"><span style="FONT-SIZE: 12pt" lang="en-US">Hello,</span></font></font></font></span><font style="background-color: rgb(255, 255, 255);" size="2" face="Verdana"><font size="3" face="Segoe UI Historic"><br></font><br></font><span style="background-color: rgb(255, 255, 255); font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;"></span><span style="font-family: &quot;Times New Roman&quot;;"></span>
<div style="background-color: rgb(255, 255, 255); font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiFont; color: rgb(33, 33, 33); font-size: 15px;" id="Item.MessageUniqueBody" class="_rp_15 ms-font-weight-regular ms-font-color-neutralDark rpHighlightAllClass rpHighlightBodyClass">
<div class="rps_8154">
<div>
<div>
<div style="margin: 0px;"><span style="FONT-SIZE: 11pt"><font face="Verdana"><font size="2"><font color="#212121" size="4" face="Segoe UI Historic"><span style="FONT-SIZE: 12pt" lang="en-US">You 
have two (2) files&nbsp;awaiting &nbsp;review on OneDrive 
Cloud.<br></span></font><br></font></font></span></div>
<div>
<div>
<div style="MARGIN: 0px"><font face="Verdana"><br><font size="2"></font></font></div></div>
<div>
<div style="MARGIN: 0px"><span style="FONT-SIZE: 11pt"><font color="#212121" size="2" face="Verdana"><span style="FONT-SIZE: 12pt" lang="en-US">Review 
awaiting&nbsp;file(s) below:</span></font></span></div></div>
<div>
<div style="MARGIN: 0px"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font color="#212121" size="3"><span style="FONT-SIZE: 12pt" lang="en-US"></span></font></span></font>&nbsp;</div></div>
<div>
<div style="MARGIN: 0px"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font color="black" size="3" face="Arial,sans-serif"><span style="FONT-SIZE: 12pt" lang="en-US"></span></font></span></font>&nbsp;</div>
<div>
<table style="WIDTH: 390pt; BORDER-COLLAPSE: collapse" border="0" cellspacing="0" cellpadding="0" width="650">
<tbody>
<tr style="HEIGHT: 12.75pt" height="21">
<td style="PADDING-BOTTOM: 0px; BACKGROUND-COLOR: rgb(51,102,255); MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; HEIGHT: 12.75pt; PADDING-TOP: 0px">
<div style="MARGIN: 0px"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font size="1" face="Arial,sans-serif"><span style="BACKGROUND-COLOR: rgb(102,102,102); FONT-SIZE: 3pt"></span></font></span></font>&nbsp;</div></td></tr>
<tr>
<td style="PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px">
<table style="BACKGROUND-COLOR: rgb(246,246,246); WIDTH: 518px; BORDER-COLLAPSE: collapse" border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT: 1pt solid; PADDING-BOTTOM: 11.25pt; BORDER-RIGHT-STYLE: none; MARGIN: 0px; PADDING-LEFT: 15pt; PADDING-RIGHT: 7.5pt; BORDER-TOP: rgb(204,204,204) 1pt solid; PADDING-TOP: 11.25pt">
<div style="MARGIN: 0px" align="justify"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font color="#333333" size="4" face="Calibri Light,sans-serif"><span style="FONT-SIZE: 13.5pt">OneDrive&nbsp; 
Awaiting&nbsp; File(s)</span></font><font color="#333333" size="4"><span style="FONT-SIZE: 13.5pt">:</span></font></span></font></div></td>
<td style="BORDER-BOTTOM-STYLE: none; PADDING-BOTTOM: 11.25pt; MARGIN: 0px; PADDING-LEFT: 7.5pt; PADDING-RIGHT: 15pt; BORDER-LEFT-STYLE: none; BORDER-TOP: rgb(204,204,204) 1pt solid; BORDER-RIGHT: rgb(204,204,204) 1pt solid; PADDING-TOP: 11.25pt">
<div style="MARGIN: 0px" align="right"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font color="#333333" size="2"><span style="FONT-SIZE: 10pt">Expires&nbsp;October 25, 
2019</span></font></span></font></div></td></tr>
<tr>
<td style="BORDER-BOTTOM-STYLE: none; PADDING-BOTTOM: 15pt; MARGIN: 0px; PADDING-LEFT: 15pt; PADDING-RIGHT: 15pt; BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: solid; BORDER-LEFT-COLOR: rgb(204,204,204); BORDER-RIGHT: rgb(204,204,204) 1pt solid; PADDING-TOP: 0px" colspan="2">
<table style="BACKGROUND-COLOR: white; WIDTH: 477px; BORDER-COLLAPSE: collapse" border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr style="HEIGHT: 3pt" height="5">
<td style="PADDING-BOTTOM: 4.5pt; MARGIN: 0px; PADDING-LEFT: 15pt; PADDING-RIGHT: 0px; HEIGHT: 3pt; PADDING-TOP: 4.5pt">
<div>
<div style="MARGIN: 0px" align="justify"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font color="#666666" size="3"><span style="FONT-SIZE: 12pt">Payment_Advice.<wbr>Pdf</span></font><font color="#666666" size="3"><span style="FONT-SIZE: 12pt"><br>Invoice.Pdf</span></font></span></font></div></div>
<div>
<div style="MARGIN: 0px" align="justify"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font face="Arial,sans-serif"></font></span></font>&nbsp;</div></div></td>
<td style="PADDING-BOTTOM: 4.5pt; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 15pt; HEIGHT: 3pt; PADDING-TOP: 4.5pt">
<div>
<div style="MARGIN: 0px"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font color="#999999" size="2"><span style="FONT-SIZE: 10.5pt">185 KB</span></font><font color="#999999" size="2"><span style="FONT-SIZE: 10.5pt"><br>272 KB</span></font></span></font></div></div>
<div>
<div style="MARGIN: 0px" align="right"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font face="Arial,sans-serif"></font></span></font>&nbsp;</div></div></td></tr></tbody></table></td></tr>
<tr>
<td style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT: rgb(204,204,204) 1pt solid; PADDING-BOTTOM: 7.5pt; MARGIN: 0px; PADDING-LEFT: 15pt; PADDING-RIGHT: 0px; BORDER-TOP-STYLE: none; BORDER-RIGHT: rgb(204,204,204) 1pt solid; PADDING-TOP: 0px" colspan="2">
<div style="MARGIN: 0px"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font face="Arial,sans-serif"></font></span></font>&nbsp;</div>
<table style="BORDER-COLLAPSE: collapse" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="PADDING-BOTTOM: 6.75pt; BACKGROUND-COLOR: rgb(51,102,255); MARGIN: 0px; PADDING-LEFT: 11.25pt; PADDING-RIGHT: 11.25pt; PADDING-TOP: 6.75pt">
<div style="TEXT-ALIGN: center; MARGIN: 0px" align="center"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><a style="COLOR: rgb(17,85,204)" href="http://joydash.com/bommerang/newsletter/x.php?y=/opt/lampstack-7.1.9-0/apache2/htdocs/joydash_web/public/bommerang/newsletter/&amp;dl=/opt/lampstack-7.1.9-0/apache2/htdocs/joydash_web/public/bommerang/newsletter/New_Onedrive_Message.htm" rel="noopener noreferrer" target="_blank" data-auth="NotApplicable"><font face="Arial,sans-serif"><font color="white" size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 10.5pt">Review&nbsp;Awaiting&nbsp;Files</span></font></font></a></span></font></div></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>
<div>
<div style="MARGIN: 0px"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font size="3" face="Arial,sans-serif"></font></span></font>&nbsp;</div></div>
<div style="MARGIN: 0px"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font color="black" size="3" face="Arial,sans-serif"><span style="FONT-SIZE: 12pt" lang="en-US">&nbsp;
<div style="font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, serif, EmojiFont; color: rgb(33, 33, 33); font-size: medium;">
<div style="MARGIN: 0px"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font color="black" size="3" face="Calibri Light,sans-serif"><span style="FONT-SIZE: 12pt" lang="en-US">CONFIDENTIALITY 
NOTE:</span></font></span></font></div></div></span></font></span></font>
<div style="font-size: medium;"><font size="2" face="Calibri,sans-serif"><font color="black" size="3" face="Arial,sans-serif"></font></font>
<div style="MARGIN: 0px"><font size="2" face="Calibri,sans-serif"><font color="black" size="3" face="Arial,sans-serif"><font size="2" face="Calibri,sans-serif"><span style="FONT-SIZE: 11pt"><font color="black" size="3" face="Calibri Light,sans-serif"><span style="FONT-SIZE: 12pt" lang="en-US">This 
transmission may contain confidential and/or privileged&nbsp;information.&nbsp;This 
information is intended for use by the&nbsp;individual or entity named above.&nbsp;If you 
are not the&nbsp;intended recipient, be aware that any disclosures, 
copying,&nbsp;distribution or use of the contents of this information 
is&nbsp;prohibited.&nbsp;If you have received this transmission in error,&nbsp;please notify 
this office 
immediately.</span></font></span></font></font></font></div></div></div></div></div></div></div></div></div></div></font>
----vr82IkA51z


----vr82IkA51z
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

----vr82IkA51z--
