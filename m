Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AC111EDBB
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 23:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YImvm9YWqG4TsN5b5cnT5XNySkZndQfLNmScgOvZsT0=; b=VPtOyciuqucXHeUF3zgwb48Qqc
	/DC9Htpc9uOTpFE5DSoT1O7hSW6a3eUgVQpXmsJwW4uIUaTyynHsj2hu0cxFoVrhJEACgYjzwYgSC
	5zaLQFtR4qRzCIKKzqAMrIocnifCqtlDyTVvIzcs2Ta5upwDOnFdG0w4SHenw4EyxXOwenURMFpXT
	BMKyqH6TgPllcJaz3uVXoT/Csb7DmhBaMhMS3sz7BmQJekOCbQV4AsUYl7IWa+89IGJ+5TI0mRpms
	5VD1/1lxVmWwN+jsR6VgrXt0VhqYYyzgWqE4Upi7e1Y3sVIssktCTZgG2JY8x+rMNWJOkCOsZzG6z
	o7Be2l6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iftRF-0006fv-1T; Fri, 13 Dec 2019 22:29:33 +0000
Received: from sg2nlsmtp01.shr.prod.sin2.secureserver.net ([182.50.132.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iftR7-0006Ku-EE
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 22:29:27 +0000
Received: from sg2plcpnl0070.prod.sin2.secureserver.net ([182.50.151.18])
 by : HOSTING RELAY : with ESMTP
 id ftPNi8ceRmw8YftPNiPK0a; Fri, 13 Dec 2019 15:27:37 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metamediaprodatasolutions.com; s=default; h=Content-Type:MIME-Version:
 Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a9lWvuO/ZB1SplXEfiZNRCsdSkBQuTCT577q1Lmi6Lk=; b=YU7MtNtON9vhHidxAVfTFA22p
 O48FYT5yS2qDbtWZGirhO2QzRc0cSVw0XB/CZpaDvEa+/fxZnfLs9YNUUKezlJRV4G5kQNbYLx7if
 wMH1ZRIyKRc1BWavCvIDXqSz5AUbBgkiSUR6qkIbMuJY08cbGyoAY2YvAMkuRZNyHHy9ZwdKW5766
 6T47LEzeC8YVB7MUQ5LVgoCpOxswx898AhynT+7NGSf6VuGlOZZW5ScWJ6MFxehbAWdtiaSvIW9YH
 op/8+HCYAbI5YaEVgzXDhlqWKR9kG0P+VHo2vXkN0haV/Ir6ZcsLIkhE3EPjP7YqyTAX1bZI0JXCF
 pynVy2jgg==;
Received: from [37.120.192.25] (port=53167 helo=WS013)
 by sg2plcpnl0070.prod.sin2.secureserver.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <lucy.mitchell@metamediaprodatasolutions.com>)
 id 1ifsWk-005KBU-IQ
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 14:31:11 -0700
From: "Lucy Mitchell" <lucy.mitchell@metamediaprodatasolutions.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Sat, 14 Dec 2019 03:03:28 +0530
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAGaUIo+vL9tHkzMA6WtwcifCgAAAEAAAAFFUacguNFJHjKYboh9OGMgBAAAAAA==@metamediaprodatasolutions.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdWx/IP6SphCUb+lR9y2qPMStKgnAA==
Importance: High
Content-Language: en-in
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - sg2plcpnl0070.prod.sin2.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - metamediaprodatasolutions.com
X-Get-Message-Sender-Via: sg2plcpnl0070.prod.sin2.secureserver.net: authenticated_id:
 lucy.mitchell@metamediaprodatasolutions.com
X-Authenticated-Sender: sg2plcpnl0070.prod.sin2.secureserver.net: lucy.mitchell@metamediaprodatasolutions.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfBLFmAU8hqyXFsA1sn8eU59GM8gYbVABl9ziACMD4ZpZbmQQanFj6ofS9A8rSOlcJeKykutHTNe8HGfAFuY3xA360uGygCEz/ISvYZnKWnUhu3ZI4x+6
 zD9UMfVzja+0fkj0oQPCqbPS8akM9kUMfGudsd2efPNRQwBxE9kg8S0Per8a0496TwloR8bjSNoDcaBNi5MQofAzt6RCTCrUX/CrTu4aWYt7fDzl6Ov2y16Q
 esE34SdMr3fXOywX+cRmmw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_142925_841392_506BB680 
X-CRM114-Status: UNSURE (  -2.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [182.50.132.200 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [182.50.132.200 listed in bl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Reply-To: lucy.mitchell@metamediaprodatasolutions.com
Content-Type: multipart/mixed; boundary="===============4149821044204673479=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4149821044204673479==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_01CA_01D5B22B.1E49AB60"
Content-Language: en-in

This is a multipart message in MIME format.

------=_NextPart_000_01CA_01D5B22B.1E49AB60
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

Lucy Mitchell | Business Analyst

Note: - If this is something you are interested in, please respond to this
email. If this is not of your interest, reply as "Exclude" so we will not
email you again.


------=_NextPart_000_01CA_01D5B22B.1E49AB60
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
>Lucy Mitchell | Business Analyst<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#333333;background:white'=
>Note: - If this is something you are interested in, please respond to =
this email. If this is not of your interest, reply as =
&#8220;Exclude&#8221; so we will not email you =
again.<o:p></o:p></span></p></div></body></html>
------=_NextPart_000_01CA_01D5B22B.1E49AB60--



--===============4149821044204673479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4149821044204673479==--


