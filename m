Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 405AE1E89B6
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 23:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2GfBofjTh99KPNjwBAEmH3HemenIToThDUR56J0W9IA=; b=DIC/JxY2tFjlOM+L4EUrOoVjC
	8rI1B9w7Cprxc/L/aHCLFIeRjuMHcwoWiz7dhnO0B2H4AaLPxuVKD+txloaXysfM46cmDmrJA5KSl
	sigRyOjxliBBuxh+Iy6kabllc9EqOwXepxkQ7nfGw87QA9iaSj8sAVVNVYVlT/EMQB+xdaO5S2h3/
	U4bcDaDYHbr6twzGtuO+dgG1unWdANUDAeU3JXwD/rCLjpMOgdRvqFXWTgIjDUusHRHTOcX6JG3fH
	5pUZ/cNVyMda6u2YyHxZznGxAZX1uNuNHC7lritmVsN+MJ/SbqaweaLQ38mHhDViKy6iUEOe+IoxF
	x/XefE4pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemIt-0003A5-3v; Fri, 29 May 2020 21:12:35 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemIi-00038n-EO
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 21:12:26 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 50FF127FA5;
 Fri, 29 May 2020 23:12:22 +0200 (CEST)
To: mail@adrianschmutzler.de
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-4-freifunk@adrianschmutzler.de>
 <b580be00-df26-3938-c8f1-7a0bbc3f1419@universe-factory.net>
 <01d201d635fb$190b6950$4b223bf0$@adrianschmutzler.de>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
Date: Fri, 29 May 2020 23:12:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <01d201d635fb$190b6950$4b223bf0$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_141224_787469_BE94118D 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
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
Cc: 'Linus Walleij' <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org,
 'Christian Lamparter' <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============2136430579637379654=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2136430579637379654==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="vlDR4V2hzVUeEfWD2d5hwcTKaZI4Fkaig"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--vlDR4V2hzVUeEfWD2d5hwcTKaZI4Fkaig
Content-Type: multipart/mixed; boundary="xNuGKvC326SxTnuQvEwLbMO0hfNxOdXsJ";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: mail@adrianschmutzler.de
Cc: 'Christian Lamparter' <chunkeey@gmail.com>,
 openwrt-devel@lists.openwrt.org, 'Linus Walleij' <linus.walleij@linaro.org>
Message-ID: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-4-freifunk@adrianschmutzler.de>
 <b580be00-df26-3938-c8f1-7a0bbc3f1419@universe-factory.net>
 <01d201d635fb$190b6950$4b223bf0$@adrianschmutzler.de>
In-Reply-To: <01d201d635fb$190b6950$4b223bf0$@adrianschmutzler.de>

--xNuGKvC326SxTnuQvEwLbMO0hfNxOdXsJ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 5/29/20 10:52 PM, mail@adrianschmutzler.de wrote:
>> Or we just drop the variable at all, and do=20
>> DEFAULT_PACKAGES :=3D DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.router=20
>> at the beginning (!) of target.mk, so targets (effectively just 3 of t=
hem) can just overwrite it with=20
>> DEFAULT_PACKAGES :=3D DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.nas=20
>> directly in the few cases where that is necessary (I'd rather use DEFA=
ULT_PACKAGES_BASIC etc. as names then).=20
>=20
> I've pushed a quick draft of this approach here:
>=20
> https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3D=
refs/heads/devicetypedrop
>=20
> Only the most topmost patch is relevant. From "make menuconfig" it seem=
s to work as expected.

I would prefer to find a solution that doesn't require adding
$(DEFAULT_PACKAGES_BASIC) to the other default package lists. I'll have t=
o
ponder over this a bit more. Posting the patch - possibly marked as [RFC]=
 -
would make discussing this easier.


>=20
> The if/else in busybox is not considered in this patch.
>=20

Meanwhile I've found another target-specific config setting in the busybo=
x
package: BUSYBOX_DEFAULT_TRUNCATE is enabled for TARGET_bcm53xx only.

I assume "truncate" is tiny enough that it doesn't really justify making
busybox non-shared, we could just build in truncate unconditionally. I
don't know how contrained some of the "nas" targets are, but maybe we
should just replace the busybox hack with a full-featured hdparm on these=

targets?

Matthias


--xNuGKvC326SxTnuQvEwLbMO0hfNxOdXsJ--

--vlDR4V2hzVUeEfWD2d5hwcTKaZI4Fkaig
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl7RerUACgkQFu8/ZMsg
HZytzRAAnx0APUo+0sWrLowdiKIDNxrBuqAvtti4ZO9PjuBb2qcTvBWyToPmFOQp
VKQK2l1xEgwC4OZWK53aq2M7Mg6c6K7zXto8Jm831z/QXEgizzqAo0tBDGOZ6oUx
exGV2In/OQqn3q7/W7Hu5eD1ePzAER+s2c8YDTH+7oFx1c+TV+kG2uOimyZ1Pna9
UbxJb1967ShXwy+vQSifuSVlU6/Wx6ld+RYWoJbkqOay1TnzkePXGUke4ZV8nWIb
HziukX6FpfYd/GqN185TDCIfggipHyStQsQFG/6jQDb6w0xWMHCMpXLbv+KShWlJ
E/3etbpdTDcIX9PUNfHTIWvHbT4cyoY1Zd0w3uXHP3vbdChUgw2Qf4jdX7gUGmrW
SThFD0jUfUEKI4/rHtdT7WQnzkqY2kV7+wikB8NXv1BQRheafN41EII19TXwIkYO
uRHFBwdGeJhHXtcfOveLgC4aLVP7bbQYxzIOAF1nzxGnQAMMOsgsIUYh4IA9q50p
w6TyK1dzI5XXfy0TP3iZPpaLvLBRYlCiMVvAOvWO2E9lRGxztJKRJBG5if5sHCLM
G7KyiqnfZN3pAkNa5GiTgpeeC6r16Pv+7iP7qAIsaE9Ugqdl89tFVc9hSPzbUS6k
VyC2SfhS7g0FA8HOA5Rsd6kK2auyYv9PeL8CSxQgXUXRyfssbGE=
=uwkh
-----END PGP SIGNATURE-----

--vlDR4V2hzVUeEfWD2d5hwcTKaZI4Fkaig--


--===============2136430579637379654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2136430579637379654==--

