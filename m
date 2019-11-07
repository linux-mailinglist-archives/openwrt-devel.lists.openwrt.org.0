Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98D6F2CB9
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 11:41:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rMXtURUHjJ+V9QhaJ/E1pzvCe4wDbxl4T40kNSggENk=; b=pOYYnl66so9k7L
	WaIiMTQ5LXxBhmKUwgSRZS/7b7HqVoVKxsloeBw4rWZMVOrFsgm0yvJamfByviEyCDzyzYL50+9rf
	WSbuxtG90PgBHuzgVW3PYplSD7QEL21XV6OrPxTA4bq+UG8DKAzv2iDsMco2xAI+MKj2zujlvWcUi
	C3/qTFvYvCtRssCOanYokab0eu4tWIVvwaydpMr3tSq38J9ZYtAq2+cjjnMrepVg/urZnbZReWbzG
	wOwN78hzbn4GNOqf8GHcsEzHZ5BRZw+Hd5utq/XoAn7tuRbQ5YrbDapwK+xj79f7paE5TAFiTtEtk
	Cfh2U2HPlzATHDASvqaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfDj-0004l2-9F; Thu, 07 Nov 2019 10:40:55 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSfDT-0004k4-TM
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 10:40:41 +0000
Received: from feckert01.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id E2ADD200C2;
 Thu,  7 Nov 2019 10:40:36 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Eckert.Florian@googlemail.com
Date: Thu,  7 Nov 2019 11:40:31 +0100
Message-Id: <20191107104031.31543-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_024040_216590_F7AFE7B5 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 2.3 TO_NO_BRKTS_DYNIP      To: lacks brackets and dynamic rDNS
Subject: [OpenWrt-Devel] [PATCH 1/1] uhttpd: add enable instance option
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

With this change it is now possible to switch off single instances of
the uhttpd config. Until now it was only possible to switch all
instances of uhttpd on or off.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 package/network/services/uhttpd/Makefile          | 2 +-
 package/network/services/uhttpd/files/uhttpd.init | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/package/network/services/uhttpd/Makefile b/package/network/services/uhttpd/Makefile
index 85b7be7607..2d1fbf4492 100644
--- a/package/network/services/uhttpd/Makefile
+++ b/package/network/services/uhttpd/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=uhttpd
-PKG_RELEASE:=4
+PKG_RELEASE:=5
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/uhttpd.git
diff --git a/package/network/services/uhttpd/files/uhttpd.init b/package/network/services/uhttpd/files/uhttpd.init
index 6322473b97..869f79bea2 100755
--- a/package/network/services/uhttpd/files/uhttpd.init
+++ b/package/network/services/uhttpd/files/uhttpd.init
@@ -98,6 +98,10 @@ start_instance()
 	local cfg="$1"
 	local realm="$(uci_get system.@system[0].hostname)"
 	local listen http https interpreter indexes path handler httpdconf haveauth
+	local enabled
+
+	config_get_bool enabled "$cfg" 'enabled' 1
+	[ $enabled -gt 0 ] || return
 
 	procd_open_instance
 	procd_set_param respawn
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
