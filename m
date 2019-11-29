Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008B710D62A
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 Nov 2019 14:36:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X2JJJJXWwoGzRYhP9piL0X5qbs69VDr18fmqx+KRxcI=; b=IAfxvV3Lr5ZS2O
	4rMyqLgqXy0arx69YhseVXLFJ6WgY7M7kKBa0bIgWf8ldwYO6YfGjHyzDdHauBT6ZDs6r0SC0isnn
	UFeWMBJ+w2PMaFS/ekxHmB/AJE2kmoApZLFpNgZcC2AOCkzOfQfCK0M/BCYZv2bjZlF207gnNczPF
	cWI4KJM0oEdaIpprpS3CZN2yNE6a39SFrICwHrLEfXgxRLxQlf9u2rXmINYkvPCzOAklMi8OPjGNF
	LCTrSzPYGHxnLY4q1ig1RjL/q4mSWaoZSWIg+X9JssakRGhIzkluLa5zQUKDbMTfK9ApZQoz0o2UK
	Wyq8P7gnoV256WCPi7gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iagS2-0008UA-Fq; Fri, 29 Nov 2019 13:36:50 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iagRs-0008Te-NG
 for openwrt-devel@lists.openwrt.org; Fri, 29 Nov 2019 13:36:42 +0000
Received: from feckert01.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id D8F67200C4;
 Fri, 29 Nov 2019 13:36:26 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Eckert.Florian@googlemail.com, Jason@zx2c4.com,
 ldir@darbyshire-bryant.me.uk, daniel.engberg.lists@pyret.net
Date: Fri, 29 Nov 2019 14:36:17 +0100
Message-Id: <20191129133617.8512-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_053640_912808_C353D252 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 3.9 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 3.2 TO_NO_BRKTS_DYNIP      To: lacks brackets and dynamic rDNS
Subject: [OpenWrt-Devel] [PATCH] wireguard: fix reload config on peer change
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

If we change a peer section, then the interface of netifd gets not
reloaded. Because the change were not made in an interface section.
And so the netifd does not recognize the change. And the new config gets
not applied until we do a network restart or we restart the interface
with 'ifup <name>'.

With this new wireguard init script, a md5sum will be calculated on
every network change. The sum is generated over the wireguard peers for
each wireguard interface. If a change in the peers section gets detected
then only the detecated wireguard interface gets restarted.

With this change we can see if the peer section has changed to the
corresponding interface. The wireguard configuration is rewritten and
reconfigured by the netif proto handler.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 package/network/services/wireguard/Makefile   |  2 +
 .../services/wireguard/files/wireguard.init   | 49 +++++++++++++++++++
 2 files changed, 51 insertions(+)
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
index 0000000000..24569752b4
--- /dev/null
+++ b/package/network/services/wireguard/files/wireguard.init
@@ -0,0 +1,49 @@
+#!/bin/sh /etc/rc.common
+
+START=80
+USE_PROCD=1
+
+WG_DIR="/tmp/wireguard"
+
+wireguard_check_peer(){
+	local cfg="${1}"
+	local cfile="${2}"
+
+	uci show "network.${cfg}" >> "${cfile}"
+}
+
+wireguard_check_interface() {
+	local cfg="${1}"
+	local proto cfile n_sum o_sum
+
+	config_get proto "${cfg}" proto
+	[ "${proto}" = "wireguard" ] || return 0
+	cfile="$(mktemp -p "${WG_DIR}")"
+	config_foreach wireguard_check_peer "wireguard_${1}" "${cfile}"
+
+	. /lib/functions/network.sh
+
+	n_sum="$(md5sum "${cfile}" | cut -d" " -f1)"
+	rm -rf "${cfile}"
+	[ -f "${WG_DIR}/${cfg}.check" ] && {
+		o_sum="$(cat "${WG_DIR}/${cfg}.check")"
+		[ "${o_sum}" != "${n_sum}" ] && {
+			network_is_up "${cfg}" && ifup "${cfg}"
+		}
+	}
+	echo "$n_sum" > "${WG_DIR}/${cfg}.check"
+}
+
+boot() {
+	config_load network
+	config_foreach wireguard_check_interface interface
+}
+
+service_triggers() {
+	procd_add_reload_trigger "network"
+}
+
+reload_service() {
+	config_load network
+	config_foreach wireguard_check_interface interface
+}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
