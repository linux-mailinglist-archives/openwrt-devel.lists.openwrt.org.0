Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAA4113FCB
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Dec 2019 11:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SwB0pEk/kjyX/JZiFZ8NzKYXfBM5YK8oM3y3xstzA7Y=; b=ZZf7JfVc2ASbur
	86xRpN/I6D3F/OgoYhW2nTvci4ROV04B69s/RBWqva9w0ci3+apyoUdDeIYTM7OIldZtUp4QF+GdX
	gaSQjSZdPwU7Jz1ormSYguPrw9HjfuWJifWMs2Uoyvd1Wm7UEmDCmVDF12CDJWS0uOA7thMAvNFGk
	7U52sgGlKqu3AwE62CGO7Pyg2qBztIxgff9mWNpfwXH1JNAKLwQop/iHok63YfRDSb3uKYxAwokKy
	0QpG64luU9kvPfj9TBOQXmlAC5RFez58fnyh9FHjosNUz9mJXdFWKjHUkK6ttjH0tAgcStqyuU+om
	DusCsQkNvEsx/cmBTudw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icopw-00073v-QG; Thu, 05 Dec 2019 10:58:20 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icopp-00073Y-0F
 for openwrt-devel@lists.openwrt.org; Thu, 05 Dec 2019 10:58:14 +0000
Received: from feckert01.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id 4256520811;
 Thu,  5 Dec 2019 10:58:11 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Eckert.Florian@googlemail.com, Jason@zx2c4.com,
 ldir@darbyshire-bryant.me.uk, daniel.engberg.lists@pyret.net
Date: Thu,  5 Dec 2019 11:58:05 +0100
Message-Id: <20191205105805.29869-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_025813_197207_564BF104 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 4.3 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 3.5 TO_NO_BRKTS_DYNIP      To: lacks brackets and dynamic rDNS
Subject: [OpenWrt-Devel] [PATCH v2] wireguard: fix interface remove for
 lonely peers
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

When we delete a Wireguard interface, the associated peer sections are
not deleted. They remain in the network configuration.

This commit adds an init script, that triggers when the network
configuration file is changed.

For each change event, each Wireguard peer section is checked to see if
the corresponding wireguard interface section still exists. If this is not
the case, all wireguard peer sections for that interface are deleted.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
v2:
* update commit description

 package/network/services/wireguard/Makefile   |  2 ++
 .../services/wireguard/files/wireguard.init   | 31 +++++++++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 package/network/services/wireguard/files/wireguard.init

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index ea34b7550b..d78fcfface 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -93,6 +93,8 @@ define Package/wireguard-tools/install
 	$(INSTALL_BIN) ./files/wireguard_watchdog $(1)/usr/bin/
 	$(INSTALL_DIR) $(1)/lib/netifd/proto/
 	$(INSTALL_BIN) ./files/wireguard.sh $(1)/lib/netifd/proto/
+	$(INSTALL_DIR) $(1)/etc/init.d/
+	$(INSTALL_BIN) ./files/wireguard.init $(1)/etc/init.d/wireguard
 endef
 
 define KernelPackage/wireguard
diff --git a/package/network/services/wireguard/files/wireguard.init b/package/network/services/wireguard/files/wireguard.init
new file mode 100644
index 0000000000..781d0839bc
--- /dev/null
+++ b/package/network/services/wireguard/files/wireguard.init
@@ -0,0 +1,31 @@
+#!/bin/sh /etc/rc.common
+
+START=80
+USE_PROCD=1
+
+service_triggers() {
+	procd_add_reload_trigger "network"
+}
+
+reload_service() {
+	# delete old peers of related wireguard interface
+	wireguard_check_peers
+}
+
+wireguard_check_peers() {
+	local iface peer
+
+	# get all wireguard peers
+	for peer in $(uci show network | grep =wireguard_); do
+		# extract peer section type
+		peer="${peer##*=}"
+		# extract interface name
+		iface="${peer#*_}"
+
+		# delete peer if iface is not present anymore
+		if ! uci -q show "network.${iface}" 1>/dev/null 2>/dev/null; then
+			uci -q delete "network.@${peer}[-1]"
+			uci commit network
+		fi
+	done
+}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
