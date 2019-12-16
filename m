Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 658E91211B0
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 18:24:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=s8BS4jGf0Qp4bv6vHTTOny3oRG2SFjPs5vb1kbmeF88=; b=E2RtyrGQZMPp5AN3vmKjIQ28lu
	BwlWC6nKXJnPSSalR44zymBq18HSwhsiM7kvUKyILiiA6lQ2IYudsrPpK+HlZzc//AMovxq9fbw6x
	B6jcogcty4lpg+4vhiAB/f5XWYe85tey20mOmt74YCVlmC+Hfx4vr7cFtMlD9Hl25+vkkfqTt8G34
	At83xv/c8OBtXNlYG1OZsfT8kVObVLXmuvZknYyF1W5dZktrIehMbQKkXH6PhadxCt1IkigH4tTtK
	OTeUKGoxkpSsM5beHf9Y45zDGDE/5AmssXBsccV4kJq+qPDKtVry2oDtQKBZ13hhWoYaQAQkJ83ri
	mDgPKBtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igu6E-0002rf-Sy; Mon, 16 Dec 2019 17:24:02 +0000
Received: from sg2nlsmtp01.shr.prod.sin2.secureserver.net ([182.50.132.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igu68-0002nw-Ar
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 17:23:58 +0000
Received: from sg2plcpnl0198.prod.sin2.secureserver.net ([148.72.232.99])
 by : HOSTING RELAY : with ESMTP
 id gu4Pi1Ut3mw8Ygu4PiDeRT; Mon, 16 Dec 2019 10:22:09 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=nicheprospectmarketers.com; s=default; h=Content-Type:MIME-Version:
 Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qrtKt81puEbKdMk5JKuj74cidjVgGF5lGRp14i+JCwA=; b=o1QTk8WLMIfz6ulA4l1b/emOm
 EGsDIAZFc1k+xxcxfVi1PZBFwP0/BJ6oEzWzKJrqJU87+0al4Ks4g/s+peBqn7TCSVOJdtNe0Th1u
 C4mgE2v0hjW5ACvgTJBxeWdsNQ+0MBFHaNgJLdrQu9/Ha4xJrJmlGhLGLYOz9VcK37TRAWRWW4+Eq
 O9uJhR25S5WoUc4YpKG1tgnI31+zIrnikbLIEXpFjbdtj3EeHitEmVnJHS2ZazZuoKCMwiSdaz7tM
 AF5m+mHmZZePkXKnJfMSnzbxNVU0pVTk6jlYfM3HgKt5Ha2zTp8sY5V5NkZfh95gGZYgVCPld+5AU
 icaSol1OA==;
Received: from [161.129.66.234] (port=60781 helo=WS013)
 by sg2plcpnl0198.prod.sin2.secureserver.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <christina.martin@nicheprospectmarketers.com>)
 id 1igtSl-00HN37-I9
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 09:43:16 -0700
From: "Christina Martin" <christina.martin@nicheprospectmarketers.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Mon, 16 Dec 2019 22:15:38 +0530
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAD0IW/l5TtZLl4M+uEfmUorCgAAAEAAAAHL1ZWQZIiFOneldulhqlJ8BAAAAAA==@nicheprospectmarketers.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdW0L3LWvs+L7kP6Rw6R9hRpjSLA9A==
Importance: High
Content-Language: en-in
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - sg2plcpnl0198.prod.sin2.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - nicheprospectmarketers.com
X-Get-Message-Sender-Via: sg2plcpnl0198.prod.sin2.secureserver.net: authenticated_id:
 christina.martin@nicheprospectmarketers.com
X-Authenticated-Sender: sg2plcpnl0198.prod.sin2.secureserver.net: christina.martin@nicheprospectmarketers.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfF7nQM4J3Eg/R0D0q4JpUHdYeyy3eTTZq2hdGy4jjOTCEK+6sVE5Rw5slFxy8pZW7dLaeY6TIGvrCSSvarhNR2ht3yzormJXGOovhQTeXbpLlx5LrKK+
 bTfAmb3cC19ikc41cwGRuJkow8CMmjziv+JjD3/i2K8AgmYBXSg838iCl2pGxx8SyzetdjxOqxeCCLHAD/cQZOhuO35eEjjtSYA2UP6t4xKaKM1ruA5rs9ZD
 VgdYvmkXFVL/Z2HSQlQfzQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_092356_759961_C1D17B56 
X-CRM114-Status: UNSURE (  -2.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [182.50.132.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [182.50.132.200 listed in bl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
Subject: [OpenWrt-Devel] Embedded World Exhibition & Conference
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
Reply-To: christina.martin@nicheprospectmarketers.com
Content-Type: multipart/mixed; boundary="===============5299799184918493853=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5299799184918493853==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_065A_01D5B45E.64810440"
Content-Language: en-in

This is a multipart message in MIME format.

------=_NextPart_000_065A_01D5B45E.64810440
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi greetings 

Will you be interested in acquiring the attendees list of Embedded World
Exhibition & Conference? The leading international fair for embedded
systems.

Visitors list: 32,000 trade visitors and 2,200 conference participants from
77 countries.

Date: 25 - 27 Feb 2020

Location: Nurnberg Messe GmbH, Nuremberg, Germany

The counts given above are GDPR complaint with all the rules and regulations
with 100% opt-in contacts.

We provide all the relevant information about the attendee including email,
phone and mailing address. Hence you can use this information for your
email, telephonic and mailing campaigns.

Let me know if you would like to proceed with purchasing opt in contacts.

Awaiting your response 

Regards 

Christina Martin | Business Analyst

Note: - If this is something you are interested in, please respond to this
email. If this is not of your interest, reply as "Exclude" so we will not
email you again.


------=_NextPart_000_065A_01D5B45E.64810440
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}
@page WordSection1
	{size:595.3pt 841.9pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-IN><div =
class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Hi greetings <o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Will you be interested in acquiring the attendees list of <b>Embedded =
World Exhibition &amp; Conference</b>? The leading international fair =
for embedded systems.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Visitors list: <b>32,000 trade visitors and 2,200 conference =
participants from 77 countries.</b><o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Date: 25 - 27 Feb 2020<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Location: Nurnberg Messe GmbH, Nuremberg, =
Germany<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>The counts given above are GDPR complaint with all the rules and =
regulations with 100% opt-in contacts.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>We provide all the relevant information about the attendee including =
<b>email, phone and mailing address.</b> Hence you can use this =
information for your <b>email, telephonic and mailing =
campaigns.</b><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Let me know if you would like to proceed with purchasing opt in =
contacts.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Awaiting your response <o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Regards <o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Christina Martin | Business Analyst<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Note: - If this is something you are interested in, please respond to =
this email. If this is not of your interest, reply as =
&#8220;Exclude&#8221; so we will not email you =
again.<o:p></o:p></span></p></div></body></html>
------=_NextPart_000_065A_01D5B45E.64810440--



--===============5299799184918493853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5299799184918493853==--


