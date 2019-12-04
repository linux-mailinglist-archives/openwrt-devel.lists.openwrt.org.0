Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEBB112D2B
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Dec 2019 15:03:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=peCq1m/VXkKBX0SrJv+6XmgePe4egHAce5h9s6I1Uok=; b=h9L
	uDFFjdRW2HdNVe1CFAtgAKpS/2jveqiruO6O8zQ/58C3rwdZAEwPFv0QK7ZlD5llZ4WhXKy4cCcxC
	ofrd2BgltV+lxZPUwIs/ML6pGgkdiDTgAdWbFGqAjFYiRf70a9fPIpx6MC8uslqw+iAG/amADjMzA
	WdXwjCaTkQr3y2QiwsRYTKexpDG5d4q61sMwcCGCJIFQrKmjE8jdY/NVt2GJiJheIB2Ex8/8Cno8J
	mD8z/Ly58cQwcSgBaZ5txda3O3fDDbU1IAMuCe6fG1bUQnU4HLlFlylAF5JOd6ahIQVxxE5CWDZQJ
	wyARQRNDpS+YTrv27Y59BhrxASmPjhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVFW-0003qN-L3; Wed, 04 Dec 2019 14:03:26 +0000
Received: from a2nlsmtp01-01.prod.iad2.secureserver.net ([198.71.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVFO-0003S1-5N
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 14:03:20 +0000
Received: from a2plcpnl0214.prod.iad2.secureserver.net ([198.71.228.39])
 by : HOSTING RELAY : with ESMTP
 id cVDhiOvTJRQO4cVDhizRfY; Wed, 04 Dec 2019 07:01:33 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=starexpolists.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ojyE7kxc48/wLZapeHEoZHQ4BiBA/yaGfSeFQ9lG/q0=; b=h7p9Orfy7cS+z7XMy7XKJ2QtRl
 A4qOX1Rr/XZtqcHkbjX+42vw+/Nrd9Q6u2mjUULCwMAH5ExYhDRXXGkFArM/1y90cZzxaqRkp2Wk/
 mbW3XxRdmtUDriAsaAMPHXb5GE5x8Xq94f2012L//4UwObdxniSLngfVVvn9UDQf1/AyRhKrsWi6Q
 7ATyaG1Wz+HU3j6ivebH2vHFJBBFkavStUGL2OkWvt98QOIWbfsNDPmrO+4jSPQdn2htBWxa7mXE9
 gdCeIp+VGnU1h1NBRiwXHOwA7Jc5BtXBjJaUPAorf/ZHV7Nfy4YmhleXQ/2b/BSHwrNBg69VviaYd
 Xtd7D4JA==;
Received: from [122.182.200.94] (port=54914 helo=AdminPC)
 by a2plcpnl0214.prod.iad2.secureserver.net with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.92) (envelope-from <robert.clark@starexpolists.com>)
 id 1icVDh-00Ai2I-4D
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 07:01:33 -0700
From: "Robert Clark" <robert.clark@starexpolists.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Wed, 4 Dec 2019 09:01:21 -0500
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAANfBhiMXAwpEt74h+2IYpRjCgAAAGAAAAAAAAADXwYYjFwMKRLe+IftiGKUYhDjvAQEAAAAA@starexpolists.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdWqiA+yVD86wYCqTU6MBP1CNJawkQ==
Importance: High
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2plcpnl0214.prod.iad2.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - starexpolists.com
X-Get-Message-Sender-Via: a2plcpnl0214.prod.iad2.secureserver.net: authenticated_id:
 robert.clark@starexpolists.com
X-Authenticated-Sender: a2plcpnl0214.prod.iad2.secureserver.net: robert.clark@starexpolists.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfDQPv3/H3Njkf8OemB5zZ29cS1PXTiPAeYUNCyWMmj6JGg6tJJ4UTCEUdut+1AHEQttvWx5IxaBAhH34xnP96Sv0hmX1Ftze5f+25pBIp2RYyECsXYZ/
 wXgt3de8jdqT64Epqzp8oekRix/eBpCuUufXJ/fzoEaiNbfwOAdApIYIrPJDprElwBLA6FSAD59yPUATDGGKHsEWbhKxnQ2GI3dijjwfkHcRWPLp7Vmv+Qh8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_060318_353566_92F2602C 
X-CRM114-Status: UNSURE (  -3.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.71.224.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 1.0 FROM_FMBLA_NEWDOM14    From domain was registered in last 7-14 days
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Content-Type: multipart/mixed; boundary="===============1594915497983043657=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1594915497983043657==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_6A41_01D5AA81.6B2B4A80"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_6A41_01D5AA81.6B2B4A80
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I am just doing follow up to check if you are interested in acquiring the
Attendees list "Consumer Electronics Show - CES - 2020?"

 

List Include Details Like: 

Company Name, Contact Name, First Name, Middle Name, Last Name, Job Title,
Website, Address, Phone Number, Fax Number, SIC Codes and Most importantly
verified Email Address.

 

Please let me know your interest to send you the number of Attendees and
cost.

 

Awaiting your reply

 

Regards,

Robert Clark,

Marketing Executive

 


------=_NextPart_000_6A41_01D5AA81.6B2B4A80
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
	{font-family:Candara;
	panose-1:2 14 5 2 3 3 3 2 2 4;}
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
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
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

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#632423'>Hi,<o:p></o:p></span></b></p>

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#632423'>&nbsp;<o:p></o:p></span></b></p>

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#632423'>I am just doing follow up to check if you are interested =
in
acquiring the Attendees list</span></b><span =
class=3Dapple-converted-space><i><span
style=3D'font-size:10.0pt;color:#5F497A'>&nbsp;</span></i></span><b><span=

style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";color:#E36C0=
A'>&#8220;Consumer
Electronics Show - CES - 2020?&#8221;<o:p></o:p></span></b></p>

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#E36C0A'>&nbsp;<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;line-height:115%;
font-family:"Candara","sans-serif";color:#E36C0A'>List Include Details =
Like: <o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;line-height:115%;
font-family:"Candara","sans-serif";color:#632423'>Company Name, Contact =
Name, First
Name, Middle Name, Last Name, Job Title, Website, Address, Phone Number, =
Fax
Number, SIC Codes and Most importantly verified Email =
Address.<o:p></o:p></span></b></p>

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#632423'>&nbsp;<o:p></o:p></span></b></p>

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#632423'>Please let me know your interest to send you the number =
of
Attendees and cost.<o:p></o:p></span></b></p>

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#632423'>&nbsp;<o:p></o:p></span></b></p>

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#632423'>Awaiting your reply<o:p></o:p></span></b></p>

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#632423'>&nbsp;<o:p></o:p></span></b></p>

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#E36C0A'>Regards,<o:p></o:p></span></b></p>

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#E36C0A'>Robert Clark,<o:p></o:p></span></b></p>

<p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'font-size:10.0pt;font-family:"Candara","sans-serif";
color:#E36C0A'>Marketing Executive<o:p></o:p></span></b></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

------=_NextPart_000_6A41_01D5AA81.6B2B4A80--



--===============1594915497983043657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1594915497983043657==--


