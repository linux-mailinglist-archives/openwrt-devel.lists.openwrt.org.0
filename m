Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13306C09A3
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Sep 2019 18:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6jULXxiFnOrBJoNgKL3pZ6VZQaZbesVSkUaXK4O9Lo=; b=cOX4pwlIff3zBj
	Rlbn/aJ8MD42hZy+pS9cJxy0vvFMdzZBudhr7l/n8Zv8fBF9HzT7twOSZg4zG5G/YsvhOxBk4f/Te
	Ub7NxduzltjVAM3Q5IBF+aUWEzzKWWjf4XVo6KmX1lgg9c/tCvRC5xTufbOn8kc6hYgCLqslfvE2D
	hjRaH9qehDiuu+rAlsDe4wpME90+z1oIU4LTxDsZgs6WXwP6eKY1gTNJlm0Nw94i0qwiV/kmfieBp
	AUIRf1l7TKChW01XNJFIH5U7ibPq5LuXvs8o9YeQI0VnKM/AZAsicbCSOKCerGVJC5GGQCLdLL/ND
	7itNfF5YgUCI0vGGXUOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDtCE-0000XT-QU; Fri, 27 Sep 2019 16:34:18 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDtC6-0000Wu-G8
 for openwrt-devel@lists.openwrt.org; Fri, 27 Sep 2019 16:34:13 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 4FF8F3CB8C;
 Fri, 27 Sep 2019 09:33:34 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 27 Sep 2019 09:33:22 -0700
Message-Id: <20190927163322.10386-2-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927163322.10386-1-lede@allycomm.com>
References: <20190927163322.10386-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_093410_536861_18FC19D0 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/1] ath79: Restore GL.iNet GL-AR300M-Lite
 first-boot connectivity
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

The relationship between GMAC0 and GMAC1 and the kernel devices
eth0 and eth1 was reversed for many ath79 devices by
    commit 8dde11d521
    ath79: dts: drop "simple-mfd" for gmacs in SoC dtsi

The GL-AR300M-Lite is a single-port device, with the "LAN" port of the
GL-AR300M board unpopulated and its sole port now referenced as eth1,
as a result of commit 8dde11d521. The device was unreachable on
first boot or fresh config.

This patch changes 02_network to utilize eth1 for initial configuration
of the device, so that it may be reached on first boot or fresh config.

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 target/linux/ath79/base-files/etc/board.d/02_network | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 15371a1dd9..12eb11825f 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -19,7 +19,6 @@ ath79_setup_interfaces()
 	devolo,dvl1750i|\
 	devolo,dvl1750x|\
 	engenius,ecb1750|\
-	glinet,ar300m-lite|\
 	netgear,ex6400|\
 	netgear,ex7300|\
 	ocedo,koala|\
@@ -56,6 +55,9 @@ ath79_setup_interfaces()
 	winchannel,wb2000)
 		ucidef_set_interface_lan "eth0"
 		;;
+	glinet,gl-ar300m-lite)
+		ucidef_set_interface_lan "eth1"
+		;;
 	avm,fritz4020|\
 	pcs,cr3000|\
 	tplink,archer-c58-v1|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
