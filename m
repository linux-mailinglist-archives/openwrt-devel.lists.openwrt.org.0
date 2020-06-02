Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F631EC4DF
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 00:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EVioYNoPg3Oex6B35RGzxrlu1zjc5sv3z6yvBtvHmYc=; b=hzLE0bAWqaCN/p52Y4nE9aWi3
	gvz4H+3uod6mcE/Z+dYSsy0tiFmutKxM4Je1kCBIbzR2doj2OBblY62OGyncCbv9apNoYw4rp0BgH
	qqG2whxfhjnro8+dVlXF994mBzSR+tVqflWfTE/LxuNQbgKe3nDehzH1/o8TWnQtPi10eFIBGSpAG
	EZg/UGMBbGvF265H81Zhsr9Q+mCGYKp4jwh0RM7zoCBLuU69Q9yNAU75+NhCcaix+KBT1LdMwqlzE
	T25wi+JHhZr9WwbPkLfn5sr1emvoKpv+TO8b6XWWriXqCG9y9K2NS61SlPWprL++G52fcTp8b8t9m
	XC4JAuJHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgFHq-00042u-2X; Tue, 02 Jun 2020 22:21:34 +0000
Received: from mout-p-102.mailbox.org ([2001:67c:2050::465:102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgFHj-00041h-S4
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jun 2020 22:21:30 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 49c62S2CRyzKmY1;
 Wed,  3 Jun 2020 00:21:20 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id D0nLbbimn1Os; Wed,  3 Jun 2020 00:21:15 +0200 (CEST)
To: Tim Harvey <tharvey@gateworks.com>, openwrt-devel@lists.openwrt.org
References: <1591117502-28100-1-git-send-email-tharvey@gateworks.com>
 <1591117502-28100-2-git-send-email-tharvey@gateworks.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <d2daae4b-28ed-b783-2eed-3caf42f15288@hauke-m.de>
Date: Wed, 3 Jun 2020 00:21:03 +0200
MIME-Version: 1.0
In-Reply-To: <1591117502-28100-2-git-send-email-tharvey@gateworks.com>
X-Rspamd-Queue-Id: EC8571734
X-Rspamd-Score: -8.93 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_152128_215471_CBDE2301 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] octeontx: enable Cavium CPT and
 ZIP drivers
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
Content-Type: multipart/mixed; boundary="===============2511152400278106482=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2511152400278106482==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="461Tkd2lqWZY2IlxlVfDQQSX5WDwV1Ssb"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--461Tkd2lqWZY2IlxlVfDQQSX5WDwV1Ssb
Content-Type: multipart/mixed; boundary="f6NECXsw4VsSTqG0lr8KblFFDYa63JoFq"

--f6NECXsw4VsSTqG0lr8KblFFDYa63JoFq
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 6/2/20 7:05 PM, Tim Harvey wrote:
> The CPT module requires firmware which we add here as well.
>=20
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
> v2: added license file for firmware
> ---
>  target/linux/octeontx/config-5.4                     |  11 +++++++++++=

>  target/linux/octeontx/files/firmware/cpt8x-mc-ae.out | Bin 0 -> 9760 b=
ytes
>  target/linux/octeontx/files/firmware/cpt8x-mc-se.out | Bin 0 -> 35584 =
bytes
>  target/linux/octeontx/files/firmware/license.txt     |  11 +++++++++++=

>  4 files changed, 22 insertions(+)
>  create mode 100644 target/linux/octeontx/files/firmware/cpt8x-mc-ae.ou=
t
>  create mode 100644 target/linux/octeontx/files/firmware/cpt8x-mc-se.ou=
t
>  create mode 100644 target/linux/octeontx/files/firmware/license.txt
>=20
> diff --git a/target/linux/octeontx/config-5.4 b/target/linux/octeontx/c=
onfig-5.4
> index cfb8b19..9fcd12b 100644
> --- a/target/linux/octeontx/config-5.4
> +++ b/target/linux/octeontx/config-5.4
=2E.....
> @@ -233,6 +239,8 @@ CONFIG_EEPROM_AT24=3Dy
>  CONFIG_EFI_EARLYCON=3Dy
>  CONFIG_EXT4_FS=3Dy
>  CONFIG_EXT4_FS_POSIX_ACL=3Dy
> +CONFIG_EXTRA_FIRMWARE=3D"cpt8x-mc-ae.out cpt8x-mc-se.out"
> +CONFIG_EXTRA_FIRMWARE_DIR=3D"firmware"
>  CONFIG_F2FS_FS=3Dy
>  CONFIG_F2FS_FS_XATTR=3Dy
>  CONFIG_F2FS_STAT_FS=3Dy
=2E...
>=20
> diff --git a/target/linux/octeontx/files/firmware/license.txt b/target/=
linux/octeontx/files/firmware/license.txt
> new file mode 100644
> index 0000000..531eaba
> --- /dev/null
> +++ b/target/linux/octeontx/files/firmware/license.txt

Hi,

I think this is not compatible with the OpenWrt license or at least goes
into a gray area.

> @@ -0,0 +1,11 @@
> +Copyright (C) 2019 Marvell International Ltd.
> +
> +The software package is subject to the Marvell binary license that pro=
hibits the
> +licensee to modify the software, in any manner and that prohibits to d=
istribute
> +the software as a stand-alone product.

Is the distribution in
target/linux/octeontx/files/firmware/cpt8x-mc-se.out not a standalone
product?
You can create a link to https://git.openwrt.org where you can directly
download it when we push it into openwrt master.

> +Any use of the software, in all or in
> +part, shall not be made subject to or otherwise contaminated by, a cop=
yleft open
> +source license (as defined by the Open Source Initiative), such as wit=
hout
> +limitation, GNU GPL or LGPL licenses.

Adding this file in CONFIG_EXTRA_FIRMWARE could be seen as bundeling it
with GPL code.

The CONFIG_EXTRA_FIRMWARE option says this:
  WARNING: If you include additional firmware files into your binary
  kernel image that are not available under the terms of the GPL,
  then it may be a violation of the GPL to distribute the resulting
  image since it combines both GPL and non-GPL work. You should
  consult a lawyer of your own before distributing such an image.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/d=
rivers/base/firmware_loader/Kconfig#n32

> +Any software which integrates this code or any part of it thereof, sho=
uld
> +include in its header the above license.

We would have to extend the license information for all our octeontx
binaries to add this information.


If this firmware contains cryptography we could also violate some export
control regulation, but normally no one cares.

I am not a lawyer, so please correct me if you see some of this
different or actually asked a lawyer.

Hauke


--f6NECXsw4VsSTqG0lr8KblFFDYa63JoFq--

--461Tkd2lqWZY2IlxlVfDQQSX5WDwV1Ssb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl7W0M8ACgkQ8bdnhZyy
68dPDAgAkHcZb0Q23GjKarM2pbWexe+W7kZsiysGd1IJBD+5UX4sN7p4iyAGs1Qx
qRNJWdm8S8q09jGF35sniRbWetzvVYysa5ehhRIkOs6MwU31avNREItajzMquSvi
I0emCuQjulxyWA0xdHjMHAEDG8jG/O01InqhKbkf9OyOH1U3QfZ0s8d9R8oF9UBR
Q7i+6kVjak/GO+tul9EUT/Cm8ekwEElOyObARJ2qQlKjPfwxwqHJsohHV/3XyrF+
xhmatEpgqTM70/517qzefHtNBHmUlb6jU2wti57VAenwM16/a3OQ1E4goCiU8JaZ
+2wsTX9vBKFGke7RslBe0wHz7SYgrw==
=i3h6
-----END PGP SIGNATURE-----

--461Tkd2lqWZY2IlxlVfDQQSX5WDwV1Ssb--


--===============2511152400278106482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2511152400278106482==--

