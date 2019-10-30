Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A70E9F15
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 16:32:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Al70BYQndRu8uMlOGnkD8yyxt2gYEZnQxrGSs7oJRA=; b=okGzUiPu7RMaLvH8VKMc5bSGh
	Ep1E4+rzejXhZK1ZcHVq7STt2EZ8lct6wm9renMH6gdf5tBzUYUry+FMXCgzkohKiPPllejqljJYN
	klotjxHgGggwYSHHOkSKdkx4LHV4/3tTGoQolLP5AZxFsRhQ+lpzUh5hVqU2qN5e6PeVx65yQP0Rn
	2z4ln9EDhZZUhWFZP4xw7jOGODmhYQPjWWv6ljwINmDGb3+urt/CPCUauQOyyJ02a3AVaC0KuXGYL
	sQGy27d5gqsoyyMzCjSMhCmWNvfx3HXHIANaytISzJTL/UEjQyNNPFKxDmBFltjPW9oEySWgQCIvs
	JvaP4eUEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpxK-0002OK-Jp; Wed, 30 Oct 2019 15:32:18 +0000
Received: from mout-u-107.mailbox.org ([2001:67c:2050:1::465:107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpvz-0001HX-QV
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 15:30:59 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 473C8S3WW0zKnHZ;
 Wed, 30 Oct 2019 16:30:48 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id k3UtW4lVo-hW; Wed, 30 Oct 2019 16:30:43 +0100 (CET)
To: Daniel Engberg <daniel.engberg.lists@pyret.net>
References: <20191027174438.25795-1-hauke@hauke-m.de>
 <1fe0ec3f6f8ca7700a29ade5ca32d563@pyret.net>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <7708741a-5da2-25d7-2125-e65409f79b6e@hauke-m.de>
Date: Wed, 30 Oct 2019 16:30:12 +0100
MIME-Version: 1.0
In-Reply-To: <1fe0ec3f6f8ca7700a29ade5ca32d563@pyret.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_083056_296828_0C941BF1 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 0/6] buildsystem: Activate PIE ASLR for
 some packages
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
Cc: openwrt-devel@lists.openwrt.org, lynxis@fe80.eu, dave@taht.net,
 nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============7913685016030183267=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7913685016030183267==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="CcWdjm87NHTYe3txU7mOXzakSFWX1TwJA"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--CcWdjm87NHTYe3txU7mOXzakSFWX1TwJA
Content-Type: multipart/mixed; boundary="PWpESOxmZpQ2WUlxPnPnVbIfFxejHP2cS";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Daniel Engberg <daniel.engberg.lists@pyret.net>
Cc: openwrt-devel@lists.openwrt.org, nbd@nbd.name, dave@taht.net,
 lynxis@fe80.eu
Message-ID: <7708741a-5da2-25d7-2125-e65409f79b6e@hauke-m.de>
Subject: Re: [PATCH 0/6] buildsystem: Activate PIE ASLR for some packages
References: <20191027174438.25795-1-hauke@hauke-m.de>
 <1fe0ec3f6f8ca7700a29ade5ca32d563@pyret.net>
In-Reply-To: <1fe0ec3f6f8ca7700a29ade5ca32d563@pyret.net>

--PWpESOxmZpQ2WUlxPnPnVbIfFxejHP2cS
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 10/28/19 10:14 AM, Daniel Engberg wrote:
> On 2019-10-27 18:44, Hauke Mehrtens wrote:
>> This is a follow up patch on this discussion on the mailing list:
>> https://patchwork.ozlabs.org/patch/1041647/
>>
>> This allows to activate PIE only for some packages where we thing it i=
s
>> necessary and not only globally for all of them.
>>
>> Hauke Mehrtens (6):
>> =C2=A0 buildsystem: Make PIE ASLR option tristate
>> =C2=A0 dnsmasq: Activate PIE by default
>> =C2=A0 dropbear: Activate PIE by default
>> =C2=A0 hostapd: Activate PIE by default
>> =C2=A0 uhttpd: Activate PIE by default
>> =C2=A0 lantiq: Allow PKG_ASLR_PIE for DSL and voice drivers
>>
>> =C2=A0config/Config-build.in=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 22 ++++++++++++++++----
>> =C2=A0include/hardening.mk=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 9 +++++++-
>> =C2=A0package/kernel/lantiq/ltq-adsl/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 1 -
>> =C2=A0package/kernel/lantiq/ltq-ifxos/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=
 |=C2=A0 1 -
>> =C2=A0package/kernel/lantiq/ltq-tapi/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 1 -
>> =C2=A0package/kernel/lantiq/ltq-vdsl-mei/Makefile=C2=A0 |=C2=A0 2 --
>> =C2=A0package/kernel/lantiq/ltq-vdsl/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 1 -
>> =C2=A0package/kernel/lantiq/ltq-vmmc/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 1 -
>> =C2=A0package/network/config/ltq-vdsl-app/Makefile |=C2=A0 1 -
>> =C2=A0package/network/services/dnsmasq/Makefile=C2=A0=C2=A0=C2=A0 |=C2=
=A0 1 +
>> =C2=A0package/network/services/dropbear/Makefile=C2=A0=C2=A0 |=C2=A0 1=
 +
>> =C2=A0package/network/services/hostapd/Makefile=C2=A0=C2=A0=C2=A0 |=C2=
=A0 1 +
>> =C2=A0package/network/services/uhttpd/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=
 |=C2=A0 1 +
>> =C2=A013 files changed, 30 insertions(+), 13 deletions(-)
>=20
> I think ASLRs value needs to be evaluated especially due to the
> performance penalty (hostapd mainly in that regard) and not to forget
> size increase depending on for how long OpenWrt intends to keep 8Mbyte
> devices around as 4Mbyte devices are more or less unsupported by now.
> It's probably a better idea to only enable it on aarch64 and x86-64
> where size isn't as much of a concern and where it probably(?) receives=

> most exposure to avoid uncessary breakage.
>=20
> http://intx0x80.blogspot.com/2018/04/bypass-aslrnx-part-1.html
> https://svnweb.freebsd.org/base?view=3Drevision&revision=3D343964
> Might also be worth taking into consideration.
>=20
> Best regards,
> Daniel

Yes ASLR is not preventing any exploits it just makes it harder for an
attacker like most other mechanisms too. Especially on 32 bit platforms
like MIPS 32 bit and ARM 32 bit we only use 8 bit of the address for
ASLR, on 64 bit platforms this feature is a lot more useful as we have a
lot more bits.

I am wondering why the kernel takes CONFIG_ARCH_MMAP_RND_BITS_MIN as the
default for CONFIG_ARCH_MMAP_RND_BITS and not the max value, on MIPS 32
bit min is 8 bits and max is 16 bit.
https://elixir.bootlin.com/linux/v4.19.79/source/arch/Kconfig#L598

Do you know any benchmark results measuring the performance penalty of
ASLR and PIE?

Hauke


--PWpESOxmZpQ2WUlxPnPnVbIfFxejHP2cS--

--CcWdjm87NHTYe3txU7mOXzakSFWX1TwJA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl25rIUACgkQ8bdnhZyy
68fyTgf1EmHsE6Fh4peayCld6uba38di+YzqYmy+ljgft3FWwLsp67s/ESqZKPdP
ogBh0OXiSgy3z/XrSPqvcmrlAV3HaCCJyXaSSmlz0S/yPTTqjJtK5RvP4WTV2MGJ
00wW44zY/CxHk32UYEA2RzXOntf/rYRl2zNyfAbyCJUCz8fqxVVTOvr9Hf+hH1Kr
YW5Z7LBRYLoCad7Fa5RI/S7fQNPsVU2OwOCVUw+FYnT1S4hNyq8OSY4BhfYjdAC1
lhfmFcIXfJTItJ6nd70p9TIfqu8OKkVfjcPgkMJmlDfviHNjwDEH1xMhDjXvMaRd
nsoB09ecJmHBjmqRFP5uNjJ97Ltf
=1KzU
-----END PGP SIGNATURE-----

--CcWdjm87NHTYe3txU7mOXzakSFWX1TwJA--


--===============7913685016030183267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7913685016030183267==--

