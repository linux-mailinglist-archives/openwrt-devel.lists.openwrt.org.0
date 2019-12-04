Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 832FB112C44
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Dec 2019 14:05:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pwnJz8p1ZBRGPgo6eC/Q8IRZsB3Z8N2Kwpi+CRiFxVI=; b=XC9JcgElGfA/Lt
	pDuOZg1osoZkLv7JvSAnTRE2BpLUbJsDQqseQV5F1euyumRpWnh2glsSSHmGGPAbHfjyt2zDdnmKR
	5FKlENY/nDcpujid5dpKXWcOH+lMgNb3FVATZWt/YSgeB660XuOPNGyywnsqOcrc5TylyphwLqQS5
	MJWyljejNsY7f0VAV9+t/L7jm6/apbxU2yhDektVDCJ7Vnu6UXNeZ816+LlNZIJxN57lm51n1/UCh
	+WajtResJI0LIahGHJdkqMfXout40L2sv/PIjt3r55CAWeMaolmaRE2JKyc1pMnFhSKJ0vicAEIyN
	ZznK53uWVlBOrWhiFNdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icULD-0005lq-NF; Wed, 04 Dec 2019 13:05:15 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUL5-0005DX-Nc
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 13:05:09 +0000
Received: from feckert01.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id 798B820798;
 Wed,  4 Dec 2019 13:04:59 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Eckert.Florian@googlemail.com, Jason@zx2c4.com,
 ldir@darbyshire-bryant.me.uk, daniel.engberg.lists@pyret.net
Date: Wed,  4 Dec 2019 14:04:50 +0100
Message-Id: <20191204130450.14177-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_050507_929917_3B579933 
X-CRM114-Status: GOOD (  10.65  )
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
Subject: [OpenWrt-Devel] [PATCH] wireguard: fix interface remove on lonely
 peers
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

Redmine-patch-id: 4230
If we delete the main wireguard interface, then the related are not
delete. They remain in the network configuration.

With this commit wo get called on a network config change, and check if
each wireguard peer has an interface. If this is not the case delete
alle peers that do not have a related wireguard interface.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
This was discussed on the irc with Kevin Darbyshire-Bryant alias ldir
on the irc that this is a bug and should be get fixed.

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
