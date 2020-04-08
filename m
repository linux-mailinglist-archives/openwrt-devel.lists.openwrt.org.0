Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33A21A1F2D
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 12:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/K7wHFYrlsBTLXBGniYyW6Pw1ifzn7CTscd/6ZRnHvk=; b=ThHkMpRcst6gug
	jXVeS/V3QViycsTYN+Qd2Wsauw34qUFKpWqLfRffxFamEWtz3onLgRku6qgDwi3PLHAFex8pBzKr7
	qT8PaqIlJHyj0Si/gL4q0uvw4EtTWrJGwkqRAwI53H8PPsYkyFkWvgu5/ndCJYFGj6SEbBFreVC8D
	aMkq4CU368Ka07LYZL60stMTtNaY4J1hTxjCkzsjpBVn8yBqY08dEXeLL+hpAhNleI4O30/ocZVcg
	ZMcxl1ilbpAZ2vBraINTSGGpIVwb2+8fT7H42ks607foRchwBjtlTWfxoEEMmT9E/MCVaipo03UHP
	tqiKJkQMe0nMAo3yaLjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8Gd-0006xz-OQ; Wed, 08 Apr 2020 10:49:11 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8G0-0006Y2-N1
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 10:48:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id C8A0E3A049B0;
 Wed,  8 Apr 2020 12:48:30 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VgkxWFhzYnyx; Wed,  8 Apr 2020 12:48:25 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Chuanhong Guo <gch981213@gmail.com>
Date: Wed,  8 Apr 2020 12:47:13 +0200
Message-Id: <20200408104716.3644779-2-t.schramm@manjaro.org>
In-Reply-To: <20200408104716.3644779-1-t.schramm@manjaro.org>
References: <20200408104716.3644779-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_034832_890583_24F679C6 
X-CRM114-Status: UNSURE (   5.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/3] ramips: mt7621: add LAN port mac
 address to rbm11g dts
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
Cc: Thibaut <hacks@slashdirt.org>, openwrt-devel@lists.openwrt.org,
 Tobias Schramm <t.schramm@manjaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit adds a mac address from the hard_config partition
to LAN port of rbm11g.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
index bcfce33a16..554573f30e 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
@@ -149,6 +149,8 @@
 		port@0 {
 			status = "okay";
 			label = "lan";
+			mtd-mac-address = <&hard_config 0x0010>;
+			mtd-mac-address-increment = <2>;
 		};
 	};
 };
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
