Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2971324E8
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Jan 2020 12:32:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yke0dBJunD8JhzXvOdDcLgiC1E6EswJpcSDo3/BIqWE=; b=LueKZFRnUBEMTKD6BNp3EvTUw
	R1UjfYO7Bp2eSlCAEsrh25aDv0hevBFPjyfGV8OqbHpNVSD3AgEqf5AVBwxrHGIqHvI2Y2hpcrSV5
	gJdcek19wWtd3H++vltKmYvtK2RbEMBKZoCj9Y+vJMBS3CAddXX1qxXqUEdSumDwoG9zBMk18D++H
	O9ZOlzK4ur0jLPQYLpKX0+3F9PztzUNt4SfoHdLaGFM/NP2ftShNR3ykkEqej2H1pmH4yHvJlqyCR
	OepAf8t5rCCjPtuWrtlSdJbV4hOewSbfg6nfqfSUt3U9kSdeSe1GWjLDtWgaPwIQbcJQ02JKxkr8j
	DsRm9trPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ion5v-0006Az-3v; Tue, 07 Jan 2020 11:32:19 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ion5k-0006AO-0D
 for openwrt-devel@lists.openwrt.org; Tue, 07 Jan 2020 11:32:10 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mg6mG-1jLNoj3r3e-00hiOF; Tue, 07
 Jan 2020 12:32:03 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <019d01d5a617$53e76570$fbb63050$@adrianschmutzler.de>
 <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
 <009201d5c234$d1045e30$730d1a90$@adrianschmutzler.de>
 <50e1561a-a48e-6b82-0b2f-52bfd90e747e@hauke-m.de>
 <005f01d5c3c5$d420a320$7c61e960$@adrianschmutzler.de>
 <007901d5c3ce$21ea2510$65be6f30$@adrianschmutzler.de>
 <64da65c7-0827-3dfc-2b8c-2ad42ab62a3e@hauke-m.de>
In-Reply-To: <64da65c7-0827-3dfc-2b8c-2ad42ab62a3e@hauke-m.de>
Date: Tue, 7 Jan 2020 12:32:03 +0100
Message-ID: <0b1a01d5c54e$15b0d8d0$41128a70$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQKHHZl+c6tYe6NxV90oTdPoalDB0gKX3rv8AN9zaFkBVuaE5QBtT/prArzE7GEByW0orAIai//vph18xBA=
MIME-Version: 1.0
X-Provags-ID: V03:K1:vLbZGpAFXd/N/gvBp6PqwazVtrFSMK6600uGV333+IsK/sudRiu
 XMKRHq4a7L0QcWZA5jQyP6Ei6U8ZGbXyxIBZAM40D+X28p6jqmkzPpE1zjWyks0D+6Jm1ui
 R9Z4rlJGw+MKIbdW7OS3ttAeRpPqaE5BnZ8MmcY12kOore6RRzL8+HzAL/JlAqvO3lbeV0i
 jjTqnDw96fdyHykSR62qQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aKBDvT4zAII=:+oH13PBTrdmgsV/pjRWHc2
 pM/+C42xs/z9TzZHLUXpeFCY928FuDo9phEBLCicTZI1J4P6gDDSja6G/5bntCMBqdkzubsp4
 sth/MD5AeU71UklcVImdKnKC6IeNqrWTohLYppns+6YaA7+MknhCzLDtiLBzVXRCt7ApRxMRT
 gftXR3jueuK3nw4sMV1ocX30KSPaDm3izjsmFGZyJy1C6btYqgQw/VLBsEV8CaRAKnGvGi1z4
 0ZBOvNbSZ8IKd7Q66lra5xuNgcXhDlwotosKHIm1s833cdhLaE+fzyWJ120I41RLiMkCjGeIW
 p8ZWegJ2KPOM4G7l7hUn0aHtXabMi+p8Hr4FXMdJuv9QqAy5EdQtl7V/cNt2lT4HBMCd+EvJF
 NpA6skSMOaKiFeOQ8xgDGKKUie5X9rduZGBQN0VxUYRT6YefhDiVno11FimIDaKgL/qsVwRV3
 u2pGO2BJkrtXY0sdbctGy9g1v1nl4hVxRBC7PlIQ54eBFrpJAfUx5FK6YSFtyE1rL1TBzMTBB
 EcD/SrNBE4pLI1jXXKprzqMP3Pj0x1kqmLCyYBPmOpRS+o1dE89RGr+nJ0QZ41UBGZ2sY6M/J
 oTl533BebY4T3L6ABduf91DrN3XiIc7I9jGG9SlbujRn4Wm1mEPPJomfVGl1+k8MCDCtLpMS4
 y0NIVz24APQB+eaFk0u1VtxDr6IklVzk8SN6mRFEjGQJX1yzy7hOjAPKbVwbomaVuakdwwqOZ
 J4v4oW1uSOzzn5I5MqYLqv6MzOKqtmyQiNLsO592hb3CGhWt2tFcqy+ArJkX4XSp9snaZrQpu
 o+zZ2bKYVO04gcsIa9xSE19u8L3SrDvO/XieAQNp4VIN3yANrvylPmyTIdRsB96N9dxhJ+NQN
 S4SZHS4yhFRXDcngKPV0CQHlXFUrImyrc+EpVvpas=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_033208_337106_7507FD0C 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============1846535324430562439=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1846535324430562439==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=S0/5m/JextOjso=-="

This is a multipart message in MIME format.

--=-=S0/5m/JextOjso=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Hauke,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Hauke Mehrtens
> Sent: Sonntag, 5. Januar 2020 14:54
> To: mail@adrianschmutzler.de; 'OpenWrt Development List' <openwrt-
> devel@lists.openwrt.org>
> Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
>=20
> On 1/5/20 2:43 PM, mail@adrianschmutzler.de wrote:
> >>>>> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:
> >>>>>> Hi Hauke,
> >>>>>>
> >>>>>>> The following are still on kernel 4.9:
> >>>>>>>  * ar7
> >>>>>>>  * ixp4xx
> >>>>>>>  * orion
> >>>>>>
> >>>>>> There are patches (actually from you, May 2019) on the list which
> >>>>>> claim to bump ar7 and orion to 4.14:
> >>>>>>
> >>>>>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107337
> >>>>>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107339
> >>>>>>
> >>>>>> I haven't looked closer, just in case you forgot about them ;-)
> >>>>>
> >>>>> Nobody reported that they are working so I never applied them. I do
> >>>>> not have the hardware, I just made them compile.
> >>>>
> >>>> Since there was no response of any kind from a third party, I've
> >>>> just
> >>> marked the two patchsets as "Deferred" in the patchwork, so we get a
> >>> little more overview there. I hope that's okay for you.
> >>>
> >>> Yes fine with me, we should probably drop these targets soon.
> >>>
> >>> Hauke
> >>
> >> I think it's time to remove the three targets and kernel 4.9 support as
> >> well
> >> after the release has been made. Or does keeping kernel 4.9 in master
> >> (even
> >> without targets) make it easier to support 18.06 branch?
>=20
> No, it does not help me to have kernel 4.9 is master for maintaining 18.0=
6.
>=20
> > I've prepared a staging branch for that (completely untested at the
> > moment):
> >
> https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3D=
refs/heads
> /remove49
>=20
> Thank you.
>=20
> Before applying this please send this to the public mailing list.
>=20
> > For orion, I have some grep matches in uboot-kirkwood and
> > kernel/linux/modules/usb.mk I'm not sure about, so I haven't touched th=
ose
> > yet.
>=20
> The orion part in usb.mk is also used by mvebu:
> https://cateee.net/lkddb/web-lkddb/USB_EHCI_HCD_ORION.html
>=20
> uboot-kirkwood probably also uses some orion parts in the kirkwood target.
>=20
> I think kmod-crypto-iv is empty now.
>=20
> There are also some checks in include/netfilter.mk which can be removed n=
ow.
>=20
> This file can also be removed:
> package/kernel/linux/files/sysctl-tcp-bbr-k4_9.conf
>=20
>=20
> Hauke

If we remove the targets anyway, I wonder whether we shouldn't add your two=
 4.14 patchsets to master directly beforehand.
That way, we would have them in master history, where they would be easier =
to find for someone wanting to use the target for whatever reason. (I'd add=
 an explanation of the situation to the commit message.) Still, having remo=
ved the target afterwards, no harm would be caused by the patches being unt=
ested. This would preserve your work there to someone looking for it, while=
 not affecting working master in any way and without much additional work.

What do you think?

Best

Adrian

--=-=S0/5m/JextOjso=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4UbC8ACgkQoNyKO7qx
AnBq0BAArKSZdg/9KdL6k4KrAR2nCnQlsB3tdveawftx0iAAzGsPv5I8P30itbjC
hJKzgxqs1uJnoBMyBUsr4rneZzGACrmve2kyERXu95x3F170RqCRiiNS5og8wA7y
A9fwW4Crt1K4ETOtgE2ehcc5tOJYtmWpb0qtGf3m/DDnoykvam8o8rziynMpxI5b
qrEY/V9LA3L9wn0uJ/LQZfkcnzzPc5muRTH8Z89I29/xxzOnGCgXmm/sBZNfftTj
F9GyHMhWY7rTlweW5wCTEHwfGNO0QzfNQ1AvVYhv7KHLs3lx+OwwM4HeoEjl6NcR
lt2SvuD9iO0TjB1atk6TFzWVWSzMieU7rOLFhbRibn4NWnlGEKtkWNIm5sdAc2iL
uEoGwDHZ6cf7FcNyY2SdhjnGvAvrLhbomWExXFjJfOvpcfqWRh4vHsbeeN1Z+YBH
KnS0Ziz4MOq0+wJcdov7Xm0+8W/ZWHD4eC7wjRSoS06e58BHJ77HzO2aUqY5kRa0
jUcs21UBo7ga2axFbD6z04lULbA/3FFTTce8TJmm+S4HiT7LNxcMAIFPv1unGujg
fjO3DC0e1ZdWTNwPihL12qvJdhfh2SzF/wR9euFwTUk4jIcnD44npFzIXOhDIsRF
KDhvAsBLkz+uTlbo9yYLaQQCUvhp4pHttyulQVvnEhGLo8n5Us8=
=pCSQ
-----END PGP SIGNATURE-----


--=-=S0/5m/JextOjso=-=--



--===============1846535324430562439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1846535324430562439==--


