Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE7B1A0D48
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 14:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mvQ3nfclF8eb9uXWabTEATvfFmQTJynw28H6fDM5sKU=; b=nlyQ4EtByFN9dn
	4SB+DRCvgiUuNbvz58+IxbuMWePBVbXbcSD/zAXaphPLBCQKh3TLThP4OO1Lre/PHaMNsTlXrHraQ
	uNO1aBcYYA+0qmp6GpKj5Q4wltRDGc8yWljGzupJwIy0v4FR4wXgsnTCN6DcgI4/0HnIQUVQdBfiy
	uVed6ejjM7/WY9aIUkWD9Ix0YCb9+umOUfYBNZUgflr7e3YuuizrRuUHA0yRBVSANS+DIaRx85Woo
	oLTWGWl2YYaUvWKiz/j0v4UcwwhAnfhdmezNSJdyRn9eWS+NRSy99abdph5rD85RQVYjeHYMOuRyO
	Le4YFazlyjqh9COIkSnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmxu-00011G-F5; Tue, 07 Apr 2020 12:04:26 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmxn-00010s-2v
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 12:04:21 +0000
Received: from feckert.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id 0F4F12003A;
 Tue,  7 Apr 2020 12:04:00 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Eckert.Florian@googlemail.com,
	ynezz@true.cz
Date: Tue,  7 Apr 2020 14:03:50 +0200
Message-Id: <20200407120350.1019-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_050419_582455_3C4FFD9A 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: [OpenWrt-Devel] [PATCH] base-files: add enabled commands to service
 rc.common
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
Cc: openwrt-devel@lists.openwrt.org, Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add missing enbaled command help output.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 package/base-files/Makefile            | 2 +-
 package/base-files/files/etc/rc.common | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/base-files/Makefile b/package/base-files/Makefile
index 107d53e74f..8e252153fe 100644
--- a/package/base-files/Makefile
+++ b/package/base-files/Makefile
@@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk
 include $(INCLUDE_DIR)/feeds.mk
 
 PKG_NAME:=base-files
-PKG_RELEASE:=214
+PKG_RELEASE:=215
 PKG_FLAGS:=nonshared
 
 PKG_FILE_DEPENDS:=$(PLATFORM_DIR)/ $(GENERIC_PLATFORM_DIR)/base-files/
diff --git a/package/base-files/files/etc/rc.common b/package/base-files/files/etc/rc.common
index dbe26ec3bd..7c11544405 100755
--- a/package/base-files/files/etc/rc.common
+++ b/package/base-files/files/etc/rc.common
@@ -73,6 +73,7 @@ Available commands:
 	reload	Reload configuration files (or restart if service does not implement reload)
 	enable	Enable service autostart
 	disable	Disable service autostart
+	enabled	Check if service is started on boot
 $EXTRA_HELP
 EOF
 }
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
