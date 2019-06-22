Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E170E4F7CE
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 20:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:To:From:MIME-Version:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y65HrgRcBwKRYRZQXg3ax0/gt6aBRzAb7BuWl5wms9U=; b=Y72EFE79ifRRV/gtQzAviLg9ZN
	J1KP2sKKo2HDhPoXG8dhuRVGJsST72hcwH5HS+Xc+YqyMKbPpzdnWexKKITb0KnnsorG6WK7k5ztM
	xxMZXzlqelRDr2iH759PJTKlqIiy+ZBIH8Se2e43VO4LfR7LWxGhMcEtwfh3RVOd3HbZzVXPVvLir
	n/qNjYtTFiP2tuwAwc6p2XfB8jsT2lRUgJAMy9hofJFDeG8hPDta18yi4OTrSBQ/vOCTpMIgw1Rnr
	eU55LJQ6O4pDSfNPUnojLutwAiUtAimYDyXN4Dw6gQ7czY/zUrM9xxUm2KnvD3V06CY6b90gIA2Qd
	MJnVAuDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hekl3-00010W-SC; Sat, 22 Jun 2019 18:29:01 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hekkx-0000zy-0I
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 18:28:56 +0000
Received: from spfilter2-out2.sel01.mschosting.com ([117.53.153.20]
 helo=spfilter-2.sel01.mschosting.com)
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <BounceMay2019@gmail.com>) id 1hekks-0005rA-0B
 for openwrt-devel@openwrt.org; Sat, 22 Jun 2019 14:28:50 -0400
Received: from arbok.sgcloudhosting.com ([103.7.8.233])
 by spfilter-2.sel01.mschosting.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <BounceMay2019@gmail.com>) id 1hekVM-00080G-21
 for openwrt-devel@openwrt.org; Sun, 23 Jun 2019 02:12:50 +0800
Received: from [112.199.246.229] (port=52247
 helo=229.246.199.112.unknown.m1.com.sg)
 by arbok.sgcloudhosting.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <BounceMay2019@gmail.com>) id 1hekVL-001Ccf-2u
 for openwrt-devel@openwrt.org; Sun, 23 Jun 2019 02:12:47 +0800
MIME-Version: 1.0
From: "The Peak Shoppes @ Phnom Penh, Cambodia" <info@singpropertysale.com>
To: openwrt-devel@openwrt.org
X-Mailer: Smart_Send_4_3_3
Date: Sun, 23 Jun 2019 02:12:47 +0800
Message-ID: <18121354581603055919167@MARWANASULE5E38>
X-AuthUser: info@singpropertysale.com
X-Originating-IP: 103.7.8.233
X-SpamExperts-Domain: spamexpertfilterl.mschosting.com
X-SpamExperts-Username: 103.7.8.233
Authentication-Results: sel01.mschosting.com; auth=pass
 smtp.auth=103.7.8.233@spamexpertfilterl.mschosting.com
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.56)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0Q9DGisTdy29Heef28Cu3sipSDasLI4SayDByyq9LIhVJoq90/sLoshC
 VE6uOyuH/ETNWdUk1Ol2OGx3IfrIJKywOmJyM1qr8uRnWBrbSAGDv6HIrzsqXAdDhVikJhF7mp6k
 wN7cLQ2bREBvcdW1+zaDlCpPa30it6UlYuWjAkQyl42ZY5p1EacIV3awmCz0wtPWPnlzDo1trjzy
 H8N1vWq6RKUlitE6DnLoHE+rE1Jx6bZg/aD78IfVTq/ldAfGdYGY7UpIBQrZsGjkDuXt1f6m4pUh
 YvSMue6wIbCm9xE/fB2IkMHqwopKXQ6EO/XkXsiI/pedVeyjhtL5Rq8FPQUUfzU21GPJyBQVA7/j
 dQHNkA0nU5sARAQiNhY8g1WcfB5uvI/J98V9/r6nI2c3iXtlRyZ+hiq/Se9CCy3BU1BHjY218mUC
 Y8H5d5a4d/oTY5QFkvPDBC3C6GRb5BGsG6nb7vBrbaolLbXZqfRaOdNgtgCVJFhCwJRoPEgouD8G
 vIcfO51Kk/chpVC7GG8UBJXgxlyKNyNZ3EAv4LkHjljO7w/icpiNgE8H4i8nk5sAG10BvjYq/67/
 8uqQhTIhGLigfe92gjCcuxV+M5O6QGUARdXMpR7g8oGF7kvxiRbgz/SE40poipnRY9AO8cjLzZIH
 mFDqewO9xyOqCYO8P1aHsG9U6rY4RPOJimD4ePjuR1pKH621yCE7LVVsrbmiZA9KEi5LmFs2IfMT
 104rYmggf2YGh/NJe1GiJf3A0favogrr18cUKAKRmfJj5lmKM88WiVL55uaxxWrN4u4ucXA2GEwb
 pZVDtp2gI3SnmWWCbZjNA2LmkxIJHRQqyPFe7iEzT6crwVNQtSfKNCPNty7zdbxN8xR9dk1AZciO
 5cIsukVrE+f9woe/ziQ3wKJ+kQP1H/aAwarQpYDOYx/6JtUOmJpwmOQENSXKJWHC1xeU81z8XbDa
 xGTIaRgz+fpjTkmbO+8nMRYL9kekVL4dhx06CxM1WA0cg4PSetYmmvTquKwBEecPVOiKLiPA6YFo
 Yv+wIgD/xDehea09OpnwSuob1Bd+wucL9a7F03TTl9VNzV42NR0k/WbSDqgWlbX+iAWWp33KKvSL
 EepfzmW/VTBD
X-Report-Abuse-To: spam@spfilter-1.sel01.mschosting.com
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam detection software, running on the system "util-01",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  Hi Investor, With the 55% Nett Rental Guarantee, you can own
 a Freehold shops with just USD1, 200 / SGD1,
 700 in Cambodia by Oxley Singapore.
 Sales price from USD8xK. Shops from 88 sqft. Limited units available. [...]
 Content analysis details:   (2.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: singpropertysale.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (bouncemay2019[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (bouncemay2019[at]gmail.com)
 0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.8 BAYES_50               BODY: Bayes spam probability is 40 to 60%
 [score: 0.5000]
 0.0 HTML_FONT_SIZE_LARGE   BODY: HTML font size is large
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_112855_197485_22F44949 
X-CRM114-Status: UNSURE (  -3.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bouncemay2019[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (bouncemay2019[at]gmail.com)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_SIZE_LARGE   BODY: HTML font size is large
 1.7 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 2.4 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
Subject: [OpenWrt-Devel] Fwd: A dv - Cambodia Shops by Singapore Developer.
 Only USD8xK / SGD1, 700 to own. 55% Nett Rent Guarantee
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
Reply-To: marwanaproperty@gmail.com
Content-Type: multipart/mixed; boundary="===============7535269347549442512=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============7535269347549442512==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_4773_45C727E7.5A2529C0"


------=_NextPart_001_4773_45C727E7.5A2529C0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Investor,


With the 55% Nett Rental Guarantee, you can own a Freehold shops with just =
USD1,200 / SGD1,700 in Cambodia by Oxley Singapore. Sales price from USD8xK=
. Shops from 88 sqft. Limited units available.


It also include:

1. 55% Nett Rental Guarantee

2. Progressive Payment

3. Deferred Payment

4. Grade A fittings and partial furnished

5. Can re-assign SPA immediately and more...


Singaporeans are the no. 1 investor in this mix development. Call +65 972 3=
3355 before all gone.

Click here for more info https://www.singpropertysale.com/property/peak/

Click here to watch The Peak @ Phnom Penh, Cambodia video https://www.youtu=
be.com/watch=3Fv=3DMUODYMrWiOM

Please forward and share this opportunity with your family and friends.



Best Regards.

Marwana Suleiman

Call / Whatsapp +65 972 33355

Email: marwanaproperty@gmail.com

R042714H

Huttons Asia Pte Ltd (Singapore)

L3008899K


Unsubscribe


------=_NextPart_001_4773_45C727E7.5A2529C0
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

<head>=0A =0A<meta http-equiv=3D"Content-Type" content=3D"text/html; charse=
t=3Dwindows-1252"> =0A =0A<meta name=3D"GENERATOR" content=3D"MSHTML 11.00.=
10570.1001"></head> =0A<body><font color=3D"#0b0b0b" face=3D"ArialMT" size=
=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><font color=3D"#=
0b0b0b" face=3D"ArialMT" size=3D"5"><p>Hi Investor,</p><p><br></p>=0A</font=
></font></font><font color=3D"#0b0b0b" face=3D"HelveticaNeue" size=3D"6"><f=
ont color=3D"#0b0b0b" face=3D"HelveticaNeue" size=3D"6"><font color=3D"#0b0=
b0b" face=3D"HelveticaNeue" size=3D"6">=0A</font></font></font><font color=
=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><font color=3D"#0b0b0b" face=3D"Ar=
ialMT" size=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><p>Wi=
th the 55% Nett Rental Guarantee, you can own a Freehold shops with just US=
D1,200 / SGD1,700 in Cambodia by Oxley Singapore. Sales price from USD8xK. =
Shops from 88 sqft. Limited units available.</p><p><br></p>=0A</font></font=
></font><font color=3D"#0b0b0b" face=3D"HelveticaNeue" size=3D"6"><font col=
or=3D"#0b0b0b" face=3D"HelveticaNeue" size=3D"6"><font color=3D"#0b0b0b" fa=
ce=3D"HelveticaNeue" size=3D"6">=0A</font></font></font><font color=3D"#0b0=
b0b" face=3D"ArialMT" size=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" s=
ize=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><p>It also in=
clude:</p>=0A<p>1. 55% Nett Rental Guarantee</p>=0A<p>2. Progressive Paymen=
t</p>=0A<p>3. Deferred Payment</p>=0A<p>4. Grade A fittings and partial fur=
nished</p>=0A<p>5. Can re-assign SPA immediately and more...</p><p><br></p>=
=0A</font></font></font><font color=3D"#0b0b0b" face=3D"HelveticaNeue" size=
=3D"6"><font color=3D"#0b0b0b" face=3D"HelveticaNeue" size=3D"6"><font colo=
r=3D"#0b0b0b" face=3D"HelveticaNeue" size=3D"6">=0A</font></font></font><fo=
nt color=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><font color=3D"#0b0b0b" fa=
ce=3D"ArialMT" size=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" size=3D"=
5"><p>Singaporeans are the no. 1 investor in this mix development. Call +65=
 972 33355 before all gone.</p>=0A</font></font></font><p><font color=3D"#0=
b0b0b" face=3D"ArialMT" size=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT"=
 size=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" size=3D"5">Click here =
for more info </font></font></font><a href=3D"https://www.singpropertysale.=
com/property/peak/"><u><font color=3D"#070098" face=3D"ArialMT" size=3D"5">=
<font color=3D"#070098" face=3D"ArialMT" size=3D"5"><font color=3D"#070098"=
 face=3D"ArialMT" size=3D"5">https://www.singpropertysale.com/property/peak=
/</font></font></font></u></a></p>=0A<font color=3D"#0b0b0b" face=3D"ArialM=
T" size=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><font col=
or=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"></font></font></font><p><font co=
lor=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><font color=3D"#0b0b0b" face=3D=
"ArialMT" size=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" size=3D"5">Cl=
ick here to watch The Peak @ Phnom Penh, Cambodia video <a href=3D"https://=
www.youtube.com/watch=3Fv=3DMUODYMrWiOM">https://www.youtube.com/watch=3Fv=
=3DMUODYMrWiOM</a></font></font></font></p>=0A<font color=3D"#141414" face=
=3D"ArialMT" size=3D"5"><font color=3D"#141414" face=3D"ArialMT" size=3D"5"=
><font color=3D"#141414" face=3D"ArialMT" size=3D"5"><p>Please forward and =
share this opportunity with your family and friends.</p>=0A</font></font></=
font><font color=3D"#0b0b0b" face=3D"HelveticaNeue" size=3D"6"><font color=
=3D"#0b0b0b" face=3D"HelveticaNeue" size=3D"6"><font color=3D"#0b0b0b" face=
=3D"HelveticaNeue" size=3D"6">=0A<p> </p>=0A</font></font></font><font colo=
r=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><font color=3D"#0b0b0b" face=3D"A=
rialMT" size=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><p><=
br></p><p><br></p><p>Best Regards.</p>=0A</font></font></font><font color=
=3D"#0b0b0b" face=3D"HelveticaNeue" size=3D"6"><font color=3D"#0b0b0b" face=
=3D"HelveticaNeue" size=3D"6"><font color=3D"#0b0b0b" face=3D"HelveticaNeue=
" size=3D"6">=0A</font></font></font><font color=3D"#0b0b0b" face=3D"ArialM=
T" size=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><font col=
or=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><p>Marwana Suleiman</p>=0A<p>Cal=
l / Whatsapp +65 972 33355</p>=0A</font></font></font><p><font color=3D"#0b=
0b0b" face=3D"ArialMT" size=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" =
size=3D"5"><font color=3D"#0b0b0b" face=3D"ArialMT" size=3D"5">Email: </fon=
t></font></font><a><u><font color=3D"#103cc0" face=3D"ArialMT" size=3D"5"><=
font color=3D"#103cc0" face=3D"ArialMT" size=3D"5"><font color=3D"#103cc0" =
face=3D"ArialMT" size=3D"5">marwanaproperty@gmail.com</font></font></font><=
/u></a></p>=0A<font color=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><font col=
or=3D"#0b0b0b" face=3D"ArialMT" size=3D"5"><font color=3D"#0b0b0b" face=3D"=
ArialMT" size=3D"5"><p>R042714H</p>=0A<p>Huttons Asia Pte Ltd (Singapore)</=
p>=0A<p>L3008899K</p><p><br></p><p><a href=3D"marwanaproperty@gmail.com">Un=
subscribe</a></p></font></font></font>=0A</body>
------=_NextPart_001_4773_45C727E7.5A2529C0--


--===============7535269347549442512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7535269347549442512==--

