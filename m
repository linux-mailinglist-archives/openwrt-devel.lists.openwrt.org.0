Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8375FD68AC
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 19:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BuE3KuO/8z8sy4N/NFKmcsWf5SsYLyy/cbKQsZmYjXM=; b=Zyg
	Z+a8jqB08YDVyG5aGguYK9RASBUPgavzgqM0druZilKoSYnlIlzfgRl/Me8rIih0Zn8OV4dqpqAPe
	ULEGip4RyR2JvqqpndZI4flsQfJPmDtQv4wk1QXh2YkGAIUytbURmhPRJtDJW1XVJGOo6fuGKZQ8s
	L2oj1/HpZCf+yv7uLVpdfa8G/32QSkMpklBAMzmXwQMnLNY9tc20l/crpwVFkMkptEHg9+vJ8tx6A
	r5VJ/B2GAS7prq8SP73Z28FlVHT8mmjme8/JvRS+nw/WhhHh9fpvWwtDoNcPmyu2GEs+dw+OSvLwK
	yH/BkKcQEUElMA270EKH71XkbyZTx1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK4KM-0002DN-Ez; Mon, 14 Oct 2019 17:40:14 +0000
Received: from a2nlsmtp01-02.prod.iad2.secureserver.net ([198.71.225.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK4KB-0001MJ-2K
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 17:40:04 +0000
Received: from a2plcpnl0716.prod.iad2.secureserver.net ([198.71.240.37])
 by : HOSTING RELAY : with ESMTP
 id K4ITiAup3mRyiK4ITiSXK2; Mon, 14 Oct 2019 10:38:17 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=aptaexpoleads.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oD1XOv5cSydajGYT/exTJfvvuuftvuvaMAJi5cdXzd8=; b=t3NT71WGOIXmpaqFf6S51btJtv
 eIh+8Ya9/TggatU/VqaCgF2Mtb1nHfx682RV5+OshttvbvwOsQKYWdPHstBGuZsEiwJQKbHLemLUr
 pxMbnvTBKmRBtLd/iQg/mWDKS60Hpj/cps6kVdWlDVtK8v+Gq51HI7KByjcHKEaKMUggpFt4N5uQW
 ipCO5uTqg9o9kcwHVsL05BO5OeIMAe1PQVu0cwbrkwXL8SZxpVyiJiHxWN3NXYPC2j89n0d6I+AHj
 b8utOdXWc20rhvX76dWbuGnJIBALFoiAxGJqyy9T0H54S6u1zf4AUGBHAgqqujEFYdbAVdW1vFodf
 fCFXI6JA==;
Received: from [117.99.87.90] (port=50423 helo=AdminPC)
 by a2plcpnl0716.prod.iad2.secureserver.net with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.92) (envelope-from <elizabeth.finney@aptaexpoleads.com>)
 id 1iK3T5-00FxAk-9q
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 09:45:11 -0700
From: "Elizabeth Finney" <elizabeth.finney@aptaexpoleads.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Mon, 14 Oct 2019 12:44:49 -0400
Message-ID: <b09e01d582ae$be56af10$3b040d30$@finney@aptaexpoleads.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdWCrjPExtbzH4FGRweCfIBkyTX6Iw==
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2plcpnl0716.prod.iad2.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - aptaexpoleads.com
X-Get-Message-Sender-Via: a2plcpnl0716.prod.iad2.secureserver.net: authenticated_id:
 elizabeth.finney@aptaexpoleads.com
X-Authenticated-Sender: a2plcpnl0716.prod.iad2.secureserver.net: elizabeth.finney@aptaexpoleads.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfH8I/cr9oP/Aet3cHuk6oPIGhfwzD7F8VMBYs5veW83pL/2IPgxYa9ns8Yt2vichOGbhNceKelgf97tQERz1aTk5gm2n1C9N0xldP8ybIfEPiGi196Xy
 zYjgIXawLjDd44o1bdBqiHs/vZ7U5R+LfmJkS26xFD+tFcuOhxNT7CQi++Gu+237C81elUwyGtSWuVFBJ3G2ZBwd/7XQO2OyNqI89uareMperlQAiwJwFK9j
 jHR9nXJ+H7x8BGSSHz1V0Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_104003_292673_D85B9C3F 
X-CRM114-Status: UNSURE (  -3.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.71.225.36 listed in list.dnswl.org]
 1.0 MSGID_MULTIPLE_AT      Message-ID contains multiple '@' characters
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [198.71.225.36 listed in bl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
Subject: [OpenWrt-Devel] CES Unveiled New York - 2019 Business Emails
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
Content-Type: multipart/mixed; boundary="===============6521824306326742856=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6521824306326742856==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_B09F_01D5828D.37450F10"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_B09F_01D5828D.37450F10
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I am following up to check if you are interested in acquiring the attendees
List.

CES Unveiled New York - 2019

Location: Metropolitan Pavilion, New York, USA

Date: NOV 07 - NOV07- 2019

List Include Details Like: 

Company Name, Contact Name, First Name, Middle Name, Last Name, Job Title,
Website, Address, Phone Number, Fax Number, SIC Codes and Most importantly
verified Email Address.

Please let me know your interest to send you the number of Attendees and
cost.

 

Waiting for your response.

Thanks & Regards,

Elizabeth Finney- Business Analyst

 

 

 


------=_NextPart_000_B09F_01D5828D.37450F10
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
	{font-family:Cambria;
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
p.xmsonormal, li.xmsonormal, div.xmsonormal
	{mso-style-name:x_msonormal;
	margin-top:0in;
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

<p class=3Dxmsonormal style=3D'background:white'><i><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#0F243E'>Hi,<o:p></o:p></span></i></p>

<p class=3Dxmsonormal style=3D'background:white'><i><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#0F243E'>I am following up to check if you are
interested in acquiring the attendees List.<o:p></o:p></span></i></p>

<p class=3Dxmsonormal style=3D'background:white'><b><i><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#548DD4'>CES Unveiled New York - =
2019</span></i></b><i><span
style=3D'font-size:12.0pt;line-height:115%;color:#548DD4'><o:p></o:p></sp=
an></i></p>

<p class=3Dxmsonormal><b><i><span =
style=3D'font-size:12.0pt;line-height:115%;
color:#548DD4'>Location:</span></i></b><i><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#548DD4'>&nbsp;<b>Metropolitan Pavilion, New =
York, USA<o:p></o:p></b></span></i></p>

<p class=3Dxmsonormal><b><i><span =
style=3D'font-size:12.0pt;line-height:115%;
color:#548DD4'>Date: NOV 07 &#8211; NOV07- 2019</span></i></b><i><span
style=3D'font-size:12.0pt;line-height:115%;color:#548DD4'><o:p></o:p></sp=
an></i></p>

<p class=3Dxmsonormal><b><i><u><span =
style=3D'font-size:12.0pt;line-height:115%;
color:#548DD4'>List Include Details Like: </span></u></i></b><i><span
style=3D'font-size:12.0pt;line-height:115%;color:#548DD4'><o:p></o:p></sp=
an></i></p>

<p class=3Dxmsonormal><i><span =
style=3D'font-size:12.0pt;line-height:115%;
font-family:"Cambria","serif";color:#0F243E'>Company Name, Contact Name, =
First
Name, Middle Name, Last Name, Job Title, Website, Address, Phone Number, =
Fax
Number, SIC Codes and Most importantly verified Email =
Address.</span></i><i><span
style=3D'font-size:12.0pt;line-height:115%;color:#0F243E'><o:p></o:p></sp=
an></i></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><i><span =
style=3D'font-size:12.0pt;font-family:"Cambria","serif";
color:#0F243E'>Please let me know your interest to send you the number =
of <b>Attendees
and cost.</b></span></i><i><span =
style=3D'font-size:12.0pt;color:#0F243E'><o:p></o:p></span></i></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><i><span =
style=3D'font-size:12.0pt;font-family:"Cambria","serif";
color:#0F243E'>&nbsp;</span></i><i><span =
style=3D'font-size:12.0pt;color:#0F243E'><o:p></o:p></span></i></p>

<p class=3Dxmsonormal style=3D'background:white'><i><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#0F243E'>Waiting for your =
response.<o:p></o:p></span></i></p>

<p class=3Dxmsonormal style=3D'background:white'><b><i><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#548DD4'>Thanks &amp; =
Regards,</span></i></b><i><span
style=3D'font-size:12.0pt;line-height:115%;color:#548DD4'><o:p></o:p></sp=
an></i></p>

<p class=3Dxmsonormal style=3D'background:white'><b><i><span =
style=3D'font-size:12.0pt;
line-height:115%;color:#548DD4'>Elizabeth Finney&#8211; Business =
Analyst</span></i></b><i><span
style=3D'font-size:12.0pt;line-height:115%;color:#548DD4'><o:p></o:p></sp=
an></i></p>

<p class=3Dxmsonormal><i><span =
style=3D'font-size:12.0pt;line-height:115%;
color:#0F243E'>&nbsp;<o:p></o:p></span></i></p>

<p class=3DMsoNormal><span =
style=3D'color:#0F243E'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

------=_NextPart_000_B09F_01D5828D.37450F10--



--===============6521824306326742856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6521824306326742856==--


