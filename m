Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EA16F03D
	for <lists+openwrt-devel@lfdr.de>; Sat, 20 Jul 2019 19:37:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0mexFH5+1yCAc7jxyyJcUYrvjtB4irARclN8g3DpNOo=; b=OUGE7DLEZRPJ4xZa0OPHCSx1j
	3bfpo4ifkzZXdHJv2quekDypnEfhYMQuCCn738WHjSXZ8PTEV3Fi03/vJHAWV/+3KES0eOdVbh7y5
	GprZ8hfVHRkYFq+uRfrw3Ul21zAOwCPbgkPinlrw4dqD0YWbpvi5D1abM7YPEeV2XrEmvUrpE2q43
	LQx2vqgk5QRdP6qr4JLCEr+iYDhrxUyWmuGxYC9xCv0Qtv4olET/r6ZFuxJ8CBaU4GJyy23QgoLwI
	UGmhjmb6jvR/1k/8SIB1JVPQwZaFF2P4vCyIxMU6CAsjYAA0PXsRWf5Mn0jGqzyrGpN2kGebO3By0
	aJ41aF01g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hotIV-0007WB-0k; Sat, 20 Jul 2019 17:37:27 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hotII-0007VS-IN
 for openwrt-devel@lists.openwrt.org; Sat, 20 Jul 2019 17:37:16 +0000
Received: from desktop ([188.194.32.21]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mtf7H-1iiFGi3LR9-00v5w3; Sat, 20
 Jul 2019 19:37:11 +0200
From: <mail@adrianschmutzler.de>
To: "'Birger Koblitz'" <mail@birger-koblitz.de>,
 <openwrt-devel@lists.openwrt.org>
References: <9e6069ea-1f8a-62b8-d25c-27f064ba7279@birger-koblitz.de>
 <002d01d53efe$4df69a80$e9e3cf80$@adrianschmutzler.de>
 <7ef6bf3a-e2f1-b39d-4cc8-64cea531bb16@birger-koblitz.de>
In-Reply-To: <7ef6bf3a-e2f1-b39d-4cc8-64cea531bb16@birger-koblitz.de>
Date: Sat, 20 Jul 2019 19:37:10 +0200
Message-ID: <004f01d53f21$c32d6360$49882a20$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGXQA7+MOSfiU+CTqVNYHzBpr85VgHVMAscAUB7NOynNxR4MA==
Content-Language: de
X-Provags-ID: V03:K1:D7SbKxDEMnr6spsjzqL3AGvVw9lz/8arnekbfTuN8sPgX/ml733
 CzT5QKwdCNSGYuMBkq7y2/UG2DACh03hHsWu6MWaAnjDy05KntbNBPzhVkq4vMG/AA1mknF
 6uj8N1TGtWZiYAy0GGoY5jxh61epQZQ0iHm9/zQiUNDNlp+MlGQWGWOOAxPvB/z6C/PFC4u
 zLsw7onxohMHbcptEV6DQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KQBKh8HIN6M=:0hk2g3h9aKOGyQ/RpjkZJ3
 NBpyFm2GbWxctagWJjVCYO91URX8DD5avjQW6aRm308oGF72FGPXyJJW28X8BPe6hY3jeLDTW
 S+OyEPMMC3Ck+gC8r8ct5ZJ0tRwbfh9frgn8ANLyPYeS7kTyl27ZZSWtquDq3IxrRtcdW9N/Q
 yWdBjv3mcqnw4MbsjqZ1asqji74JngTMjkhJ9z752RiDnQZohts0E76BjFs82OwFRKRJp8cTX
 CslgP/yf+ivt51yCvcTJQH7B6eatU70q+coP74UtsYYi/3WE4qcyyEiXrDX56xDgDUgioEfxH
 0IAwV4Z+5Wn6vBQEO97gIezz1ikv/yXqzIFVldknAZg4jCqV9b694psIoh7QKcE26gCRorDhe
 gyZGqCPvDh5HzPHh+ePZY4H9CV6GdkXQHPr8Jcvf5wQUU02t6nexkwTDbPZiJOuasv7IcEoyH
 Df6R1BeTojny+s6iOFONbIkaBVLKPSkjI/TvS3Xm1vYPwaTPGqZn8yi4M3BGEOfVXtfA8lytl
 ZCOKrDOjgtUO8NQd6VLD7p4Vsu1CmOEbBLN/qF4m5v4ZlbCsZdBWwvpyIjT+qN7Gb9KRBTRX6
 gkqDUtQ9Ppt/5cFeB15lQ4NlJTAfxrmcbEoTfYsIQE94qyp/PZsEtNl/PDPY1ie7JcC/S8U0J
 aMbmTXxBHq6FHSswm2M/ZEPlu2ccriE5iWYUc/coQT9ymj5kK7ZoTHqnGwCWMxx+n3II/xkrr
 mtwEoTKiRC63Qy3QtFbsZYBwIxbm40fvbstubkTDeQOeQVTJfjPR7136sGg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_103714_899449_F75E7C01 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: add support for Edimax RG21S
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
Content-Type: multipart/mixed; boundary="===============2523266055425277749=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2523266055425277749==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=K+9fJKBb94Po2y=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=K+9fJKBb94Po2y=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Birger Koblitz [mailto:mail@birger-koblitz.de]
> Sent: Samstag, 20. Juli 2019 17:20
> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: add support for Edimax
> RG21S
>=20
> Hi Adrian,
>=20
> I'll submit a v3 with all your comments taken into account.
>=20
> The sticker on the router states the MAC addresses for both 2.4GHz and
> 5GHz, e.g:
>=20
> 2.4GHz:74DAxxyyzz63    5GHz:74DAxxyyzz64
> PIN CODE: 01234567     PIN CODE: 01234567
> SSID: edimax.setup 63  SSID: edimax.setup5G 64
>=20
> The MAC Adress for the LAN interface is identical to the one on 2.4GHz, t=
he
> WAN-MAC is LAN-MAC+2, i.e in the example above 74DAxxyyzz65

Thanks for your response.

Note that you could also use the mtd-mac-address command as for 2.4 GHz to =
set the ethernet MAC address in DTS.

Since this one is used twice and printed on the label first, I tend to just=
 use that one a label-mac-address then.
So, for my PR https://github.com/openwrt/openwrt/pull/2253 , I will use 2.4=
 GHz WiFi node.

If you resubmit anyway, maybe already add "wifi0:" and "wifi1:" to the wifi=
 subnodes of &pcie0 and &pcie1, so I can refer to them.

Best

Adrian



>=20
> Birger
>=20
> On 20.07.19 15:23, mail@adrianschmutzler.de wrote:
> > Hi,
> >
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> >> On Behalf Of Birger Koblitz
> >> Sent: Samstag, 20. Juli 2019 12:49
> >> To: openwrt-devel@lists.openwrt.org
> >> Subject: [OpenWrt-Devel] [PATCH v2] ramips: add support for Edimax
> >> RG21S
> >>
> >> ramips: add Edimax RG21S
> >>
> >
> > Some comments:
> > - You can remove the memory node since mt7621 has auto-detection now.
> > - Please specify IMAGE_SIZE in kiB since the ralink...16M variable
> > currently not matches your partition size
> >
> >> +		wps {
> >> +                        label =3D "wps";
> >> +                        gpios =3D <&gpio0 18 GPIO_ACTIVE_LOW>;
> >> +                        linux,code =3D <KEY_RESTART>;
> >> +                };
> >> +	};
> >
> > Indentation is broken there for some lines.
> >
> > Can you report which of the MAC addresses matches the one on the
> devices label/sticker/cover/box?
> >
> > Best
> >
> > Adrian
> >

--=-=K+9fJKBb94Po2y=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0zUUIACgkQoNyKO7qx
AnCIvA//cghhtcs8pUxRnWCxx4YrFn5ttBJ7k4rosr2gYdV9YG3mpY5C++OaEB3s
MVugSNspZRDG0NLG5mabvr+eBnYJPPqobNsSWRe5MPzu7rjex7y/P8Tg6GjZ7U22
D9IUcYtrtfMHAzViHAVmJAqVQ2V4dNPUELW7aOVZlTb3uuWLy2bC5IO7MOX5GJqz
QAkRoYhF88Vb6lWvi7I0mZvBHmX7ooheitC2AAB0bzGC27l8844XKlNDSVfPExOB
/gFNrPYYAPtT9eTm1J7/WRHIRQhTYx1GPM81p8REnT6Jhb9+eCaWfQCCb49fjTo5
1ohBzepRgaLzV0o4sPB7SpT+Xh9cJaV4ZWouNcnLM6ZNi9myT6qgsogDWeTAl5XK
ou/dCwKSqkax1ARCVdBlM0tsF6WsHi6cgv1k4vXvXRsMYbq+oVX3kSJW7LqPiKJu
6EcR3ZEclGfJbemINT7kqlsjocfRokQWnyC5VlDWSBksI4dgZJ+0J3c75TBC2NNG
HgpRI0s4rjPHphGZ5JqqtXIMPAOj8B3c3LOd6ZOs2nHsgUGu/IFqvDNH+XwV3h77
DvO6ZwPaNMqo42Eiil1MyXYXiJUA5Ph7zqsR3coR3AUPwxM2qhD3lJuYrlvtAjee
Fly0PFlkkH4hep5hH4A0Gx1R0XY3Lktj2gWKf98takAxEUPGYkk=
=F/hB
-----END PGP SIGNATURE-----


--=-=K+9fJKBb94Po2y=-=--



--===============2523266055425277749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2523266055425277749==--


