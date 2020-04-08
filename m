Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3551D1A1F2B
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 12:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFgm06pEWh+zjpKMq+sXmRb7B1kTkKSo4s3UqQ/OjIk=; b=MS+BSND6+hNi7r
	r7mQbf+563hX2iMc40F8s4MRzWsPscUPaM26AKQ6Cy2E1ciCAtn6lzLohHt2ZpeCXTculugA7bRbJ
	+9IjvDQDdyfvHmuqB/aFhNmhFibK13vvO2ZRNNdQFW/GGBgW0k7zEyfY0EynneyCyxLJOh3zerwdV
	72KJAxMVXxgdd6BKfbD9Py+b0T4ZGe+bqI8/LRbPUeBcSDEB7auRvLlq9jO2Pelj+72CO19Jw7gpl
	ZVc0ZH+klN9BAiHMgAIV1H6BEIIpzAlH/VzC2x7UFvuTz6mxPfFIHWaD7hV4CzhmMH2ykgZUq7Cwm
	nabtyOCTVoPgESbx3WQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8G7-0006ZF-U3; Wed, 08 Apr 2020 10:48:39 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8Fz-0006Xt-GD
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 10:48:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 73B103A01E31;
 Wed,  8 Apr 2020 12:48:28 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 84GNnMXmr3US; Wed,  8 Apr 2020 12:48:26 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Chuanhong Guo <gch981213@gmail.com>
Date: Wed,  8 Apr 2020 12:47:14 +0200
Message-Id: <20200408104716.3644779-3-t.schramm@manjaro.org>
In-Reply-To: <20200408104716.3644779-1-t.schramm@manjaro.org>
References: <20200408104716.3644779-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_034831_685099_BE0AFA1D 
X-CRM114-Status: UNSURE (   5.01  )
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
Subject: [OpenWrt-Devel] [PATCH 2/3] ramips: mt7621: add label mac address
 to rbm11g
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

The rbm11g has a label with printed on mac address similar to the
rbm33g.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 target/linux/ramips/mt7621/base-files/etc/board.d/02_network | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
index d73305981f..f654574e14 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
@@ -90,6 +90,7 @@ ramips_setup_macs()
 		label_mac=$wan_mac
 		;;
 	mikrotik,rb750gr3|\
+	mikrotik,rbm11g|\
 	mikrotik,rbm33g)
 		label_mac=$(mtd_get_mac_binary hard_config 0x10)
 		;;
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
