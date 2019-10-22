Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A09BE07AC
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 17:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=czX24o56VMrntSMpkIWJzAdXHfU5pXtfrfpBXzI84dU=; b=qPF
	sLaBfXL0TqE02R1MLqHV8rmExyaJO3/y+wLN0iUsarfVCkX5UVXntvpNp944xlOk+1buFBqecJi9h
	pWMUON5ODXbwiY5eM5+Vq4lTcuOET9YEL4UkAlW5/fuxeMczGhbc2qQKBjLWYzSwY3FSxcnu3zFbz
	Hj0ZTSLR5AXVnihehU9rzjsRSLjErbM0UWah/rjl6iPSX5G2qxOkFn4ul4wIv3BFc7gE1JX/lRIQG
	ENVzrQvvAZdXTJj1BzaOQH6z+oggGCMTxvfF1OXBKq/bd/vlxmCR8tubJWJOmHAbaj0duAbpYOdnj
	MmzlQ4uwP6YQ8823yN9H/bUhZrnCKGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwJV-0003WT-Gw; Tue, 22 Oct 2019 15:43:13 +0000
Received: from a2nlsmtp01-02.prod.iad2.secureserver.net ([198.71.225.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwJO-0003SW-IV
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 15:43:08 +0000
Received: from a2plcpnl0214.prod.iad2.secureserver.net ([198.71.228.39])
 by : HOSTING RELAY : with ESMTP
 id MwHiikrI0GaHLMwHiidHzT; Tue, 22 Oct 2019 08:41:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=eventsdatazone.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vSWAFHy8btI/5+bkpEUpzowCxbDk9nZYw9AmWPqgefs=; b=igeIW3r0GH0PwnAL3h+lDmj5Mc
 pn9FBa1VfzQhQoYP9+hOHLgomynFe8YQb4qcKCl5d1e35iOxrlSsBAwNfO6YKfb9fYKSWVWPkcesB
 oGSfUae3WyXTwj7J1xOk1CJ3Z5jpII3ZLYXyHSgG4LvU7bHmivV3+Z2u7IE0YzpTAN7yBWRIolKy+
 XycUYBdFxJZOYGQnqQz3v8/BeOQLhlqLbJqGDITEE3/5PkNtdNE+gDiT3SCTbYlGhBmREt7SQL8tn
 hvXBK5BgDmqg0HxG6/5JsZ0O3Amn7MZXojbP0IEg+A+f+DAUh1BBA8JNgUDCtGNDY+rDSnM7whS1n
 0OLLP2jQ==;
Received: from [171.61.88.200] (port=50082 helo=hpPC)
 by a2plcpnl0214.prod.iad2.secureserver.net with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.92) (envelope-from <sarah.clark@eventsdatazone.com>)
 id 1iMwHh-00EkcX-T0
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 08:41:22 -0700
From: "Sarah Clark" <sarah.clark@eventsdatazone.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 22 Oct 2019 11:41:13 -0400
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAAjqCZ/p3fxLtDdspOBMmdPCgAAAGAAAAAAAAAAI6gmf6d38S7Q3bKTgTJnTpJxLAQEAAAAA@eventsdatazone.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdWI3MRuqEjK3rDgSQ+cY+OCIPwUFw==
Importance: High
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2plcpnl0214.prod.iad2.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - eventsdatazone.com
X-Get-Message-Sender-Via: a2plcpnl0214.prod.iad2.secureserver.net: authenticated_id:
 sarah.clark@eventsdatazone.com
X-Authenticated-Sender: a2plcpnl0214.prod.iad2.secureserver.net: sarah.clark@eventsdatazone.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfM0picQAUoNrxCPq3Kd0a85w424HDrYg8ZFjjvpuY53Gb17bKn3EWmojvbFrpjIJIQ8AuFKQR6/xLYwCjPWLq1Sc6KLTOouGluHV4SYUWH1PXNCxjZOL
 OE/dglomym6qfkP8MXoVDVX33TMbbEEbHv0mj33+GNg7h8b9rTYbHdm0Bc0mLyhwFJL3eFIx+asOVqHxTfYIcFTd/9vwLBCLfjv+9mbCSAP7CtnB3g38haOE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_084307_016488_3DFE8F6C 
X-CRM114-Status: UNSURE (  -2.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.71.225.36 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
Subject: [OpenWrt-Devel] CES Unveiled New York - 2019 Visitors Details
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
Content-Type: multipart/mixed; boundary="===============0054218823268576407=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0054218823268576407==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_5C38_01D588CD.A086A6F0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_5C38_01D588CD.A086A6F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I am just doing follow up to check if you are interested in the attendees
list for "CES Unveiled New York - 2019?"

 

List Include Details Like: 

Company Name, Contact Name, First Name, Middle Name, Last Name, Job Title,
Website, Address, Phone Number, Fax Number, SIC Codes and Most importantly
verified Email Address.

Please let me know your interest to send you the number of Attendees and
cost.

 

Awaiting your reply

 

Regards,

 

Sarah Clark | Business Analyst.

 


------=_NextPart_000_5C38_01D588CD.A086A6F0
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

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><span =
style=3D'color:#17365D'>Hi,</span><o:p></o:p></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><span =
style=3D'color:#333333'>&nbsp;</span><o:p></o:p></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><span style=3D'color:#17365D'>I am just doing =
follow up
to check if you are interested in the&nbsp;attendees list for =
</span><b><span
style=3D'color:#632423'>&#8220;CES Unveiled New York - =
2019?&#8221;</span></b><o:p></o:p></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><span =
style=3D'color:#943634'>&nbsp;</span><o:p></o:p></p>

<p class=3Dxmsonormal><b><u><span style=3D'color:black'>List Include =
Details Like: </span></u></b><o:p></o:p></p>

<p class=3Dxmsonormal><span style=3D'color:#17365D'>Company Name, =
Contact Name, First
Name, Middle Name, Last Name, Job Title, Website, Address, Phone Number, =
Fax
Number, SIC Codes and Most importantly verified Email =
Address.</span><o:p></o:p></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><span style=3D'color:#17365D'>Please let me =
know your
interest to send you the number of <b>Attendees and =
cost.</b></span><o:p></o:p></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><span =
style=3D'color:#333333'>&nbsp;</span><o:p></o:p></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><span style=3D'color:#17365D'>Awaiting your =
reply</span><o:p></o:p></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><span =
style=3D'color:#333333'>&nbsp;</span><o:p></o:p></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'color:#17365D'>Regards,</span></b><o:p></o:p></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span =
style=3D'color:#333333'>&nbsp;</span></b><o:p></o:p></p>

<p class=3Dxmsonormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;background:white'><b><span style=3D'color:#632423'>Sarah Clark | =
Business
Analyst.</span></b><o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

------=_NextPart_000_5C38_01D588CD.A086A6F0--



--===============0054218823268576407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0054218823268576407==--


