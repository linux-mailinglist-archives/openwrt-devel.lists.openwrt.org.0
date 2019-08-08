Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A695E8694B
	for <lists+openwrt-devel@lfdr.de>; Thu,  8 Aug 2019 21:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J171wrdvRhxZJlqhPfANrsA0hI27U1DyrItWRa6mA+E=; b=MYvKIeqjYUCRojwt5nXsLWw6n
	/Y8vl9SOlMBNoqWFBmztOC24+7gXwHUJ9Y9jcKkngndMonUZj42cA6PLNX/VIK89DJYwYq7qEXb0i
	EDOvImnje8e6r1NUP5YenDcelq7PgVcL11yM7GSTsR7xp+ybGY+rCUSnRxU0/x3AHP0iRDMYsUOdZ
	Om/EAbPuNCuVn7o1LA6vyXJ5Mwuq1XOrhSv3LO6GJODe9EOBcQ2XXHUUwqECAuujyWwyh4lla9jfx
	CWCJknpFdtR/hh4/09DIgKvR+R2M4IsQIpWOLOIelnBS0U3OvgWMJsa3Ckaykrckq63v8lib0lahz
	BNwLGi2oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvnjA-0005xY-9j; Thu, 08 Aug 2019 19:05:32 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvnj2-0005xE-K2
 for openwrt-devel@lists.openwrt.org; Thu, 08 Aug 2019 19:05:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id b13so44617813pfo.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 08 Aug 2019 12:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fortune4leads-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:references:in-reply-to:subject:date:message-id:mime-version
 :thread-index:content-language:disposition-notification-to;
 bh=5fpoXxKui4Xa8rDPiVpiQPpADxjxSDvhnGSbYQWwlBc=;
 b=v4/5GyegbVdJLjga5yrn747Ctvdm4DFF/mbqHAOSwjXUIf8yEA5z2y0hPq/4okoq78
 DFpB1LMFS4zNgeqxVQZNjKWwAMtkqfvFew363K5Xi3gymMUx/pxM2OWKMbN5LJtxlT/h
 L90I32EwTiEMHvGjYPdjkWvqXPk+h4CltkesKCAI2cWwZzBMrCPxdtYl2EBEXeaXQ/uY
 q/FycXDrfIHilx3hIIS3G3LUWNDtBC1cVsrCDGqp+LSPXpJGMXoEss2Kk3+1N7U4e13H
 NJqUc/cUaDj9E20Azpv7rZJOUFgcqsC8yEx1kFCXog+2Rj820vrxBN4GLP3AKbvdv2q1
 YZmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:content-language
 :disposition-notification-to;
 bh=5fpoXxKui4Xa8rDPiVpiQPpADxjxSDvhnGSbYQWwlBc=;
 b=JUoQAX1cqiZuhWHN/hMAWW3tzPrFe/79Y6Nw8ram+PD3CQ+zVRAF11jDPG2k3XIsMm
 p1vSwwqmDn+/6LcPxXo2/Nzk+9C387egjO+d/eURwjab16L3/Q2mbcnp5TnWsdZEuYG3
 v0UremNhFCzkUgZdt8yOibPPxP8x9epGU8e5rmiVLJe7p+xPkhxtaL9qOfrBIXRIXNSV
 AXj2waiEbSfx9sPIuqrgb5ICpPOblmAZTjgo0rjjdFeCuCyRhn1jkoRkploR6H0wpYfE
 pghaCOXunE9kQ6o57VgKDLQtrl0Kr+F8aUdkH0KOrWOwL6RrXvHS5us5yMhP2N0YO1Op
 yhKQ==
X-Gm-Message-State: APjAAAWGkOQo2av5xnv5ToSuuTzB7+4s+5dAOdBOS14E5vsKRZkYv0hX
 0wcOvYX0qhe+cRtGeGYfJYwCL1rJpHA=
X-Google-Smtp-Source: APXvYqx5fFaQ5H0p6ao+eyYAURakC0WxXgp4uQtD0+5h9f4BGiHW/MdK0shzS7Q1BqRSOkiqE2nnrQ==
X-Received: by 2002:a17:90a:2228:: with SMTP id
 c37mr5637068pje.9.1565291123383; 
 Thu, 08 Aug 2019 12:05:23 -0700 (PDT)
Received: from Bharath ([49.207.52.136])
 by smtp.gmail.com with ESMTPSA id v18sm93914254pgl.87.2019.08.08.12.05.21
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 08 Aug 2019 12:05:22 -0700 (PDT)
From: Julie Davidson <julie.davidson@fortune4leads.com>
X-Google-Original-From: "Julie Davidson" <Julie.Davidson@fortune4leads.com>
To: <openwrt-devel@lists.openwrt.org>
References: 
In-Reply-To: 
Date: Thu, 8 Aug 2019 14:05:21 -0500
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAADb8eTLKTGtHjTqjgfSGhE7CgAAAEAAAACNGctkRzNNJv9TIaeII2f4BAAAAAA==@fortune4leads.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdVOHAssW3/d2F7uQWuAd7/mfQJ1YwAAAyXAAAAAFFAAAAAB8AAAAARQAAAABIAAAAADsAAAAATgAAAABFAAAAAEsAAAAATgAAAABBAAAAADgAAAAAWwAAAAAxAAAAAEQAAAAASwAAAABRAAAAAEoAAAAAXgAAAABKAAAAAFEAAAAAWgAAAABEAAAAAF0AAAAAQwAAAABNAAAAAFMAAAAAWgAAAABDAAAAAF0AAAAARgAAAABcAAAAAFYAAAAATwAAAABZAAAAAFIAAAAAXAAAAABVAAAAAFIAAAAATAAAAABVAAAAAF8AAAAAWAAAAABlAAAAAE8AAAAAaAAAAABFAAAAAG4AAAAAXgAAAABbAAAAAFQAAAAAXgAAAABrAAAAAFcAAAAAZAAAAABUAAAAAF0AAAAAWgAAAABnAAAAAFMAAAAAUAAAAABqAAAAAFkAAAAAVgAAAABTAAAAAGwAAAAAWQAAAABWAAAAAGYAAAAAYgAAAABiAAAAAG8AAAAAbwAAAABiAAAAAF8AAAAAYgAAAABiAAAAAG4AAAAAawAAAABuAAAAAG4AAAAAawAAAABuAAAAAGEAAAAAYQAAAABuAAAAAGEAAAAAUAAAAABtAAAAAG0AAAAAfQAAAABzAAAAAGYAAAAAdgAAAABZAAAAAGYAAAAAZgAAAABmAAAAAGkAAAAAaQAAAAC5AAAAAHIA==
Content-Language: en-in
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_120525_081655_A62BA511 
X-CRM114-Status: UNSURE (   0.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Attendees Data Base Of SCTE Cable-Tec Expo 2019
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
Content-Type: multipart/mixed; boundary="===============8035178677622572293=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8035178677622572293==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0DE3_01D54DF2.5276CF00"
Content-Language: en-in

This is a multipart message in MIME format.

------=_NextPart_000_0DE3_01D54DF2.5276CF00
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I think you might be interested in obtaining Database of  SCTE Cable-Tec
Expo 2019.and there will be a Pricing associated with the Data Base.

 

Attendees Data:  Fiber and broadband experts,PPC Broadband were among
hundreds of industry leaders,,industry professionals,technology to many
different decision makers and professionals and many more

 

Data Contains: Contact Name, Title, Company Name, Size, Physical Address,
Email address, Contact Number& Fax numbers and etc.

 

If you're interested, Please let me know I will assist you with counts,
pricing and more information?

 


Looking forward for your honourable response.

Regards,

Julie Davidson

Marketing Executive

 

 

 
If you do not wish to hear from us again, please respond back with and we
will honour your request.

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


------=_NextPart_000_0DE3_01D54DF2.5276CF00
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
span.text--large
	{mso-style-name:text--large;}
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
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I think you =
might be interested in obtaining Database of<b><span =
style=3D'color:black'>&nbsp; SCTE Cable-Tec Expo 2019.</span></b>and =
there will be a Pricing associated with the Data Base.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><b>Attendees =
Data:</b><span style=3D'color:black;mso-fareast-language:EN-IN'> =
</span>&nbsp;<span style=3D'color:black'>Fiber and broadband experts,PPC =
Broadband were among hundreds of industry leaders,,industry =
professionals,technology to many different decision makers and =
professionals and many more<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b>Data Contains: </b>Contact Name, Title, Company =
Name, Size, Physical Address, Email address, Contact Number&amp; Fax =
numbers and etc&#8230;<b><o:p></o:p></b></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>If =
you&#8217;re interested, Please let me know I will assist you with =
counts, pricing and more information?<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p><p =
class=3DMsoNormal>Looking forward for your honourable =
response.<o:p></o:p></p><p =
class=3DMsoNormal><b>Regards,<o:p></o:p></b></p><p =
class=3DMsoNormal>Julie Davidson<o:p></o:p></p><p =
class=3DMsoNormal>Marketing Executive<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'font-size:7.0pt;font-family:"Verdana","sans-serif";color:#7F7F7F=
'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;If you do not wish to hear from us again, please respond back with =
and we will honour your request.</span><span =
style=3D'font-size:8.0pt;font-family:"Verdana","sans-serif";color:#7F7F7F=
'><o:p></o:p></span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
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
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_0DE3_01D54DF2.5276CF00--



--===============8035178677622572293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8035178677622572293==--


