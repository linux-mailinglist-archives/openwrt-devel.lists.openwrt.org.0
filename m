Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33473A21FF
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 19:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kRwd2h7U43iwfGvWkN5QrgmVT5hYWp6kwXFFWpJqDBs=; b=NTf3vKFfEzmMnEznoL7CBLi6O
	34DlZAxSlgmVlrWoFRCAHQQ4hyQHjHG9Eir7sl/ooh2F12Dyn3MYMwkhwhnjFMM/0ZwZeVQb1ocjj
	4+Vz5mG/IcmktQ7QM3Zm+phNQUYhhFPD/WJbCCdgENwxyU9CjVO/vbrMe+x1kQ/F7nBHXmPKQn4ZL
	7O6xNTgPjlj0ryjo5uoeMEyjV4sbPf5fP2uAyxVw3lIQQEEx7VguGijyl4/jV1x1FcO9+SpZOVoM4
	TYEWjS7jt8rgxB2pgVuGYQHzyRvaf41GRCQj+pG76p2XfMJH2UEX1RXPJaS9tEydE2uEHWqKhLr64
	KdSx25DPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3O2d-0003QL-1a; Thu, 29 Aug 2019 17:16:59 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3O2I-0003Ps-EG
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 17:16:40 +0000
Received: by mail-pg1-x541.google.com with SMTP id x15so1917308pgg.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 29 Aug 2019 10:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eventvisitors-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:references:in-reply-to:subject:date:message-id:mime-version
 :importance:thread-index:content-language
 :disposition-notification-to;
 bh=Cs9c0p1S2h8eaeRyPqiiQQP/e3dnJq9/mHR0eAqtJZ8=;
 b=P+mtrPbCs47FnvLj9flSQzK2XFszp8KQDpx1+PyyN3ftfUqiU9tycDG3AGMCSMKPBR
 eps1pm4xUzjGteI1ZtCKatnS0PI0C9QTu4m6c3IaNb8ZCPHQhxJ25m+2CuAWTcKMtyeq
 5Rp5LJLoNUpp6jEytTlj0mhUjoTR094/6WVvzKGVliHcFGlSji+/7dW/I291M3XMpT2m
 05zmX9vfLjv1gxeofoaz6cOdErALEuXV6ABzoz58YT/Z4mcAljI+jcrFIz1S5nUPai3O
 cy90IMB1iIbz8uY7qEOhyySHxq6iNkKxUk01FvknuRHfOixxD1PF2NqlDTsRWfxVur3C
 H46g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:importance:thread-index:content-language
 :disposition-notification-to;
 bh=Cs9c0p1S2h8eaeRyPqiiQQP/e3dnJq9/mHR0eAqtJZ8=;
 b=o0UVaFXbkHLcg37kFxAF1SJnhqbPtMji0zl6rZboTZMa0qXFzpoEgIiI6861eOI+ih
 6DfvhZxcXyHtia7xn1feBz/jOBD2yGgD0CTKr7sO/bUWW27YcC/cotnAuvmzXbqMSvMe
 XYjxh3i1XoTdVhCjXH8COkopTv/MB+IdUV7q1MZcowfpYWj88aemoR0PJH5tz3s3i1r/
 Pl8ORiATV+3Xp6zPqA+NaPfCeBg2C8buWUjC6AhY6qDWSDDrJUJkU2WgKTOZ4TzeTCam
 Gn3VIwIP9IFmUL2OCGLTpnB2kgXbcKu4piK6i5NR+x5m5vzT8blEama0WDxcDJhi/E22
 1T/g==
X-Gm-Message-State: APjAAAUpbDxGGnd2apOWdtIsYKXKqEZm3BcJWyxp2p2aZ4xG2NXqVYyO
 F+UwnpeDQb83N63DBjK+izn8e7jlPoQ=
X-Google-Smtp-Source: APXvYqxIesdY/f7YKTAoxRU+Ec0VhjjbDPjjwCfJfECRH5bz4MrUMS2h8IDE03wwBF9VvuMnlnitdA==
X-Received: by 2002:a62:ce8a:: with SMTP id
 y132mr12766445pfg.240.1567098996512; 
 Thu, 29 Aug 2019 10:16:36 -0700 (PDT)
Received: from DESKTOP4DD5FUI ([27.7.12.226])
 by smtp.gmail.com with ESMTPSA id e5sm2862456pgt.91.2019.08.29.10.16.35
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 10:16:36 -0700 (PDT)
From: Sarrina Crowley <sarrina.crowley@eventvisitors.com>
X-Google-Original-From: "Sarrina Crowley" <Sarrina.Crowley@eventvisitors.com>
To: <openwrt-devel@lists.openwrt.org>
References: 
In-Reply-To: 
Date: Thu, 29 Aug 2019 10:16:32 -0700
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAJNRQXCwtJJOuJKsMHHxo23CgAAAEAAAAHxB/Yh4tRVJjsg7F44cJLYBAAAAAA==@eventvisitors.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 14.0
Importance: High
Thread-Index: AdVegMc7Hj/LiJI6R+6edRjckCq5HgACO3KwAAADJmAAAAW74AAADSrQAAACl3AAABVE4AAAt6FgAAAAFFAAAAAF4A==
Content-Language: en-in
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_101638_552049_57054872 
X-CRM114-Status: UNSURE (  -2.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Cable-Tec Expo 2019 Attendees Database
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
Content-Type: multipart/mixed; boundary="===============0531018843764644152=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0531018843764644152==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0B18_01D55E52.D72DF460"
Content-Language: en-in

This is a multipart message in MIME format.

------=_NextPart_000_0B18_01D55E52.D72DF460
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

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

 

 

                

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


------=_NextPart_000_0B18_01D55E52.D72DF460
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Arial Unicode MS";
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Arial Unicode MS";
	panose-1:2 11 6 4 2 2 2 2 2 4;}
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
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.event-fn
	{mso-style-name:event-fn;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Would you be =
interested in the <b>&#8220;</b><b>Society of Cable Telecommunications =
Engineers &amp; Expo </b><b><span =
style=3D'color:black;mso-fareast-language:EN-IN'>2019</span></b><b><span =
style=3D'color:black;mso-fareast-language:EN-IN'>&#8221; =
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
------=_NextPart_000_0B18_01D55E52.D72DF460--



--===============0531018843764644152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0531018843764644152==--


