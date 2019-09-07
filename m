Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1509AC729
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Sep 2019 17:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qrdganbO2CACcCPKbIjWZiJXQTWPBlEMDZ9MQQUOMMY=; b=aC/d6wYT85G52OpcGGzyj4BnnJ
	1ugNSb08dzkSB4/mDx13ZonQEVl1AMkDmdTNZf/njJ7Yek0bUu/3DagA6Q1myN+O0pZyX7skmz7mP
	PE93WF7IqBDTUY2/E5gLRe9GFsFLvaCv2mBUiMx+YvoCqYkAKocl5G2l5ZASa5wy8m9jDYrKyyUbH
	VASgDN56A4dOD7Psl6fbryHrLmGvlgQcmxvcxPeNWDclHRmhGTSrKIFEq7zOoIzY3LRrcoG3ha3eL
	WMskYZZlDbZRbfMuc+Nnl2eybUaq9ItA51solAB+MTi0XqP6aGnEDdJ/LYijOm+2c+cvwjLdnWckk
	j0q/V6Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6cIa-0005RZ-3y; Sat, 07 Sep 2019 15:06:48 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6cHY-0004zn-MP
 for openwrt-devel@lists.openwrt.org; Sat, 07 Sep 2019 15:05:46 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N1x2P-1iHB1f2nc1-012Gnr for <openwrt-devel@lists.openwrt.org>; Sat, 07
 Sep 2019 17:05:38 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Sep 2019 17:05:34 +0200
Message-Id: <20190907150535.3373-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190907150535.3373-1-freifunk@adrianschmutzler.de>
References: <20190907150535.3373-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:w4UoBUfSTYew2fwcI9w+OQ9cG3j6zEspCoZdoQwQD+6x/y+iVR2
 A0ZXOZ3ImluCxh5Mqsdk3c0Y7FEaHS1mMHfIXPYbMX1VSUn+ApGQG2AUWf61TRWHYnSODxL
 +xH+CEcdJDYBSVlD8GOEd0EsFueqLECx/06QngHWk9u9/ftSZIE04mUPbXct3jR570GWE8r
 JmKMOX/M1cTlVtyXT1nzQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cg1Bw96PBzA=:BWllAYzVOLzqlrzlnpRw3W
 CX2Akhe7c3u2JYqLEusEimH/3cfGcJgWzWPzKQwzbBbqPYWQyq+3O+b5nsGvvdflSvJGHKiAR
 eEgJv6873F4HQFnZFcxwFFOdWHQij9sNFpS7UBVg9Qbih0OlbrWQqBdM7TVQOdW0xEs2iEqJp
 GsmpfemGkqx53ent34w4eTcUWlf360Q3eHKdqg/Zx+Znf2uRUZHmXyRO4OcFu1ZT3UI5i3v+A
 ZNPAAVfV6LjqO+9U3KaaCffpdKUtgiJWMmG+/1ArzKmL/pN3+dpDfFuSbjMXHxqGjCEDtaSU+
 /ItR8EOrVFSSnS+I6p50A+Qw4jLhcmUj8v9zWM+DVmstROxb+hUKCie18XER3hNno2o47MwEa
 l8/G8UXe4IEX8CxQDazIYWbKbL3reKshFpg1v7VyZ0TruWDOJsnJ4hxOG3XI1K5OFd10nHh6o
 ml2+Y59ExC11AkSS06uF0nwsDCb9TwH4pPs6SFO5idzpptWk13RwX26lJvCHIvibKmkNTDUfh
 p8XLm4qN3jMHYorgzMyVyYtuUTsOSsHRRoyyix6lRkHYDHY9ZKIZKdPztpY35Um8/OJ95BGnC
 xEg6c+XOhWmo8I7OsTFshExAmUnZv/5vXQyR6J2HrHJlAn7/ZEq1YmPnym+rpg/yAb3Ylw8c0
 mMCz9l1vj+t770VBN6Gkw4ackr/MXuJJOpHTO0aLwHkNzZYf33/jG+Pyk6TGFFNRZXvjWxns4
 Pvz5rHHUB9fpXV8De/6VKMKROP5yyozWGVE9hySPfMW0b2hVViyIC5BWf0GciuQWUULHlzY+r
 55TbuAffvX/kHMrqcm0Eff1j5wHPQKPxexMkjediH2Ark2sCVtwdnNQ3GBnEIFNOkX6AO/Y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_080545_017036_56327B77 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07 2/3] ramips: fix duplicate network
 setup for dlink, dir-615-h1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

In 555ca422d1cb ("ramips: fix D-Link DIR-615 H1 switch port
mapping"), port setup for dir-615-h1 was changed without removing
the old one. This was working as the new one was triggered earlier
than the old one.

(In the meantine, changed sorting during ramips rename patches
actually inversed that order.)

Anyway, just remove the wrong case now.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
(cherry picked from commit e35e4a996e26f17b69d200505ecea78af96a2704)
---
 target/linux/ramips/base-files/etc/board.d/02_network | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index f3965a9507..7dc82d4446 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -87,7 +87,6 @@ ramips_setup_interfaces()
 	dir-300-b7|\
 	dir-320-b1|\
 	dir-610-a1|\
-	dir-615-h1|\
 	dir-810l|\
 	dlink,dwr-116-a1|\
 	dlink,dwr-921-c1|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
