Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C544134FCA
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Jan 2020 00:10:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jDNOSSvN1rJMj6C0FSqe7q1VZAKxZ741Od1/CJ6i1ow=; b=NnpdbblPU1qTRe0MhrDjTPCY+
	xYbnZd6vIZk1/jjzMoNVgz189+erOMZgQH7Ze6Fh7y+leDJGe4cY/GkS7igpqoYuqT4LrZq/s9oQ8
	heFCSgA47I7lqxyM47KrwvgILRdMopyaYXVEEEiQrCXXea0c7gBnOuTIcDKzRJKL8yqcrsuCKpZZW
	+Yu+H7M3ee7yRXyrn3WukxEw7616P4ji9INQEDuaLllCF9hGisf9RJ/eqdsxsBHk5X0W7WDDeIOzW
	tqxM5AnChT9z/HRYIwtKTXvN3fmoOpheIJKSPiKuNqcByVuxhm/NEqcho7DaGtReSSULnvz0HEEfY
	mkvmQP95Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipKTH-00013h-Qk; Wed, 08 Jan 2020 23:10:39 +0000
Received: from mout-p-101.mailbox.org ([2001:67c:2050::465:101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipKT8-00011z-KD
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 23:10:33 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 47tQ2T1WZTzKmb5;
 Thu,  9 Jan 2020 00:10:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id 1WycGYhznQHa; Thu,  9 Jan 2020 00:10:21 +0100 (CET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20191027174438.25795-1-hauke@hauke-m.de>
 <94437c48-7467-97e0-d47c-2c825ac73742@hauke-m.de>
 <20200108062440.GB86978@meh.true.cz>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <7f1044cb-cf12-d541-b78f-288adfb1ed02@hauke-m.de>
Date: Thu, 9 Jan 2020 00:10:07 +0100
MIME-Version: 1.0
In-Reply-To: <20200108062440.GB86978@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_151030_960482_A1B15BE6 
X-CRM114-Status: GOOD (  21.72  )
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
Cc: daniel.engberg.lists@pyret.net, lynxis@fe80.eu, dave@taht.net,
 Rosen Penev <rosenp@gmail.com>, openwrt-devel@lists.openwrt.org, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============4996492454360114907=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4996492454360114907==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="V5m0qcaXIvrdwvxBHwDI8DDhYQkRNtDpd"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--V5m0qcaXIvrdwvxBHwDI8DDhYQkRNtDpd
Content-Type: multipart/mixed; boundary="nOHNdYJ1dF6wBiUZBGMV71eACj2N98OwF"

--nOHNdYJ1dF6wBiUZBGMV71eACj2N98OwF
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 1/8/20 7:24 AM, Petr =C5=A0tetiar wrote:
> Hauke Mehrtens <hauke@hauke-m.de> [2020-01-07 23:21:19]:
>=20
> Hi,
>=20
> thanks for your work.
>=20
>>> Hauke Mehrtens (6):
>>>   buildsystem: Make PIE ASLR option tristate
>>>   dnsmasq: Activate PIE by default
>>>   dropbear: Activate PIE by default
>>>   hostapd: Activate PIE by default
>>>   uhttpd: Activate PIE by default
>>>   lantiq: Allow PKG_ASLR_PIE for DSL and voice drivers
>=20
> just wondering, if there is any particular reason for leaving odhcp6c a=
nd
> odhcpd out as this are network exposed services and running in default
> install.

I just didn't thought about them. We could just add an extra patch to
activate it for them too.

> Thinking about it now, we should probably consider ubus, procd, rpcd an=
d
> cgi-io (perhaps missed something) which might possibly process maliciou=
s
> inputs as well.

Then we have more or less everything. ;-)

> BTW I'm wondering how does this work with the shared libraries, like mu=
sl
> libc, openssl, libubox? Don't they need PKG_ASLR_PIE_REGULAR enabled as=
 well
> in order to get `TARGET_LDFLAGS +=3D $(FPIC)
> -specs=3D$(INCLUDE_DIR)/hardened-ld-pie.specs` ?

Shared libraries are always linked position independent and then the
kernel is already loading them to random address offsets.

>> I would like to apply these patches to master?
>=20
> I don't know if you've something newer in your tree, just looked at you=
r aslr
> branch in your staging tree:

You can find the newest version here:
https://git.openwrt.org/?p=3Dopenwrt/staging/hauke.git;a=3Dshortlog;h=3Dr=
efs/heads/aslr

>  + default PKG_ASLR_PIE_NONE if ((SMALL_FLASH || LOW_MEMORY_FOOTPRINT) =
&& !SDK)
>=20
> Nice, that you've enabled this for !SMALL_FLASH devices. BTW what is th=
e
> reason for !SDK? That way binary/library.

When something is build in the SDK I always want to use
PKG_ASLR_PIE_REGULAR by default. In our build infrastructure we build
packages common to multiple targets in the SDK and there I always want
to use PKG_ASLR_PIE_REGULAR as default option to activate ASLR when the
same package is used on a tiny and a normal target. I hope it will work
like this. I want to prevent that some tiny target is used to build the
additional packages and then this gets accidentally deactivated.

>> Are there any objections to this? I already activated LTO to reduce th=
e
>> size for all these components and the lantiq patch is already applied.=

>=20
> I don't have any objections, I welcome this additional hardening. Which=
 branch
> can I use for runtime testing? I plan to test it and give you my Acked-=
by.

The disadvantage is that the size increases, otherwise I would activate
it for all binaries.

This is one example for dropbear:
------------------------------------------------------------------------
root@OpenWrt:/# cat /proc/1200/maps
5561e000-5564d000 r-xp 00000000 fe:00 1024       /usr/sbin/dropbear
5565d000-5565e000 r-xp 0002f000 fe:00 1024       /usr/sbin/dropbear
5565e000-5565f000 rwxp 00030000 fe:00 1024       /usr/sbin/dropbear
77e89000-77eab000 r-xp 00000000 fe:00 288        /lib/libgcc_s.so.1
77eab000-77eac000 r-xp 00012000 fe:00 288        /lib/libgcc_s.so.1
77eac000-77ead000 rwxp 00013000 fe:00 288        /lib/libgcc_s.so.1
77ead000-77f44000 r-xp 00000000 fe:00 286        /lib/libc.so
77f53000-77f55000 rwxp 00096000 fe:00 286        /lib/libc.so
77f55000-77f57000 rwxp 00000000 00:00 0
7fc95000-7fcb6000 rw-p 00000000 00:00 0          [stack]
7fefc000-7fefd000 r-xp 00000000 00:00 0
7ff70000-7ff72000 r--p 00000000 00:00 0          [vvar]
7ff72000-7ff73000 r-xp 00000000 00:00 0          [vdso]
root@OpenWrt:/# /etc/init.d/dropbear restart
root@OpenWrt:/# ps |grep dropbear
 2299 root      1108 S    /usr/sbin/dropbear -F -P
/var/run/dropbear.1.pid -p
 2315 root      1212 S    grep dropbear
root@OpenWrt:/# cat /proc/2299/maps
55557000-55586000 r-xp 00000000 fe:00 1024       /usr/sbin/dropbear
55596000-55597000 r-xp 0002f000 fe:00 1024       /usr/sbin/dropbear
55597000-55598000 rwxp 00030000 fe:00 1024       /usr/sbin/dropbear
77f12000-77f34000 r-xp 00000000 fe:00 288        /lib/libgcc_s.so.1
77f34000-77f35000 r-xp 00012000 fe:00 288        /lib/libgcc_s.so.1
77f35000-77f36000 rwxp 00013000 fe:00 288        /lib/libgcc_s.so.1
77f36000-77fcd000 r-xp 00000000 fe:00 286        /lib/libc.so
77fdc000-77fde000 rwxp 00096000 fe:00 286        /lib/libc.so
77fde000-77fe0000 rwxp 00000000 00:00 0
7fcbc000-7fcdd000 rw-p 00000000 00:00 0          [stack]
7fefc000-7fefd000 r-xp 00000000 00:00 0
7ff73000-7ff75000 r--p 00000000 00:00 0          [vvar]
7ff75000-7ff76000 r-xp 00000000 00:00 0          [vdso]
root@OpenWrt:/#
------------------------------------------------------------------------

All sections are loaded to different addresses the second time, except
7fefc000 ;-)

Hauke


--nOHNdYJ1dF6wBiUZBGMV71eACj2N98OwF--

--V5m0qcaXIvrdwvxBHwDI8DDhYQkRNtDpd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl4WYU8ACgkQ8bdnhZyy
68d5RwgAmEsv4zxtjjwcbA/z2Wf9SAeSVkPVXzImr4wBELCnzLpSWpjckrqhJnbo
wI3pA7PBJL7qh7SCrqOoxbVrxGBwGWDVv66bq7oNOx/9aFcDzR9Vsh4RLjcnzd49
CROyh+S3wIHjzHU+jYGKA7fh2GogObtFzjuVbkoOCFitmjOIIDmrMi3ymqce1115
MUtUMoziuzpHASBrcOSStpO4k1OMCMChZ0zuvzIeJXbo22kTaA/mV0qlpjypZ7l1
UuBDstyKGtejxjd2nHGPl11MH35RBLshCWV1i83e5+wV7/yg6OYwhS2HovKuYFFp
V2Ij/mrLiTjnTdkr/0olAqMisUZ1ng==
=TlqU
-----END PGP SIGNATURE-----

--V5m0qcaXIvrdwvxBHwDI8DDhYQkRNtDpd--


--===============4996492454360114907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4996492454360114907==--

