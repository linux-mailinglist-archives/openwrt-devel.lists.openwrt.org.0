Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 252121A5D8F
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Apr 2020 10:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m+ZQXg2xJvt+CpCR0KSNvK1QFKuthbGYYEu1KcVutfg=; b=N6d1ETdoTDEKadJ9ZzMaAP7pb
	jmSos1Hggjv0uroJ21kjhGYAliUidaHrSOtDgKLmJ2wYSXWBy43DMK8pFwNGgh/ICZJRnmUh1Gb5v
	+AR9Abr3b00zHB9zF56QhJLiuB8ivn5XfzehfxA3cxfws10dPwPe0RzvZPKjTo7b0KUfJH2TLUKBn
	6gIRSIKsLLp77lcCbe5slCIr12EkY/2d9mrnzN6kT027a0To4TL9q/8/rpfhvdXiOqqrY0Ruw8olX
	0Kp0jtkFw0wBGUVeA1OtEMdhAR+QzAb1O6YGeIoIGmHzxJNzse3G7x9BWFbkinChhbrNMweoi23+I
	MvP0lFbQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNYHi-0007Vt-HJ; Sun, 12 Apr 2020 08:48:10 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNYHc-0007VF-8Z
 for openwrt-devel@lists.openwrt.org; Sun, 12 Apr 2020 08:48:06 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 4858A4E075; Sun, 12 Apr 2020 10:48:02 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 0A00E4E073
 for <openwrt-devel@lists.openwrt.org>; Sun, 12 Apr 2020 10:48:01 +0200 (CEST)
Received: (qmail 48903 invoked from network); 12 Apr 2020 10:48:01 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.36.22)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 12 Apr 2020 10:48:01 +0200
To: openwrt-devel@lists.openwrt.org
References: <20200407200724.8308-1-cotequeiroz@gmail.com>
 <f2434fb3-461d-b58f-6a6c-323162480808@wwsnet.net>
 <CAPxccB3rU4Ka-D8Tu0sGhw=RvUEgUvUTNo6tCu6sa29PueiayQ@mail.gmail.com>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; keydata=
 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
 y9XZa9+U/SZJW40nBzM3hUy+EVkvFg==
Message-ID: <c4c3bf95-bc63-773c-6c09-57489bf860f4@wwsnet.net>
Date: Sun, 12 Apr 2020 10:47:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAPxccB3rU4Ka-D8Tu0sGhw=RvUEgUvUTNo6tCu6sa29PueiayQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_014804_605172_286DAFFF 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 0/6] build: update scritps/config to
 kconfig-v5.6
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
Content-Type: multipart/mixed; boundary="===============2693719270799870150=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2693719270799870150==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="dxKDsseE8JK9dBcomjabjkQ8rJhIVUsnS"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--dxKDsseE8JK9dBcomjabjkQ8rJhIVUsnS
Content-Type: multipart/mixed; boundary="U2lXY4gui8yWVewP6dUDuVLlu9wGbkpwk";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Message-ID: <c4c3bf95-bc63-773c-6c09-57489bf860f4@wwsnet.net>
Subject: Re: [OpenWrt-Devel] [PATCH v2 0/6] build: update scritps/config to
 kconfig-v5.6
References: <20200407200724.8308-1-cotequeiroz@gmail.com>
 <f2434fb3-461d-b58f-6a6c-323162480808@wwsnet.net>
 <CAPxccB3rU4Ka-D8Tu0sGhw=RvUEgUvUTNo6tCu6sa29PueiayQ@mail.gmail.com>
In-Reply-To: <CAPxccB3rU4Ka-D8Tu0sGhw=RvUEgUvUTNo6tCu6sa29PueiayQ@mail.gmail.com>

--U2lXY4gui8yWVewP6dUDuVLlu9wGbkpwk
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Eneas,

> I'm really sorry--and embarrassed, really--to have caused all this
> trouble.  I'll see what I can do from here, but I'm not familiar
> enough with the build bot system to do much on my own--and that was
> the origin of all problems.

no need to be embarrassed, I just figured that reverting for now might be=
 the
better course forward, compared to working on fixes under pressure.

Theoretically you should be able to setup a fully working buildbot setup
yourself by cloning https://git.openwrt.org/?p=3Dbuildbot.git;a=3Dsummary=
 and
using the docker-compose file to start it. It is quite a time and resourc=
e
consuming endeavor though since it first needs to build all phase1 target=
s
(images + SDK) and then the phase2 package builds using the previously
generated SDKs.

A simpler way to reproduce may be building your own SDK (CONFIG_SDK=3Dy),=
 then
unpack the resulting tarball somewhere, install *all* feeds and *all* pac=
kages
into it:

tar -xzf openwrt-sdk-*.tar.xz
cd openwrt-sdk-*
rm -f .config && make defconfig
=2E/scripts/feeds update -f
=2E/scripts/feeds install -a
make

That should theoretically already replicate the issue occurring on the bu=
ilders.

In case you cannot replicate it with a self-built SDK, I uploaded an affe=
cted
one here before it gets replaced with a reverted version:

http://mein.io/openwrt-sdk-bcm47xx-generic_gcc-8.4.0_musl.Linux-x86_64.ta=
r.xz

SHA256: f9855ae67f19a28b584d2b0af844b6565c91dd7d2eaf196151ba8c45215d52c5

> As for the recursive dependency warning/error, at first I thought
> about using CONFIG_BUILDBOT but then scripts/config/conf may be built
> before .config even exist.  I added a make option, so the bots could
> just add WARN_RECURSIVE_DEPS=3D1 to the make args.  Even changing the
> recursive dep to a warning would not have been enough to overcome
> this, for example:

Right, I see that too now. I know that it will not have fixed the particu=
lar
issues we've seen on the builders, but the issue still stands. With circu=
lar
dependency warnings-as-errors, a sole broken DEPENDS:=3D in a random feed=

package will DoS the entire build pipeline.

> feeds/base/package/utils/busybox/config/Config.in:712: invalid statemen=
t
>=20
> I'm not sure if the feeds/base/package structure is the same as
> $(TOPDIR)/package, but 1da014f should have quoted the source filenames
> in package/utils/busybox/config/Config.in.

Indeed and it appears to have worked. The log I quoted was a rather old o=
ne.
Here's one showing a failing build due to recusive deps:
http://builds.openwrt.org/master/packages/builders/i386_pentium4/builds/2=
37/steps/compile/logs/stdio

> Does anybody have any suggestion about how this could be moved forward?=


Hm, what about reapplying the update but with the recursive dependency wa=
rning
logic inverted? Means always just warn by default and offer an environmen=
t
variable to make them strict errors. CI tests or whoever is interested co=
uld
opt into the strict checking, others are unaffected.

Regards,
Jo


--U2lXY4gui8yWVewP6dUDuVLlu9wGbkpwk--

--dxKDsseE8JK9dBcomjabjkQ8rJhIVUsnS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl6S1b0ACgkQQuLLvzou
ZtN7ShAAlt2q1KdJkm9v2TVG35JYaJa+Zn/RrDu0DjPJtWuzgIYo+aNq+Gh61chZ
vgvZHsDwoCgcjHZYKByEDpPDY75k60WlHKT+EtOMRNTFJPQkPinWJilV2lMSqpiG
0MN/9N2vpEC5MOxq9Ca8AwFGkjzzSP2VbhgBnn8HlMLE/jN7AefglVUoLrB4Eeyc
W691MGTJbxTrDwop00cOPZGGhb1DV0aqfM3gGrlJsOzPi0gS/slP3QUfGGaedNzU
ngSSfD4u2/0pnMG65A2w/0agK5SVchn1zVOCCpJqwZmFFXhpe1qk/I/J2mnQTA7q
EeJ3oqKiB1neHdLWu/HyJsOREWoxLHuXQ10smQrqYuYWdaTuMOFsp03aUU6Dp/iQ
uwnZ2lBr3GnogE5OsnSALtdR1Vk/Tw61CIkMF9yqq+CSvy2I2V4FtmAmwun60Uvk
SgtMOD96RgbUuecW7b0g77/6bQPb0SVq25eL2c9lZv+lXOs41DSGZUZ/Ouh8nMrt
RJbP5ARFVcG9MlBvtQf10L4kiyMgvBfx32s4B4Xb5dHYaOgBwrLq01DAyMPEkhbm
R3lX8ujXuvq5oWz7TGkZahJZJGoka/CfHkpoAi8bogsq2nBsNSBPBJQi0ZvLlH3R
JZyL6oOv1+TbFoT4hV1whmyA5iGsbjqtCMnW2f9pKSabmxXsmLs=
=W0uZ
-----END PGP SIGNATURE-----

--dxKDsseE8JK9dBcomjabjkQ8rJhIVUsnS--


--===============2693719270799870150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2693719270799870150==--

