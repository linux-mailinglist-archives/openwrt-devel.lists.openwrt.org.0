Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803DED03E1
	for <lists+openwrt-devel@lfdr.de>; Wed,  9 Oct 2019 01:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nk6YuTHXN7IM9idG8ea2GyFlBBZGP3MPKprNDV9Vmr0=; b=nDojbaEnKWDOQR
	AmobvlIJO48t+CzlPEGKefQskYjWJncoBzMbxKGOHFcHM1ex6nlPjyJi/NPS12B4rzTS6p+hwWNL9
	pB/AK/LuaFZcUzknltjVUc4Qk7BvMW3iBX22TQtQI5A8RUW9HvBHKVifcGFeA4KHjhbqHzo5Hb/zh
	oTpHqoJvYmy+I8pILTIKU73i+xBNjbvmzkSzBlXeEJIkTNVRc1nwf5LhdQOmBSwsMYXCzotjkbkhI
	LuBhy2Ov1AzwOReQh1t4rS9H679OP1ACv2mTrnU6nQqooNP7zMp0FBMBt6LvFr2waJ4tF2AR8mw0G
	ukwiQTg8IyooVGsqVIxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHydv-0006i9-GO; Tue, 08 Oct 2019 23:11:47 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHydo-0006hm-Qy
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 23:11:42 +0000
X-Originating-IP: 166.171.122.218
Received: from localhost.localdomain (mobile-166-171-122-218.mycingular.net
 [166.171.122.218]) (Authenticated sender: mail@aparcar.org)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 333A11BF207;
 Tue,  8 Oct 2019 23:11:32 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  8 Oct 2019 13:11:27 -1000
Message-Id: <20191008231127.23755-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_161141_006296_3D41049D 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] kernel.mk: add KCFLAGS to make kmods
 reproducible
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

Some kmods (gpio-hotplug, wireguard) store the build path in the
compiled files and therefore make it harder to rebuild the official
binaries. As the same "iremap" function is used as for other binaries,
the change is compatible with gcc7 and 8.

Tested with both gcc7 and gcc8 resulting in build path independent
reproducible builds.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 include/kernel.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/kernel.mk b/include/kernel.mk
index 73645330fe..439e910ebf 100644
--- a/include/kernel.mk
+++ b/include/kernel.mk
@@ -104,6 +104,7 @@ endif
 KERNEL_MAKE = $(MAKE) $(KERNEL_MAKEOPTS)
 
 KERNEL_MAKE_FLAGS = \
+	KCFLAGS="$(call iremap,$(BUILD_DIR),$(notdir $(BUILD_DIR)))" \
 	HOSTCFLAGS="$(HOST_CFLAGS) -Wall -Wmissing-prototypes -Wstrict-prototypes" \
 	CROSS_COMPILE="$(KERNEL_CROSS)" \
 	ARCH="$(LINUX_KARCH)" \
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
