Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7165EC9F9
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 21:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p+bOHwPiGC8mrktM6se+0p+gIZeH/rYpgcaajYwQiOI=; b=j7o3ZcTLb/Hd5Y
	o4CsNY7Kw9RxxOQRmKaExyPoZGJSUBSzAH0/FnXAYRfjIdz7r50rAa0/scuVTnPvYhCI/5MJkp6PE
	gYU85m6uL33uP9K9kQigI84b42NmX/uUuYmWUU8s2CFXhlLdpYec+1mln4yMcf/WjxvypgKLV+LkK
	pqubNd1N0DhuQquJCuE+9/zUNFrTkSRkvvCWrWKrHkS89zKSVtcf6Er/5zYB6vMLGrOcadbYm/0v3
	b8HJFD3P6MajnEx7wClF/WnbVsIOHJLsxmQLn5behuaBtB03SOcIR5pEP+kBOWPy6dcWpDDLE2xVv
	P1tekNyOng2ch172F4zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQdx2-0005bl-DV; Fri, 01 Nov 2019 20:55:20 +0000
Received: from mout-u-107.mailbox.org ([91.198.250.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQdwU-0003uX-0j
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 20:54:49 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 474ZF76rlmzKnh3;
 Fri,  1 Nov 2019 21:54:35 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id RLlBUrldLfdy; Fri,  1 Nov 2019 21:54:33 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 21:54:13 +0100
Message-Id: <20191101205416.17599-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_135446_222981_9A6254B3 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/4] dnsmasq: Activate LTO
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This decreases the binary size when PIE ASLR is activated by 8% on MIPS BE.

old:
202,020 /usr/sbin/dnsmasq

new:
185,676 /usr/sbin/dnsmasq

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/services/dnsmasq/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/dnsmasq/Makefile b/package/network/services/dnsmasq/Makefile
index 5c114eb1c6..e86b031e3f 100644
--- a/package/network/services/dnsmasq/Makefile
+++ b/package/network/services/dnsmasq/Makefile
@@ -127,8 +127,8 @@ endef
 Package/dnsmasq-dhcpv6/conffiles = $(Package/dnsmasq/conffiles)
 Package/dnsmasq-full/conffiles = $(Package/dnsmasq/conffiles)
 
-TARGET_CFLAGS += -ffunction-sections -fdata-sections
-TARGET_LDFLAGS += -Wl,--gc-sections
+TARGET_CFLAGS += -flto
+TARGET_LDFLAGS += -flto=jobserver
 
 COPTS = -DHAVE_UBUS \
 	$(if $(CONFIG_IPV6),,-DNO_IPV6)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
