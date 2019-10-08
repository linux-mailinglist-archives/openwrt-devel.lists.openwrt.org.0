Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8C6CF9CD
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 14:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PTSvbcZPBnprGxS3zO8wmUQ1rCJoXEe8gsFH/4E9ZV0=; b=h9KTg/UW+2KA1EeebUhuZKbCR
	p/Dftw+nXFj7IHXowOuQcA/6989Zkh9DQtD0z8tBKMlODgGd5Kkx53IvbqCI4/8y4PqQ4js8d1H/5
	YIhexnjOws45of3AnZ4Hfnyop0dd3j8+kIWlyQXD8NcAexYqdQuBDZrvizcKUr6Mokm9OUd9AP5Iw
	dvzBGrynxinDNpl5Npt9jYcdJEAw1fXndv4WgLBI61k0eeXTtAbWw9uS25yV7xjTSSuzusIv7LyH0
	OYVUup1hrU7bpYFbkhhGJqUa+OtHh9vJP/cIrJ5ihzI71omdx9V7jYZ0fJZzH40zeJQS7mLx6aVAI
	z9H8Vopqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoeD-0007Aw-TT; Tue, 08 Oct 2019 12:31:25 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHoe6-00078b-OW
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 12:31:21 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MCKSA-1iRCZw09zu-009TMY; Tue, 08
 Oct 2019 14:31:10 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Robinson Wu'" <wurobinson@qq.com>,
	<openwrt-devel@lists.openwrt.org>
References: <1570526416-4180-1-git-send-email-wurobinson@qq.com>
In-Reply-To: <1570526416-4180-1-git-send-email-wurobinson@qq.com>
Date: Tue, 8 Oct 2019 14:31:09 +0200
Message-ID: <004401d57dd4$43bee3a0$cb3caae0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIor5UgF8SBG3V7TBwz+nbhV6RX46aqRb9w
X-Provags-ID: V03:K1:BnbDXgvq1+SfxZGQDEsPA/vRWnBtOLWRI2r7Nw+NlIaIflmfHi2
 wchoBhlPPKrSRkF6ICJtxbwF/a1g/RlfB7LFInZOpkkfSDlDZNJy5MEJCC6hS4g8FnTE3VV
 Dt9HgQRY6Aa0X93JYHtDYqnfMWt9WnhYK2uMv9BkD0ttRhY2GiMMtu3IhFOtIjk/iu0d2/P
 +ihDS0Uv4Yxfnw57f9X6g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:T2ihQcUmaMk=:6y11rrP1myKCcKqCqpi4Xj
 +ZTJkXasmjahqkpl9FB5tvJSmu2iN0BR2J32NjKxYe7xZmlMADFfWMGY2kDvNSXJfpNyJsuPf
 7RrVWU5WU+oYxxcEupXJKYQWUafMXKw6pZayn3ejKpDxVh82MQjK4WP+IXE34cUJ0pD4Z8Moe
 mFNb1MfL/MaUOgFXthA9JXN2ZQYZmTG1atdtp1XLudUZCD3l9w499iPhjd78TzVP5wxuuiKiG
 CU8vTl5hKXcFGupC0iDnQVypLhG7U1vFNVbu24O5Jn4kU3Hg8LIMenfx0oLQFg10oL6DX5+fp
 od/Xx62Sk6tyheKKP0vSesnlks1DuUJmWyXy0TOn3K2A7gmArUiHIBFXuGEya4hNz8bkrdX7N
 KeHyBKENm3UqZhEreJL2F2cmjgNtEMWDMz1r48KejQgVmNRo/FqTqjxCiCPi/qTh0JgwY8a5G
 hlDNL3vTK2COsNILnoCbiduSgs9NJqryvcQdJNrDOvtFLVhxJDRNVo9qKMC2CrsZc1yV6IpRj
 epAGK5HsO+TszBsF6mtOAqeeg3iUrSGlU/k2/RCGWRLtX00KXPO/w8nTtokzxE/l7mUjCMkyB
 p1AxIZ1DdIACF+V58GNziI87T1X7xl1F5NhCvbaE/DpwM2U5YiAs6g2PwsRIvsosYGl7ERvvA
 /3TPlvZTQ04rFe41rQ6/+MY3aQ6RIy0LS55txWF51+B3TPi1hNO0Up+9z4v8DJwDeZWkGw2vY
 1Mp/b1WoHyUw9G4O4jlQk8jfrAnkDL+tSbwKnLOuP17CGexzuPNEyrAJNhGT8bI92BRim4hed
 ju3V2DwlvA49iwHXE1BSKNinR0vGZ7V4CPv0RcLt2dP4aKr3uJoCqOVUGV1dns+74OnBgjef/
 rI4yrZOKSVNPTjW9exGi4QqKEts6TF4dT8yVoZdCc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053119_094215_E718BCFD 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v4 1/3] ramips: add support for JS7628
 development board
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
Content-Type: multipart/mixed; boundary="===============7447823866956917893=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7447823866956917893==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=P1mZdqlA3r4BHE=-="

This is a multipart message in MIME format.

--=-=P1mZdqlA3r4BHE=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Robinson Wu
> Sent: Dienstag, 8. Oktober 2019 11:20
> To: openwrt-devel@lists.openwrt.org
> Cc: Robinson Wu <wurobinson@qq.com>
> Subject: [OpenWrt-Devel] [PATCH v4 1/3] ramips: add support for JS7628 de=
velopment board
>=20
> This commit adds support for the ZhuoTK JS7628 development board,
> The device has the following specifications:
>=20

Having looked at all three patches, I wonder whether there is any OpenWrt-r=
elevant difference between the boards with same flash size (except the name=
). So, is there a difference between e.g.
Device/zhuotk_js7628-8m
Device/zhuotk_js7688-8m
Device/zhuotk_ztk7628p-8m
?

If there is no difference, you have essentially two options:

1. Keep devices separate:
In this case, you should create flash-based DTSIs on top of the existing DT=
SI, e.g.
mt7628an_zhuotk_js76x8-8m.dtsi
mt7628an_zhuotk_js76x8-16m.dtsi
mt7628an_zhuotk_js76x8-32m.dtsi

Each of those will contain the former content of the corresponding DTS file=
 except the compatible/model.
Based on those DTSIs you could then have nine DTS files for the devices (ju=
st as you did) that then just contain a link to the matching DTSI and model=
/compatible.

2. Have three devices only:
I personally think option 1 is overkill here. Instead, you could exploit th=
e DEVICE_ALT syntax and only create three devices, but use all nine names f=
or them:

Three DTSes:
mt7628an_zhuotk_js76x8-8m.dts
mt7628an_zhuotk_js76x8-16m.dts
mt7628an_zhuotk_js76x8-32m.dts

Three definitions with nine names:
+define Device/zhuotk_js76x8-8m
+  MTK_SOC :=3D mt7628an
+  IMAGE_SIZE :=3D 7872k
+  DEVICE_VENDOR :=3D ZhuoTK
+  DEVICE_MODEL :=3D JS7628
+  DEVICE_VARIANT :=3D 8M flash
+  DEVICE_ALT0_VENDOR :=3D ZhuoTK
+  DEVICE_ALT0_MODEL :=3D JS7688
+  DEVICE_ALT0_VARIANT :=3D 8M flash
+  DEVICE_ALT1_VENDOR :=3D ZhuoTK
+  DEVICE_ALT1_MODEL :=3D ZTK7628P
+  DEVICE_ALT1_VARIANT :=3D 8M flash
+  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES +=3D zhuotk_js76x8-8m
+
+define Device/zhuotk_js76x8-16m
... accordingly
+endef
+TARGET_DEVICES +=3D zhuotk_js76x8-16m
+
+define Device/zhuotk_js76x8-32m
... accordingly
+endef
+TARGET_DEVICES +=3D zhuotk_js76x8-32m
+

compatible in DTSes will have to match Device node names, so
zhuotk,js76x8-8m etc.

I think this will provide I nice tradeoff between usability and codebase ti=
diness.

Best

Adrian Schmutzler

--=-=P1mZdqlA3r4BHE=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2cgYcACgkQoNyKO7qx
AnBalhAA0YaNFKWYfCqPn7x/eSEjkCRG9nd7/D7j1KGFm+HaTVv6Vp8wx6B7tN4c
vLMA1m4MlDnplI/FvJ0K2jOnScWASeSGQZlW+eAUoFEHJIFjaUWr5zMxRCwihGQ8
MofIDYJIQV0j4LQWbWRXEbyuOpPzFZYXgY8vfrfWWwPoS7kZZAukCGY9gupm2XoL
wq5ksavEPtx4M2P3HCyDy5SbnZWWuVG21IEfWYsI9L0KQ623BZrMhU9DJcuI439w
dxGYieedx+mThFi1Cfsc9EgwCAEhFc6aSnTeRF5ifu/3aKCdgrPNQrvKBLqpgh+f
/l++ZYZowKa6Oom3P4fC7OpxPn0KEuPIQGiH+zfrdBXK85EXflmB+QQ0QCVd74KC
vb9tlAqkmvmKdqIJmCN5pdwUbFsd6GS+EbcYLshNoPq7vqZHnvuLygsTH6itZL0L
uXCVsDyT3RUX9JpBBo3PDgkwoWSP1jAwzfu2u508Bn4SejwhBg2CcZBuePjNmbuw
8L5InnpzRaWlS1xHj7RmbtAgwPvYWTb1M9nZw1s7jBAfllY3cXmAFqpuZLb9bpB/
rNRJcR2+SHQJyHns640mU59RKml3rfLHjQ29OZ1Gxs6tkNe94Wn1HZsgK8hp5nfY
UBWoZhgtJJMq+n5Qo9DQJ1Pt5ITPqhdGKw/R84oSoOBmHnUeM70=
=elRp
-----END PGP SIGNATURE-----


--=-=P1mZdqlA3r4BHE=-=--



--===============7447823866956917893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7447823866956917893==--


