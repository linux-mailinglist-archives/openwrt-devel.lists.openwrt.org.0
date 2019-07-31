Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A45BA7CDF9
	for <lists+openwrt-devel@lfdr.de>; Wed, 31 Jul 2019 22:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hWPXenWn8USqmf250F2gE8oW0nCLxVtUPT5LCGHyTZI=; b=g0lsnisaC/CfEV4If2rjvES3h
	J24k0cGTq8b83paD5/S54/7fLidGdtjaLP2xQ20YDwEkoGJ0ZKpK6XWmq465bq+hror5fFJunEYL0
	EWQSlRXpR1/d2La+MWg1Y1Iv+BJRyemTF4oC1mYFruE3tJnGG9ZXLKkuQxDdOVg1ndU0aGAWS18Dn
	uQtf16ecNe6Pp0QYDrKyocpT+uuvhxbyvb+oJKjGwLMhuV6u9DkiXTpQ1pNazkcAIcptKYkD4ohCu
	pZxBETKR1qfe532pA8zwTjESicDYWccy/ORK9NksrGYE91S4tcG9bBwOFt0/2JGHtTPsOpydgmlD+
	OqKmJWrsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsuyA-0001Wd-Fd; Wed, 31 Jul 2019 20:13:06 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsuy2-0001WL-J5
 for openwrt-devel@lists.openwrt.org; Wed, 31 Jul 2019 20:13:00 +0000
Received: by mail-pg1-x543.google.com with SMTP id l21so32606721pgm.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 31 Jul 2019 13:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eventdelegates-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:references:in-reply-to:subject:date:message-id:mime-version
 :thread-index:content-language:disposition-notification-to;
 bh=9QhPB+XrY0KJSnj+LNOJQMBRPcf7LaAC9DRktdEenRc=;
 b=gr8qXGu3CcATdmmpS0L5TwH6/mfBCrdm2ksfi1ejBT7R+DPjeqFoSVNPlPXJ00MRH9
 QC3SWcbLCRRiKRE3O+ORqrW2t0Uh+6Ylt6uZBHDqrTyb1HTE2HDCii+Jk76pcatqt13P
 OaxFXrzvtYcMLNUdB9DglkiPvRI4vUKcgw4KsVar05+9gnGJ2YwIcYPULY71vHpEdpCI
 67XPNbFkXkLDQYJFnwSovAFASuvG/JRtbHUno6M210jZ7LnfzQ7Y0vV7d4SekrbRVv3O
 4k16cbvSxSfKv6+aARXjiIxmSShB6Pt/D9LyevT2h1kQvH4m2fWlrq0VcPYoLIhGa0CC
 1XWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:content-language
 :disposition-notification-to;
 bh=9QhPB+XrY0KJSnj+LNOJQMBRPcf7LaAC9DRktdEenRc=;
 b=fdlRmZO7qt+g4vDaiGDtuPVMRLw301QbQMKj+hDEv+N5pzlpsJ+fibnWWaFkeEofIa
 0WjlmkMqU87xfZ1g8yZWGZz4G5fXLcbcDT681AM1pEhozu9qgI/OTe7NXnicp9ga/Jtr
 FifUtn/VFjbSGb9dzxT9YSghA6YbyQReLobRLKp+kFXnNnhMcF5Pp5KtkmiC+0q0ZCak
 4Y3wiS2ephHtE00e/SuPirRSERQtwGimcmZouST0wvssABzzi30VbZ7zaX6KDxKn6WZE
 uV4T5ldzxGYHAKj1m3Sj0KtD1rX6w52OTM547Laz8x3jKz4LCWSL3+/QJ1mh8L5OYaUw
 XCGQ==
X-Gm-Message-State: APjAAAVGTLgx5Nxrv4JqvLnsDAhZN5LiI/JaJPX4ATHbc4qgip/4xvkP
 TY1PKbnxuzROUFA78TMbVhXC39Li
X-Google-Smtp-Source: APXvYqwj1WwsfuQXQGDk0kiBm3ZKTawm0viSNWGakBxn1ZOvdBT10LbChbSyR7TSOQ5gb9yTCDi8Aw==
X-Received: by 2002:a65:62d7:: with SMTP id
 m23mr115499750pgv.358.1564603977164; 
 Wed, 31 Jul 2019 13:12:57 -0700 (PDT)
Received: from adminPC ([49.207.52.136])
 by smtp.gmail.com with ESMTPSA id g2sm80262329pfi.26.2019.07.31.13.12.55
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:12:56 -0700 (PDT)
From: Tiffany Diaz <tiffany.diaz@eventdelegates.com>
X-Google-Original-From: "Tiffany Diaz" <Tiffany.Diaz@eventdelegates.com>
To: <openwrt-devel@lists.openwrt.org>
References: 
In-Reply-To: 
Date: Wed, 31 Jul 2019 14:12:40 -0600
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAP5QbV6aoFVNnuCthjjcarvCgAAAEAAAAKMwj2c5jf9BovrgI9A0wnABAAAAAA==@eventdelegates.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdVH3CM9EoWukDQBSNyvp+Am2mrUjwAAAxcwAAAAJKAAAAAe8AAAAIhQAAAAEyAAAAAPUAAAAAywAAAADdAAAAAL0AAAAA0AAAAADDAAAAAOMAAAAAzAAAAADbAAAAAMEAAAAA1AAAAADaAAAAANAAAAAA6gAAAAEAAAAAAQ8AAAABBQAAAAEOAAAAAQQAAAAA9wAAAAEtAAAAAPYAAAABCQAAAAEPAAAAAPUAAAAA6wAAAAD7AAAAAOcAAAAA8wAAAADzAAAAAO8AAAAA7wAAAAELAAAAAPsAAAAA6wAAAADqAAAAAPMAAAAA8wAAAADmA=
Content-Language: en-us
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_131258_807436_D74FC895 
X-CRM114-Status: UNSURE (  -3.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Attendees Database for SCTE Cable-Tec Expo 2019
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
Content-Type: multipart/mixed; boundary="===============2484092851053370037=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2484092851053370037==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_098A_01D547AA.0B32AAE0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_098A_01D547AA.0B32AAE0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I think you might be interested in obtaining Database of Cable-Tec Expo of
Society of Cable Telecommunications Engineers 2019? Which includes complete
contact information up to date.

 

Attendees: professional | leadership | engineering innovation | experts and
more...

 

List Contains: Contact Name, Title, Company Name, Size, Physical Address,
Email address, Phone & Fax numbers and etc. 

 

If you are interested please let me know I will assist you with counts and
pricing details?

 

Awaiting Response, 

Tiffany Diaz


Marketing Executive.

 

 


                                                                      If you
do not wish to hear from us again, please respond back with "Abolish" and we
will honour your request.

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


------=_NextPart_000_098A_01D547AA.0B32AAE0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>I think you =
might be interested in obtaining Database of <b>Cable-Tec Expo of =
Society of Cable Telecommunications Engineers</b> <b>2019?</b> Which =
includes complete contact information up to date.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><b>Attendees:</b> professional | leadership | =
engineering innovation | experts and more...<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><b>List =
Contains:</b> Contact Name, Title, Company Name, Size, Physical Address, =
Email address, Phone &amp; Fax numbers and etc. <o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>If you are =
interested please let me know I will assist you with counts and pricing =
details?<o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'>Awaiting =
Response,</span> <o:p></o:p></p><p class=3DMsoNormal>Tiffany =
Diaz&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; <o:p></o:p></p><p class=3DMsoNormal>Marketing =
Executive.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></b></p><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
If you do not wish to hear from us again, please respond back with =
&#8220;<b>Abolish&#8221;</b> and we will honour your =
request.<o:p></o:p></span></p><p =
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
class=3DMsoNormal><b><o:p>&nbsp;</o:p></b></p><p =
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
------=_NextPart_000_098A_01D547AA.0B32AAE0--



--===============2484092851053370037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2484092851053370037==--


