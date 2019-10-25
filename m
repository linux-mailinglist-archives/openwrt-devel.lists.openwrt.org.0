Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29EAE53E2
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 20:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=srzxHUHXtYvcCCK5hk2UHwInJCtbsVZdzHWqG28LNPE=; b=BEJ
	DLYq88y0I6s13o3I0t/HRD+j9BITzPiVkg+6q0c3cW55vigB6m/gFhIWdsjGS6e+HWF/AhXdDi8Lr
	q/sdmAigYaogWndz6RWWksMZ+hZl6g6F0bmiZGHj/OsKK07QTHMsN1Fjp6BLOW8Iqlg3AkWx4bOaM
	n+8vsjJsnoae5sSMIC+U6Ch8LpSfd6kJ7eDRiviSoSnne0kFz8Tjgx0fp9mtJxIstnsMDhGVH+76e
	N3t7jNqThXxEv7i5RaRYbdq2kH0yGFAzRZSWXpUMpa3eP6TnrXxTR9EhBO4+g5BV0T8WTEVHtetvf
	SSuJJMHiNyHvUDTXliz9D/b7R9qtV/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO4dT-0003U8-K1; Fri, 25 Oct 2019 18:48:31 +0000
Received: from n1nlsmtp03.shr.prod.ams1.secureserver.net ([188.121.43.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO4dJ-0003SD-0D
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 18:48:22 +0000
Received: from n3plcpnl0101.prod.ams3.secureserver.net ([160.153.153.168])
 by : HOSTING RELAY : with ESMTP
 id O4bai4zCqLK4aO4bai9aXp; Fri, 25 Oct 2019 11:46:34 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=unibulkmarketingprovider.com; s=default; h=Content-Type:MIME-Version:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f0N2LI+Ir70wjw0bdxzB2yfVEnKKZBSotohgLGAEIeA=; b=ioIyNlVf/tHc7O5goS3r+2GMh
 dQwKXa49C67u0MVwQpCH3X+JyHjIGZEhcuYsJAzhPBqlmxBSiioyB7o7CEvB0OUSDhR8WbKG44V9H
 DoNZPkfeSViOrYZxxEaSYM0oS2magr2Pox8IIz2B8Ei7+Bsqsn5ksZYfYlsRnuS3SFCajqPgCW6cP
 r0/7cs0PXIodWmDJ8coYYQu7Cnk3PC+jimLWKhO0VUoEpSvcX2u5AXEVcA5OncUZnNvNCRsWEo1vJ
 su2/njFqzzDJqvCplp34pRtSy52hT68WkyWa43e2RFSCwXOZ0/nwgOwGYRMQBqzMODVUYkkvbEr1T
 U+KpUoPAA==;
Received: from [180.151.249.166] (port=18794 helo=WS80)
 by n3plcpnl0101.prod.ams3.secureserver.net with esmtpsa
 (TLSv1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92)
 (envelope-from <amber.burns@unibulkmarketingprovider.com>)
 id 1iO4bZ-00AUUf-PF
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 11:46:34 -0700
From: "Amber Burns" <amber.burns@unibulkmarketingprovider.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Sat, 26 Oct 2019 00:16:33 +0530
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAPH2Tkye77dHheeOcSLWoPfCgAAAEAAAAM1owsLIA2ZOje19WYcogo8BAAAAAA==@unibulkmarketingprovider.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdWLZIW1fJvAiXtTT1W1sdeBmawwYg==
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - n3plcpnl0101.prod.ams3.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - unibulkmarketingprovider.com
X-Get-Message-Sender-Via: n3plcpnl0101.prod.ams3.secureserver.net: authenticated_id:
 amber.burns@unibulkmarketingprovider.com
X-Authenticated-Sender: n3plcpnl0101.prod.ams3.secureserver.net: amber.burns@unibulkmarketingprovider.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfECELKqpoUNe3XfFzrqyvAbGDvHE2eV3zHQvzQgZr8v3rv78n6EKKHf/YacociwM/vQWSkW5K9QBSBs8SU2JrKalsDktS38c64ZFGSWrzlR1A7MCEJnJ
 r0i3Zl38KcC8QKM8cvZfv2Ha2/YLqBGWUC8/2oprN7AOxvs1i6rjcLdFz38b1liFA/F60pHhKmqAzeFZeVuP3B8Ye6PiU6fS7ElqSNAgCallkmucUuWLrHK0
 WyUsb0JiOBnse/A3DGMfug==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_114821_212103_7AB491F6 
X-CRM114-Status: UNSURE (  -1.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.121.43.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] Radiologists Database.
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
Content-Type: multipart/mixed; boundary="===============3149279407780144271=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3149279407780144271==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0234_01D58B92.9FBBAAA0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0234_01D58B92.9FBBAAA0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I wanted to check if you'd be interested in procuring records of
Radiologists?

 

If  you are interested let me know your target geography so, that I can
revert with counts and pricing.

 

Awaiting for your quick response.

 

Regards,

Amber Burns

Marketing Manager

 

If you do not wish to receive future emails from us, please reply as
'REMOVE'

 

 


------=_NextPart_000_0234_01D58B92.9FBBAAA0
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

<p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;color:#244061'>Hi,<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;color:#244061'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:10.5pt;color:#244061'>I =
wanted to
check if you&#8217;d be interested in procuring records of =
<b>Radiologists</b>?<o:p></o:p></span></p>

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

<p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;color:#244061'>Regards,<o:p></o:p></span></p>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.5pt;color:#244061'>Amber =
Burns<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.5pt;color:#244061'>Marketing
Manager<o:p></o:p></span></b></p>

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

------=_NextPart_000_0234_01D58B92.9FBBAAA0--



--===============3149279407780144271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3149279407780144271==--


