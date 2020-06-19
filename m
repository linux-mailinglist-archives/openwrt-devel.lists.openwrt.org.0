Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2233200663
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 12:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bu0/BEK/c+fWOB9+/4fDGYjrQ8ZrNfAiPOjgv2tbyu0=; b=ex55E7oQmKi0yNbvnFJoAQyph
	7Dibp2mkybCaBfYVw0ltHYur/viW45cluHWpgRoqIaUPCHzj0xcdxY5S5fX/2wvYF6B+dARIBvT46
	aWFCRl/HukgfeisFQkS9P0r7L1NC7sPLaOOcV/7qInts0coj4EHdL2ol0wMMUKktsvVYU3rzeCnAj
	EJimIKFpKXgMbyD1bzcYxK51OsA9qUro2yIdrrN2upl7vsOE8t5C09UWlmYFCZH1aRnmowjhQh+Q0
	Zb6g3olVGCKRw45nXpnwtpEiJZ+E1hkTSuAA8/+78Z4RmqBbQLqR77PYTBUMYpOxStIDowlYBKlNr
	kbv4nb8SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEMj-0004HA-JR; Fri, 19 Jun 2020 10:35:21 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEMV-00034r-O7
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jun 2020 10:35:09 +0000
Received: from [2001:912:1800::249] (helo=tuxmachine.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1jmEMT-0004qN-3d; Fri, 19 Jun 2020 12:35:05 +0200
Date: Fri, 19 Jun 2020 12:35:00 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200619103500.GB563509@tuxmachine.localdomain>
References: <20200617215657.4330-1-ynezz@true.cz>
 <20200619082257.GA563509@tuxmachine.localdomain>
 <20200619093236.GA79323@meh.true.cz>
MIME-Version: 1.0
In-Reply-To: <20200619093236.GA79323@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033507_982766_0DCF8B88 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: archer-c7-v5: fix initramfs image
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============4933428934775372821=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============4933428934775372821==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uZ3hkaAS1mZxFaxD"
Content-Disposition: inline


--uZ3hkaAS1mZxFaxD
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 19-06-20, Petr =C5=A0tetiar wrote:
> > On 17-06-20, Petr =C5=A0tetiar wrote:
> > > Currently it's not possible to tftpboot initramfs image as the image
> > > contains tplink-v1-header which leads to:
> >=20
> > Out of curiosity, it looks like booting an initramfs image is only
> > possible with serial access to the bootloader?
>=20
> indeed, my use case is CI automatic testing with labgrid, so I don't want=
 to
> trash my flash. In probably weekly CI job I plan to write factory image a=
nd
> perform sysupgrade in order to test those images as well.

Interesting! https://github.com/labgrid-project/labgrid

> > This is strange, Device/tplink-safeloader-uimage already defines KERNEL
> > the same way:
> >=20
> >   KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma
> >=20
> > AFAIK, KERNEL_INITRAMFS should default to the same value as KERNEL.
>=20
> Indeed, but Device/tplink-v1 redefines that to:
>=20
>  KERNEL_INITRAMFS :=3D kernel-bin | append-dtb | lzma | tplink-v1-header
>=20
> and Device/tplink-safeloader-uimage inherits from Device/tplink-v1, reusi=
ng
> that KERNEL_INITRAMFS variable.

Ah, right, didn't spot that.  It means that other boards using
Device/tplink-safeloader-uimage likely have the same issue.

> Thanks for the review, going to send hopefully proper patch in a moment.
>=20
> -- ynezz

--uZ3hkaAS1mZxFaxD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl7slNAACgkQvgHsIqBO
LkajbxAAlIpi1w8f3i4X+6ETdM6ilCppu1gI5Qz8iTvn1ExXIS1rw5pl0dSdeE3y
4xeYtcL3KVWTf/Y4i5FpbWzXGLN9+9pAZ3ti9GXJzf9CpP5Zg9V8MBcVSVooS7HN
+RxUU+0ut/fhv+w28m0DW6wx3+EPIXCK7twOes3YEmxTZEwgv/i46OTFNZpe1Da/
gclmtcRcQ0DUciJvaJfVnPhnBUBYOznQHqhMCsE28zrr1G5JIPMqpDRzvQlSui2T
+pCEsB4OIuJDHHmxHCPFg9r19rSpGMV2KEeBoPZrJnrwKIMRWgznZMyd/Fa/BXtX
25YQql395p/zIhARp7yFSC0alnLbaguluW7qW31uTlVKN/x/2v8RKybvfJrmRSYk
32ArpozswHc2CEmFjyGO1dDmKEDXSie79ZqHApFnQoSfuPX/uItjemSUnI0xjzL7
HiCGVvxyh8txiHHqhrYJhN43CPBVVz/6zPvTdR9xCI2OKhep/bn1VDbcDYCmaRka
Y1t4IeTH0aaRA0ROYNlJ4qpzcPwqiHHz/uM4/bZZCLM4MyaXkEMucjXwfqJBvj/D
yPfViTH400btYxlJ9gDsL+CFaUq2/Pk36v2t/uzwJ4IchXYNnb1muyiby9Nwf/nd
z2a1z/qaPmHKCBniA75ScM+zYBmSeKJ/Ywo3ToL1/3ekFYroj4s=
=qXYJ
-----END PGP SIGNATURE-----

--uZ3hkaAS1mZxFaxD--


--===============4933428934775372821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4933428934775372821==--

