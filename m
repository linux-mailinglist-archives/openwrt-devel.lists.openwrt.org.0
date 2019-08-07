Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDB08524B
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 19:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qfPJoBfdR4UGyx/2PXqHkaHa5mV6nkE5FTleJ2La/Cc=; b=CLw6ikXve/A97M4OvBTQuUM8S
	BfjfY+BJ/COBl4BiU/vrnvTkwTg+jQSIx1MIgJsI6hgvZEzfe1LVUif061dDe32DG0hnbSe0Q56Pq
	4oDTR6/1JJ/kECHXY+zrr7dyGnFYDDFM4ooAXULzifBG3LFJ3u6X2iQ7NLQqkFbWnWJDCPydzny9P
	tGitUHKS3YxeJA2RIT1ZFhz/J3QjoUomJbM9dlxh/ioOweRYjDw4dcKok+YngkYHwyHGiIaATRuQn
	M4S/NKHRVmNhsvSe51Ir66HBLm3pg/icNC9t1TlEpVU9uIIk39V38VXNrxBzB9fyL0RiLBkgGZdPF
	R6uc4BiXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPyY-0004Uc-0Y; Wed, 07 Aug 2019 17:43:50 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPyP-0004UC-GK
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 17:43:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id b7so41923693pls.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 10:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=accuratebizleads-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:references:in-reply-to:subject:date:message-id:mime-version
 :thread-index:content-language:importance;
 bh=ikL7pL4VBmqT/D6PkLX3qyz38XSKtDiy0luID2fiYZQ=;
 b=QYuHXjtS5NJsbZri+jfkosc9xpPCLzGeYS7oaDdGjgZScVZ+oBqwBo5emX63i6an3A
 zKPIhEsJ2ov/CYoVBFFGQsGqu2sg5Pcc12aw9Cy+Li2GsZSJwV1Pgt2Je/4BTWTQgZgK
 FXLDQBzK2rCnSvFUmbbHwQINAYZLSd6DChc5+gtl+oHQq1hWFemEg9TDr2vMuKmzC3LG
 h2SL0KL+8dZiJLiBn3e1yfoVxQZBcolc1XZDmrZ8hvETTfH0QqcYeTj1P2QDkeQNfmtD
 oEbSLKybvIyO/Qu8I1n0b9jctDd4qlPRfR5DVOwFHyWSXdM8hvWmk+YmN713Qyu8loR1
 ewIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:content-language:importance;
 bh=ikL7pL4VBmqT/D6PkLX3qyz38XSKtDiy0luID2fiYZQ=;
 b=FGCaCQBX7L3k8wjy/nvAQ6712691ONmq+uFlJ1SzujjcrySRGOc6F/U5aTCNl/iqLi
 V/m1swnrZEVm7WZixt7Rar5dzCl+zTD/DJCAx1eegHdVkpO3AHqeCaYmXcC4+m0IFeyd
 vepVYZCWgTRLokRuaM4KGEmeE5nx9oE6rA2JustwdHjsL6rgRql+Gkt3bpYJyTXjY+ek
 +n/6ROR7ircrYxZGtbeLSUE3yIT3FESxAqhlaIycxfHhGQYYE7WZEimIanKGs6TSW7I3
 lMmNL6NUwB62SJQ6KfDbhNQu1OgtCLbNFekrGKzCMCA/WIkTOnxXjrM5LfhWGXUSJiqe
 iAcQ==
X-Gm-Message-State: APjAAAWkLIbzI05QCwluBVBMN1Hl8wKu03oz49lnZfDno3P73tbtMjxT
 GgCmdW/RXUf1RUIcxUEKD3PDIPV7Bog=
X-Google-Smtp-Source: APXvYqwicy9soep8GWoY14NgjdljPqXaJud2nCrUJs9DxB8fA/f/eWtLnKGlW0KnRMpV+13KakbIyg==
X-Received: by 2002:a17:902:2889:: with SMTP id
 f9mr8730944plb.230.1565199819861; 
 Wed, 07 Aug 2019 10:43:39 -0700 (PDT)
Received: from adminPC ([49.207.52.136])
 by smtp.gmail.com with ESMTPSA id f12sm76986792pgq.52.2019.08.07.10.43.38
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 10:43:38 -0700 (PDT)
From: Jenny Ouyang <jenny.ouyang@accuratebizleads.com>
X-Google-Original-From: "Jenny Ouyang" <Jenny.Ouyang@accuratebizleads.com>
To: <openwrt-devel@lists.openwrt.org>
References: 
In-Reply-To: 
Date: Wed, 7 Aug 2019 12:43:10 -0500
Message-ID: <726401d54d47$a5f01890$f1d049b0$@accuratebizleads.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdVNNih/dT8+WxDtTQO2LS0tJXPPigAETy0wAAAAFMAAAAAE8AAAAAMgAAAABFAAAAAEgAAAAAOwAAAABCAAAAAEUAAAAASAAAAAA+AAAAAEEAAAAARwAAAABKAAAAAEEAAAAANAAAAABaAAAAAE0AAAAARwAAAABKAAAAAEAAAAAARgAAAABdAAAAAEMAAAAASQ
Content-Language: en-us
Importance: High
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_104341_749392_CEEBA7AD 
X-CRM114-Status: UNSURE (  -4.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
Subject: [OpenWrt-Devel] Attendees Database Of Cable-Tec Expo 2019
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
Content-Type: multipart/mixed; boundary="===============7057450625046628527=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7057450625046628527==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_7265_01D54D1D.BD1A1090"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_7265_01D54D1D.BD1A1090
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi, 

 

Would you be interested in procuring an Attendees Database Cable-Tec Expo
2019 and there will be a cost associated with the contacts.

 


Attendees: SCTE's International Brand, International Society of Broadband
Experts (ISBE), Industry Leaders, Cable ROI, Machine Learning, Data
Analytics, 10G, IoT, Artificial Intelligence and many More.

 


Data Contains: Contact Name, Title, Company Name, Size, Physical Address,
Opt-In Email address, Phone & Fax numbers and etc.

 

If you're interested, Please let me know I will assist you with counts,
pricing and more information.

 

Awaiting Response,

Jenny Ouyang

Marketing Executive

 

                                    

If you do not wish to hear from us again, please respond back with "Abolish"
and we will honour your request.


------=_NextPart_000_7265_01D54D1D.BD1A1090
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
	font-family:"Times New Roman","serif";
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	font-family:"Times New Roman","serif";
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Verdana","sans-serif";}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'font-size:10.0pt'>Hi, =
<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'font-size:10.0pt'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'font-size:10.0pt'>Would you be interested in procuring an =
Attendees Database <b>Cable-Tec Expo 2019 </b>and there will be a cost =
associated with the contacts.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
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
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; <o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt'>Attendees:</span></b><span =
style=3D'font-size:10.0pt'> </span><span =
style=3D'font-size:10.0pt'>SCTE&#8217;s International Brand,</span><span =
style=3D'font-size:10.0pt'> International Society of Broadband Experts =
(ISBE),</span><span style=3D'font-size:10.0pt'> </span><span =
style=3D'font-size:10.0pt'>Industry Leaders,</span> <span =
style=3D'font-size:10.0pt'>Cable ROI,</span> <span =
style=3D'font-size:10.0pt'>Machine Learning,</span> <span =
style=3D'font-size:10.0pt'>Data Analytics,</span> <span =
style=3D'font-size:10.0pt'>10G, IoT, Artificial Intelligence and many =
More&#8230;</span><b><span =
style=3D'font-size:10.0pt;color:black'><o:p></o:p></span></b></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'font-size:10.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></b><span =
style=3D'font-size:10.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
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
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
<b><o:p></o:p></b></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span style=3D'font-size:10.0pt'>Data =
Contains</span></b><span style=3D'font-size:10.0pt'>: Contact Name, =
Title, Company Name, Size, Physical Address, Opt-In Email address, Phone =
&amp; Fax numbers and etc.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'font-size:10.0pt'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'font-size:10.0pt'>If you&#8217;re interested, Please let me =
know I will assist you with counts, pricing and more =
information.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span =
style=3D'font-size:10.0pt'><o:p>&nbsp;</o:p></span></b></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'font-size:10.0pt'>Awaiting =
Response,<o:p></o:p></span></b></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'font-size:10.0pt'>Jenny =
Ouyang<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'font-size:10.0pt'>Marketing =
Executive<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'><o:p>&nbsp;<=
/o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'>&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
<o:p></o:p></span></p><p class=3DMsoNormal align=3Dcenter =
style=3D'margin-left:.5in;text-align:center;text-indent:.5in'><span =
style=3D'font-size:9.0pt'>If you do not wish to hear from us again, =
please respond back with <b>&#8220;Abolish&#8221;</b> and we will honour =
your request.<o:p></o:p></span></p></div></body></html>
------=_NextPart_000_7265_01D54D1D.BD1A1090--



--===============7057450625046628527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7057450625046628527==--


