Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21253EB7C7
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 20:09:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=74E7YfrnNredM96Gav2mowkRkTEr4ipobqmq1h6ghOo=; b=BQ/
	sPpNBDhe8eyj3DdzZf5m3tLtZMp4qyivq+yPlTFR7SR7WgQ9QCIRTzyw7TSAaxf5hB/s1fCBzAMIf
	z3BIw6qrtJ60kctKBRjXxb0Nir4c1fRbEO+ScH2+POzdasE0kR/x/y3DySJK/4Otr9eb0juIoVXqI
	sfqo9mnc3IvZO2SRdc93xhyjP8zW/iAur66Jag3FYXc3M7rvWOO5Vld21+FkfmLxdT7N4Nw4/7r1Y
	PdfWSJxHXS2lySmjF8Yp5YT4IMmSLGmabFtPF6B8Z+a2yVH9fRbZERZxHUIMNuXYR8TIGAYcQ7xqk
	f9iSdVzrVFzy9mxErML9MCuYCihj9Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQFoe-0000vb-4F; Thu, 31 Oct 2019 19:09:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQFoa-0000vR-1K
 for openwrt-devel@bombadil.infradead.org; Thu, 31 Oct 2019 19:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NFWVLuMV3bdAF3r7iAA/IZGi+CgRWPd8Y/7N6l+RRF4=; b=j7H6Z8FJ497Wdd8fXMmQc5oSh8
 AeOAKoX+O+z+EqsRFqx/vlgAW3XuLMgM6doSY0jQOiNjtW1BxnjMQLFmTlISTJ29E0SGxlncakOwB
 JAl6YNOzaaygULaKkZE+Qn3qWsWbEoMEywW6kjNaK3DuEzbI2BtkSzM9M0HeOjAd/XVxy3e6cvD0W
 t4y7SqOdeISZ8ZeJF+qyYZHT8cutFxXGIucOoUCp6os52vZzEeYr/++kaxIjNSmYFYtkIgdA6Xqyl
 Z2z2tOQsygLj/9qFbRsA40rUvnDFICKSQtRgYXKXmuRVkMdZ/cbfXn7ipRfyoejn1CaHjHV7I0KmG
 6HplYdlQ==;
Received: from a2nlsmtp01-03.prod.iad2.secureserver.net ([198.71.225.37])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQFp0-0000bE-R2
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 19:09:29 +0000
Received: from a2plcpnl0214.prod.iad2.secureserver.net ([198.71.228.39])
 by : HOSTING RELAY : with ESMTP
 id QFepitxfjGpSyQFepixitN; Thu, 31 Oct 2019 11:58:55 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=tradeleadszone.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NFWVLuMV3bdAF3r7iAA/IZGi+CgRWPd8Y/7N6l+RRF4=; b=KP62iASVW4iHnQ/82JG6R26i3c
 aerDBoiyKxda6R5597gXZxfG6jR703If1VsynlY3C+0C0/DVIuZINpf8pJdrQHJ4VFQxqNxN+1Wxq
 SI2hEDlYsA64BqRMIQ3O0Y0bNboDmKUr8TneGKvVovt6BIKGBrKdiTV6VftDdedQTTT3cMtsL8eYs
 AryG9bvqbEdl18UkBRz3Xosnk+61DK1OA6a+k3WN6/OjwVQyBmVasCki672IkvUEcxP5z280Z5+TO
 DcJL8v6ktlFfJvjao15xEirZxj5A8H64C6r+RPEos1uLjxh+cbcD9+pvlzTpGAdC6PzyaBBArCLpx
 HuJ3soTA==;
Received: from [122.167.100.162] (port=55080 helo=hpPC)
 by a2plcpnl0214.prod.iad2.secureserver.net with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.92) (envelope-from <jessica.duis@tradeleadszone.com>)
 id 1iQFen-009Kkb-CG
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 11:58:54 -0700
From: "Jessica Duis" <jessica.duis@tradeleadszone.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 31 Oct 2019 14:58:52 -0400
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAAjqCZ/p3fxLtDdspOBMmdPCgAAAGAAAAAAAAAAI6gmf6d38S7Q3bKTgTJnTBPbFAQEAAAAA@tradeleadszone.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdWQDECrt+vxI2YWQaqjsIeakjzCsw==
Importance: High
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2plcpnl0214.prod.iad2.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - tradeleadszone.com
X-Get-Message-Sender-Via: a2plcpnl0214.prod.iad2.secureserver.net: authenticated_id:
 jessica.duis@tradeleadszone.com
X-Authenticated-Sender: a2plcpnl0214.prod.iad2.secureserver.net: jessica.duis@tradeleadszone.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfOemMvljkKaOa4uIMi6FW9qbQbhBsW4cvzF+JDMLsFxd4FbTdw9clEXdMA2qo6otFS65AtlLEchvfGaKB3ZHV19MRLRapN2ua8s01c4BCx1/+F1I3o/D
 BHkbEP86vPrFWK2fvUdculqsIs7NG+QXTZsdMFMpaoV18qTofW8Zd3vMFk5KdYszbiKtbPVIgk/ZNlA1AItv/296O0Y1vCygvApceFLXjRc6pe6YtKAo8x3m
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_190927_209561_24DB65DA 
X-CRM114-Status: UNSURE (  -4.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (2.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 2.0 FILL_THIS_FORM_LONG    Fill in a form with personal information
Subject: [OpenWrt-Devel] Consumer Electronics Show - CES - 2020 Business
 Emails
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
Content-Type: multipart/mixed; boundary="===============8498701072836584414=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8498701072836584414==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_3199_01D58FFB.B6299780"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_3199_01D58FFB.B6299780
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Would you be interested in acquiring a list of "Attendees Contacts List of
Consumer Electronics Show - CES - 2020 ?"

All the contacts includes: Organization Name, Contact Name (First Name,
Middle Name, and Last Name), Job Title, Web Address, Country, City, State,
Address, Phone Number and verified Email Address.

Please let me know your interest to send you the number of Attendees and
cost. 

Awaiting for your reply.

Regards,

Jessica Duis,

Marketing Coordinator.

 


------=_NextPart_000_3199_01D58FFB.B6299780
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
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
@font-face
	{font-family:Papyrus;
	panose-1:3 7 5 2 6 5 2 3 2 5;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
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
p.ox-64c86b2125-msonormal, li.ox-64c86b2125-msonormal, =
div.ox-64c86b2125-msonormal
	{mso-style-name:ox-64c86b2125-msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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

<p class=3DMsoNormal style=3D'line-height:150%'><span =
style=3D'font-size:12.0pt;
line-height:150%'>Hi,<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'line-height:150%'><span =
style=3D'font-size:12.0pt;
line-height:150%'>Would you be interested in acquiring a list of =
<b><span
style=3D'color:#7030A0'>&#8220;<a name=3D"OLE_LINK4"></a><a =
name=3D"OLE_LINK3"></a><a
name=3D"OLE_LINK2"></a><a name=3D"OLE_LINK1"></a><a =
name=3D"OLE_LINK5"></a>Attendees
Contacts List of Consumer Electronics Show - CES &#8211; 2020 =
?&#8221;</span></b></span><b><span
style=3D'font-size:14.0pt;line-height:150%;color:#833C0B'><o:p></o:p></sp=
an></b></p>

<p class=3DMsoNormal style=3D'line-height:150%'><span =
style=3D'font-size:12.0pt;
line-height:150%'>All the contacts includes: Organization Name, Contact =
Name
(First Name, Middle Name, and Last Name), Job Title, Web Address, =
Country,
City, State, Address, Phone Number and verified Email =
Address.<o:p></o:p></span></p>

<p class=3Dox-64c86b2125-msonormal><span =
style=3D'font-family:"Calibri","sans-serif"'>Please
let me know your interest to send you the number of <b>Attendees and =
cost. </b><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'line-height:150%'><span =
style=3D'font-size:12.0pt;
line-height:150%'>Awaiting for your reply.<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'line-height:150%'><b><span =
style=3D'font-size:12.0pt;
line-height:150%;font-family:Papyrus;color:#833C0B'>Regards,<o:p></o:p></=
span></b></p>

<p class=3DMsoNormal style=3D'line-height:150%'><a =
name=3D"_GoBack"></a><b><span
style=3D'font-size:12.0pt;line-height:150%;font-family:Papyrus;color:#833=
C0B'>Jessica
Duis,</span></b><b><span =
style=3D'font-size:12.0pt;line-height:150%;font-family:
Papyrus'><o:p></o:p></span></b></p>

<p class=3DMsoNormal style=3D'line-height:150%'><b><span =
style=3D'font-size:12.0pt;
line-height:150%;font-family:Papyrus;color:#833C0B'>Marketing =
Coordinator.</span></b><b><span
style=3D'font-size:12.0pt;line-height:150%;font-family:Papyrus'><o:p></o:=
p></span></b></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

------=_NextPart_000_3199_01D58FFB.B6299780--



--===============8498701072836584414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8498701072836584414==--


