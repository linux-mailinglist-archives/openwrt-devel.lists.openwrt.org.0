Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1FC9164C
	for <lists+openwrt-devel@lfdr.de>; Sun, 18 Aug 2019 12:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GTeJFgoSTmURY/2mrs+RadfVUPl0fcH9dE08Mn6SSTI=; b=Y8G
	Mjj3gTxurOfL+sVQZfj3pV3XLztV3q604WRsv4afRsg8j/LJunYX3//rpxJsVwWYdwbT+AIH2gPBC
	obu+ad59zYoBdQ63OHDnxS+gNKdFUG/+I/trLHuRrwji8ShknoH7FbluuZlueN01cOrDNxCE2DkP0
	ViCtOh7YiHiZYRgFn2PKUZrSFQUEpU0QZHuOQo8UT7eF/VhMM2nCU9L8BVCD3vg6QJMuCUHwWfV5a
	E/0cwMgCDAIcad12ZJkrjrxGa0sjIaCDb/QRPp1VHPPYpfkNX1xQlim2iT3UQ7d/h1HV5jpohl5F5
	1KkLNlwNc5cZtZQb5DmMwV+8pI5umCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzIt0-0003DT-DG; Sun, 18 Aug 2019 10:58:10 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzIsr-0003D5-72
 for openwrt-devel@lists.openwrt.org; Sun, 18 Aug 2019 10:58:03 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M3lgL-1hzZjN33fX-000wZk for <openwrt-devel@lists.openwrt.org>; Sun, 18 Aug
 2019 12:57:54 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Sun, 18 Aug 2019 12:57:54 +0200
Message-ID: <008901d555b3$c9a02400$5ce06c00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdVVsikyPhWm+J4PS5+mPpgx+jzkEQ==
X-Provags-ID: V03:K1:GbvcV+PuhA82OQNreO5ju1BTod8J45FUCttgfbknrBy+T3YZalV
 uM+SDa36oF7RPOc3xNc4veMU9s3ormT09SOfb7MxCCP3vcfB6HnD1BdzTdzIpJHLtTcBfaw
 7XOqLRfkvIEGK63YpjO5IzK0scp8QnJWlq2l1Pr6lMQHBlYXayX6/yyg4rp5dVgtHPXWK/f
 uCkCn2z0F4KoIduAlB4Vg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:si66Y0RmdH8=:xbzOR+pm/U+eoDuBp8IDfP
 34k/xogxYhQEoQC579XOao3aYb2v624yaPTbMy3TNWdhdxNaPcZ25EesCE6fqDWyv+t0ldPpk
 PrPsbOTDT54FS9gMDPwUX72bd7nKKVoSYIeTQyf/xJnG/XwHBhlg0wHxmLk48Zzkz6Gmw9oNm
 U8OBERBOIh+2s+Ced59bYhBN4b0/SmeZiHtxN79F6GSDp9bY/SPhhEZwR5LOYXHIlsuZ8xxli
 jdg5Z562UxP259iJVakBBa0s4fvzIm5C7XL13DR5tIfs6Qjb21RSTknG8YQwl+mn+SCFNERyf
 DJQH6AIUS4iOKra0QvDtEllkk+izR+IgeSprRVia15avWyC+85YTcLS0Y56n3kYT/UA7igr/P
 Hg13wKiAIyV7xqq+XedynLRcK2Fo+6DeSUUDElJnJaBQavzSnMDhen8yzCMGESjFhvtc78FAu
 NMke8nD8vVTamCgeWZz7IzbcQsfd6Qamnur+P7butd0c69EjfnYoHZnRwE4LnKwHKA44oGmBC
 kRRYO8Wu9xIRgv4F9tjHkG/zegIsNT0eZjUlTTfZyLjif+Qd+85XsdT9hn4L37oeyp9GYKYMh
 LcBNkw1jPYB+Vn76Fi6f4Vyf/GyfOkSFIxuIvyjqT1uDqB1tknK3J+87C5Tz3qTB6sCcHN3Ce
 r87x1+4fnj1LkrnId6ZwaF5DKxw0NqW3iQrnsozqC6AADClPW7i7FrTTaPqyUYSJ0kZy8/tv5
 m/D/sx6+lW0GFs+W9HeYKe1MBYdECAvRY76xRxxTZM8cZEJvZodVK4lINHI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_035801_552357_88E88446 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] Old GitHub PRs
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
Content-Type: multipart/mixed; boundary="===============6933463853265368227=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6933463853265368227==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=JpC5624Cjxmfap=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=JpC5624Cjxmfap=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

since GitHub PRs have piled up again, I have invested some time to look at =
the old ones to categorized them.

There are some really old PRs which lack any action by the author for sever=
al months. I would be inclined to close those (i.e. have them closed), so t=
hey do not enlarge the list (and consume reviewers' time) and it's just a c=
lick to reopen if the author wants to follow up again.

Despite, there are some old PRs which are waiting for (core-)developer resp=
onse also for several months already. I have just collected those, too, in =
case someone wants to take action without having to scan through the whole =
GitHub list.
I included some more recent PRs without any developer response as well as s=
ome special cases at the end of the list, too.


**No response from author for more than 3 months**

https://github.com/openwrt/openwrt/pull/750
brcm63xx: add Comtrend VR-3022eu support

https://github.com/openwrt/openwrt/pull/1338
fix rtc ds1307 driver initialization

https://github.com/openwrt/openwrt/pull/1451
kernel: Initial DVB support

https://github.com/openwrt/openwrt/pull/1456
openwrt: adds governor and iosched kernel config option

https://github.com/openwrt/openwrt/pull/1477
Device support for VGV953 (Speedport W 921V)

https://github.com/openwrt/openwrt/pull/1792
firmware-utils: mkchkimg: fix flash from stock Netgear firmware

https://github.com/openwrt/openwrt/pull/1905
tools: add zsync

https://github.com/openwrt/openwrt/pull/1908
base-files: fix sourcing of hotplug scripts in hotplug-call

https://github.com/openwrt/openwrt/pull/1934
ramips: add Asus RP-AC56 support

https://github.com/openwrt/openwrt/pull/1952
ipq40xx: easy install for ASUS RT-AC58U/RT-ACRH13

https://github.com/openwrt/openwrt/pull/1973
tools/mkimage: workaround version.h build failure

https://github.com/openwrt/openwrt/pull/2005
curl: fix libcurl undefined reference error

https://github.com/openwrt/openwrt/pull/2015
dnsmasq: conflicts with odhcpd-ipv6only


**Waiting for review/response by core-developer (> 3 months)**

https://github.com/openwrt/openwrt/pull/1261
netfilter: separate IPv6 relevant kernel modules from IPv4 V2

https://github.com/openwrt/openwrt/pull/1402
fstools: add lsblk & eject for block-mount

https://github.com/openwrt/openwrt/pull/1419
ubox: subpackage modules utils

https://github.com/openwrt/openwrt/pull/1449
kernel: Include kernel magic in all kmods

https://github.com/openwrt/openwrt/pull/1491
fix compilation on an x32 (amd64ilp32) host system again

https://github.com/openwrt/openwrt/pull/1518
kernel: build kmod-dma-buf properly if required

https://github.com/openwrt/openwrt/pull/1519
kernel: add kmod-frame-vector

https://github.com/openwrt/openwrt/pull/1596
openvpn: use hotplug.d

https://github.com/openwrt/openwrt/pull/1639
ramips: add MT7530 switch port-mirroring support

https://github.com/openwrt/openwrt/pull/1771
brcm63xx: Add support for D-Link DSL-2750u rev C1

https://github.com/openwrt/openwrt/pull/1812
dnsmasq: pass DNSSEC flags only when compiled in

https://github.com/openwrt/openwrt/pull/1828
treewide: Set 32-bit or 64-bit by target on 4.19

https://github.com/openwrt/openwrt/pull/1831
treewide: Don't diverge from upstream default HZ settings on 4.19

https://github.com/openwrt/openwrt/pull/1857
mkchkimg: use higher version code

https://github.com/openwrt/openwrt/pull/1883
U-Boot: Add support to board ARV7519RW aka Livebox 2.1

https://github.com/openwrt/openwrt/pull/1885
Add some extra Kernel config parameter to package/kernel/linux/module=E2=80=
=A6

https://github.com/openwrt/openwrt/pull/1911
dnsmasq: fix running of dhcp user script

https://github.com/openwrt/openwrt/pull/1912
build: add CMAKE_PREFIX_INSTALL and CMAKE_GENERATOR variables in cmake.mk

https://github.com/openwrt/openwrt/pull/1935
ipq806x: add support for Qxwlan E5200

https://github.com/openwrt/openwrt/pull/1988
ramips: fix vlan retag on mt7621

https://github.com/openwrt/openwrt/pull/1996
toolchain: glibc ldd env path fixup

https://github.com/openwrt/openwrt/pull/2022
wwan: updating the wwan protohandler to use more then one interface

https://github.com/openwrt/openwrt/pull/2054
bcm53xx: Add support for Arris SBR-AC1900P

https://github.com/openwrt/openwrt/pull/2059
bcm53xx: Add support for Arris SBR-AC3200P


** Waiting for _initial_ review although not older than 3 months (but > 1 m=
onth) **

https://github.com/openwrt/openwrt/pull/2095
lua: add lua.hpp to InstallDev

https://github.com/openwrt/openwrt/pull/2115
Restart network if package netifd upgraded.

https://github.com/openwrt/openwrt/pull/2129
tools/cmake: Update to 3.15.1

https://github.com/openwrt/openwrt/pull/2132
toolchain: Use binutils 2.32 by default

https://github.com/openwrt/openwrt/pull/2160
[RFC] sunxi: single ext4 partition for SUNXI, Micro SD card and eMMC(Nano P=
i Neo Plus2)

https://github.com/openwrt/openwrt/pull/2173
scripts: add target-wrapper.sh

https://github.com/openwrt/openwrt/pull/2258
hostapd: radius server support for WPA-PSK


** Blocked by waiting for other PR **

https://github.com/openwrt/openwrt/pull/1370
Rename hostname and ssid with EUI of mac address
Waiting for https://github.com/openwrt/openwrt/pull/2159 (treewide: Provide=
 label MAC address)

https://github.com/openwrt/openwrt/pull/2229
lantiq: split up DEVICE_TITLE
Waiting for https://github.com/openwrt/openwrt/pull/2250 (build: introduce =
ALT vendor/model/variant)

https://github.com/openwrt/openwrt/pull/2275
ath79: specify N and ND subversions of TL-WR941 with ALT0_MODEL
Waiting for https://github.com/openwrt/openwrt/pull/2250 (build: introduce =
ALT vendor/model/variant)


** Can be closed as patches are obsoleted **

https://github.com/openwrt/openwrt/pull/1704
[RFC] ath79: add support for TP-Link CPE510-v1
Support already merged


** These PR had a vivid discussion which ended > 3 months in the past. One =
might either want to pick it up again or close the PR. **

https://github.com/openwrt/openwrt/pull/1814
[wip] ramips,mt7621: ubnt erx-sfp poe gpio export


Best

Adrian

--=-=JpC5624Cjxmfap=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1ZLy4ACgkQoNyKO7qx
AnBfoxAAg9l1nJzmVBzX1TXywXHT8p7sFB/mUPv9pMdiopRQDEmy8hxmGvj8QJ2W
EpFBtZuBkoCFx8gWRAnoCkhAtkhRIZqdlh/uQ8AvdQqKw2ay/S+tqGm7Nhejjxhd
r9tpqsfWiKX7U0FLIZXYJpCkQGCjAZ2iiwmhACDo82+QAeKkhTrs35XqgjIF21iv
GLvdD/UBpK53OY+VEFRXZ5w24J9CukIIx8rrDh2AXw63dBf2VYKU3YLmwcKgTsrG
phjvtD1jufZwHmvtxGOxeijqNtF8HVA2sHm91y4A4tIUInaoZrDXuHVhEq7LUjr7
Xj6MS6QdZw9GofFE+r0SYn6AQ1tZ6zhASGk4Rb+aBqRD3WMH3mO91kL1GkRO98H3
bfSjZJx/TN+hCoHqtZyIRZOWR+NCkhURflMIU0D+eMwButgsLJvFTEbGeNh+h12S
7Z4743YHCRjzFk+M4oCwE8Y1ivsayJZ5JYIbRpmkZxeHR2nJ0w5auFxW1/9vta9y
5bQOXYvNLIuE0oD3A/u8r2vHI7E1LfGXLA8hmS1LhSGh3Yz7s/mgDq+vC7YdL/rE
bCzGVU+joMGz4XLIC/dsGy8vZjqpdrfsj45zgVCYV6QeAUAwtmZP7h8mU/Chln/R
kriOYwZTFUl7olyrK/22xTvHirwA3ed9VLGB4hgTCuKzAf3aBHU=
=Uqjp
-----END PGP SIGNATURE-----


--=-=JpC5624Cjxmfap=-=--



--===============6933463853265368227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6933463853265368227==--


