Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C5EAF13E
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Sep 2019 20:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DPJo6KZJ89UV/DOaGkfNhP4Dvu4847thdUEEGWboTZk=; b=bKQ8lyWn+uIrTsdAT7CudvtZg
	mwaXfDZLIfujHVlSTXTDPh2o+QRDze6TpZClLBdQ/gdaqjf7QIuVSwusIsySR2eimN8bND/R+XNRd
	6NWG9axbutvJhOX+yfaRNqMBYxtPJfXTfVNyyW0mQ9Nf7ruSfVTdNRMNPE1CSSru1Z2N1Q+MmlnGk
	AwhRCM10oYcN3P6iYlPQXtJaYnp82sg6jYOIk7OebMGDQOlFVm7FslLK3mUElvK/vh7YRfI4qcqRu
	+CuInp41lqNZOmTjWnMQm6RAtGjOUseMZ3gGrYxy5d5CFl4YG/5mCTVJlH95pMQf80CVdO9rrSr0H
	IAVwcrPQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7lBu-0000Sk-Ry; Tue, 10 Sep 2019 18:48:38 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7lBm-0000RF-3i
 for openwrt-devel@lists.openwrt.org; Tue, 10 Sep 2019 18:48:32 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id D286CA0031;
 Tue, 10 Sep 2019 20:48:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id 35C79KsSnjiC; Tue, 10 Sep 2019 20:48:13 +0200 (CEST)
To: Nick Schaf <nick.schaf@jci.com>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>
References: <BN6P132MB0098F57D3CA062CE1CBB935C8BDF0@BN6P132MB0098.NAMP132.PROD.OUTLOOK.COM>
 <20190801203623.GO74752@meh.true.cz>
 <CY4P132MB01068A35B953A54B9030E1FB8BD90@CY4P132MB0106.NAMP132.PROD.OUTLOOK.COM>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <83028428-977c-399e-2de6-84aff5bb282d@hauke-m.de>
Date: Tue, 10 Sep 2019 20:47:58 +0200
MIME-Version: 1.0
In-Reply-To: <CY4P132MB01068A35B953A54B9030E1FB8BD90@CY4P132MB0106.NAMP132.PROD.OUTLOOK.COM>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_114830_465945_7788D115 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Memory leak related to OpenWrt patch of hostapd
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: multipart/mixed; boundary="===============7130952746757371501=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7130952746757371501==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="rD7nC9Fhcfc5JO6hLcvS3zA3KZvo2KKYa"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--rD7nC9Fhcfc5JO6hLcvS3zA3KZvo2KKYa
Content-Type: multipart/mixed; boundary="BpBQo76I4xAHMe1ywFGxJENITGBBzjKJQ";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Nick Schaf <nick.schaf@jci.com>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Daniel Golle <daniel@makrotopia.org>
Message-ID: <83028428-977c-399e-2de6-84aff5bb282d@hauke-m.de>
Subject: Re: [OpenWrt-Devel] Memory leak related to OpenWrt patch of hostapd
References: <BN6P132MB0098F57D3CA062CE1CBB935C8BDF0@BN6P132MB0098.NAMP132.PROD.OUTLOOK.COM>
 <20190801203623.GO74752@meh.true.cz>
 <CY4P132MB01068A35B953A54B9030E1FB8BD90@CY4P132MB0106.NAMP132.PROD.OUTLOOK.COM>
In-Reply-To: <CY4P132MB01068A35B953A54B9030E1FB8BD90@CY4P132MB0106.NAMP132.PROD.OUTLOOK.COM>

--BpBQo76I4xAHMe1ywFGxJENITGBBzjKJQ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 8/2/19 6:23 PM, Nick Schaf wrote:
>=20
>=20
>> Nick Schaf <nick.schaf@jci.com> [2019-07-31 16:34:36]:
>>
>> Hi,
>>
>>> I've noticed the wpa_supplicant process on my mesh interfaces leaking=

>>> memory to the point that the kernel kills the process.  It was
>>> discovered in 18.06.2, but I've reproduced it with 18.06.4 and with
>>> the master branch from the GitHub repo.  Since the leak occurs as mes=
h
>>> links are created and destroyed, I was able to reproduce it with a
>>> simple two-node setup where I monitor the wpa_supplicant process VSZ
>>> on one node and repeatedly bring wifi up and down on the other node.
>>>
>>> I've traced it back to the 18.06.2 release, specifically to lines
>>> 34-35 of
>>> package/network/services/hostapd/patches/015-mesh-do-not-use-
>> offchan-m
>>> gmt-tx-on-DFS.patch
>>> +                 (modes =3D nl80211_get_hw_feature_data(bss,
>>> + &num_modes,
>>> &flags, +
>>> &dfs_domain)) && That code was added in
>>> a35f24309021c1c0e9cbed0faedf58b941cb4bd3.
>>>
>>> I removed the entire patch file to resolve the memory leak because th=
e
>>> subsequent call to ieee80211_is_dfs() uses the return value from
>>> nl80211_get_hw_feature_data().  However, I know the problem is
>>> specifically related to the nl80211_get_hw_feature_data() call becaus=
e
>>> I stepped-backward through commits of the hostapd source until I got
>>> back to 0f7fc6b98de9c69f511b9b22f2b65553126362eb, where
>>> ieee80211_is_dfs() had only one argument and didn't rely on the
>>> nl80211_get_hw_feature_data() return value.  At that point, the memor=
y
>>> leak still occurred until I commented-out the call to
>> nl80211_get_hw_feature_data().
>>>
>>> I attempted to dive into nl80211_get_hw_feature_data(), but was
>>> quickly lost, so I defer to those that are more experienced in that c=
ode.
>>
>> you did a nice job here to track it down, so thanks for reporting this=
, can you
>> try this patch[1]?
>>
>=20
> I had already tried an os_free(modes) and found no resolution.  However=
, to be sure, I tried your patch today and still observe the leak, but al=
so checked original code to determine whether the leak rate reduced with =
the patch.  From that test (data below) it seems possible that the modes =
leak I might be a small portion of the overall leak I observed.
> I still suspect the main leak to be somewhere inside nl80211_get_hw_fea=
ture_data.
>=20
> For your reference, data from today's quick test is below.  VSZ is "VmS=
ize" from /proc/[PID]/status where PID=3Dwpa_supplicant's process ID.  Un=
patched is the clean 18.06.4 code.  Patched is the same with your patch a=
pplied.
> The other node cycles the connection ~ every 30 seconds (while [ 1 ]; d=
o wifi down; sleep 10; wifi; sleep 20; done).
> We don't see a rise in memory every 30 seconds, leading me to believe t=
he leaked memory was allocated from a memory pool and the pool size needs=
 to be periodically increased as the leak continues.
>=20
> Time (s),VSZ unpatched,VSZ patched
> 0,3408,3404
> 10,3408,3408
> 20,3408,3416
> 30,3408,3416
> 40,3408,3420
> 50,3408,3440
> 60,3408,3440
> 70,3412,3440
> 80,3432,3440
> 90,3432,3440
> 100,3432,3440
> 110,3432,3464
> 120,3432,3464
> 130,3432,3464
> 140,3432,3464
> 150,3432,3464
> 160,3436,3464
> 170,3456,3464
> 180,3456,3464
> 190,3456,3464
> 200,3456,3464
> 210,3456,3464
> 220,3460,3464
> 230,3480,3468
> ,,3468
> ,,3468
> ,,3472
> ,,3472
> ,,3472
> ,,3496

Hi,

While I was looking at hostapd I saw this patch:
https://w1.fi/cgit/hostap/commit/?id=3D3e949655ccc5fba4686d04c70380463ebf=
059b30

We have the original patch in our tree on top of OpenWrt and I plan to
update hostapd to version 2.9 with this memory leak.
I did not look into this memory leak, but the comment could help.

Hauke


--BpBQo76I4xAHMe1ywFGxJENITGBBzjKJQ--

--rD7nC9Fhcfc5JO6hLcvS3zA3KZvo2KKYa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl13794ACgkQ8bdnhZyy
68fVWQf+IwLxHZqYqLWp9KHlv70pSb+uGxNrgXv8mch80hyOdxWvtoWqwmJeM6He
JOYnSDzCmXUOyv4Uz7vCxPLDpk9ZprD9Z9BKe6wzQWxa4EhSDy4PVao0AgG1wsxX
gQ0z/uOGw4ntNLbDdEE7oQrG+QKL//CiXVTgMMTuRHTyZHaF1lod962thUN1wCFl
85dSLgK0m9aKuMI9Reyl3LeujE1xAs9ebmwUZIEyjjSrJEHSSN5A1dxhx6HXEy0a
rPj1VXnhhBcsjsSxWW1ME1bypyzAJ5Y974tp60cvrmL2gM5NSUK98ZHs9eoQmdes
nBJnkw/Opm+91iDL8wt3MBfH/RSgDQ==
=Zj/V
-----END PGP SIGNATURE-----

--rD7nC9Fhcfc5JO6hLcvS3zA3KZvo2KKYa--


--===============7130952746757371501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7130952746757371501==--

