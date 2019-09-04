Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57765A92CE
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Sep 2019 22:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p/Q6k9XxZ5ppklNBh+am0XzE9Q6ly8wlLC2GLdrkHHw=; b=GkWdG7DV3VZ5JLTXhY4siET1Z
	QCx3Zh4T59JDPckuEyvkXLqytNnhNB5P04VADgOenMdPSDjz7lUSEwkYIVzJ838PQpstDzQSrFdMM
	263AzJuQg2lp3g7JJsA8/Cb/tXLUPhCBeRA6Ulb+SqFEIZSWcE9GbNZcuqCmTDtnBOdVjHobOVcQn
	bnFgUgT0AscrmvrmNuj+RMdHvI0tt7ZPx/2ElaIF5x6xnIFGo3x3nBeQkveseG38gt4ZlaU70UGP1
	rvQa4BgcZ6eFZ3cnMtm4qcAmxstA8o3DLYBRS9/H+1ERbW8N/FRYWi3jHOw1PrCWA7NbvwTKzB4ae
	nwEDNZDlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5bZm-0004br-BB; Wed, 04 Sep 2019 20:08:22 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5bZd-0004bX-Ch
 for openwrt-devel@lists.openwrt.org; Wed, 04 Sep 2019 20:08:15 +0000
Received: from desktop ([188.193.187.204]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MkW10-1ia1Qs3oGU-00m69T; Wed, 04 Sep 2019 22:08:08 +0200
From: <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20190904191929.14455-1-mail@david-bauer.net>
In-Reply-To: <20190904191929.14455-1-mail@david-bauer.net>
Date: Wed, 4 Sep 2019 22:08:08 +0200
Message-ID: <000401d5635c$78985d50$69c917f0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQHSNXhwc9B9YvESjIfuYG2fDqlvMqciS64Q
X-Provags-ID: V03:K1:RfZOcPs050YoeGUSVuOiPRN7hqXItVP7tZs0JMQVbVluGA5Oghu
 vVS8laAsojvNgFe3Yq/2QpwgibGBtNSsAxXIxHM+hyqxni9hKGh3ccbs0cKmjVbaHeF/3Ue
 AzwyKPYarrvrw8Xu1du4EwfZzNO4wEAfniFLaV9iY+yuqWKmD6yjkAGKObFrqWWmXMt8r5M
 Q6zr8ENgfddvWIBo1qR7w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:f17L+/Rx1zw=:502zfOGjRIx9sZQCwdsjnH
 x9Pa5WWhxJjCw6Ykj1jHD4Pk/TGvE58g4VaNTEqs2wM2mk+97fXSYYH3XHujLVh1sh4JzdwEl
 Ind9E5+jwjYgvVXxpF1VwPjL04vyxo9o+PakZqUyzRFhHhOGVI67WxHtFy80NTU7tti/6Ujqr
 8pVzfcmHz3HLfRYOBhLGUE7U6YzhWffckwJP2ni27yzgNZMyhqGo0BwX1u6BKT9tHP6M/hDIE
 eQtKp0whZjiawzJITsPr+k5rgUX+lY+zNaH4/jG0zOzDxxM5S2sxYVX1zDVFUx6dQI60t5sPO
 R/zsMdDZRi1GlHsS8aom6tJ631r3lW8H+Bv8Ibtijx0rfcgwBvjrBOSC1vZNiiUte/ASJ70zj
 1vmwZnE3SF9jqftIHCg9He5f8sTa7+RJRfUb7MEAbl+oH8up0CgI1ykjHQp0c1DzFj21exEGV
 K/AwxkJvRPaLYiZM9Gj3OxbntVF/4H/Xo0yn2LwupyoVkGvRr+mSiN478nMQkQb8s/W5QsNfF
 TPvLMaTRgsBWvDQQkyIIR8shGiei+GU2bRtlHe94Q4mqzfj3GIGnHkkDawSGuOs+eHkWQZk63
 1DVxbpn/Hdoyuq9jtm7PLgrOtfjYcTmDctOKm5BH7/ZJf1CAy4cMbusZSD7+PiaCoqKmvxsHh
 oEibt/nYMh/fnSWRMwlF4y0Z1IQkul1jYo8r+FpSSSvr87Ey5tX47PSd9uYaL9RKisih7XGMW
 VoZtwR1VJmHM0HT1RRCfVWtkVF46pgMpCW13enNOzQfCs9CxHLNJVxSYAoosbxP2gDAQN4AZo
 dLhQ4wOf6WQMLxq8X7SEK9dL1xbziSor09RkzIKUrRhfSuG0ZrcVS/LJpOzTaPvwYSOf0zz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_130814_096735_907B52BA 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: fix get_mac_address not
 accepting hex offsets
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
Content-Type: multipart/mixed; boundary="===============0529726238543509082=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0529726238543509082==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=9J4lfdUL8W1F7T=-="

This is a multipart message in MIME format.

--=-=9J4lfdUL8W1F7T=-=
Content-Type: multipart/alternative;
	boundary="=-=3HezSNID7LmfDa=-="


--=-=3HezSNID7LmfDa=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,=20

> -----Original Message-----=20
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]=20
> On Behalf Of David Bauer=20
> Sent: Mittwoch, 4. September 2019 21:19=20
> To: openwrt-devel@lists.openwrt.org=20
> Cc: mail@adrianschmutzler.de=20
> Subject: [OpenWrt-Devel] [PATCH] base-files: fix get_mac_address not=20
> accepting hex offsets=20
>=20
> The get_mac_address helper methods did not support hexadecimal offset=20
> values, resulting them to break after 75bfc393ba6c ("treewide:=20
> convert MAC address location offsets to hexadecimal")=20

when I tested it then, the hexdump offset did accept hexadecimal values int=
rinsically.=20
I remember that because I was quite surprised that offset accepted hexadeci=
mal values and size didn't.=20

In particular I've always been using get_mac_binary with hexadecimal values=
 as second argument.=20
Or am I misunderstanding you somewhere?=20

However, converting it as in this patch doesn't hurt, especially if the beh=
avior of hexdump changes in the future.=20

Best=20

Adrian=20

--=-=3HezSNID7LmfDa=-=
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p><span style=3D'font-family:"Calibri"=
,sans-serif'>Hi,</span> <o:p></o:p></p><p><span style=3D'font-family:"Calib=
ri",sans-serif'>&gt; -----Original Message-----</span> <br><span style=3D'f=
ont-family:"Calibri",sans-serif'>&gt; From: openwrt-devel [<a href=3D"mailt=
o:openwrt-devel-bounces@lists.openwrt.org">mailto:openwrt-devel-bounces@lis=
ts.openwrt.org</a>]</span> <br><span style=3D'font-family:"Calibri",sans-se=
rif'>&gt; On Behalf Of David Bauer</span> <br><span style=3D'font-family:"C=
alibri",sans-serif'>&gt; Sent: Mittwoch, 4. September 2019 21:19</span> <br=
><span style=3D'font-family:"Calibri",sans-serif'>&gt; To: openwrt-devel@li=
sts.openwrt.org</span> <br><span style=3D'font-family:"Calibri",sans-serif'=
>&gt; Cc: mail@adrianschmutzler.de</span> <br><span style=3D'font-family:"C=
alibri",sans-serif'>&gt; Subject: [OpenWrt-Devel] [PATCH] base-files: fix g=
et_mac_address not</span> <br><span style=3D'font-family:"Calibri",sans-ser=
if'>&gt; accepting hex offsets</span> <br><span style=3D'font-family:"Calib=
ri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Calibri",sans-s=
erif'>&gt; The get_mac_address helper methods did not support hexadecimal o=
ffset</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; valu=
es, resulting them to break after 75bfc393ba6c (&quot;treewide:</span> <br>=
<span style=3D'font-family:"Calibri",sans-serif'>&gt; convert MAC address l=
ocation offsets to hexadecimal&quot;)</span> <o:p></o:p></p><p><span style=
=3D'font-family:"Calibri",sans-serif'>when I tested it then, the hexdump of=
fset did accept hexadecimal values intrinsically.</span> <br><span style=3D=
'font-family:"Calibri",sans-serif'>I remember that because I was quite surp=
rised that offset accepted hexadecimal values and size didn't.</span> <o:p>=
</o:p></p><p><span style=3D'font-family:"Calibri",sans-serif'>In particular=
 I've always been using get_mac_binary with hexadecimal values as second ar=
gument.</span> <br><span style=3D'font-family:"Calibri",sans-serif'>Or am I=
 misunderstanding you somewhere?</span> <o:p></o:p></p><p><span style=3D'fo=
nt-family:"Calibri",sans-serif'>However, converting it as in this patch doe=
sn't hurt, especially if the behavior of hexdump changes in the future.</sp=
an> <o:p></o:p></p><p><span style=3D'font-family:"Calibri",sans-serif'>Best=
</span> <o:p></o:p></p><p><span style=3D'font-family:"Calibri",sans-serif'>=
Adrian</span> <o:p></o:p></p></div></body></html>

--=-=3HezSNID7LmfDa=-=--

--=-=9J4lfdUL8W1F7T=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1wGacACgkQoNyKO7qx
AnC+YxAAryLv0zX3urrKk8uPV8Snbr9lqJ6jCbsiyL2UIfvVBVIM5jGfwE67Gio5
qqaZWqhAQdDZt4arQ3W9KLW+yi4a3yZUWpndYiqg+yGb0j7q6I/5hdENw94WKR4j
9qTzpJy3Liw64sg/2pbEG+zWlO/zEQGqESfmmKgJhmXuZqIt34fiGJ5JQIzIdK1s
M6ZkSenAhGJxCMaDK43wKySO8kqPnGzwUlS01c4hP+eh9nuZ8Dk1m5KrxsKD9ffk
CMkcM2WxFLfj6TwIkBg6ovPuoIYiC5WjT7lDNlb5XRFKRBb3FD9lcPgSdPWmlZTy
i9glJ2BymdMurR2ZoZa7OX2j7XajvAxjNNNAEEIfMxKIKdznPsPA6kYn0Rz2kAJi
DAbeHa8Jb05kJGynk979sNsiG1fAabAFKooJ91Wv2qN7n2Q4CcHLjfBGsIUIxQC8
TXn84V9dtY1C+Np2VMjE+EubqGwA3iQynaHD/dOUn40Mk/z6sj97douzguV7GzzX
2AqByOAZdozWmOra/QaWxsukD3BpkUofYMXQx2o6B0sjAV/3Pd++s+SubNcn0DKs
VnSLcxQC5T3XXopbVGnDXqhPPeZFVKB+xjzhTXujfR/3DmePdYqjcqWXRdeaEJYm
BlhM0GFzGb1VLf5jJ3EBtwdWax3JVW+SM+73PMcQXLpEinmc52Y=
=WOAN
-----END PGP SIGNATURE-----


--=-=9J4lfdUL8W1F7T=-=--



--===============0529726238543509082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0529726238543509082==--


