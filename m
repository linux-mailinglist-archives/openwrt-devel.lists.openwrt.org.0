Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A413130937
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 17:49:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cnilspyU0ob5ZWYiLjv2GvVKXe4XWhpAC3WFA/8iHQI=; b=MBcd2tNioRFazSx3KqobBZNKd
	nfIGbzsNvLcJNravwmdNWrWNfZnEWt8/F2EonT7u/3jy9FoZg/C9oc0EaUTVUjIY5oXHN1stYkQTJ
	ir4SLQqvJELzgpFjOvObQyWYuThDsNPmHA+gpukEmBKw28cnN98VwEl+muHxmsSCzWNDjcamv9+SR
	L8WOxHZrzYXJtDUtjvo2Iv+PloJCC3Z7Eg+u3etFGWgZrshD46rZzMJFzLWASKFEcNsLSjfVfHHvR
	lD/Z2BUjexIH4YeLyrakm4RmH4eKdG02I8jMLw7Ih5wKkTbeuX4+pjngI+2zxmIoO3pM/fCpezebe
	b9CgrBptw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io95L-0006L3-7o; Sun, 05 Jan 2020 16:49:03 +0000
Received: from mout-p-102.mailbox.org ([80.241.56.152])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io95D-0006KC-Cs
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 16:48:57 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 47rPjb6RsSzKmXw;
 Sun,  5 Jan 2020 17:48:51 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id mUwaxG_NTvAq; Sun,  5 Jan 2020 17:48:48 +0100 (CET)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20200105141756.23473-1-hauke@hauke-m.de>
 <00b701d5c3e6$74e07860$5ea16920$@adrianschmutzler.de>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <7965c401-38c7-d16e-e1b4-1bd0e84316d5@hauke-m.de>
Date: Sun, 5 Jan 2020 17:48:44 +0100
MIME-Version: 1.0
In-Reply-To: <00b701d5c3e6$74e07860$5ea16920$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_084855_742108_4FEE40D9 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.241.56.152 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: Fix sysupgrade for Xiaomi mir3g
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
Cc: dev@kresin.me
Content-Type: multipart/mixed; boundary="===============0577407963158019222=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0577407963158019222==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="3BvHMg9AYjbNpf2mpEdLViTcRQQHaZIjY"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--3BvHMg9AYjbNpf2mpEdLViTcRQQHaZIjY
Content-Type: multipart/mixed; boundary="ubrg0Krd6suhn4PmKPFisSCEb2PCBX5YZ"

--ubrg0Krd6suhn4PmKPFisSCEb2PCBX5YZ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 1/5/20 5:37 PM, mail@adrianschmutzler.de wrote:
> Hi Hauke,
>=20
>> -----Original Message-----
>> From: Hauke Mehrtens [mailto:hauke@hauke-m.de]
>> Sent: Sonntag, 5. Januar 2020 15:18
>> To: openwrt-devel@lists.openwrt.org
>> Cc: mail@adrianschmutzler.de; dev@kresin.me; Hauke Mehrtens
>> <hauke@hauke-m.de>
>> Subject: [PATCH] ramips: Fix sysupgrade for Xiaomi mir3g
>>
>> Without this change sysupgrade from 18.06 to 19.07 is only possible wi=
th the -
>> F option.
>> In OpenWrt 18.06 the nand_do_platform_check() function is called with =
the
>> board name mir3g only, if the tar does not use mir3g it will fail.
>> OpenWrt 19.07 and later support the metadata with the supported_device=
s
>> attribute to allow renaming. Do the renaming of the target between 19.=
07
>> and master like it is done for some other boards.
>>
>> I tested the following sysupgrades successfully without -F
>> 18.06 -> 19.07
>> 19.07 -> master
>> master -> 19.07
>>
>> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
>> ---
>>  target/linux/ramips/image/mt7621.mk | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/target/linux/ramips/image/mt7621.mk
>> b/target/linux/ramips/image/mt7621.mk
>> index 7eb59188fb..39017a48e1 100644
>> --- a/target/linux/ramips/image/mt7621.mk
>> +++ b/target/linux/ramips/image/mt7621.mk
>> @@ -269,7 +269,7 @@ define Device/xiaomi_mir3p  endef  TARGET_DEVICES
>> +=3D xiaomi_mir3p
>>
>> -define Device/xiaomi_mir3g
>> +define Device/mir3g
>>    DTS :=3D MIR3G
>>    BLOCKSIZE :=3D 128k
>>    PAGESIZE :=3D 2048
>> @@ -282,12 +282,12 @@ define Device/xiaomi_mir3g
>>    IMAGE/sysupgrade.bin :=3D sysupgrade-tar | append-metadata
>>    DEVICE_TITLE :=3D Xiaomi Mi Router 3G
>>    SUPPORTED_DEVICES +=3D R3G
>> -  SUPPORTED_DEVICES +=3D mir3g
>> +  SUPPORTED_DEVICES +=3D xiaomi,mir3g
>=20
> I do not really understand this patch, as still the names will be the s=
ame, but just the order will change. If you really rely on the first name=
 to be mir3g, you could achieve this much easier by just using:

OpenWrt 18.06 does not support the SUPPORTED_DEVICES fully. I only added
xiaomi,mir3g there to allow a downgrade from master to 19.07, which is
not so important.

> SUPPORTED_DEVICES :=3D mir3g R3G xiaomi,mir3g
>=20
> With that, you would not have to change the device node name at all.

When I use sysupgrade in 18.06 it executes the platform_check_image()
functions which calls nand_do_platform_check("mir3g",
"/tmp/openwrt-19.07-ramips-mt7621-xiaomi_mir3g-squashfs-sysupgrade.bin")
https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dblob;f=3Dtarget/linu=
x/ramips/base-files/lib/upgrade/platform.sh;h=3Dffdc5e73e0ede286c10396810=
954a230c8ea32fc;hb=3Drefs/heads/openwrt-18.06#l296

The nand_do_platform_check() function is located here:
https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dblob;f=3Dpackage/bas=
e-files/files/lib/upgrade/nand.sh;h=3D42f488c118fab514de7d2aee78bc431f7b8=
be157;hb=3Drefs/heads/openwrt-18.06#l317

It calls this:
local control_length=3D`(tar xf $tar_file sysupgrade-$board_name/CONTROL
-O | wc -c) 2> /dev/null`

which expands to
tar xf
/tmp/openwrt-19.07-ramips-mt7621-xiaomi_mir3g-squashfs-sysupgrade.bin
sysupgrade-mir3g/CONTROL

This file does not exists:
sysupgrade-mir3g/CONTROL
But this is there:
sysupgrade-xiaomi_mir3g/CONTROL
The system does not find it and aborts.

The control_length is set to 0 and we expect the file_type detection to
work, but it does not because the ubi is inside the tar.

The sysupgrade in 19.07 supports the SUPPORTED_DEVICES, the sysupgrade
in 18.06 does not support the metadata fully.

When we do the board rename between 19.07 and master it is fine, but we
should not rename the board between 18.06 and 19.07.

Hauke


--ubrg0Krd6suhn4PmKPFisSCEb2PCBX5YZ--

--3BvHMg9AYjbNpf2mpEdLViTcRQQHaZIjY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl4SE2wACgkQ8bdnhZyy
68eWNQf8C9Tt6JSe7MaSUy/QlXIp+HLU13w1pZXJtKB4vw1AJuWvWXTq8NBayBo4
P+qDX5CWyhzk7CZ/z50RyZiESURR8DJVi9Cx+u3PQvW/H6uZoBb4FjcR4+pfOa7Q
EUmOD2PPjlE8+lrUEq3BLvF0ZufpOuuGpidtD42U52WmYQONgKBuhHLlqHnGFrI5
wjk8jrzbQx2xvncDgCfWF2nDD0UlVX1aw8vlydbjrCXS6BuIM1IR3iPwFsJe8zPK
f7bpLdiDn01vM1yw4DZdr7Te+nNWC89FVkiexoYnC5ZIXdeorV4BDLg3NcudWp+F
B7m/p/Rodb7AJhx0ukhuUVCPlQA8hg==
=kMng
-----END PGP SIGNATURE-----

--3BvHMg9AYjbNpf2mpEdLViTcRQQHaZIjY--


--===============0577407963158019222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0577407963158019222==--

