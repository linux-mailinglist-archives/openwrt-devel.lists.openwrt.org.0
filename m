Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6E4111BF2
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 23:39:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dvQnbn8pDx1qvHc30xxTD7015gtEGrgelY4FLtafgRs=; b=Hd0
	rutRA6GOXtQJQbrcnATtypU6bW/jJxg+jEtae8fHMklUz+42dH94pgPOkV93LTLtWM0iO3UAbsBNd
	wb0EwPIpuZ4NSSdiWcQYwRD0zchYLY/HZ3ZXcBgOh2ST1nbt+y2w3YzE5qkkB1IxfG09rx1qefgzq
	MZyt2rXlbkrNfMJsI5ljgRtoCQFkKARAb9lkJt3NhAXaH1UaQX4RjSYUh+jI0Vs/n7KT0VZWPH7vQ
	pnvvJbcnYy8fvwUszkhA0GjryL2F1wHSxOE1N4K6fDhwS6BIpRjhfupVNaXuVNIKsSilzlbiX9/pq
	EmcSN8qtqhxfiRhzQj8MaY4NMYxbqAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icGpF-00067O-PK; Tue, 03 Dec 2019 22:39:21 +0000
Received: from a2nlsmtp01-02.prod.iad2.secureserver.net ([198.71.225.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icGp5-0005yY-Mc
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 22:39:13 +0000
Received: from a2plcpnl0798.prod.iad2.secureserver.net ([107.180.108.21])
 by : HOSTING RELAY : with ESMTP
 id cGnPi5BR0rYPLcGnPi5Pq6; Tue, 03 Dec 2019 15:37:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=dataexcelbiz.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b72sAlUTHicGxE010q8aH0YQaWvgkfnIiBh50EVkbPw=; b=C8fmfiwbH13zpvPO6H9yQ/UJEV
 Bo3WF7tAOyadY5mjwRLhzGkYFMWWpzPwWOLCOmwWHi/5dbZ32UOPo2sQ06qxHevbzeuREgjQkPtFa
 Td5As3Qe2hjHwNEhY4vEvlUQeS5+J62mT3xb/jw+QiP0PoFHEK2l+ip00b6V+tqAe/kXoXrdmmNKm
 fwIzLOQyEHG9+Dkmcn7U75JrGgiz2un4sRr1Qi3cbMOBmk8yV9cOsTf9IRDhQyOoVBSuPvxUDE6sG
 NV8UDFs5Co2dgIbFE41bjjfz+uAvDJdEvMhUS22iTyRnFfMKWxpiFS/4WrUuCXI+NMAYmnz9Gxy30
 DtJW7QDQ==;
Received: from [125.99.252.138] (port=45405 helo=WS80)
 by a2plcpnl0798.prod.iad2.secureserver.net with esmtpsa
 (TLSv1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92)
 (envelope-from <louise.davila@dataexcelbiz.com>) id 1icGZH-001uR6-BK
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 15:22:51 -0700
From: "Louise Davila" <louise.davila@dataexcelbiz.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Wed, 4 Dec 2019 03:52:36 +0530
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAM47CqPN9MVNk3I8auAjAXDCgAAAEAAAAOEs53yauCdLtE19isFcRrABAAAAAA==@dataexcelbiz.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdWqKCUuk3iHUChjSZahRNXAPmy6Dg==
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2plcpnl0798.prod.iad2.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - dataexcelbiz.com
X-Get-Message-Sender-Via: a2plcpnl0798.prod.iad2.secureserver.net: authenticated_id:
 louise.davila@dataexcelbiz.com
X-Authenticated-Sender: a2plcpnl0798.prod.iad2.secureserver.net: louise.davila@dataexcelbiz.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfDRmys3Nfp8xOSqYQVjjJcd9KXamBMT3DYrOQNvlBFtnE6covOV4nMrhRLNxbbxXZyB8ppGclTzZnpajdXFO7kbgR/cxQ18HvzHdfeQwQ/tPHZgB5951
 91CAIGdTqQCCiCVgni1T6Tst0MVq7t6lt/UVnefovbRdk3/KpJz1WM4bwRxXF8016l+j+27u1CHbsaco2JuxqvcZONYQ0mFgYUuPXP95Ui2byU6HRQ/72Ifm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_143911_842026_941AE718 
X-CRM114-Status: UNSURE (  -1.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.71.225.36 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [198.71.225.36 listed in bl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] Contact List of Urologists
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
Content-Type: multipart/mixed; boundary="===============6340450792112728144=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6340450792112728144==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_015C_01D5AA56.4D1F6470"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_015C_01D5AA56.4D1F6470
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

 

Hi,

 

I wanted to check if you'd be interested in procuring records of Urologists?

 

If  you are interested let me know your target geography so, that I can
revert with counts and pricing.

 

Awaiting for your quick response.

 

Best Regards,

Louise Davila

Sr. Marketing Manager

 

If you do not wish to receive future emails from us, please reply as
'REMOVE'

 

 


------=_NextPart_000_015C_01D5AA56.4D1F6470
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;color:#244061'>Hi,<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;color:#244061'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:10.5pt;color:#244061'>I =
wanted to
check if you&#8217;d be interested in procuring records of =
<b>Urologists</b>?<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;color:#244061'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;color:#244061'>If&nbsp; you are
interested let me know your target geography<b> </b>so, that I can =
revert with
counts and pricing.<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;color:#244061'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;color:#244061'>Awaiting for
your quick response.<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;color:#244061'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:10.5pt;color:#244061'>Best =
Regards,<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'font-size:10.5pt;
color:#002060'>Louise Davila<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.5pt;color:#244061'>Sr.
Marketing Manager<o:p></o:p></span></b></p>

<p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;color:black'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:8.0pt;color:gray'>If you =
do not wish
to receive future emails from us, please reply as =
&#8216;REMOVE&#8217;<o:p></o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

------=_NextPart_000_015C_01D5AA56.4D1F6470--



--===============6340450792112728144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6340450792112728144==--


