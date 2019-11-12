Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF94F9F4A
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 01:30:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a9uAh+2NIFyBCuaw/RymQoWgdj2eQoEG3LU8mxuqmqk=; b=hqqr47tfgxhCO6gE8yn1HXGdgt
	E36LYeBIGJxxpIlIsd2WtMUkTnKA2D1QmNkXGAxBB0fivs7L7X781C1Opsp9BGO/t8zTjjYPrC366
	kSiQlH9IFk0PIwu16U9CFuyj4iWJkrFL1pdZZfZ84MME6OUY0Vt7wiUV4gTpv3Mof8TJP0FH+k+K8
	IVtlAtV24L/icFQfExwu3JaE2iMEtHDPkBRxLXHvtpd57AiSEglAoWK9D2vVTtARqnQSehTLqdbbb
	cwzebQF1Zy4ms68xHOcGICnPCWKo6/erUDk+vawjn0rPu+UoFBegBxwIpD4zW+FP6sNJFC//v/NVi
	Ynn0ti7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUgYD-0006ZI-QC; Wed, 13 Nov 2019 00:30:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUgY6-0006Yz-Pb
 for openwrt-devel@bombadil.infradead.org; Wed, 13 Nov 2019 00:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zfVz6b5FD5RcLb7Hck0UPl/uBSeByPU2bc8VUFF0yz8=; b=D4zUvg9bNCDo4WPYQshJoB8g21
 raL9pPxDc4nDyMkLiL2bMwTnUfOR7Iq5Nt7eZVwgnD6yw/3DnHztY6wc7yrF2C4102/Kht2q/GYme
 JBwAdzbyiYccTzc7R702T13Ap2QMwc0H5VfXvc3UY9ueDOgaKb71cTbcz6oayv2AscDvO84Qgd9fp
 GmE2M2L3/MHh758cQk+bOlJ+ZYyIpSSbnhJ8Lz6egla1GbZJLaKO1/eVzURgbSPwq5yZM3NxZOuZv
 W9RuP+gwMojDScT63MbFzHCp9awapmGb+GNQVv6RpdGwqW827CkbbvF0XgfhasgXoieEF567nSNYH
 uZ7IaNTA==;
Received: from a2nlsmtp01-03.prod.iad2.secureserver.net ([198.71.225.37])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUgYW-0003Jq-R9
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 00:30:49 +0000
Received: from a2plcpnl0710.prod.iad2.secureserver.net ([198.71.240.27])
 by : HOSTING RELAY : with ESMTP
 id UgChitCJTGpSyUgChiPlzj; Tue, 12 Nov 2019 17:08:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=fortunemicrowebzone.com; s=default; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zfVz6b5FD5RcLb7Hck0UPl/uBSeByPU2bc8VUFF0yz8=; b=JGoZ+bZyCSCiozEjgLrcqCY2nZ
 4bmwGGzYBX0vWGZ0UcW/xwNeYcdkUen8JIqj+v0c3DwIgGFIPGtUY0d1EXoRQsojwzxNH+X/hYDX4
 ymSZaMO4sE2XsT8TN72phDTmCdGXbpN6ZwtqlHQ7K2GB981L4OOoiWprXs8Bqeg4oPR1s05uVj8hB
 sX9BCs3rQkWokF1A05r8WLo8mivTflCmyKv4jsIohsbvUj6a5KKzw8+K8wXC3GB6yeSY9zYdb+SRk
 /3sYXNqPUOEWWwMK9O0CqyppSsKpkjR86Z7ZTc0Y3wnNHUE1hO59+zRG1BIxj8/7aMzPeFH0LjXoi
 BVINd3RA==;
Received: from [89.238.135.144] (port=61263 helo=WS40)
 by a2plcpnl0710.prod.iad2.secureserver.net with esmtpsa
 (TLSv1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92)
 (envelope-from <michelle.thomas@fortunemicrowebzone.com>)
 id 1iUfMN-006sSh-6K
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 16:14:07 -0700
From: "Michelle Thomas" <michelle.thomas@fortunemicrowebzone.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Wed, 13 Nov 2019 04:42:42 +0530
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAG0hQeEkr0hMmLr1IjNcAxHCgAAAEAAAAFDVs6FDtXhFvBh5lbrrQqIBAAAAAA==@fortunemicrowebzone.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 15.0
Importance: High
Thread-Index: AdWZrmZeq38rlLcIRZqbYSiL1LETug==
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2plcpnl0710.prod.iad2.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - fortunemicrowebzone.com
X-Get-Message-Sender-Via: a2plcpnl0710.prod.iad2.secureserver.net: authenticated_id:
 michelle.thomas@fortunemicrowebzone.com
X-Authenticated-Sender: a2plcpnl0710.prod.iad2.secureserver.net: michelle.thomas@fortunemicrowebzone.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfEC9VfWKczEYVfZ1EOT3t91txzdCgZu0oMZtEtJoQTviDvBaxZrsUW6L0FFiqN9EPZsuyEYK9zW3BWOe5fu5ctucm1Yz3hbCfXBdKVpyfNEbvT+PXKbC
 TqzGd2aWs+bVribtvR8sj6TCdqusxnGZOJsTmV49ns0s6E30BLCcuGvn+IukIo+X2uOSvwT70VhVz1IKx31gO3Vs8UPFez1nZPpYxBzAPXPYA3jW4MeoETW6
 xKhESUoBJKBVPjvTVOhNqw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_003046_233748_3435CD9D 
X-CRM114-Status: UNSURE (  -1.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] Attendees list of International Consumer
 Electronics Show Expo 2020
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
Reply-To: michelle.thomas@fortunemicrowebzone.com
Content-Type: multipart/mixed; boundary="===============8552606353929496681=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8552606353929496681==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_04CC_01D599DD.1232A9F0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_04CC_01D599DD.1232A9F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

We are providing the Attendees list of International Consumer Electronics
Show Expo 2020?

With 19,800 visitors.

If you are interested, please let me know your thoughts, so that I can send
you the pricing for it. 

Best Regards,

Michelle Thomas - Business Analyst

 

If you do not wish to hear from us again, please respond back with and we
will honour your request

 

 


------=_NextPart_000_04CC_01D599DD.1232A9F0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Kalinga;
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Lucida Bright";
	panose-1:2 4 6 2 5 5 5 2 3 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.5in;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, =
div.MsoListParagraphCxSpFirst
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, =
div.MsoListParagraphCxSpMiddle
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, =
div.MsoListParagraphCxSpLast
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.5in;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US><div =
class=3DWordSection1><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-IN>Hi,</span></p><p class=3DMsoNormal><span lang=3DEN-IN>We =
are providing the Attendees list of <b>International Consumer =
Electronics Show </b></span><b><span =
style=3D'font-size:10.0pt;line-height:105%;font-family:"Helvetica","sans-=
serif";color:black;background:#FBFBFB'>Expo 2020?</span></b><span =
style=3D'font-size:12.0pt;line-height:105%;color:black'><o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-IN>With <b>19,800 =
visitors</b>.</span><span style=3D'color:black'><o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-IN>If you are interested, please let me know your thoughts, so =
that I can send you the <b>pricing</b> for it. </span><span =
style=3D'font-family:"Times New Roman","serif"'><o:p></o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-IN style=3D'color:black'>Best =
Regards,<o:p></o:p></span></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:9.0pt;line-height:105%;font-family:"Lucida =
Bright","serif"'>Michelle Thomas</span></b><b><span =
style=3D'font-family:"Kalinga","sans-serif";color:#1F4E79'> &#8211; =
Business Analyst</span></b></p><p class=3DMsoNormal><b><span =
style=3D'font-family:"Kalinga","sans-serif";color:#1F4E79'><o:p>&nbsp;</o=
:p></span></b></p><p class=3DMsoNormal><span lang=3DEN-IN =
style=3D'font-size:9.0pt;line-height:105%;font-family:"Verdana","sans-ser=
if"'>If you do not wish to hear from us again, please respond back with =
and we will honour your request</span><span style=3D'font-family:"Times =
New Roman","serif"'><o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_04CC_01D599DD.1232A9F0--



--===============8552606353929496681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8552606353929496681==--


