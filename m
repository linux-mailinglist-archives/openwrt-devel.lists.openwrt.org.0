Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF726EF77
	for <lists+openwrt-devel@lfdr.de>; Sat, 20 Jul 2019 15:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ozXyQS8D//5i4QNd4IBg+veNpXfLBulKjeiCvLEufZA=; b=UuCVuFZIJ3SX6hLUgbD07fkRY
	dO67p4aQzBFzL4yQRSa3UhYnyvupdigMFMI06+xoYRTIMOZ52P0bcxqQls1+xWOVU97um2Xf0TIlU
	iOK2AHVOuKhtOztv3P0XZWRVDeO4uZAOt2rhXElT8vtzb92ibvyTibFmGOEhjtpdmPm6XUjGiBjRM
	M/NRWv3EtJRytEnYq71d52H5BVaGod9qSqqSsdzDLm+HpvUdbrhtJ6lKeZ2stNdkvr6J0qe1gQ8LO
	dAMY0DYvH9r3wGvqFbQi6DAI/02SrfAB3+KP3xT9oIAbwcEIG2SonA9CC4jCtHZkcANn53HyWwyCb
	FShfQR2lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hopKx-0001Cf-5F; Sat, 20 Jul 2019 13:23:43 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hopKg-0001CN-9Y
 for openwrt-devel@lists.openwrt.org; Sat, 20 Jul 2019 13:23:27 +0000
Received: from desktop ([188.194.32.21]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Ml6Vg-1iIhVe3BAi-00lVEC; Sat, 20
 Jul 2019 15:23:22 +0200
From: <mail@adrianschmutzler.de>
To: "'Birger Koblitz'" <mail@birger-koblitz.de>,
 <openwrt-devel@lists.openwrt.org>
References: <9e6069ea-1f8a-62b8-d25c-27f064ba7279@birger-koblitz.de>
In-Reply-To: <9e6069ea-1f8a-62b8-d25c-27f064ba7279@birger-koblitz.de>
Date: Sat, 20 Jul 2019 15:23:22 +0200
Message-ID: <002d01d53efe$4df69a80$e9e3cf80$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGXQA7+MOSfiU+CTqVNYHzBpr85VqdPewkw
Content-Language: de
X-Provags-ID: V03:K1:wA40laizs3xsCU5F1c8NQjsWaesF80RuKXPTC+zQii5rzpnaVXD
 dEWnPhCK3iaW7o0HHuyCbyjA1OAvAGy8l0Em7GQHcCikkqQVrxRCDNWgfI0hrrf0w9WbpaW
 F9i09J7lUsiQ4ZC3Oeb+8pnHZzYZm4cRD5o1hKsHDY1fTu++mmsbH4oRmFGcCqO/HayZ0xQ
 YHsMYBzlMHb5kNUNEeqcw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZWAcY2IOgyY=:rD0CXr/8dFvVSlit6HlWnk
 vVLuv6WhUVwgMgWxt+98vIr0aFofXNtrSAvgXvMPPTJA/sVGLAZAHpDj04RCJvwlnOVfP/NgK
 /0zeK92OQn1E6ECTeshvTqe4UBYHBYxadkuy22nEc7bFYe3Fa6B88dPpyOd+VwUybzTVejwoE
 gkvE7UpPs+Y07+malB1rPNsNPY62ev4OQ3QBK7fGkPjSLSMtEcTTxHbc1ZlE6c+JEQq5ujfra
 pUHstcCRvUl/9Wv85WgdvdHnt3GfIsdiixIu0QLmZ1QpUi/vdIDZpir0oQAX5wlJYTMngp29V
 McWBis981pu1q7kkmVO0DveCj9XA2NMMYpCrdglvxBpWwDB13iHIUMragDl9+QN+2n43VHj3E
 JSkrb5cSDYIgDgqp8A9zvZytZbUp7yCUM8kYgOLjpcqLx3tyZQo5E9Jc0ebpmwuncLKP8kE4e
 DP4v9bRmDMU3feFpEQgzVCeHvrVKA9nGekpsfTVOBZ+jGOI/8qX/cbxW8E/108LgovBpWZyjD
 viNMISuDuzDNCGFB3KxDaC0ktCVo8O+5vU9cxT5Ao1OrzW2xc2J6QcVftQy1OoZH37rIydNwj
 KjoYvPUUeO76V1IaRBEM/yGEEveCWFB7kPkF1i+MA0Tz0CFV8PvmRf8FPbVYFrQbxYemvs8j2
 wQVew+rAxdtm3ePOV2ud6TLzYvS1Jf5Up+upNQAv4fOjVSblL4Urg1yHOWx9+SaGPqG4J2ej9
 q+rAEV9QdyS4ZAT8d+knYUNfhHk3cnyff8F1A5JjN87OI126Alf/FHHi+w0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_062326_631947_A3A7FB3B 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============8216669439378124592=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8216669439378124592==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=o26W7RtukI5+Sb=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=o26W7RtukI5+Sb=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Birger Koblitz
> Sent: Samstag, 20. Juli 2019 12:49
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH v2] ramips: add support for Edimax RG21S
>=20
> ramips: add Edimax RG21S
>=20

Some comments:
- You can remove the memory node since mt7621 has auto-detection now.
- Please specify IMAGE_SIZE in kiB since the ralink...16M variable currentl=
y not matches your partition size

> +		wps {
> +                        label =3D "wps";
> +                        gpios =3D <&gpio0 18 GPIO_ACTIVE_LOW>;
> +                        linux,code =3D <KEY_RESTART>;
> +                };
> +	};

Indentation is broken there for some lines.

Can you report which of the MAC addresses matches the one on the devices la=
bel/sticker/cover/box?

Best

Adrian

--=-=o26W7RtukI5+Sb=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0zFcUACgkQoNyKO7qx
AnA2WQ/5AXgc7bo5fba1W7B1Y7J5djdos/elF9hJqv8Y4HQUl8Jy0qL0ajyvZdfD
RK4zggkIUruxWT5HZVFNHFO/KX3eWXUqys3+Tu0WGvOjIGemG5+cLkY8W0v3mhSj
F3NkI6r/3wjIWgQFAQN1wn77ynCRSvKFDO+SlqzQUXf8Z8zj0XwqT3lJp1Y22Z3b
7r4TpXelmcsoRSNxiOXgo9E/s/cCMa3Swz73riyUkCW2CkJR53IcDS/ODSWUbc+1
21IYNNiEAIEebP+Uf/i2DfhGLCP2mSWPhju879G9kYvshb0SoX6tvsDz5XFzlK71
FMBMxqP23HoicUaYW1ALbsOu+eAuroVNIvMOZ3cZvXjCo/RQ4CpILiYBVq1s/z1P
BUZ9J3gCu1ScnVQciqZZl6bV9d7ITP/4s26JtefalJlQNFA+VhFKu7L4BZsQC+yd
zWNLUEP7gvBpdQHLj35wmu/IPbVV42gO7XJcesplzmobsItoGyGdaDxYjIPbeJlB
bI+FGKkZ/4Kepa57qTrRTdpUR5YS43Op6vM50tv1OjIYJIIMZJTRFIJOxwLaa57I
w3RHKworb2NQMwPCvlYGWsbt8XInnXYzerpM7JZCwSOI3yLCc+J3yNhtww+CgGsu
UvyTqVKN1IeQjjcjY3CapD2EdtAcF1nRGLofxMzCm5QTopIn3gY=
=c4T2
-----END PGP SIGNATURE-----


--=-=o26W7RtukI5+Sb=-=--



--===============8216669439378124592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8216669439378124592==--


