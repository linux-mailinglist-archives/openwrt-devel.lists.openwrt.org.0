Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0ED8BA65
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 15:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wJS+WnQ6U08mj+RkZxQ21DVp/zGaB1YDnDoL47zzGa8=; b=UerVHufhIQtEcwf2noM4QUvF0
	XHAu7+oJhiKu85iuG3PAD1YJtlD/z+o9Vc4xq3ak+lpsFEcLF5VA7EWd/OzpJedpYsIG1fM+GUpQn
	uaWzzt7iOI+PmStdgkMDVbfUr4cJ/9ta63Ahps3erjtIi2YjG2kEmVoDWts2ES47/DHx9djgXvpnj
	7yYDK0JuMa24qmeeJ7u0IoF6Qy/S1DVo8r59BtkKc6wLXZCH1+sRxWyqU5HpxpDY3/q/+bsQ+M8LV
	7DziPFwZi6QjLPCFdrrMQ/NcrpqDCllZxV+QsornFDZkHLk8tiinBWKT22Is78qrO2FJuKp+fJv1G
	5wrIHH2Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWwe-0006dp-KY; Tue, 13 Aug 2019 13:34:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWvW-0005ZG-6r
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 13:33:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id w26so6357805pfq.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 13 Aug 2019 06:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fortune4leads-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:references:in-reply-to:subject:date:message-id:mime-version
 :importance:thread-index:content-language
 :disposition-notification-to;
 bh=5heAwwKxsJB5z8pvuTjvPHDv9thAataXTNUGen58SPs=;
 b=FZqRdSMr8Rl+rOVQIr28B5gG75ejcl5UDhmLmt69BAAAY3tQOO0wug7ujncq90TyFj
 irgauH9SZRrvWKJbdpSOweKFytIxxoqTooLOpR6FCpfGBTph2IYTR6dszr919pVg5XkG
 ZwNdLC2hjH0WDlH+SiadHRA49QF9cvXilAo9XZWEBtGBwFVNilCHf10oUVQx8NzK3Nxr
 JvUnQvdLhKIONyJrW9DFnMY5OnRWBOy3nnzr/4CwyOjRKIImHcoXSAxDs7igzF50e3ID
 fIpCKLrIuosCpmU6jwJHWEJKsO69cUc0hATbd3C3SAmuP6yVAgrnwfb66IlBGfatn7e8
 peHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:importance:thread-index:content-language
 :disposition-notification-to;
 bh=5heAwwKxsJB5z8pvuTjvPHDv9thAataXTNUGen58SPs=;
 b=M7emJRjs0f6XZRNT2LzJiNTiTU6sldLAEmempIVd+Oa3/8sDqdZ86ZjFuj5GeRPAqu
 O0Cx5ykPQd+IHVLa6bk1kaicqloxiyvwL3+0KSuPLhZkxqkoik52BppDDKsRKgke8B4d
 +NCHP1C7QU7QHezmYdiFqxlN+TJy7/MNKvjLevaGEskTpp1zzp2JVTWy21dWE4EyjIRt
 hAdjwcCXIXyxjC80ohr6YgWxyjssVI2mx5KTHR3NUJlzj8RE0bseRylbJ0lkrhTIq3RV
 VwXHqnU7UlRjUb/wSFxjj3b9f69b7Haih/IYCzEXH/zymjaCQynjP9B6HUastwiRudya
 WhhA==
X-Gm-Message-State: APjAAAXr/jibgJ41S60pdVE4HrYxIK2sq8pNu8K2BpWQ8mSQUIxJqZm9
 42fNWceTKEm00vHlJGxDtWuPrsWB4mQ=
X-Google-Smtp-Source: APXvYqzSII/nF5uQhujmunNamc82VmM3lITXmravkn+kGaG6nKREJUvDxebawOkZCdaaFPKhZoa3ow==
X-Received: by 2002:aa7:9e9a:: with SMTP id p26mr41864828pfq.25.1565703204115; 
 Tue, 13 Aug 2019 06:33:24 -0700 (PDT)
Received: from Bharath ([27.7.13.94])
 by smtp.gmail.com with ESMTPSA id w11sm5547221pfi.105.2019.08.13.06.33.22
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 13 Aug 2019 06:33:23 -0700 (PDT)
From: Julie Davidson <julie.davidson@fortune4leads.com>
X-Google-Original-From: "Julie Davidson" <Julie.Davidson@fortune4leads.com>
To: <openwrt-devel@lists.openwrt.org>
References: 
In-Reply-To: 
Date: Tue, 13 Aug 2019 08:32:50 -0500
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAADb8eTLKTGtHjTqjgfSGhE7CgAAAEAAAAJ+xYEenUTpKtWY3epvM3AEBAAAAAA==@fortune4leads.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 14.0
Importance: High
Thread-Index: AdVOHAssW3/d2F7uQWuAd7/mfQJ1YwAAAyXAAAAAFFAAAAAB8AAAAARQAAAABIAAAAADsAAAAATgAAAABFAAAAAEsAAAAATgAAAABBAAAAADgAAAAAWwAAAAAxAAAAAEQAAAAASwAAAABRAAAAAEoAAAAAXgAAAABKAAAAAFEAAAAAWgAAAABEAAAAAF0AAAAAQwAAAABNAAAAAFMAAAAAWgAAAABDAAAAAF0AAAAARgAAAABcAAAAAFYAAAAATwAAAABZAAAAAFIAAAAAXAAAAABVAAAAAFIAAAAATAAAAABVAAAAAF8AAAAAWAAAAABlAAAAAE8AAAAAaAAAAABFAAAAAG4AAAAAXgAAAABbAAAAAFQAAAAAXgAAAABrAAAAAFcAAAAAZAAAAABUAAAAAF0AAAAAWgAAAABnAAAAAFMAAAAAUAAAAABqAAAAAFkAAAAAVgAAAABTAAAAAGwAAAAAWQAAAABWAAAAAGYAAAAAYgAAAABiAAAAAG8AAAAAbwAAAABiAAAAAF8AAAAAYgAAAABiAAAAAG4AAAAAawAAAABuAAAAAG4AAAAAawAAAABuAAAAAGEAAAAAYQAAAABuAAAAAGEAAAAAUAAAAABtAAAAAG0AAAAAfQAAAABzAAAAAGYAAAAAdgAAAABZAAAAAGYAAAAAZgAAAABmAAAAAGkAAAAAaQAAAAC5AAAAAHIADv2Yog
Content-Language: en-in
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_063326_508210_6BC51BF8 
X-CRM114-Status: UNSURE (  -3.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Attendees Data Base Of SCTE Cable-Tec Expo 2019
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
Content-Type: multipart/mixed; boundary="===============6347832760850938864=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6347832760850938864==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0A00_01D551B1.C5824D90"
Content-Language: en-in

This is a multipart message in MIME format.

------=_NextPart_000_0A00_01D551B1.C5824D90
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

 

Hi,

 

We are in the process of closing files for the month. Typically when I
haven't heard back from someone it means they're either really busy or
aren't interested.

 

If you aren't interested, do I have your permission to take off your email?

 

If you're still interested, I would highly appreciate if you would share
your thoughts, so that we can assist you best solution along with affordable
cost.

 

Looking forward to hearing from you.

Julie Devidson

 

From: Julie Davidson [mailto:Julie.Davidson@fortune4leads.com] 
Sent: 08 August 2019 14:05
To: 'openwrt-devel@lists.openwrt.org'
Subject: Attendees Data Base Of SCTE Cable-Tec Expo 2019

 

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

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


------=_NextPart_000_0A00_01D551B1.C5824D90
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.text--large
	{mso-style-name:text--large;}
span.EmailStyle19
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
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>We are in the process =
of closing files for the month. Typically when I haven&#8217;t heard =
back from someone it means they&#8217;re either really busy or =
aren&#8217;t interested.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></spa=
n></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>If you aren&#8217;t =
interested, do I have your permission to take off your =
email?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></spa=
n></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>If you&#8217;re still =
interested, I would highly appreciate if you would share your thoughts, =
so that we can assist you best solution along with affordable =
cost.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></spa=
n></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>Looking forward to =
hearing from you.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-fareast-language:EN-IN'>Julie =
Devidson<o:p></o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";mso-fareast-l=
anguage:EN-IN'>From:</span></b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";mso-fareast-l=
anguage:EN-IN'> Julie Davidson [mailto:Julie.Davidson@fortune4leads.com] =
<br><b>Sent:</b> 08 August 2019 14:05<br><b>To:</b> =
'openwrt-devel@lists.openwrt.org'<br><b>Subject:</b> Attendees Data Base =
Of SCTE Cable-Tec Expo 2019<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
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
------=_NextPart_000_0A00_01D551B1.C5824D90--



--===============6347832760850938864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6347832760850938864==--


