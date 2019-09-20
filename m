Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ECEB927D
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 16:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fber7DTigTbsik/Vmkf6TeS5/a8OWbSheGwcnM84Uak=; b=kNa
	D5GYEcD/35GUbkZaedv9EBWtlOQt20ID/Wk0/OFjjHkH11kMui5Siip9pc3WZOpCe9Dk+HxHoANpw
	XQ+o7jt/mcO75Eey2uSLSJYXcnC3c34dhE2MBiN+SpKHyvGIputRyY0aB4U+aT/mmHgAl/ZGfuPq1
	5eCAbnI/cTvEmL0PYe7DKGCUFAFv1tFu0CmpbaitGqdq2pFNdmNoPs/FgaE0iWNOty0uQWKDdwuTG
	D5zSD6OeQRUGrGqiInarSXgJKcDhTFHj8h2QUsYw7sfFDkLnm9Yv7LWrCeyBchXeeAjJBrkEOb8/C
	Qw3N6XTneYxEP24y6S6hlfvGboKFDTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJyY-0007p7-T8; Fri, 20 Sep 2019 14:33:34 +0000
Received: from a2nlsmtp01-04.prod.iad2.secureserver.net ([198.71.225.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJyT-0007kX-1S
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 14:33:30 +0000
Received: from a2plcpnl0716.prod.iad2.secureserver.net ([198.71.240.37])
 by : HOSTING RELAY : with ESMTP
 id BJwli8gGoIyEUBJwliF70x; Fri, 20 Sep 2019 07:31:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=stargloballeads.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date
 :Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s/MvA/d1AxZDkZJa2q5zqtVpZ5N1JLH/UW47rpsU36E=; b=r5G8T+Ei5sa4TSna7wHBh2cYej
 zClydxjLuip99RzGVtbJtdaYQk5vdg7KDMPJmAuMV6g0apO2agzqCB+IL/Th2xB7ZRNQBIlz1x1Vz
 rvcHysKEClOyiMXvL0J6Np0p+MJrL/0CuBmGUapWBex2htBh/0G9ZfVtTQiEa0IFlgaWp2I2lvfJg
 Tk4zuikwYO8tcx9Y++8V72WMEnwzf6rCUn8txdgBidwjagubYK1NPyIPb30L9BRTJCyYVmZhDU4h1
 jId67GYCJzH8UdMkQM9t6mBvrCpo3+pqw1x7cySzelBNPPv2D0iP7sCi7vVLoqpB/1wXal358YSQ7
 7ebhkTng==;
Received: from [171.76.97.21] (port=50786 helo=AdminPC)
 by a2plcpnl0716.prod.iad2.secureserver.net with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.92) (envelope-from <brian.adams@stargloballeads.com>)
 id 1iBJ0C-00700y-8Z
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 06:31:12 -0700
From: "Brian Adams" <brian.adams@stargloballeads.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Fri, 20 Sep 2019 09:28:21 -0400
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAANfBhiMXAwpEt74h+2IYpRjCgAAAEAAAAC2Tr/6OGnpArytVGLxA1JoBAAAAAA==@stargloballeads.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Content-Language: en-us
Thread-Index: AdVvtzI4dIjBTkTjQQCV2wDPABbFnw==
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2plcpnl0716.prod.iad2.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - stargloballeads.com
X-Get-Message-Sender-Via: a2plcpnl0716.prod.iad2.secureserver.net: authenticated_id:
 brian.adams@stargloballeads.com
X-Authenticated-Sender: a2plcpnl0716.prod.iad2.secureserver.net: brian.adams@stargloballeads.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfAoOo19oo9e2akH/TqODUvSzk002tTYPPq9TBiazhJE/nSjxjXeD9K4HcBYiE0j3qk763gZg036GltvKMintfJd/fyztyUY5kK42Ix1aXR/pZqHAzGlR
 EWHpcV0HQv2fw6C453WFfB4+vboVFL1Q3bpfXu/dfx233Lx/S7RN9yz9cNLntkbpEwUW04S/VXJohD1VWZoNd8PrMZrLHZ2yWsWACsSRj/WX2XMOYzdDAYWI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_073329_233428_C2BD3138 
X-CRM114-Status: UNSURE (  -4.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.71.225.38 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 0.0 T_FILL_THIS_FORM_LONG  Fill in a form with personal information
Subject: [OpenWrt-Devel] CES Unveiled New York - 2019 Attendees Emails
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
Content-Type: multipart/mixed; boundary="===============7150157598095980843=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7150157598095980843==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_7FBE_01D56F96.228C1140"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_7FBE_01D56F96.228C1140
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I am following up to check if you are interested in acquiring the attendees
List 

CES Unveiled New York - 2019

Each Record in the list contains: Business Name, Email Address, Phone NO,
Job Title, Etc...

Let me know your thoughts on this so that I can provide you the Cost &
Attendees Count.

Waiting for your response.

Thanks & Regards,

Brian Adams,

Business Analyst.


------=_NextPart_000_7FBE_01D56F96.228C1140
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
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:10.0pt;
	line-height:115%;}
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

<body lang=3DEN-US>

<div class=3DSection1>

<p class=3DMsoNormal style=3D'background:white'><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#5F497A'>Hi,<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'background:white'><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#5F497A'>I am following up to check if you are
interested in acquiring the attendees List <o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'line-height:150%'><b><span =
style=3D'font-size:12.0pt;
line-height:150%;color:#5F497A'>CES Unveiled New York - =
2019<o:p></o:p></span></b></p>

<p class=3DMsoNormal style=3D'background:white'><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#5F497A'>Each Record in the list contains: =
Business
Name, Email Address, Phone NO, Job Title, Etc...<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'background:white'><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#5F497A'>Let me know your thoughts on this so =
that I can
provide you the <b><span =
style=3D'background:yellow;mso-highlight:yellow'>Cost
&amp; Attendees Count.</span></b><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'background:white'><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#5F497A'>Waiting for your =
response.<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'background:white'><b><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#5F497A'>Thanks &amp; Regards,</span></b><span
style=3D'font-size:12.0pt;line-height:115%;color:#5F497A'><o:p></o:p></sp=
an></p>

<p class=3DMsoNormal style=3D'background:white'><b><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#5F497A'>Brian Adams,<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span =
style=3D'font-size:12.0pt;line-height:115%;
color:#5F497A'>Business Analyst.</span></b><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#5F497A'><o:p></o:p></span></p>

</div>

</body>

</html>

------=_NextPart_000_7FBE_01D56F96.228C1140--



--===============7150157598095980843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7150157598095980843==--


