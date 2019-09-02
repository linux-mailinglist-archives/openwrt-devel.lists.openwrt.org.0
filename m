Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61434A528D
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 11:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XEe8mloajMuWgnkOXHPwIE5OVGWjGAMovRjZx8+OQao=; b=sTKil+MF3DJ/4U
	zhZu1C7tm/3KXja30lJL5yCXracUlm0PrDJM5KvqKkAQitRgOe6YnA3FTRMAVg+gqIZqEVK+fjBXu
	OpLJDUh4hxCKFVaER5+xDJVmuPL0IV5wcWI915yXkiMFeZa5lBbhJeFb6zX7SHiejxOnCo01xFSal
	dOF3Cil05yW8udoNRBrWfEkqGntiAghuKEUrdpi6gzA89GNyX5DeX5XqYYNZwPUhB7nYMo038XFzG
	Wvkj9A7Trl1kVpcy6xJaKmTYHRwF2RjWOZhzg8HwXd0iEeN4ZzvQN0eGbqcEILBq6z4+TSquTKzZD
	Jnb5+QBdvoBnrsGhRXcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iMP-0001xM-Lx; Mon, 02 Sep 2019 09:10:53 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iM2-0001wy-40
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 09:10:31 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MqsL3-1iZfSz3aXx-00mu6K for <openwrt-devel@lists.openwrt.org>; Mon, 02
 Sep 2019 11:10:24 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Sep 2019 11:10:21 +0200
Message-Id: <20190902091021.1083-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:NFRXO8eyFzHPSGXnGmV7blSFT3sSBi98PjImc6W/+oOu8WZhmxG
 de9t/cuKOozfJxqocOWPMy7rGfEIKnv+ItlzZrUegUILtjDabG4EDEdxGEzFxVVwyZnJuet
 oJTR5DTipKHdiS0K5EdQW/fWlhC3b3tri4+4sx5iBvdGAGbHsFpt6ebxqjwPLtx/wWYeXTi
 bHtjZb2fRncZAVpkpkLMg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XPE3EE31Zrk=:fSvKc7sABRZrqQGyZEHVqB
 FY+q/0NR39TKe4ejRL7FKdGssUVtIommqOukkHsIihqEwKbRi+1u8LUy2eQpaIye1SzWU3lQ1
 +H8ndI7XNzwL+eK5jKpU7WJXEeJ1e2K9+n3U+zjSorr6ZoaAgZNkOCSaD3+sB3wIz6sRrKFS2
 wm/mfifHYZxW91xbXb0zi2KZSU8sKDEk/TwgsC3wmBdpzDbXsGjaXmCwy6SWaDwin51HrA6Fe
 tgd2JaK8lMEz8hmvo43ZoAKCduC1fUgfm/Ml94kh0h8qsGNOpAsJYKKbDoWgJQsuuySNp4qY5
 dbByXRbASw9/efT7HErXNQaa4yBGmLYN4e2K1ppLfz+bCRm+NNG9A3uIlvvnyPBPR+qp7IV6y
 8tTzLDkomqRWgViPYvaSFYskVD68jUjelvNXr6XUEmKdEN4GM41RrOvCczXHvpZWWAJvUDVd5
 pZzW8ouKi09hFryppWHzLARKzr+CnbCT93vLZSAxxnPAqW5rV6SPPhEUiGG7vum6IiOuS76RS
 3KAFW5eb3jjCLB0Bsoyx4Eo3SWL7rX5pFdfSChVnA059D4XpmaE8L9mbjPG9IRjvOdDKALE73
 TBbTB4IAE0SUhUshFhIbMy4Vw7hqlbtIiiJeX4nW0WWIP24e+5tPouUyO5JxvhtO68/wm8pEl
 oUqjrXiGEw6g6I7hi7IVNhh/IW2wJ36YCtA2MPQus+G3fJ/Bnw6Ku2E9sTjIPFOXQSFAT0VuP
 H7nUrJGbuFlsz+ynm+xGXn8gRbXmwTmL7CZeGEVcrbIM1DDibO/fuGJbX3DWrj3FcNc9kw2bC
 dYzYSB0f3xS/BJzbTzcfCa7GEmZy5um96y8spp53xaB2I9Joe0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_021030_457509_18A9C241 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] ath79: Add LED migration for several Archer
 Cxx devices
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

Several Archer Cxx devices were using board-specific LED names in
ar71xx, which were changed to "tp-link:*" in ath79.

This patch adds migration for them.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../base-files/etc/uci-defaults/04_led_migration  | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration b/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
index b1afd0ee76..9059b8d5b5 100644
--- a/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
@@ -9,6 +9,21 @@ case "$board" in
 engenius,epg5000)
 	migrate_leds ":wlan-2g=:wlan2g" ":wlan-5g=:wlan5g"
 	;;
+tplink,archer-c25-v1)
+	migrate_leds "^archer-c25-v1:=tp-link:"
+	;;
+tplink,archer-c58-v1)
+	migrate_leds "^archer-c58-v1:=tp-link:"
+	;;
+tplink,archer-c59-v1)
+	migrate_leds "^archer-c59-v1:=tp-link:"
+	;;
+tplink,archer-c60-v1)
+	migrate_leds "^archer-c60-v1:=tp-link:"
+	;;
+tplink,archer-c60-v2)
+	migrate_leds "^archer-c60-v2:=tp-link:"
+	;;
 tplink,archer-c7-v2)
 	migrate_leds ":blue:=:green:"
 	;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
