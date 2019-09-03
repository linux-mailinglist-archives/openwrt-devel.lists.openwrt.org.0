Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5017A75E1
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 23:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JIv3lZMnu337pj46uDgaIpWKcarxTZTDNsgb9GR2wEE=; b=ieQBD1sCwDLTGqC21xPH8Q71I
	z8GMeUcfytN82ISd73qwU7aQgKoxRaDUZRgEqvfDjj9B7VpmrI/uXDwEadQeWTa3wK3QfcRetJmps
	aHiUiNT4nsHD0MB4bv+PSP39w2t194fHCmyR4WYgeQHxN19/zr8Xs5TYu2KUNQuYNOeUWfDM6DleB
	grUrK8Cj8Nmp2ZQLfaIiwmaAvdFzNH3jAqci0IuzYUbkDFqiQM3Fi6/o4CjRE8Yog4eqsghnNIn7z
	Rg6AvexWHrZMCUG5FP9dke4XkG6wJmQQ9qf+Fk+YWlEZCwfmjywJnuIi/lXubSbQQzzZcx/Xbiukg
	QQTYDPurA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5FxC-0000ZN-Hp; Tue, 03 Sep 2019 21:03:06 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Fx3-0000Z6-UF
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 21:02:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so6625173pfl.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Sep 2019 14:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eventvisitors-com.20150623.gappssmtp.com; s=20150623;
 h=from:return-receipt-to:to:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:content-language
 :disposition-notification-to;
 bh=ObhXQHuJvFNtaw5Wm6lg2/orfd6Bw0uRTQQHEIB2/xM=;
 b=Rw5QGcG8ErAOpwG3rReDc6iRC/oKEPdF91u6xCrY7uWdnOnXM5PiocJoo3xMTRAxF6
 j6wQNXwckpA2gpgMMQCwTjAqZJ9Zd82EesWYmcO6i0CD+fIKUSau1dvrFAGwROw27rJt
 1SKQSAufu+8HBk+JB9iNWPlSf3TW/VDKVKsObXUICSGItAoLjSBCI/egz+JHA1nL/po9
 +WQ4Lw84+EkNjW3gZ1vXvsCNzKnTRsuGBYMgqKCyR4FK2UTtj9HZ78sGzBraSn1hcdEM
 vdUW2nh84S/38O+ajm2CKl6K2GuA2GXgGmNf8uELEQ9c3BUSMMtjrjGA0qo7Fdn+spYl
 S8wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:return-receipt-to:to:references:in-reply-to
 :subject:date:message-id:mime-version:thread-index:content-language
 :disposition-notification-to;
 bh=ObhXQHuJvFNtaw5Wm6lg2/orfd6Bw0uRTQQHEIB2/xM=;
 b=Xc9dbn4vmpLW7E3lg3VCBku8Xg1WKLCV16LfvgBEs4JhuzbFClmXrIGeAOMpTqZd0e
 m7qkMAAqnlJ4cjqkme8AiqtsDSmmz3K23pUbtM8rDfrPxbr3HlsmWoQUunStlyiXGJR0
 NDWYqNuwSJNQgiSIQQG6ZZI930zzbga0eCVSBVBNs9ndgJ7SAzAhdg4ueHV9L9fhh79t
 BfbEOEUjXykoc+VHSFeZO1VsPpNLR9COgsCW77uGib6DEOkz0ngaMA8bkAYQiRxoOqBF
 L3uV81siGD4BPWdWO1c5QtDjp7TYb9nZu6azu0UgcdD1EGx2nVWkB6ZU5WD2MEAaQbjd
 bA8A==
X-Gm-Message-State: APjAAAVR3Ljexzs79evhJoKnMUZ8L9ODJRvV/8NAzmaUo97hudOZX+0U
 Ghm34lY2RQqtcHQRyHwXhjbFhIvNIQQ=
X-Google-Smtp-Source: APXvYqyycvvmJATzarqENU182EAYUsfk2N9cQlaUzcu9QDdB2KC9Ec5ygHUltxIQwr34GMBSKSrUUw==
X-Received: by 2002:a63:714a:: with SMTP id b10mr33111928pgn.25.1567544576912; 
 Tue, 03 Sep 2019 14:02:56 -0700 (PDT)
Received: from DESKTOP4DD5FUI ([27.7.12.88])
 by smtp.gmail.com with ESMTPSA id n66sm2285912pfn.90.2019.09.03.14.02.55
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Sep 2019 14:02:56 -0700 (PDT)
From: Sarrina Crowley <sarrina.crowley@eventvisitors.com>
X-Google-Original-From: "Sarrina Crowley" <Sarrina.Crowley@eventvisitors.com>
To: <openwrt-devel@lists.openwrt.org>
References: 
In-Reply-To: 
Date: Tue, 3 Sep 2019 13:58:33 -0700
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAJNRQXCwtJJOuJKsMHHxo23CgAAAEAAAAHfkr77VDX9Hg0HeoKR6upABAAAAAA==@eventvisitors.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdVegMc7Hj/LiJI6R+6edRjckCq5HgACO3KwAAADJmAAAAW74AAADSrQAAACl3AAABVE4AAAt6FgAAAAFFAAAAAF4AEC3GDQ
Content-Language: en-in
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_140258_155101_7B2C03C0 
X-CRM114-Status: UNSURE (  -2.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Cable-Tec Expo 2019 Attendees Database
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
Content-Type: multipart/mixed; boundary="===============0144332104033670688=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0144332104033670688==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_4842_01D56260.49293F00"
Content-Language: en-in

This is a multipart message in MIME format.

------=_NextPart_000_4842_01D56260.49293F00
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

 

Hi,

 

I'm writing to thank you for your time and to find out how you'd like to
move the conversation forward.

 

If you're still interested, please suggest a next step.

 

I await your response.

 

Regards,

Sarrina Crowley

Marketting Executive.

 

 

From: Sarrina Crowley [mailto:Sarrina.Crowley@eventvisitors.com] 
Sent: 29 August 2019 10:17
To: 'openwrt-devel@lists.openwrt.org'
Subject: Cable-Tec Expo 2019 Attendees Database 
Importance: High

 

Hi,

 

Would you be interested in the "Society of Cable Telecommunications
Engineers & Expo 2019" Attendee Contact List 2019?.

 

Attendees: President, Manager, Engineering Manager, Sales Engineer, Senior
Director, General Manager, Technician, Installer, Fiber & Broadband experts
and Many More...

 

Data Contains: First Name, Last Name, Title, Company, Website, Phone number,
Email addresses, Mailing addresses, Country etc.

 

We do have most updated list of contacts for best pricing options.

 

Just let me know if you have any questions.

 

Regards,

Sarrina Crowley

Marketing Executive.

 

                                                            If you do not
wish to hear from us again, please respond back with "Abolish" and we will
honour your request.

 

 

                

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


------=_NextPart_000_4842_01D56260.49293F00
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:24.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Times New Roman","serif";
	mso-fareast-language:EN-IN;
	font-weight:bold;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.event-fn
	{mso-style-name:event-fn;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-IN link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>Hi,<o:p></o:p></span><=
/p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></spa=
n></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>I&#8217;m writing to =
thank you for your time and to find out how you&#8217;d like to move the =
conversation forward.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></spa=
n></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>If you&#8217;re still =
interested, please suggest a next step.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></spa=
n></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>I await your =
response.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></spa=
n></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>Regards,<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>Sarrina =
Crowley<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>Marketting =
Executive.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></spa=
n></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";mso-fareast-l=
anguage:EN-IN'>From:</span></b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";mso-fareast-l=
anguage:EN-IN'> Sarrina Crowley =
[mailto:Sarrina.Crowley@eventvisitors.com] <br><b>Sent:</b> 29 August =
2019 10:17<br><b>To:</b> =
'openwrt-devel@lists.openwrt.org'<br><b>Subject:</b> Cable-Tec Expo 2019 =
Attendees Database <br><b>Importance:</b> =
High<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Would you be =
interested in the <b>&#8220;Society of Cable Telecommunications =
Engineers &amp; Expo </b><b><span =
style=3D'color:black;mso-fareast-language:EN-IN'>2019&#8221; =
</span></b>Attendee Contact List 2019?.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><b>Attendees: </b>President, Manager, Engineering =
Manager, Sales Engineer, Senior Director, General Manager, Technician, =
Installer, Fiber &amp; Broadband experts and Many =
More...<o:p></o:p></p><p =
class=3DMsoNormal><b><o:p>&nbsp;</o:p></b></p><p =
class=3DMsoNormal><b>Data Contains:</b> First Name, Last Name, Title, =
Company, Website, Phone number, Email addresses, Mailing addresses, =
Country etc&#8230;<span =
style=3D'color:black;mso-fareast-language:EN-IN'><o:p></o:p></span></p><p=
 class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>We do have =
most updated list of contacts for best pricing options.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Just let me =
know if you have any questions.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><b>Regards,<o:p></o:p></b></p><p =
class=3DMsoNormal>Sarrina Crowley<o:p></o:p></p><p =
class=3DMsoNormal>Marketing Executive.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If you do not wish to =
hear from us again, please respond back with <b>&#8220;Abolish&#8221; =
</b>and we will honour your request.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_4842_01D56260.49293F00--



--===============0144332104033670688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0144332104033670688==--


