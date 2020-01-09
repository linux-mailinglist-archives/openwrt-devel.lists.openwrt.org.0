Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 976CE1363EE
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Jan 2020 00:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eS/YQjl97bKvZzCQm9Al0aUkEJO0NJ84iZw9KfJmcRU=; b=fpf
	H4qJtksc13eh61nBV+A+QnCvkluZ4+KDQ/NbrqkHA8jmiYG6g6YLmGbeg4P8dB7CXsFuxrNtH/RIC
	+FaFPhJdI6m37IOTSA0muVEBDlfiaZsn2Lz1JPlZT88aBx1ACvURfdheGLtL/31947mMB9j2e+q5i
	i+EFH9Rnq+rLC9Gfj6VAnMqUP6fTIl0tuByuYaK7QqsYiK+aWm7msyENyFI4PemfU2QlRoiA2y/LI
	wCSsQKrxhODSpUYpZxq/T40RUofMJf0RMvZ94/Sh8QNHEQ/UzDfbEtQODz//jjtEwS88kSPc0DHG0
	8V4++Xg1yfSs4N23miarrb15x94XhWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iphNv-0002TM-J0; Thu, 09 Jan 2020 23:38:39 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iphNo-0002Sj-5I
 for openwrt-devel@lists.openwrt.org; Thu, 09 Jan 2020 23:38:34 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 47v2cK315szQlF5
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Jan 2020 00:38:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id OywimZSv0f71 for <openwrt-devel@lists.openwrt.org>;
 Fri, 10 Jan 2020 00:38:21 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <ae3b9ed4-cbc5-415b-0704-c7fb75ae5c88@hauke-m.de>
Date: Fri, 10 Jan 2020 00:38:15 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_153832_509679_60C6C4CC 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.241.56.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] OpenWrt 19.07.0 first stable release
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
Content-Type: multipart/mixed; boundary="===============5995185252661691809=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5995185252661691809==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="8ZY1TVRwg1RvYpLXvglxCZSQXmX3VlACM"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--8ZY1TVRwg1RvYpLXvglxCZSQXmX3VlACM
Content-Type: multipart/mixed; boundary="LpC0z1lowMocpvfNtEJLD2JeTtdUYMRLB"

--LpC0z1lowMocpvfNtEJLD2JeTtdUYMRLB
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

The OpenWrt community is proud to announce the first stable release of
the OpenWrt 19.07 stable version series. It incorporates 3954 commits
since the previous release 18.06.0 and 85 commits since the previous
release candidate 19.07.0-rc2.

An upgrade from OpenWrt 18.06 to OpenWrt 19.07 is supported in many
cases with the help of the sysupgrade utility which will also attempt to
preserve the configuration. A configuration backup is advised
nonetheless when upgrading to OpenWrt 19.07.

With this release, the OpenWrt project brings all supported targets back
to a single common kernel version and further refines and broadens
existing device support. It also introduces a new ath79 target and
brings support for WPA3.

-----
Target transition from ar71xx to ath79

This release provides initial support for the new ath79 target, the
future device tree based successor of the popular ar71xx target. For
19.07, both targets are still built, but it is recommended to switch to
the ath79 target whenever possible: future releases of OpenWrt will drop
support for the ar71xx target.

Please read the known issues below before upgrading.

-----
WPA3 support

The 19.07 release brings initial support for WPA3. However, WPA3 is not
enabled by default and *requires* installing specific packages: to run
WPA3 as an access point, hostapd-openssl is needed. For use as a Wi-Fi
station, you need either wpa-supplicant-openssl (station support only)
or wpad-openssl (AP + station). Due to their large size, these packages
are not installed by default, and it is impossible to install them on
devices with less than 8MB flash.

It should also be noted that many existing client devices will never
support WPA3, and that there are client devices that support WPA2 but
cannot connect to an AP configured with WPA2+WPA3 mixed mode. Please
only file bugs if you are sure the problem is not client related.

To configure your device as a WPA3 access point, see:
https://openwrt.org/docs/guide-user/network/wifi/basic#wpa_modes

-----
Client-side rendering of the LuCI web interface

The new version of LuCI, the integrated web interface for OpenWrt,
implements client-side rendering of views. This improves performance by
offloading some work that was done on the device (Lua code) to the
client browser (Javascript code)

The LuCI ecosystem is large, and not all LuCI apps have been adapted to
this change, which may result in crashes involving cbi.lua. In that
case, install the luci-compat package.

With this step, Lua usage in LuCI is reduced and LuCI effectively comes
closer to the goals of the experimental LuCI2 without having to rewrite
everything from scratch.

-----
Main changes in OpenWrt 19.07.0

The main changes in this release since the previous OpenWrt 18.06
version are:

 * Updated toolchain:
   * musl libc 1.1.24
   * uClibc-ng 1.0.31
   * glibc 2.27
   * gcc 7.5.0
   * binutils 2.31.1
 * Updated Linux kernel
   * 4.14.162 for all targets
   * Flow offloading bugfixes
 * Network userland:
   * hostapd 2.9, dnsmasq 2.80, dropbear 2019.78
   * Fixes in network and wireless configuration handling
   * Bugfixes in DHCPv6 client and server
   * WPA3 configuration support
     * Install wpad-openssl for WPA3 support
 * System userland:
   * busybox 1.30.1
   * Sysupgrade support for backup and upgrade capability checks
   * Contains urngd, non-physical true random number generator daemon
based on timing jitter
   * Bugfixes in the process manager, system message bus, embedded web
server and the configuration management library
 * Platform and Driver Support
   * Dropped adm5120, adm8668, ar7, au1000, ixp4xx, mcs814x, omap24xx,
ppc40x, ppc44x and xburst target
   * New ath79 target that will replace the popular ar71xx target
   * Updates and new device support across all targets
 * LuCI web interface:
   * Client side rendering of views for improved performance
   * Security fixes

A full list of all changes and security fixes is available in the
detailed changelog, see
https://openwrt.org/releases/19.07/changelog-19.07.0

-----
Known issues

 * Sysupgrade from ar71xx to ath79 and vice versa is not officially
supported, a full manual reinstall is recommended to switch targets for
devices supported by both ar71xx and ath79
 * Images for some device became too big to support a persistent
overlay, causing such models to lose configuration after a reboot. If
you experience this problem, please report the affected device in the
forum and consider downgrading to OpenWrt 18.06 or using the Image
Builder to pack a smaller custom image
 * Some optional GUI packages crash with an error about missing
"cbi.lua", install the luci-compat package to fix these
 * Possible Wi-Fi issues with ath10k-based boards. If you encounter such
an issue, please file a bug report against openwrt-19.07. Please make
sure the issue is not caused by WPA3. If you are using WPA3 and run into
problems, revert to the encryption settings you used before upgrading to
19.07.

-----

For latest information about the 19.07 series, refer to the wiki at:
https://openwrt.org/releases/19.07/

To download the v19.07.0 images, navigate to:
https://downloads.openwrt.org/releases/19.07.0/

-----

As always, a big thank you goes to all our active package maintainers,
testers, documenters, and supporters.

Have fun!

The OpenWrt Community


--LpC0z1lowMocpvfNtEJLD2JeTtdUYMRLB--

--8ZY1TVRwg1RvYpLXvglxCZSQXmX3VlACM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl4XuWcACgkQ8bdnhZyy
68f2RQf/cuQc1/XMhVvj4J0bcfE0hvHsVnvcgCen+vq4y9ytkVM7Jm97SUU+ZfFo
7axmR7mNvrn7EDkDnCpdpdNd+/sa7BShEyTTVua1s++HlQEXvZ5ZqpfrSOE2KGMt
FbAqLY/p4+M0rjjVC/cFRmg0cQOM6cN11+6MX4JnSXEN3rQkRxg3ca8BGuqUZIWE
l9XxtUR1nlrSuZjSUopzzHFMn3c/7+RCaW8KRsZ0Y/G76qndxLDHyCX/JsGVozIa
4UlXC9OPjnmCJ3KoBjsjCsphe+FTE5KPh4/K4/snIkTfUJAxaEiVNdgwgmFzHDdM
LbU3qD436tQqo/nibRKyfHeeVaVIOw==
=kziD
-----END PGP SIGNATURE-----

--8ZY1TVRwg1RvYpLXvglxCZSQXmX3VlACM--


--===============5995185252661691809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5995185252661691809==--

