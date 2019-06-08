Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1630439E59
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 13:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9+N551QVdQcO6acIqi7DP+4TF8IoDNMGFD7GGR+mhY=; b=n/9QWa77Ye7zpX
	acJCM+p5Ga8l0PGpoMSYsXldEOsNKlETyojWkSprBHEdOQf0oX7IBMDr84moHY//jRoNNcECbuVNZ
	lAtdi535TN2fB6k88N55UYOtDfqsJplWxdSMqTCiye7KCrPEZl2+fMC0UuKAYRNHbRRAEFZLK1bP9
	Uz3ibD2HEgWiqhe62+XmLgjcB0DvQD8msqd4tzTSIGBrox6hc4UBc3pHc3zabCkLokSpYsISSWEFy
	HirvlbspNQEVqj9ygoD+WvxPEP37LstS+2afRFWJnIJVjv914G4jITlDUV0xc8LRoujI8VW9Am9Bs
	TmOsa5G+d0w/8C7Y1tAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZZq3-0002OV-S8; Sat, 08 Jun 2019 11:48:47 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZZpi-0002Ck-Hi
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 11:48:29 +0000
Received: from [192.168.180.1] (port=50382 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1hZZpV-0001fF-2f
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 13:48:13 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id B66502802B7;
 Sat,  8 Jun 2019 13:48:13 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  8 Jun 2019 13:48:08 +0200
Message-Id: <20190608114809.9480-3-avalentin@marcant.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190608114809.9480-1-avalentin@marcant.net>
References: <20190608114809.9480-1-avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_044826_749687_922B204B 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v3 2/3] network/config: add xfrm interface
 support scripts
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
Cc: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This package adds scripts for xfrm interfaces support.
Example configuration via /etc/config/network:

config interface 'xfrm0'
        option proto 'xfrm'
        option mtu '1300'
        option zone 'VPN'
        option tunlink 'wan'
        option ifid 30

config interface 'xfrm0_static'
        option proto 'static'
        option ifname '@xfrm0'
        option ip6addr 'fe80::1/64'
        option ipaddr '10.0.0.1/30'

Now set in strongswan IPsec policy:
 	if_id_in = 30
	if_id_out = 30
---
 package/network/config/xfrm/Makefile      | 38 ++++++++++++++++++
 package/network/config/xfrm/files/xfrm.sh | 65 +++++++++++++++++++++++++++++++
 2 files changed, 103 insertions(+)
 create mode 100644 package/network/config/xfrm/Makefile
 create mode 100755 package/network/config/xfrm/files/xfrm.sh

diff --git a/package/network/config/xfrm/Makefile b/package/network/config/xfrm/Makefile
new file mode 100644
index 0000000000..efc90cf318
--- /dev/null
+++ b/package/network/config/xfrm/Makefile
@@ -0,0 +1,38 @@
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=xfrm
+PKG_VERSION:=1
+PKG_RELEASE:=1
+PKG_LICENSE:=GPL-2.0
+
+include $(INCLUDE_DIR)/package.mk
+
+define Package/xfrm/Default
+  SECTION:=net
+  CATEGORY:=Network
+  MAINTAINER:=Andre Valentin <avalentin@marcant.net>
+endef
+
+define Package/xfrm
+$(call Package/xfrm/Default)
+  TITLE:=XFRM IPsec Tunnel Interface config support
+  DEPENDS:=+kmod-xfrm-interface
+endef
+
+define Package/xfrm/description
+ XFRM IPsec Tunnel Interface config support (IPv4 and IPv6) in /etc/config/network.
+endef
+
+define Build/Compile
+endef
+
+define Build/Configure
+endef
+
+define Package/xfrm/install
+	$(INSTALL_DIR) $(1)/lib/netifd/proto
+	$(INSTALL_BIN) ./files/xfrm.sh $(1)/lib/netifd/proto/xfrm.sh
+endef
+
+$(eval $(call BuildPackage,xfrm))
diff --git a/package/network/config/xfrm/files/xfrm.sh b/package/network/config/xfrm/files/xfrm.sh
new file mode 100755
index 0000000000..df28d38613
--- /dev/null
+++ b/package/network/config/xfrm/files/xfrm.sh
@@ -0,0 +1,65 @@
+#!/bin/sh
+
+[ -n "$INCLUDE_ONLY" ] || {
+	. /lib/functions.sh
+	. /lib/functions/network.sh
+	. ../netifd-proto.sh
+	init_proto "$@"
+}
+
+proto_xfrm_setup() {
+	local cfg="$1"
+	local mode="xfrm"
+
+	local tunlink ifid mtu zone
+	json_get_vars tunlink ifid mtu zone
+
+	proto_init_update "$cfg" 1
+
+	proto_add_tunnel
+	json_add_string mode "$mode"
+	json_add_int mtu "${mtu:-1280}"
+
+	[ -z "$tunlink" ] && {
+		proto_notify_error "$cfg" NO_TUNLINK
+		proto_block_restart "$cfg"
+		exit
+	}
+	json_add_string link "$tunlink"
+
+	[ -z "$ifid" ] && {
+		proto_notify_error "$cfg" NO_IFID
+		proto_block_restart "$cfg"
+		exit
+	}
+	json_add_object 'data'
+	[ -n "$ifid" ] && json_add_int ifid "$ifid"
+	json_close_object
+
+	proto_close_tunnel
+
+	proto_add_data
+	[ -n "$zone" ] && json_add_string zone "$zone"
+	proto_close_data
+
+	proto_send_update "$cfg"
+}
+
+proto_xfrm_teardown() {
+	local cfg="$1"
+}
+
+proto_xfrm_init_config() {
+	no_device=1
+	available=1
+
+	proto_config_add_int "mtu"
+	proto_config_add_string "tunlink"
+	proto_config_add_string "zone"
+	proto_config_add_int "ifid"
+}
+
+
+[ -n "$INCLUDE_ONLY" ] || {
+	[ -f /lib/modules/$(uname -r)/xfrm_interface.ko -o -d /sys/module/xfrm_interface ] && add_protocol xfrm
+}
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
