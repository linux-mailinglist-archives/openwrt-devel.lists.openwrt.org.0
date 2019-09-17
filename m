Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F337FB5388
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 19:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TFd0yz5bJ9mrlHsjk+g0V55TPPz8COvrj6j9MJTszo4=; b=CXNknDbXxuUx/EjDjEMfmyMwl
	svaQtX1hODcnyFNJXFM8Nu2wirXyesuHKGszEAQrJ5SvtSEpRis8lqVoZmFnh2Bmv7/kAzpCczSfu
	OFeVJmWDno+rnqlNy5NEF9joqUnMmv4VVwZT19u+DLJEJJpSDzoCLjL51KTBcVf7yJRlIhrWSBZKi
	xvCd58sAZSwieVM/7aGbVzyIo5gJ4wxRzxZU/pq7/xrKiAts7wsb4G2Je51EuPzBiCk8Y50pHizFm
	zwyoGinmjewFPCnbn/NhYyq0hlx9sex8ZhJ9oRFAjFL8aDS91YZrO+y94kG2UJ45UyGknCUBLD/Tu
	b1Dyhr3hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAGs8-0002Sh-97; Tue, 17 Sep 2019 17:02:36 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGry-0002SA-QB
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 17:02:28 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N1wdj-1i3e1N3j1F-012I74; Tue, 17
 Sep 2019 19:02:12 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Enrico Mioso'" <mrkiko.rs@gmail.com>,
	"'Filip Moc'" <lede@moc6.cz>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
Date: Tue, 17 Sep 2019 19:02:12 +0200
Message-ID: <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHPCZHinJawK2ESMIjVbhdD0BHTvgENk/fbAjCsNHICNRzL5QEz+4ZZpweksSA=
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:tWY4IuCcTBrWlKE4XKP8cy/EKUFEW5dyLm8Bn67HtyyEmbWezGR
 lBKtRYx8+ZreK0i2U0C+tS8Ajb++hl8yUlZzTnJAhXkfUb2UX/reok24EUCIRksc+8b19/a
 MdEJrUiVRRjwisROBDKw/aoWYLOlbvB9F6yTlgNGfsBLgGEsiEx7NOJmZscDwuc4b3iq5yb
 pu72arBcE92jerQfx2hWA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5hAhY743wBA=:5aWW/nLG8IXtUKmUWyiDWf
 wH11kHYDqdwDzSZH++Hny1DhbEYkR/mfQW1F19/yzXK6Ka49vxvkrdPSEmr+NmPbsz7fGI2ay
 AQ1j7s6Jnr9TiqnjXwV6oyhvpam/xI2DbvbW8WjpMhLOFDUcPyZgUAgPqFMBTpWhDDo1S2cTP
 sLYvmsrhqwkSrkoKjchnKUG0+N3HBQvJnWWboQMGndUG1mjzPiupeOVuB3CiDpz0Y7C7fz0ef
 EWLipkO4lpfQglOdFqtcTqthsqdq5AvDUn88a3u76bG2xllTkpDGpGnrQv41J3gHlODrrl3nm
 32uhs3+X0Qrf7TjGYAM2HjJWEB39Oquzof9nOiXqK15XiFOFsJQoS3nUxYkkX/C3qf4HC4w6z
 GR/E1BM05MqrKPvxFaurPzJPFCl9YsaiAJu6wmGH78Z/2dZVHvkiXlxZaMFQk9UObOxartZ/P
 TYpMLoubnbxP99VgktDxag2aUDB5QVcHvF3DHiLbLr1rGpa4zTO8n9CJfVZNUvHwdC3juzTMR
 IvPbWjb/bee/25cTYyOoDkik/aeSmtW0HyRGHPxohgPPqJl1SiRwst3jvmcisHXu66IEFvloF
 X+S1v0JYBnWPcjmwouMmNN9TdAHFmAO65JBtpIkiEaWqnGc/eXFIC1762hKN6vlsmKB8Q+UpJ
 hk9vMHT7WTLwKUYoAF9mA7C2E82KMOT+UzMgpZPEw377WNXa46zIip2D4cT6CwMnq4OzlrA3T
 2RLtMipCDkIVg45WtUsELMO0m+rXeHijApTGw/YV4vkujYnOjfY11dHnP34hPqTRG4bYdRe5D
 MlZ7kWs7rinELMue1C4qJE2du8o/bLdjRpvsefbla6kPoi1XwTc4tiLuHgtComDKyqSOFI5jb
 Wbd5CN1iGgIS5WS1ONMcF7eO6lVRKkkUtaSYgE16o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_100227_150923_3E850DC1 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: openwrt-devel@lists.openwrt.org, 'Piotr Dymacz' <pepe2k@gmail.com>
Content-Type: multipart/mixed; boundary="===============6616700084989734000=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6616700084989734000==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=Ent/JZUR/4yIoR=-="

This is a multipart message in MIME format.

--=-=Ent/JZUR/4yIoR=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Enrico Mioso [mailto:mrkiko.rs@gmail.com]
> Sent: Dienstag, 17. September 2019 18:57
> To: Filip Moc <lede@moc6.cz>
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>; openwrt-devel@lists.ope=
nwrt.org; Piotr Dymacz <pepe2k@gmail.com>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR=
6400
>=20
> BTW I can see the code for setting up network interfaces in mach-tl-mr640=
0.c is identical to the one in mach-fritz4020.c for which we
> have ath79 support.
> Hence, I copied the setup from there:
>=20
> &eth0 {
>    status =3D "okay";
>    phy-mode =3D "mii";
>    phy-handle =3D <&swphy0>;
>=20
>    mtd-mac-address =3D <&uboot 0x1fc00>;
>    mtd-mac-address-increment =3D <1>;
>=20
>    gmac-config {
>      device =3D <&gmac>;
>      switch-phy-addr-swap =3D <1>;
>      switch-phy-swap =3D <1>;

That's the phy-swap I was referring to in the other mail.
Using that will change the ports in 02_network, so you will have to re-eval=
uate the connection status with swconfig.

I do not remember what switch-phy-addr-swap does.

Best

Adrian

>    };
> };
>=20
> &eth1 {
>    status =3D "okay";
>    mtd-mac-address =3D <&uboot 0x1fc00>;
>    mtd-mac-address-increment =3D <(-1)>;
> };
>=20
> yeah, here I am using spaces but the original code has tabs. :)
>=20
> Am I overlooking something?
>=20
> Second question - I got the LTe module working with gpio-hog. How can now=
 I turn off the LTE module, writing a value to the GPIO?
> Thanks!!
> Enrico

--=-=Ent/JZUR/4yIoR=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2BEZAACgkQoNyKO7qx
AnB5yRAAp4CAmb7iBfMz0KBs548jC9uDk5NX895jFHiGY2uG4WIHgiVrEsFixcqe
UXZuzkUhV8w+9c4gR64wYPafF9EMUR+o75kzESzwqUcudGZzt08Wz1bXWeJ0C1uW
rJvnzJMJAVKwfQbAd8364KVOTesEvajmyAE5PqrNht2H08hgn71z30ZuMDW3aYnZ
NlLFXeBtFE8BRbJWa4Uw6VlL4OLqmfFCU/JMrhwzfzo+rMaMZ+9lOhwXoJasEOPB
vAfiYhXHU5exUXGhVEtTvqGy2v4G971jpJnrLAJhYfjcR9rJ/Eea2Fer3a6EaO6j
spmuxESy51FuJjhCxTwyhjmFnB1vknymJbHhUqOoftDiWHuI8TnEHn8lBb60PPeU
CDWo6w0eCfVIa1FYLepP2Q1TIwzOR2pHhT4TCuAeuUKlDQY26BFfAx1+yJSsWALZ
e5BR/iqc+ZcAmkCoNYd6pe7CZjv/X3/Ikx3MYNuHtxP+Iff2f4nzWtbDRQInuMpx
BFRqNAy0vTOKrZ/Vng4kqaFAAhjaPm9XBLROiV6rpus5xCIudyWqtNGuKTyQdid4
uLYiZPndg9vw6cVik48YBpetDDHslxS/Yt8gb4jALP5QZGFft12C9KzN2EWw8jBr
SMW9/f2qDmYyPQ4fdincF2s3gvQdN+2ww/SGNJa2t7W3ma43Kck=
=CHsU
-----END PGP SIGNATURE-----


--=-=Ent/JZUR/4yIoR=-=--



--===============6616700084989734000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6616700084989734000==--


