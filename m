Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2701E9437
	for <lists+openwrt-devel@lfdr.de>; Sun, 31 May 2020 00:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ECnbSiMvJ3FRf8aiIRHqkn3BvlQGKBGSDyeIsml2ayE=; b=DBRdulKkjJA0q+RVHBVa9CMro
	5mxJ6OpehP5DJ2v9QNUM5aIfca6RAGrG9F5SKpNsOhJdJ4aD82DTyIluSK4GEm+Zta4J9aqVMGOSt
	7TQcx4Zt2Gn0x5HCelZ5Hdu64GfzAQBQgi9Jj6YpPJFFfgR/UtBUKmKsguAF3Z5L1XIkOq6sEaqP6
	W2catJPfg5F/ZPrjeGfEGf+bDK2JPAjz0AACHILk6WofMmWqFV6rhnq6ahkzfeqU07XUejScevGJY
	hAZR9+FW53fYoyIELQCWwqMqBWjHjYkireKZ7m9xThsMSq792AGSplOwx4aPd44wxkJOnp4XQhuqg
	uAdYQGFaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf9sz-0006Tx-6I; Sat, 30 May 2020 22:23:25 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf9st-0006TQ-88
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 22:23:21 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 8F214280A3;
 Sun, 31 May 2020 00:23:10 +0200 (CEST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
 <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>
 <008201d636ce$a59470a0$f0bd51e0$@adrianschmutzler.de>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <6412ce55-dd76-39db-5983-39bd0cc62d5c@universe-factory.net>
Date: Sun, 31 May 2020 00:23:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <008201d636ce$a59470a0$f0bd51e0$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_152319_582940_D50813AC 
X-CRM114-Status: GOOD (  21.90  )
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
 'mans0n' <mans0n@gorani.run>
Content-Type: multipart/mixed; boundary="===============4701097699178816070=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4701097699178816070==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Va3jKF9WUYDjYea11eETE5gBwVQVr0Vxs"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Va3jKF9WUYDjYea11eETE5gBwVQVr0Vxs
Content-Type: multipart/mixed; boundary="9DuySEVzHVBlHEiUXPnspVtaoV4ySPq62";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Cc: 'mans0n' <mans0n@gorani.run>, 'Linus Walleij' <linus.walleij@linaro.org>,
 openwrt-devel@lists.openwrt.org
Message-ID: <6412ce55-dd76-39db-5983-39bd0cc62d5c@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
References: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
 <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>
 <008201d636ce$a59470a0$f0bd51e0$@adrianschmutzler.de>
In-Reply-To: <008201d636ce$a59470a0$f0bd51e0$@adrianschmutzler.de>

--9DuySEVzHVBlHEiUXPnspVtaoV4ySPq62
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 5/31/20 12:06 AM, Adrian Schmutzler wrote:
> Hi,
>=20
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of mans0n
>> Sent: Samstag, 30. Mai 2020 12:20
>> To: 'Matthias Schiffer' <mschiffer@universe-factory.net>;
>> mail@adrianschmutzler.de
>> Cc: 'Linus Walleij' <linus.walleij@linaro.org>; openwrt-
>> devel@lists.openwrt.org
>> Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE
>> to DEFAULT_TYPE
>>
>> Hi Adrian, Matthias,
>>
>> I was preparing my own patch for converting DEVICE_TYPE to a device-
>> specific variable.
>> https://github.com/mans0n/openwrt/commit/4d41dd963ae8d595ef38ea0a3
>> 8ea08abdac1415d
>> But I stumbled on some blockers so I left it behind...
>=20
> One of the problems of this approach (changing DEVICE_PACKAGES) is that=
 it
> will only work if CONFIG_TARGET_PER_DEVICE_ROOTFS is set, as only then
> DEVICE_PACKAGES will be evaluated IIRC. So, this won't help for buildin=
g
> Default Profile and I don't know whether it will work for a single targ=
et
> device being selected directly (without Multi Profile).

DEVICE_PACKAGES works fine without multi-profile (in fact, it has existed=

for a bit longer than CONFIG_TARGET_PER_DEVICE_ROOTFS).

I don't think we need to care about multi-profile without PER_DEVICE_ROOT=
FS
- both OpenWrt buildbots and Gluon use PER_DEVICE_ROOTFS. IMO "pultiprofi=
le
without per-device rootfs" and the "default profile" are legacy features
that aren't very useful now that better alternatives exist.

Matthias


>=20
> So I don't think this will help for package selection at least.
>=20
> Best
>=20
> Adrian
>=20
>>
>> One of the blockers was the busybox hdparm.
>> I'd also found that DEVICE_TYPE in the busybox Makefile does not work =
as
>> intended, thanks to Linus for dealing with this.
>>
>>> On 5/29/20 10:52 PM, mail at adrianschmutzler.de wrote:
>>>>> Or we just drop the variable at all, and do DEFAULT_PACKAGES :=3D
>>>>> DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.router at the beginning
>> (!)
>>>>> of target.mk, so targets (effectively just 3 of them) can just
>>>>> overwrite it with DEFAULT_PACKAGES :=3D DEFAULT_PACKAGES.basic
>>>>> DEFAULT_PACKAGES.nas directly in the few cases where that is
>> necessary (I'd rather use DEFAULT_PACKAGES_BASIC etc. as names then).
>>>>
>>>> I've pushed a quick draft of this approach here:
>>>>
>>>> https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog=
;h=3Dre
>>>> fs/heads/devicetypedrop
>>>>
>>>> Only the most topmost patch is relevant. From "make menuconfig" it
>> seems to work as expected.
>>>
>>> I would prefer to find a solution that doesn't require adding
>>> $(DEFAULT_PACKAGES_BASIC) to the other default package lists. I'll
>>> have to ponder over this a bit more. Posting the patch - possibly
>>> marked as [RFC] - would make discussing this easier.
>>>
>>>
>>>>
>>>> The if/else in busybox is not considered in this patch.
>>>>
>>>
>>> Meanwhile I've found another target-specific config setting in the
>>> busybox
>>> package: BUSYBOX_DEFAULT_TRUNCATE is enabled for TARGET_bcm53xx
>> only.
>>>
>>> I assume "truncate" is tiny enough that it doesn't really justify
>>> making busybox non-shared, we could just build in truncate
>>> unconditionally. I don't know how contrained some of the "nas" target=
s
>>> are, but maybe we should just replace the busybox hack with a
>>> full-featured hdparm on these targets?
>>
>> Busybox hdparm is about 8k and full hdparm is about 93k. I think most =
NAS
>> devices can manage that space, so I agree with Matthias.
>> But the problem is that full hdparm is in the package feed, so it
> shouldn't be
>> included in DEFAULT_PACKAGES (unless we move the package into the main=

>> repo).
>>
>> Now I prefer removing DEVICE_TYPE entirely as Adrian suggested. I can'=
t
> see
>> any use case of it other than package selections.
>> Perhaps we can create some meta packges (only containing dependencies)=

>> as an alternative?
>>
>> Thanks.
>>
>>>
>>> Matthias
>>>
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20



--9DuySEVzHVBlHEiUXPnspVtaoV4ySPq62--

--Va3jKF9WUYDjYea11eETE5gBwVQVr0Vxs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl7S3M0ACgkQFu8/ZMsg
HZxCqBAAuerdBQ9OKNY7N2W5vb/yPrrEKp0y1NLialKMY73xeXnFc01plNd25N7E
l1GyQEQFTc+o+8OGKz1gVvNtB5SjYUzPXJnTFFiNNUX0mDv4L6qvfHq65GoaMagA
SunoDhuS8huZWhc9FxSTxGVQr5vqq+IVCe5QvOCowTem21rw5672f2cv13wZfR0V
0jcEWGRNg3ZfzZ9mg6PeTGPk5wkoxPb00zoZfQAe9lWAo8yGwFVkZaoZXqkd7wQw
bL2z+mPNZeqw5hnHuhwi8oGILipyFeTaT/tb0JGf3LgcxlVj7do7eZd/x2xt5R0U
a7Pc4Oa+8XjtG6xyll01gH1dZBNDCiNj6hR29oF00upG+YDUIpcnCm6RENp9J7sG
wgYZ0hqECeP9PWVS9/HbzHeDVMxfDENXOVKu3RQOF4Yd1syMjBWTbx9JiVLooM6r
bKJc29zdX+cACFXb5tZQDDTmRHZeQQfaSi0RurYNASMISBCV+H3+mIGxZzJitm0K
IhnPxCjUphX7V4wmnH5nbo0obmK5jfh1AEWHBjxCJh7XvpRJpBqPqipjb/mlyx0a
gShV86NP+cM98QnpBzIusILZRKD5uMhC5FnQkjBBCdPhgj9Ect+koESK/xE75qwd
zQIDeTccDKLVpYPNgi6KEiCfrs+aPREP7iliF7ZMERrBHTnwECI=
=g6X1
-----END PGP SIGNATURE-----

--Va3jKF9WUYDjYea11eETE5gBwVQVr0Vxs--


--===============4701097699178816070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4701097699178816070==--

