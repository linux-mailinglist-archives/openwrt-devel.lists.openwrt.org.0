Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11B1A86DC
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Sep 2019 19:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g9cLtTk/4vvXY6Y/btcAyXLKKHSS0WNnalYXJwDC1nk=; b=OzbO3B1WOras7e6S1f5KffRe6
	QjhzWrG78e/yXyBvvutnJtI47jKZcL0t/o9KV8i0wyweR8yAT62K1tYiSHAQ2pn/41BhgN8d4+6Lb
	hO/bjxmNlzwtfz9Ap4LL1Cz88KeRQckJhI8lWNCAx/GvL6Q2UUvEiYBUv6EGADFouExutGEdEJNQJ
	dbCSPiHUPCHaMweoMqpiE7b1nS7ioHiOClXZUwuyDvMffKMBUdy1U9l33GcEaFJxi8HY1bnVOBTrl
	k11+eb/vl6D+NZ8W6sX05B8sugex78XClTVEsefcuqWEqDz4El2wQBdebMPDpmYFmUiQtK4mFaSna
	DPyJo0wFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YqY-0001RE-1w; Wed, 04 Sep 2019 17:13:30 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YqO-0001Qr-Rn
 for openwrt-devel@lists.openwrt.org; Wed, 04 Sep 2019 17:13:22 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 1240BA12EC;
 Wed,  4 Sep 2019 19:13:16 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id tzPn853c8D3h; Wed,  4 Sep 2019 19:13:10 +0200 (CEST)
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Enrico Mioso <mrkiko.rs@gmail.com>
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
 <alpine.LNX.2.21.99999.352.1909020624220.2925@localhost.localdomain>
 <919fe9ff-bdf6-e3a4-1dfc-ca53284b5986@hauke-m.de>
 <alpine.LNX.2.21.99999.352.1909041159540.3532@localhost.localdomain>
 <CAFBinCD1ttRRxw0NBcGyk0TzJxuPH+o3fh=sqMgjO9STbXx6HA@mail.gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <c9877c9b-ee60-2d8c-1c41-9da07220cb12@hauke-m.de>
Date: Wed, 4 Sep 2019 19:12:48 +0200
MIME-Version: 1.0
In-Reply-To: <CAFBinCD1ttRRxw0NBcGyk0TzJxuPH+o3fh=sqMgjO9STbXx6HA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_101321_209411_F7E3BBED 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] AR10 GPHYs (WAS: Re: [lantiq] general help on
 AR10 platform)
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
Content-Type: multipart/mixed; boundary="===============2078332418019739672=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2078332418019739672==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="OFaDhRx58hPuZgiVD2WpXYPOaGYyQvGAf"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--OFaDhRx58hPuZgiVD2WpXYPOaGYyQvGAf
Content-Type: multipart/mixed; boundary="1CIwcidxTJF9jDHkPnZkSICYsWuVpvQlJ";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Enrico Mioso <mrkiko.rs@gmail.com>
Cc: openwrt-devel@lists.openwrt.org
Message-ID: <c9877c9b-ee60-2d8c-1c41-9da07220cb12@hauke-m.de>
Subject: Re: [OpenWrt-Devel] AR10 GPHYs (WAS: Re: [lantiq] general help on
 AR10 platform)
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
 <alpine.LNX.2.21.99999.352.1909020624220.2925@localhost.localdomain>
 <919fe9ff-bdf6-e3a4-1dfc-ca53284b5986@hauke-m.de>
 <alpine.LNX.2.21.99999.352.1909041159540.3532@localhost.localdomain>
 <CAFBinCD1ttRRxw0NBcGyk0TzJxuPH+o3fh=sqMgjO9STbXx6HA@mail.gmail.com>
In-Reply-To: <CAFBinCD1ttRRxw0NBcGyk0TzJxuPH+o3fh=sqMgjO9STbXx6HA@mail.gmail.com>

--1CIwcidxTJF9jDHkPnZkSICYsWuVpvQlJ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Enrico,


On 9/4/19 6:48 PM, Martin Blumenstingl wrote:
> Hi Enrico,
>=20
> On Wed, Sep 4, 2019 at 12:07 PM Enrico Mioso <mrkiko.rs@gmail.com> wrot=
e:
>>
>> Hi there!
>>
>> So I am trying to get ethernet working on this AR10 device.
>> It has 3 GPHYs:

I did some fixes for the reset bits,, the rest is ok.

>>
>>                         gphy0: gphy@20 {
>>                                 compatible =3D "lantiq,xrx300-gphy";
>>                                 reg =3D <0x20 0x4>;
>>
>>                                 resets =3D <&reset0 31 30>, <&reset1 7=
 7>;
resets =3D <&reset0 31 30>, <&reset1 6 6>;
>>                                 reset-names =3D "gphy", "gphy2";
>>                         };
>>
>>                         gphy1: gphy@58 {
>>                                 compatible =3D "lantiq,xrx300-gphy";
>>                                 reg =3D <0x58 0x4>;
>>
>>                                 resets =3D <&reset0 29 28>, <&reset1 6=
 6>;
resets =3D <&reset0 29 28>, <&reset1 7 7>;
>>                                 reset-names =3D "gphy", "gphy2";
>>                         };
>>
>>                         gphy2: gphy@ac {
>>                                 compatible =3D "lantiq,xrx300-gphy";
>>                                 reg =3D <0xac 0x4>;
>>                                 resets =3D <&reset0 27 26>, <&reset1 5=
 5>;
resets =3D <&reset0 28 13>, <&reset1 8 8>;
>>                                 reset-names =3D "gphy", "gphy2";
>>                         };
>>
>> And firmware load addresses for GPHYs are correct as per the vendor co=
de:
>> #define IFX_RCU_GPHY0_FW_ADDR                   ((volatile u32*)(IFX_R=
CU + 0x0020))
>> #define IFX_RCU_GPHY1_FW_ADDR                   ((volatile u32*)(IFX_R=
CU + 0x0058))
>> #define IFX_RCU_GPHY2_FW_ADDR                   ((volatile u32*)(IFX_R=
CU + 0x00AC))
> the register part of your .dts looks fine based on this
>=20
>> But driver was failing to initialize due to missing clock gates.
>> In sysctrl.c, we have:
>> clkdev_add_pmu("1f203020.gphy", NULL, 1, 0, PMU_GPHY); // OK for GPHY0=

>> clkdev_add_pmu("1f203068.gphy", NULL, 1, 0, PMU_GPHY); //problem for G=
PHY1
>>
>> And GPHY2?
> the UGW kernel documents all the PMUs in
> drivers/char/ifxmips_pmu_SOC.h, in your case that is:
> drivers/char/ifxmips_pmu_ar10.h [0]
> I don't remember how to translate that file to an English sentence but
> you can figure it out on your own (for example by comparing the vr9
> sysctrl.c code with
>=20
> resets are found in the same directory but a different file: ifxmips_rc=
u_ar10.h
>=20
> (sorry for the short answer but I have to leave in a few minutes)

Be aware that the GPHYs are connected to different ports of the GSWIP
compared to the VR9. With the upstream DSA driver you should be able to
define this mostly in device tree.

GMAC0: RGMII port
GMAC2: GPHY0 (GMII)
GMAC3: GPHY0 (MII)
GMAC4: GPHY1 (GMII)
GMAC5: GPHY1 (MII) or RGMII port
GMAC1: GPHY2 (GMII)

Hauke


--1CIwcidxTJF9jDHkPnZkSICYsWuVpvQlJ--

--OFaDhRx58hPuZgiVD2WpXYPOaGYyQvGAf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl1v8JAACgkQ8bdnhZyy
68eMKAgAw0nCh2kFjF39MOJmuZ6yQY6YuNbOctw7VPcvpTqVbIo00pf+/ULmASKo
QkhiQEgt14L0MOMpPG074NvliiHePkxwoeJpt1mkJ9CiFr5gyeXt0RkliJg8/rXl
jQ4RW1eexXx4wYxhTounlbNiDNwcOHQE5cUG7Lm5oEA4ShGKOd4lG2opIC5F/Y+h
a8ZG3mL8o3pqjd/euIRANxJVDerMDSIA6a4P0FYFUiyo4ZrfA3MhPQhpmpVMHwfl
xlzP/zBnPXTt+SZoZQv/RIg9Y/td/DM9Lt83KgBL9fCB4JfJ8y62hFCBsrZqWiKI
MmzAvpnbrdSOWIgFRR2eN+Z6wAn/aQ==
=/BQN
-----END PGP SIGNATURE-----

--OFaDhRx58hPuZgiVD2WpXYPOaGYyQvGAf--


--===============2078332418019739672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2078332418019739672==--

