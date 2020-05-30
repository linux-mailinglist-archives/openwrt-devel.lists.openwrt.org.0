Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29D01E9226
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 16:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cHoUB/C6hm1fPeKajyNWBNdhTPQ60D6FEAVrm0V8mFw=; b=MH405g7i5vUX194FWuJIa0q+E
	HZz7P3NlWaLAst13vp1dZAbUN/YaGRKXh+wsHYD9aoUHgqOWBgAxOnv0wfab5AwrpbwjHxzN0bsp+
	xVP7p4B812lUNSKTVTR6v8w4rl2M96xcS33P3ljw2q0/Zk/fUFMOsfVL4CIznzHXYf9p6774e/nBR
	rjNkM3eOYsx0ZN9qMYuwGojVUViRPrabA5qPD+id7plFYZihhB2ZHmhD5Yw345PlItx8tjtA8sR9v
	8iczfLWcQxrgXS0hPAP4JsuRMfbwMQWbrOKbEQoMPJDgpLrPCl8CG0Cy9V3Crl1fXWWDYH1dwXLE4
	S9AEZLM+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf2j3-0003sW-Le; Sat, 30 May 2020 14:44:41 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf2iy-0003s4-1R
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 14:44:38 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 312B02805A;
 Sat, 30 May 2020 16:44:33 +0200 (CEST)
To: mans0n <mans0n@gorani.run>
References: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
 <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <cafdd576-3683-0800-f832-fbf61310d12e@universe-factory.net>
Date: Sat, 30 May 2020 16:44:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_074436_374600_80409D43 
X-CRM114-Status: GOOD (  19.83  )
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
 mail@adrianschmutzler.de
Content-Type: multipart/mixed; boundary="===============1379019415198136595=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1379019415198136595==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="NT0RoFeTFbP9GFtLJxYu8TduEQrDlmh49"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--NT0RoFeTFbP9GFtLJxYu8TduEQrDlmh49
Content-Type: multipart/mixed; boundary="ZXK7t0OuFKKj3TIK6EdH27oPNoloxIjQf";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: mans0n <mans0n@gorani.run>
Cc: mail@adrianschmutzler.de, 'Linus Walleij' <linus.walleij@linaro.org>,
 openwrt-devel@lists.openwrt.org
Message-ID: <cafdd576-3683-0800-f832-fbf61310d12e@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
References: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
 <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>
In-Reply-To: <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>

--ZXK7t0OuFKKj3TIK6EdH27oPNoloxIjQf
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 5/30/20 12:20 PM, mans0n wrote:
> Hi Adrian, Matthias,
>=20
> I was preparing my own patch for converting DEVICE_TYPE to a
> device-specific variable.
> https://github.com/mans0n/openwrt/commit/4d41dd963ae8d595ef38ea0a38ea08=
abdac1415d
>=20
> But I stumbled on some blockers so I left it behind...
>=20
> One of the blockers was the busybox hdparm.
> I'd also found that DEVICE_TYPE in the busybox Makefile does not work a=
s
> intended, thanks to Linus for dealing with this.
>=20
>> On 5/29/20 10:52 PM, mail at adrianschmutzler.de wrote:
>>>> Or we just drop the variable at all, and do DEFAULT_PACKAGES :=3D
>>>> DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.router at the beginning (!) =
of
>>>> target.mk, so targets (effectively just 3 of them) can just overwrit=
e
>>>> it with DEFAULT_PACKAGES :=3D DEFAULT_PACKAGES.basic DEFAULT_PACKAGE=
S.nas
>>>> directly in the few cases where that is necessary (I'd rather use
>>>> DEFAULT_PACKAGES_BASIC etc. as names then).=20
>>>
>>> I've pushed a quick draft of this approach here:
>>>
>>> https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;=
h=3Drefs/heads/devicetypedrop
>>>
>>>
>>> Only the most topmost patch is relevant. From "make menuconfig" it se=
ems
>>> to work as expected.
>>
>> I would prefer to find a solution that doesn't require adding
>> $(DEFAULT_PACKAGES_BASIC) to the other default package lists. I'll hav=
e to
>> ponder over this a bit more. Posting the patch - possibly marked as [R=
FC] -
>> would make discussing this easier.
>>
>>
>>>
>>> The if/else in busybox is not considered in this patch.
>>>
>>
>> Meanwhile I've found another target-specific config setting in the bus=
ybox
>> package: BUSYBOX_DEFAULT_TRUNCATE is enabled for TARGET_bcm53xx only.
>>
>> I assume "truncate" is tiny enough that it doesn't really justify maki=
ng
>> busybox non-shared, we could just build in truncate unconditionally. I=

>> don't know how contrained some of the "nas" targets are, but maybe we
>> should just replace the busybox hack with a full-featured hdparm on th=
ese
>> targets?
>=20
> Busybox hdparm is about 8k and full hdparm is about 93k. I think most N=
AS
> devices can manage that space, so I agree with Matthias.
> But the problem is that full hdparm is in the package feed, so it shoul=
dn't
> be included in DEFAULT_PACKAGES (unless we move the package into the ma=
in
> repo).

Moving hdparm to OpenWrt base sounds fine to me. I can take care of that,=

and removing the target-specific busybox config, sometime this weekend.

Mtthias


>=20
> Now I prefer removing DEVICE_TYPE entirely as Adrian suggested. I can't=
 see
> any use case of it other than package selections.
> Perhaps we can create some meta packges (only containing dependencies) =
as
> an alternative?
>=20
> Thanks.
>=20
>>
>> Matthias
>>
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel



--ZXK7t0OuFKKj3TIK6EdH27oPNoloxIjQf--

--NT0RoFeTFbP9GFtLJxYu8TduEQrDlmh49
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl7ScVAACgkQFu8/ZMsg
HZyHLRAAry597bw2ynwhaJllL72QGb+Zs0iM2wwi2vgG/jsyjzh4YjjsI086Trv0
h0sjynDISJMosKibwuZcH5nZBUZI7qx/9ICz+T6azWBDNkp67Z4SJMe4Pug8g7wy
cQ0jdvt3OoQGO1DQ8QOZhbVIZHUVaa7rl2fb5qoXLj+FfHMEjEGpyzA1wMKpyBy6
WvVqhhXvoKGZuzvSbLQKys/x9yg4swgNITas/5uC6iYPm/DbFIW/PIOxYMHiJ2b9
Rtjq7vdY8kYGqnrwiMSPJAA4wkdLExZ1oETgI1Mv/l81IrmlYttMCZR6yv5VDZ2E
cbak7GfIkt2jHQsJ4bpS087O/O3TV6rYGLT4bGcw6h8RuLcMvfiptMG04nfZnmyA
kYpB9Uff+ddJ6ODqpdjPzj9ZlhNIp4j3ne5Ee3ElKYuwDrsSGElatwFXLI1oMMeJ
zxbJZ1xf9FuBpdGb2rC7/gW+wElFfpLGSaG8MIwrHkU1vUogmzX10+9YDHO39WFU
T+aHHxAxmT7YbBBpwIo4Kr3yGHR1Jm8nvtLO99uz98XegylN7CYnNphiVcLyFoyo
4mU2V+WinMt7s5nR/yvWBxMFapTovq4ZcH77cEA5HYEpA6k8WhqTuUoz+M5CsfcO
JxwQTBKgN3iuzX5Oelnv5j0bMu3HIuobXcNvbWwl5EsBpOA4lqo=
=WxxI
-----END PGP SIGNATURE-----

--NT0RoFeTFbP9GFtLJxYu8TduEQrDlmh49--


--===============1379019415198136595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1379019415198136595==--

