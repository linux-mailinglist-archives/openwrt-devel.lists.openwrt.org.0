Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEF013D0EB
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 01:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rHm07qrGy3jWHMEF6uaGWUy7wNF4nWA3Bb3tnLJuZww=; b=HWlnkf/PtaUPEzn6NFuMXOfW6L
	GLIawI2obmahkcXrNUYwXT9wKdWakHoLD01hvQ8Yq5nvT9qz3h88/Xxf7k8cQcor9ZHN1lOHY7Hjm
	SnOqyVMLPjxNplN/Uw31rC1dRtNuBLe9GNWwdO/nD0+h7xQSRA+zDTfM0f/O6glgghP/Gs2o7NIqu
	QODJQBGQ0dgyM88bTHZt3H5zIdcfRmTNYHqsLSw4bxVplkTDgUYsAB7h7xYga9eJfwi8QOJvV/bN6
	+10Bvfi/HQdZqMcyrkVkO3kaBd6cJPcfnSRvegK4AyxgluvNjXqh0SOcaag4UosdJIa8udmmgqVTD
	y6Y9K0iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irsli-0001OH-1x; Thu, 16 Jan 2020 00:12:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irslb-0001Nr-1S
 for openwrt-devel@bombadil.infradead.org; Thu, 16 Jan 2020 00:12:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J91lH3QJ9nghZ4BuSO2HvEmf3McirUCuTTQyPOCKg7A=; b=xvHgWkx/180u7ok+dhABzjmhI+
 y4GYRIV8T5uGSmgx0v2B6Li6N6RZvpUoBS6lw5si/o2GyxGXrPOi0WQ/udaZJmkEPYQufDfSKSlAw
 1cqsp2H2rhJ5nP+VAp7bNDf3+lzGRaZZ6DwRwkbDZ7SJccBgupKqi0lXq68tD5cpmq1ofVd7VX2vG
 L3JMQM6BX1loAML/sCM2UI3e7oJlZgTlxWTX5EJ7dbfnOb0Bie0ePVTbdfHKQLuovSqCFtn9XQz28
 LQdQ9u9VG/hjVg3c5uLdMp3Y5F5ynRrH8c09S7tWzq8sOsC5dODWG7yAQoFMRe7ZSmhqeTs+8FIrz
 H1vkUJlg==;
Received: from sg2nlshrout01.shr.prod.sin2.secureserver.net ([182.50.132.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irslV-0003Sf-Kj
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 00:12:05 +0000
Received: from sg2plcpnl0198.prod.sin2.secureserver.net ([148.72.232.99])
 by : HOSTING RELAY : with ESMTP
 id rscQihuNr1PeZrscQi4oIJ; Wed, 15 Jan 2020 17:02:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=nicheprospectmarketers.com; s=default; h=Content-Type:MIME-Version:
 Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J91lH3QJ9nghZ4BuSO2HvEmf3McirUCuTTQyPOCKg7A=; b=EIVAsZaJwlbOWVESMipyrKR0O
 pGQU1Gxq6v8YQFZYISRjJXuaDwqkShy1VbLHQIg/mmlEskwT+RGoRrYZeYCMUTg95FlzwKd75e9Wu
 60JEt7/nR1tV0sKThgQaBOrGY/5rzo1g8RlBFbrVslgHBJfBMN7OuMegoBWrwEe4iyXyUQlH7uosL
 8BD5iFuOe6aM4RpIM3Ywii+mAC065+vjATBCrcWecr1zZQd03nXqda8Y6aOd1E0IFkmlh/qqTp80Y
 W8Cc/MZl4/wEQzTJ/QLZr75TYxFlOVahiKwsL+04EUdowKjbfBvQvmMBL2r3g8FivSId/xo+Eb//q
 WbCVpy3rQ==;
Received: from [185.253.96.44] (port=62791 helo=WS013)
 by sg2plcpnl0198.prod.sin2.secureserver.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <janice.greene@nicheprospectmarketers.com>)
 id 1irrqk-008ld3-A8
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 16:13:23 -0700
From: "Janice Greene" <janice.greene@nicheprospectmarketers.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 16 Jan 2020 04:46:45 +0530
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAHfD7Y67UZpFhB1pUTterT3CgAAAEAAAAHoxgf4vWhFGo2IcVSaLhBoBAAAAAA==@nicheprospectmarketers.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdXL+UlU38hxp3KtTUSAS4VSJpx2YQ==
Importance: High
Content-Language: en-in
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - sg2plcpnl0198.prod.sin2.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - nicheprospectmarketers.com
X-Get-Message-Sender-Via: sg2plcpnl0198.prod.sin2.secureserver.net: authenticated_id:
 janice.greene@nicheprospectmarketers.com
X-Authenticated-Sender: sg2plcpnl0198.prod.sin2.secureserver.net: janice.greene@nicheprospectmarketers.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfG3Jnc5BqItVNbiKGUn30nFF+o4fn2MFRhxcZE2hRUtne+u4qi/hoifMqlmuU9RZrp4A05hhMXBKWW+3d/CsR3VsGZY552CQm1dfo4mAQWeMcB/k+VaK
 jmtZR35ILzgLgMvTjCZOYxbZLocpirpabvpx9mFgEj45DFnAkcsLOlWMPMej8fpY6nS4wfSqJeuI2QuQ2J9tEeOm1eW4yfS8IW8Zo8h8wabcrd7wUqjIp8hg
 REmouW1L5HsisIN8C/eXZg==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [182.50.132.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [182.50.132.193 listed in wl.mailspike.net]
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reply-To: janice.greene@nicheprospectmarketers.com
Content-Type: multipart/mixed; boundary="===============6681456288603051921=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6681456288603051921==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0932_01D5CC27.F9789DC0"
Content-Language: en-in

This is a multipart message in MIME format.

------=_NextPart_000_0932_01D5CC27.F9789DC0
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

Janice Greene | Business Analyst

Note: - If this is something you are interested in, please respond to this
email. If this is not of your interest, reply as "Exclude" so we will not
email you again.

 


------=_NextPart_000_0932_01D5CC27.F9789DC0
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
>Janice Greene </span></b><b><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>| Business Analyst<o:p></o:p></span></b></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Note: - If this is something you are interested in, please respond to =
this email. If this is not of your interest, reply as =
&#8220;Exclude&#8221; so we will not email you =
again.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
><o:p>&nbsp;</o:p></span></p></div></body></html>
------=_NextPart_000_0932_01D5CC27.F9789DC0--



--===============6681456288603051921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6681456288603051921==--


