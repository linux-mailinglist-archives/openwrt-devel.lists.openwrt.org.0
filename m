Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3501146E4
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Dec 2019 19:29:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vnodv5VAr9YoTIYa8sR64QILOmF81lkUzlLIH6nbf+Y=; b=BphXNaTPcSmLbT
	zNI2bZTtspGrdoXoar91AUj8QeV+pWPSr964fOAuJZXPGZxVGSL+ESXHj88jZBeaIU0SRJ0vZPJnS
	mozgdf/xLXA3ijzJxWcEbNznoBdH3AHwN8NNZtbKvC34HREVr7QULgXVWLe+dCKB9w+4rec0V8AgV
	vlx9SUI4cgadfXRxTirZhLL1culMSRLMy+g/G3Uvji+LUxQTCcvFZIqS36Lsop9C2okPtmkUzj6pW
	FHLtWX+KlG3GvJmX9isbCNDFP/2ghdCrFaTR/jh9QWsZIkJcMoJmO0Aivw34GGWWW/VrDyEBpMr6H
	KduQBzZyL+cqaYHefDfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvsf-0004kn-Ub; Thu, 05 Dec 2019 18:29:37 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvsW-0004k4-LS
 for openwrt-devel@lists.openwrt.org; Thu, 05 Dec 2019 18:29:31 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F0AC1009CF2266EB6C9206F.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0a:c100:9cf2:266e:b6c9:206f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 8BD48226DB
 for <openwrt-devel@lists.openwrt.org>; Thu,  5 Dec 2019 19:29:22 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Dec 2019 19:29:14 +0100
Message-Id: <20191205182914.75193-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_102928_996138_FB640DB7 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] hostapd: enable CTRL_IFACE_MIB for
 hostapd-full
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

This enables the CTRL_IFACE_MIB symbol for wpad-full and hostapd-full.
If it is not enabled, statistic outputs such as "hostapd_cli all_sta"
are empty.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 package/network/services/hostapd/files/hostapd-basic.config  | 5 +++++
 package/network/services/hostapd/files/hostapd-full.config   | 5 +++++
 package/network/services/hostapd/files/hostapd-mini.config   | 5 +++++
 .../services/hostapd/files/wpa_supplicant-basic.config       | 5 +++++
 .../services/hostapd/files/wpa_supplicant-full.config        | 5 +++++
 .../services/hostapd/files/wpa_supplicant-mini.config        | 5 +++++
 .../network/services/hostapd/files/wpa_supplicant-p2p.config | 5 +++++
 7 files changed, 35 insertions(+)

diff --git a/package/network/services/hostapd/files/hostapd-basic.config b/package/network/services/hostapd/files/hostapd-basic.config
index 461b178433..19ea850f6b 100644
--- a/package/network/services/hostapd/files/hostapd-basic.config
+++ b/package/network/services/hostapd/files/hostapd-basic.config
@@ -394,3 +394,8 @@ CONFIG_TLS=internal
 # Services can connect to the bus and provide methods
 # that can be called by other services or clients.
 CONFIG_UBUS=y
+
+# OpenWrt patch 380-disable-ctrl-iface-mib.patch
+# leads to the MIB only being compiled in if
+# CONFIG_CTRL_IFACE_MIB is enabled.
+#CONFIG_CTRL_IFACE_MIB=y
diff --git a/package/network/services/hostapd/files/hostapd-full.config b/package/network/services/hostapd/files/hostapd-full.config
index 5c9fbed2e4..0ecce423e7 100644
--- a/package/network/services/hostapd/files/hostapd-full.config
+++ b/package/network/services/hostapd/files/hostapd-full.config
@@ -394,3 +394,8 @@ CONFIG_TAXONOMY=y
 # Services can connect to the bus and provide methods
 # that can be called by other services or clients.
 CONFIG_UBUS=y
+
+# OpenWrt patch 380-disable-ctrl-iface-mib.patch
+# leads to the MIB only being compiled in if
+# CONFIG_CTRL_IFACE_MIB is enabled.
+CONFIG_CTRL_IFACE_MIB=y
diff --git a/package/network/services/hostapd/files/hostapd-mini.config b/package/network/services/hostapd/files/hostapd-mini.config
index f31e6467b0..d9511441e6 100644
--- a/package/network/services/hostapd/files/hostapd-mini.config
+++ b/package/network/services/hostapd/files/hostapd-mini.config
@@ -394,3 +394,8 @@ CONFIG_TLS=internal
 # Services can connect to the bus and provide methods
 # that can be called by other services or clients.
 CONFIG_UBUS=y
+
+# OpenWrt patch 380-disable-ctrl-iface-mib.patch
+# leads to the MIB only being compiled in if
+# CONFIG_CTRL_IFACE_MIB is enabled.
+#CONFIG_CTRL_IFACE_MIB=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-basic.config b/package/network/services/hostapd/files/wpa_supplicant-basic.config
index e2bd1866c4..a9da65deed 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-basic.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-basic.config
@@ -618,3 +618,8 @@ CONFIG_GETRANDOM=y
 # Services can connect to the bus and provide methods
 # that can be called by other services or clients.
 CONFIG_UBUS=y
+
+# OpenWrt patch 380-disable-ctrl-iface-mib.patch
+# leads to the MIB only being compiled in if
+# CONFIG_CTRL_IFACE_MIB is enabled.
+#CONFIG_CTRL_IFACE_MIB=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-full.config b/package/network/services/hostapd/files/wpa_supplicant-full.config
index e5a6752a8e..982f4d5534 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-full.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-full.config
@@ -618,3 +618,8 @@ CONFIG_IBSS_RSN=y
 # Services can connect to the bus and provide methods
 # that can be called by other services or clients.
 CONFIG_UBUS=y
+
+# OpenWrt patch 380-disable-ctrl-iface-mib.patch
+# leads to the MIB only being compiled in if
+# CONFIG_CTRL_IFACE_MIB is enabled.
+CONFIG_CTRL_IFACE_MIB=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-mini.config b/package/network/services/hostapd/files/wpa_supplicant-mini.config
index 6af4693c53..850d22febc 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-mini.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-mini.config
@@ -618,3 +618,8 @@ CONFIG_GETRANDOM=y
 # Services can connect to the bus and provide methods
 # that can be called by other services or clients.
 CONFIG_UBUS=y
+
+# OpenWrt patch 380-disable-ctrl-iface-mib.patch
+# leads to the MIB only being compiled in if
+# CONFIG_CTRL_IFACE_MIB is enabled.
+#CONFIG_CTRL_IFACE_MIB=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-p2p.config b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
index b0ca395a5e..5156048284 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-p2p.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
@@ -618,3 +618,8 @@ CONFIG_IBSS_RSN=y
 # Services can connect to the bus and provide methods
 # that can be called by other services or clients.
 CONFIG_UBUS=y
+
+# OpenWrt patch 380-disable-ctrl-iface-mib.patch
+# leads to the MIB only being compiled in if
+# CONFIG_CTRL_IFACE_MIB is enabled.
+#CONFIG_CTRL_IFACE_MIB=y
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
