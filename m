Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155F41D9347
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 May 2020 11:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ju4TePa0TgyDYeAzykeXZ3PR6rRPbuN+96xczY4JWkg=; b=OPuZp2Bi8kkKIyWzHLwpISq0x
	DoW+36femc8Z640njB2+Khjl31f5ernl0J+Y8fO4Bq6l6DWLIVwr48hqOuLzNp0HsAVR6SXU3utfG
	9PKwjgbTnrkn90ySicOQ7+O9BhTjDe34j2/cr20I64kZGwLeq6th55tK8qqdVopehPXQhMFN72rwl
	jFJzDBhbBiBIZp8PRfp4hOIlTcmbWUAAb05zNvdLUAXxh1vHrbgSt425pFswpcUqTg9wOd6/TXKpU
	/DJ4VkBFGANdSPlfVfmtWf39KAMrOJABQYQcjqnNoU3pJCfqtt629EkkA7oS1auiHFXygtXpWqyGs
	tP59YiHNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayUg-0008Lc-7v; Tue, 19 May 2020 09:25:02 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayUV-0008KX-8w
 for openwrt-devel@lists.openwrt.org; Tue, 19 May 2020 09:24:53 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MvKGv-1ijpfc2d4z-00rImP; Tue, 19 May 2020 11:24:41 +0200
From: <mail@adrianschmutzler.de>
To: "'Jeonghum Joh'" <oosaprogrammer@gmail.com>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
 <87mu6ur24u.fsf@miraculix.mork.no>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
 <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
 <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
 <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
 <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
 <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
 <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
 <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
 <CALYKT1ho94oFRCUr=ujBH1vzZc5vQrTWY1Az91HkKS_F12AivQ@mail.gmail.com>
 <CALYKT1jytZ0SmMEWc-84Fjp-oSSYvb+UmR8X3gF4BugVrbZLrw@mail.gmail.com>
In-Reply-To: <CALYKT1jytZ0SmMEWc-84Fjp-oSSYvb+UmR8X3gF4BugVrbZLrw@mail.gmail.com>
Date: Tue, 19 May 2020 11:24:40 +0200
Message-ID: <005201d62dbf$537bbcf0$fa7336d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIQ5sC1j6vg0wIDU6LPuZzuECT8PgHMDqYHAid5U2sCllfa8ANishyAARGGwLMBqdTaJgHlNzIdAcPENfwC17R2pwIZ+VXwAgP/8vwCXah6agKOrQ3lA1utWaYB+UoWBqctcV9w
X-Provags-ID: V03:K1:Az0vVQNVYht7Qe88xbXmMdBa/G6BjQWUVNc8ipk2sHgB20pLEF/
 9TWam86P8J8ygYZVwF8sdPR4PZSOYLQOsg+smoj1MLhELQKUqSozIauZlpvBilHMh6FVK2o
 Q+SL+yDrOAaims7Xo83V0eNALfAN6VGeYlJuyRddXFt7aNzgTk9uBgQN882EGtM4ccBaptx
 u0bDbASS9GDjkaln0pOfA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6lYcNykMpv4=:QKxL2NsS2tGcO677WC7pP/
 KjiYclSyZa4LFy9EHuecx5i5VHOPPMrlfELMrGdMDcbCsudGV1KdzUCFXitFvuUiqGoO/hfEP
 G09xCfBPpYYXn+rKs9o+U+nHz5nLqpm2rtWtr515odR+hw8GMbVR9i2N6db05fbkYNg2ynOip
 GfieH4Q2PENr3jwy7bFsICM5i4lYMWUNahhPu8pFt0nyizYvcbFCwOCATumhXDyFGLwsm39T2
 biGl+7+N/zbGw7M98AQmu8qN67AzfGPtswO0bgZIXH2muMiWvMIaLN41WUsw0PRHTo4v/IV+E
 POeUgQEW5HKm1qeCp03Dqfem9ut35wi8ECSgZjeEQ4VZkUf3os3b5ZbcyTzQ2UKL00Rt9EHAE
 dP+Un3rKWujPUv3EZ2WnV9xqO9W6A+zMXRdiKTwOQXnjPExZumrroWtfYqvquyIE+sVhw1+EU
 P+eHHpVXOn/tvvCKOsKzT950Eq83wJcyLymZcP0Oqvy34XLWDmzKXWIntreWXURm8TD3mQxYD
 5sIRem/xk2ObLlqPxDNJgSSvLlWPBmohcSuX2m7rgrSCd+AYeSUVYWmK66xZJI4fah0BoGcop
 8q1ssS7dMNyYFsTzyXfzTJvm6BjB8508Sj/+VccszlwOat/jyFUqgu5jP7Mejbil/nOGqZuJ5
 2XWky/4oHsUkL6MCTOL7x8zOF8YxZtwgC9BL631Xv0ksP0aDWkrml+9BspuPTcrpYpbGlB6yf
 MMYVuYLno4ejxDsGG441F2JVj168jiBagmC/G6VUDXr6alawHhbkRxnm8JOLHnllj5xtFX4Pu
 YyNN952ICEKBmiTbKusP+Km8T2+BUldH6l5Iy6Br7VCEIPtK+yvhooIxJhcEMG0S9hQvv2V
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_022451_627911_9187DFDD 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] How am I supposed to change settings in
 /etc/config/network of default root file system of OpenWRT?
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
Content-Type: multipart/mixed; boundary="===============8235657416121176410=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8235657416121176410==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=NRedcWyymdwEPK=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=NRedcWyymdwEPK=-=
Content-Type: multipart/alternative;
	boundary="=-=+tcOmDvXJh/pPh=-="


--=-=+tcOmDvXJh/pPh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

When you build your own firmware, just add a file in /etc/uci-defaults to i=
t, and have it contain the necessary uci command to change /etc/config/netw=
ork. This will be executed on first boot and the settings in /etc/config/ne=
twork before they are evaluated by the system during real startup.

=20

=20

From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On Beh=
alf Of Jeonghum Joh
Sent: Dienstag, 19. Mai 2020 03:49
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Subject: [OpenWrt-Devel] How am I supposed to change settings in /etc/confi=
g/network of default root file system of OpenWRT?

=20

I know how to do this for /etc/config/firewall.

It is package/network/config/firewall/files/firewall.config

=20

But I cannot find /etc/config/network for default root file system.

=20

Where can I find it?

How am I supposed to change settings in /etc/config/network of default root=
 file system of OpenWRT?

=20

Thank you in advance!

=20

Jeonghum

--=-=+tcOmDvXJh/pPh=-=
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta name=3DGenerator content=3D"Microso=
ft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3D"#0563C1" v=
link=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#=
1F497D;mso-fareast-language:EN-US'>When you build your own firmware, just a=
dd a file in /etc/uci-defaults to it, and have it contain the necessary uci=
 command to change /etc/config/network. This will be executed on first boot=
 and the settings in /etc/config/network before they are evaluated by the s=
ystem during real startup.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;col=
or:#1F497D;mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Cali=
bri",sans-serif;color:#1F497D;mso-fareast-language:EN-US'><o:p>&nbsp;</o:p>=
</span></p><div style=3D'border:none;border-left:solid blue 1.5pt;padding:0=
cm 0cm 0cm 4.0pt'><div><div style=3D'border:none;border-top:solid #E1E1E1 1=
.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span></b=
><span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-se=
rif'> openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] <b>On =
Behalf Of </b>Jeonghum Joh<br><b>Sent:</b> Dienstag, 19. Mai 2020 03:49<br>=
<b>To:</b> OpenWrt Development List &lt;openwrt-devel@lists.openwrt.org&gt;=
<br><b>Subject:</b> [OpenWrt-Devel] How am I supposed to change settings in=
 /etc/config/network of default root file system of OpenWRT?<o:p></o:p></sp=
an></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=
=3DMsoNormal>I know how to do this for /etc/config/firewall.<o:p></o:p></p>=
<div><p class=3DMsoNormal>It is package/network/config/firewall/files/firew=
all.config<o:p></o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p><=
/p></div><div><p class=3DMsoNormal>But I cannot find /etc/config/network fo=
r default root file system.<o:p></o:p></p></div><div><p class=3DMsoNormal><=
o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>Where can I find it?<o:=
p></o:p></p></div><div><p class=3DMsoNormal>How am I supposed to change set=
tings in /etc/config/network of default root file system of OpenWRT?<o:p></=
o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Thank you in advance!<o:p></o:p></p></div><div><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>Jeonghum<=
o:p></o:p></p></div></div></div></div></body></html>

--=-=+tcOmDvXJh/pPh=-=--

--=-=NRedcWyymdwEPK=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7DpdMACgkQoNyKO7qx
AnBrIhAA0fHX04fBQ8zbsNVCHdBF5KSDCYo/fXEmkRquk87fDqiZVWmNh+H+3L2v
zMyBK56wYVmWSGp7zxsr5A6svkabKpH1UAYExTw0+X2SefCfPMDjmiWP+YvnaP1U
c1mrIOq48anUzgUEucSsNzJm1uVqXFbTyyP23xwfisk2Lel0meh3nHUgsDpNHbHO
OXg0SLdIgWZ2kQQV9VomAJyyqO5+CKf6dvJawuSkRtjoeZxpve96VZj3PtAvoMyn
2LAQfRVBk7fsZVszD09RJHARg8WtjA4ioFRJaW53+TlOyybfFjBQOcrmZgXHewMq
u8t5wmxUbAZIAkoNjEIFbyVP5ysfhGc/4a6uugbbpko1ChgL9GaThrD6jwMddGBY
xNazKsRG+R1YMWFYn7IsHE79hoZcIeNoydcZUMYNYvYqU3ILtVur/7aX/uyYcA+a
LunVDkTnb4x4HGJkN4JRHR67yH7UW3bKWyhEwud7MwlwOLPkn6r1ZQvab9irRUXm
bdJcYogQI1zlIAGMHClg7E0P7m4wJkw/XOfndIVu1JwqOBdk9lAwvLRebpgvjxZ1
9aH+0xF5VR1bX1TDJF0oHNQpFIiTcr0I3vVHlOcBJWVOHGzcqwULth4k4NU2jNrH
3BICffEnjKHLIhcKAzhOI4LUAkpm/7v789ZBKwVDE5Im1107Kjw=
=zMHx
-----END PGP SIGNATURE-----


--=-=NRedcWyymdwEPK=-=--



--===============8235657416121176410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8235657416121176410==--


