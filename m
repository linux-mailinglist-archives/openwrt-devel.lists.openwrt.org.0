Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FAAEA188
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 17:14:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kAhmIdgxWH/94CljCHwOq3qpvEAMv7aFH2MJPTKtHcA=; b=bjZzrMpCjcVY7SrwdUp+5UEPm
	m7WMTDM8Yqp4B6FLFi4CsdCJdDCFxO/IkJJWJ5j3UHHF/QumeF9ULdodHgBpmHE6QRIiCE3ZK0mvm
	JZXE+4jNjEX7WBJ9OBSRjmBN/32TRbblIbg6pc0ju9npblX06kpyUo/wn/q1HHz9QeUaGPe9aBjgh
	R3ENufcGTCXEe7ly1mAD6ePyoEk147AGp2LUpuUgTrOq1/P31SSHR5S3iVtNjngrbHElXzD3Dge/c
	zFeKlRrhUXW4jVfxV8Vl4DIZrH2fEBPs5/V7kXz+8iePK+Aei0MByMvWZdJjjV+isxRsjKQfc2t2u
	+x3owEOrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqcQ-0005FV-KO; Wed, 30 Oct 2019 16:14:46 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqcF-0005Ev-HO
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:14:37 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1McHQA-1hpPrw2u7A-00cf4h; Wed, 30
 Oct 2019 17:14:24 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Jeff Kletsky'" <lede@allycomm.com>,
 "'Daniel Danzberger'" <daniel@dd-wrt.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20191030112726.13106-1-daniel@dd-wrt.com>
 <20191030112726.13106-4-daniel@dd-wrt.com>
 <53df2442-0106-584c-6fe0-673a75d38edb@allycomm.com>
In-Reply-To: <53df2442-0106-584c-6fe0-673a75d38edb@allycomm.com>
Date: Wed, 30 Oct 2019 17:14:23 +0100
Message-ID: <011301d58f3d$18abd8b0$4a038a10$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJg73Umv9Ge7aZvmwNDkcLmh55XHwIlojovAmspSQSmOBSdkA==
Content-Language: de
X-Provags-ID: V03:K1:AWC2HKhqcfbmy9pNXawF9ARAzpUPDOGDmC/g2SZhInb2Qw1UvVD
 Hzvjy4U40acoIKmnzB4DBq70UMx4Jq2I/+ugwg9hmbVw5VPx7dE4VfYsXZbJlk4JPbh2hXH
 hkXwGjWqk/KoUXvXZUqC65TC2bGEETS7p5xeEs+O8K/LKlIyJiLNpdQdO8hU2qK/aW8hS9E
 mONuos2655p+ku2iaD1Yw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fjft07B/8zs=:P/42Qvsz+1s5x8N0ugOdOJ
 KQXjYKCgPLEzxABUrE0JcWXtpoUzsYeS5O4Q+0jBaTxaoM3KpLoLViC1wSGhHjREqBz11cWeV
 EmO+zF+90u2iY+moHzg9q6Md110AmDJ3KQJbRj+qfEZbuPxgTOAqxYcpG62JWgmFnNLIKWZ6Q
 rk1ouOmKKeBAav3PS1FuEFBQXAr5Qo4HBE/8Wz0pP/eduX6BiffHSpROI1LyohJTLXY6Nkwmz
 e09UgrpRCo86q5uKgXezf+uv9YGCvEGf9mBHDixqYA+C5yyeabwK/HJnHaE6cpWjAhxzhAhrr
 JPF/Yb2Hzq+M9AmBoRWNQ7H93kBTlUoP8+0109EH/ZnSRA+eA9qtZFMVSDyywJYWCIUQFZ9ni
 gSTLUph9fviMKSZHnE+ewQ78you1oasd3iBWDHUM6yNIZcQmYNRpNGzsjMjHTaY37evDLc+B2
 mW9CLesElYLz+ndEDcwg/XSRaGxJN7jXhbyLoL4WWckYpYwbHGp8zgzLp8z9W6l8i4g0CY433
 EtBzrGTc7kSTxlOpAbCx8wSj4dFsyN29TNYNYXBRxLr9CpFSmxLvLwNBveSbIeOoNtemdPp40
 r9UU6gOluJw0rSkdQ7I+8MAaEAfPYGSkVdWBWiVs9VsElDd4O32xvNUPkck01QnUv08yANkVB
 ExsssQRLi8HunwgRaU50N2J84VZVCbG9AN/Acf/v0MH+ooU35uillmBgjzsn+BIHp/ovgYoLx
 zQPw2mp2GNXd/ula58sADxCyUGOTFYss9+aqzH4m9Yf2z+Y39B+x+p5TdZ7CxCNGoQYjBgupX
 2yyPpUhKEW5nfuMX9iAnB3x0+/yoKpSLd44beNG7xlajLOn9n0XI0S+IwnoGQ/WCPbIZsp+Jh
 a8QGXDuPRb5v88PydNA9nObtE5rWdHinhcuebWhA4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_091435_882962_10C272C7 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ipq40xx: ipq4019: Add new device
 Compex WPJ419
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
Content-Type: multipart/mixed; boundary="===============6120594967204169764=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6120594967204169764==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=6Ent/JZUR/4yIo=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=6Ent/JZUR/4yIo=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > +			m25p80@0 {
> > +				#address-cells =3D <1>;
> > +				#size-cells =3D <1>;
> > +				reg =3D <0>;
> > +				linux,modalias =3D "m25p80", "n25q128a11";
> > +				compatible =3D "jedec,spi-nor", "n25q128a11";
> > +				spi-max-frequency =3D <24000000>;
>=20
>=20
> I don't think you need linux,modalias here, nor the chip type in the
> compatible line.
> I believe that the following compatible line is sufficient
>=20
>  =C2=A0=C2=A0=C2=A0 compatible =3D "jedec,spi-nor";
>=20
>=20
> You might also want to consider "flash@0" or "nor@0" or "nor_flash@0",
> or the like, rather than a chip-specific name. (I'm not a committer.)

Indeed.

Best

Adrian=20

--=-=6Ent/JZUR/4yIo=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl25ttwACgkQoNyKO7qx
AnA2sRAAkBFp6Z42BHzWcaUO+e0iaHrmKRl8JzBeMcyTpYX+XI4xSzSPa3x/vvYi
OywQTFBs/arR4g+7J6yHF9UN0uxrMpSQLBgAz5VJxt6FK/ut3B7FenYSXPJjGSBJ
t+JPvYMdINqn4gTTe1gDc6L6owZWXrLGVCxiGomwZxPzVkMmyRBPohvjueEiVK/O
X8LtaQwzpEOH8+JdHRrl9DdjiRVmvhqCgGnj3TZrJQ1zfKJ+5Jr6IB8+nTP8B7Fr
ZjUTDJ3OQnMFTl7DkucM9Vj5/diKB1dCA9eSbAR4ANyzOxhNkeac1CQAoYj5nFly
kRpE8YZFhlzr/bbFczdB/IOVAxmc7QSyKlfHhHZEyYXC0gkQcbQA7+YMkzx6USJB
rJMtkl69QUE6bov9K28/3Txz2SEX2k6q0UH8d4C6qe7IbibDSRF8I1BzG+UJ8pNc
p2uyIHxhAEQPUY8oQ1fne6cz5XKfJsGyP7yh9IA1r9G4sdUW/51yRcMWs5zbpMiT
ikC251tzXRclHSvAOdiZpYIhPBy5FLc6DXw4bT8cxclWOYX+cfxQj97LXcqDy2R3
rHS7oNrGRYKPJynWz9MEwS6zzKMiYst6AYP1TFW0x2zhagEsPm7wdy4T/lmtXYXX
dTmS5eHnTVG1UNLvUJyh8CTKBEzVHbFAv6ppuT6LT2SqLyhrYuU=
=IDT6
-----END PGP SIGNATURE-----


--=-=6Ent/JZUR/4yIo=-=--



--===============6120594967204169764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6120594967204169764==--


