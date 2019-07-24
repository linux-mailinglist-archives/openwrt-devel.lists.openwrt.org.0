Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458EA74194
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 00:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zMmUsGUvP1lyDUk4+l4yTrf5A7xc9OI7MyPDSQ9gmCs=; b=N9bPjapRHe2x8P
	T7bq8OgNLsGpiBHWX9Xn8WvJzFfvzqyvvWIErrLlts5eBpTQkHZqVhTIC7IMUJOTJOQmVtWo/4hu2
	MhcL9Tbl5YbPj0hCxwuv5WXgxkEhmY7giKC2xPeM+5mAXbvwrgQ7SoQpov4Ov/UH/M4A8FSR5/Iy+
	+AgeM3VK98t3L9n7jbvHTlHEHr/TQhOEfBk+BuNxjVY6wSJWeHLeO3jTtwj7fGaWNFLAU2K1spjyK
	NNDgZ8neWZReWtmMjnpARWoyMYwQ/IJpF2dK/PUEdZjZolVvpDhLThRRQc5FxujXCTS+1iU+x2XWD
	uQifqDEyo9/5fsTesxZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqPvx-0008NZ-64; Wed, 24 Jul 2019 22:40:29 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqPve-0008Mt-6g
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 22:40:11 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MOiPx-1i3F1L0EPP-00QDZN for <openwrt-devel@lists.openwrt.org>; Thu, 25
 Jul 2019 00:40:08 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 25 Jul 2019 00:39:13 +0200
Message-Id: <20190724223913.34794-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:6QluJ6Je4Ye+NV3rBRKIauZrH+OHkFvhp4G/SPykbFW0ifnsgya
 1cH0i4hkKnfnNWMXqwNHvC/0b2a+n8x8+ZnX1b6R6Dvg6lP6wjO/NDzB5Be0+s8FD3JIZmK
 +96yrwiCYacXlkFKwBrn5LjJmOt29/6LQqC4zGZFEQM/kRGpfP1Gc1YQoLlR2BrwCFwQTPM
 2guTu/JMmxErXCMYdllkA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JuVWrnSsWxE=:wMKNKQypgpE/rAuZwjzOde
 Kt7UcQNSRkKEIYcVh1HA+OtWaAgsiRVWTUTKNK0LGOKWaITLydvTuU2E7mcwhpv3sKB1nLVA0
 fF0wUSjOYrEwNJFg2U8qt7jhiFeDzaQDG/x9ZL+NfcrwYgwsvm958/h8ZHL8FsDMYE6DGmZT5
 Qm4n/dnkPP9nX1TGO0YIqdq6E4hsTaiDjvr/64Jj8lfrFEoCxmNqyJeH+X2Qsvf1rXfKkIdtc
 0AsNAAcmT9CdwLT5OfRfONQw+fkCAHaN7ZhxPC2TvfnTyIZaXviCGIJpbKu4wVzjo9ebFzYUt
 qHG+8qt53rM4PwlLw/M4WTzjCab0WDDhaJGJ+vAVrr7eLOHzjGLOzQYIuw6kUTUqr1msNAqg/
 LwPAoR4sFZ4XQe8krQEgX8E//G0STSFs/De7+NAsz/rvCfWT9UzXaQiTi9jo13r0q/EdY/1PS
 fKaZmh/tWKtgBb9ra7O4qPbG3g//AP/WuAaQq8atOVpgNopiC9dyqgn2e8XSuEGEI21WXDuyd
 4tcYGX7kyGePrrJJLsxXNrq+0UE5BHKCmZOIhYJ2b3r2efsfquJ9x0na2z59pJgc/x4QNCQrb
 G21/k5IbLCg+KoBMdg4QNAZlEmc6x8Yzz1/tRPa9U/yKbpcm+JvPrseedWGqbHKCDPFA8r/jw
 K4d9ntGXi6BULfX4jdzNO4eFGN7L4RCKOrL6Q2cjEimfS95FAkPCj7zAB5l5EO3Md5hgZy2e0
 QfEuPCd5uYGy/LbSvlIrBU3pdNkl73hMfR/Dy/exF60GPEyXgPw5JgDMk+I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_154010_539398_CF1D97E7 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ramips: Replace backticks by $(...)
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

This replaces deprecated backticks by more versatile $(...) syntax.

While at it, remove some useless cat commands and deprecated
egrep commands.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/base-files/etc/board.d/02_network     | 8 ++++----
 .../base-files/lib/preinit/07_set_preinit_iface_ramips    | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index a2b7d1cf33..f12daf7f04 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -14,10 +14,10 @@ ramips_setup_rt3x5x_vlans()
 	local wanports=""
 	local lanports=""
 	for port in 5 4 3 2 1 0; do
-		if [ `swconfig dev rt305x port $port get disable` = "1" ]; then
+		if [ "$(swconfig dev rt305x port $port get disable)" = "1" ]; then
 			continue
 		fi
-		if [ `swconfig dev rt305x port $port get lan` = "0" ]; then
+		if [ "$(swconfig dev rt305x port $port get lan)" = "0" ]; then
 			wanports="$port:wan $wanports"
 		else
 			lanports="$port:lan $lanports"
@@ -480,7 +480,7 @@ ramips_setup_interfaces()
 			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "7t@eth0"
 		;;
 	*)
-		RT3X5X=`cat /proc/cpuinfo | egrep "(RT3.5|RT5350)"`
+		RT3X5X=$(grep -E "(RT3.5|RT5350)" /proc/cpuinfo)
 		if [ -n "${RT3X5X}" ]; then
 			ramips_setup_rt3x5x_vlans
 		else
@@ -599,7 +599,7 @@ ramips_setup_macs()
 	hiwifi,hc5861|\
 	hiwifi,hc5861b|\
 	hiwifi,hc5962)
-		lan_mac=`mtd_get_mac_ascii bdinfo "Vfac_mac "`
+		lan_mac=$(mtd_get_mac_ascii bdinfo "Vfac_mac ")
 		[ -n "$lan_mac" ] || lan_mac=$(cat /sys/class/net/eth0/address)
 		wan_mac=$(macaddr_add "$lan_mac" 1)
 		;;
diff --git a/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips b/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips
index a395956d04..003a4dda7b 100644
--- a/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips
+++ b/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips
@@ -4,7 +4,7 @@
 #
 
 ramips_set_preinit_iface() {
-	RT3X5X=`cat /proc/cpuinfo | egrep "(RT3.5|RT5350|MT7628|MT7688|MT7620|MT7621)"`
+	RT3X5X=$(grep -E "(RT3.5|RT5350|MT7628|MT7688|MT7620|MT7621)" /proc/cpuinfo)
 
 	if [ -n "${RT3X5X}" ]; then
 		# The ethernet switch driver enables VLAN by default, but
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
