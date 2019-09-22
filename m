Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B59CBA367
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 19:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iYeB9plw7gHnKopp5Vo+TogO4nCvwUkiOd3NHwcRd/M=; b=VSeEbNHvBDoyCU
	HVatblEno2E8KeOsf43FcsJh4yI9EgELqZSHXAKnoWq97jN9n86mS1GtRZurqVy11a6o9jF8NiR36
	Wv6Q9TQ2nz40zf96lGG1DCjd6IP1R1mA75DVXppe3U4LURJZmj4zymRTpi8CQE2AQkPUomvid6e6w
	FZtxOHbZdLnKQZgt6givH438NKh6znsIEfBe6NcEFjWMViagSIKjFIRpFpKslDNzGCD35Wl95nAHh
	3XkHhwp7HXZe65O7ZAzZf/PUUMCiS/F/PBA1P8HpVM9egNhq18EntnMJzSA0CLkcU9+EetcHRYHWa
	jnoZWai0tFH7TA7kc8Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC5xE-0005Mm-6K; Sun, 22 Sep 2019 17:47:24 +0000
Received: from mx2a.mailbox.org ([80.241.60.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC5x2-0005ME-NV
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 17:47:16 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id F0A8AA425F;
 Sun, 22 Sep 2019 19:47:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id CvJUhHDGrlUO; Sun, 22 Sep 2019 19:47:02 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Sep 2019 19:46:49 +0200
Message-Id: <20190922174649.22980-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_104713_072143_05931F01 
X-CRM114-Status: GOOD (  23.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] iw: Update to version 5.3
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Wifi HE (ieee80211ax) parsing is currently only activated in the full
version because it increases the compressed size by 2.5KBytes.

This also activates link time optimization (LTO) again, the problem was
fixed upstream

This increases the uncompressed binary size of iw-tiny by about 1.7%

old:
34446 iw_5.0.1-1_mipsel_24kc.ipk
new:
35064 iw_5.3-1_mipsel_24kc.ipk

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/utils/iw/Makefile             |   9 +-
 .../utils/iw/patches/001-nl80211_h_sync.patch | 370 +++---------------
 .../utils/iw/patches/120-antenna_gain.patch   |   2 +-
 .../utils/iw/patches/200-reduce_size.patch    |  72 ++--
 4 files changed, 97 insertions(+), 356 deletions(-)

diff --git a/package/network/utils/iw/Makefile b/package/network/utils/iw/Makefile
index 64438a1931..47bee53ca3 100644
--- a/package/network/utils/iw/Makefile
+++ b/package/network/utils/iw/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=iw
-PKG_VERSION:=5.0.1
+PKG_VERSION:=5.3
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@KERNEL/software/network/iw
-PKG_HASH:=1e38ea794a223525b2ea7fe78fd14f2a56121e62e21ba5f9dbe8c494b35b5c0d
+PKG_HASH:=04afe857bc8dea67e461946de30ae1b012954b6965839c5c3fda7d0ed15505d5
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 PKG_LICENSE:=GPL-2.0
@@ -46,7 +46,8 @@ TARGET_CPPFLAGS:= \
 	-I$(STAGING_DIR)/usr/include/libnl-tiny \
 	$(TARGET_CPPFLAGS) \
 	-DCONFIG_LIBNL20 \
-	-D_GNU_SOURCE
+	-D_GNU_SOURCE \
+	-flto
 
 ifeq ($(BUILD_VARIANT),full)
   TARGET_CPPFLAGS += -DIW_FULL
@@ -55,7 +56,7 @@ endif
 
 MAKE_FLAGS += \
 	CFLAGS="$(TARGET_CPPFLAGS) $(TARGET_CFLAGS) -ffunction-sections -fdata-sections" \
-	LDFLAGS="$(TARGET_LDFLAGS) -Wl,--gc-sections" \
+	LDFLAGS="$(TARGET_LDFLAGS) -Wl,--gc-sections -flto" \
 	NL1FOUND="" NL2FOUND=Y \
 	NLLIBNAME="libnl-tiny" \
 	LIBS="-lm -lnl-tiny" \
diff --git a/package/network/utils/iw/patches/001-nl80211_h_sync.patch b/package/network/utils/iw/patches/001-nl80211_h_sync.patch
index 884261621e..1a5bdc0b54 100644
--- a/package/network/utils/iw/patches/001-nl80211_h_sync.patch
+++ b/package/network/utils/iw/patches/001-nl80211_h_sync.patch
@@ -1,336 +1,60 @@
 --- a/nl80211.h
 +++ b/nl80211.h
-@@ -11,7 +11,7 @@
-  * Copyright 2008 Jouni Malinen <jouni.malinen@atheros.com>
-  * Copyright 2008 Colin McCabe <colin@cozybit.com>
-  * Copyright 2015-2017	Intel Deutschland GmbH
-- * Copyright (C) 2018 Intel Corporation
-+ * Copyright (C) 2018-2019 Intel Corporation
-  *
-  * Permission to use, copy, modify, and/or distribute this software for any
-  * purpose with or without fee is hereby granted, provided that the above
-@@ -235,6 +235,15 @@
-  */
- 
- /**
-+ * DOC: SAE authentication offload
-+ *
-+ * By setting @NL80211_EXT_FEATURE_SAE_OFFLOAD flag drivers can indicate they
-+ * support offloading SAE authentication for WPA3-Personal networks. In
-+ * %NL80211_CMD_CONNECT the password for SAE should be specified using
-+ * %NL80211_ATTR_SAE_PASSWORD.
-+ */
-+
-+/**
-  * enum nl80211_commands - supported nl80211 commands
-  *
-  * @NL80211_CMD_UNSPEC: unspecified command to catch errors
-@@ -1065,6 +1074,26 @@
-  *	indicated by %NL80211_ATTR_WIPHY_FREQ and other attributes
-  *	determining the width and type.
-  *
-+ * @NL80211_CMD_UPDATE_OWE_INFO: This interface allows the host driver to
-+ *	offload OWE processing to user space. This intends to support
-+ *	OWE AKM by the host drivers that implement SME but rely
-+ *	on the user space for the cryptographic/DH IE processing in AP mode.
-+ *
-+ * @NL80211_CMD_PROBE_MESH_LINK: The requirement for mesh link metric
-+ *	refreshing, is that from one mesh point we be able to send some data
-+ *	frames to other mesh points which are not currently selected as a
-+ *	primary traffic path, but which are only 1 hop away. The absence of
-+ *	the primary path to the chosen node makes it necessary to apply some
-+ *	form of marking on a chosen packet stream so that the packets can be
-+ *	properly steered to the selected node for testing, and not by the
-+ *	regular mesh path lookup. Further, the packets must be of type data
-+ *	so that the rate control (often embedded in firmware) is used for
-+ *	rate selection.
-+ *
-+ *	Here attribute %NL80211_ATTR_MAC is used to specify connected mesh
-+ *	peer MAC address and %NL80211_ATTR_FRAME is used to specify the frame
-+ *	content. The frame is ethernet data.
-+ *
-  * @NL80211_CMD_MAX: highest used command number
-  * @__NL80211_CMD_AFTER_LAST: internal use
-  */
-@@ -1285,6 +1314,10 @@ enum nl80211_commands {
- 
- 	NL80211_CMD_NOTIFY_RADAR,
- 
-+	NL80211_CMD_UPDATE_OWE_INFO,
-+
-+	NL80211_CMD_PROBE_MESH_LINK,
-+
- 	/* add new commands above here */
- 
- 	/* used to define NL80211_CMD_MAX below */
-@@ -1565,6 +1598,12 @@ enum nl80211_commands {
-  *	(a u32 with flags from &enum nl80211_wpa_versions).
-  * @NL80211_ATTR_AKM_SUITES: Used with CONNECT, ASSOCIATE, and NEW_BEACON to
-  *	indicate which key management algorithm(s) to use (an array of u32).
-+ *	This attribute is also sent in response to @NL80211_CMD_GET_WIPHY,
-+ *	indicating the supported AKM suites, intended for specific drivers which
-+ *	implement SME and have constraints on which AKMs are supported and also
-+ *	the cases where an AKM support is offloaded to the driver/firmware.
-+ *	If there is no such notification from the driver, user space should
-+ *	assume the driver supports all the AKM suites.
-  *
-  * @NL80211_ATTR_REQ_IE: (Re)association request information elements as
-  *	sent out by the card, for ROAM and successful CONNECT events.
-@@ -2260,10 +2299,10 @@ enum nl80211_commands {
-  *     &enum nl80211_external_auth_action value). This is used with the
-  *     %NL80211_CMD_EXTERNAL_AUTH request event.
-  * @NL80211_ATTR_EXTERNAL_AUTH_SUPPORT: Flag attribute indicating that the user
-- *     space supports external authentication. This attribute shall be used
-- *     only with %NL80211_CMD_CONNECT request. The driver may offload
-- *     authentication processing to user space if this capability is indicated
-- *     in NL80211_CMD_CONNECT requests from the user space.
-+ *	space supports external authentication. This attribute shall be used
-+ *	with %NL80211_CMD_CONNECT and %NL80211_CMD_START_AP request. The driver
-+ *	may offload authentication processing to user space if this capability
-+ *	is indicated in the respective requests from the user space.
-  *
-  * @NL80211_ATTR_NSS: Station's New/updated  RX_NSS value notified using this
-  *	u8 attribute. This is used with %NL80211_CMD_STA_OPMODE_CHANGED.
-@@ -2299,6 +2338,27 @@ enum nl80211_commands {
-  *	This is also used for capability advertisement in the wiphy information,
-  *	with the appropriate sub-attributes.
-  *
-+ * @NL80211_ATTR_AIRTIME_WEIGHT: Station's weight when scheduled by the airtime
-+ *	scheduler.
-+ *
-+ * @NL80211_ATTR_STA_TX_POWER_SETTING: Transmit power setting type (u8) for
-+ *	station associated with the AP. See &enum nl80211_tx_power_setting for
-+ *	possible values.
-+ * @NL80211_ATTR_STA_TX_POWER: Transmit power level (s16) in dBm units. This
-+ *	allows to set Tx power for a station. If this attribute is not included,
-+ *	the default per-interface tx power setting will be overriding. Driver
-+ *	should be picking up the lowest tx power, either tx power per-interface
-+ *	or per-station.
-+ *
-+ * @NL80211_ATTR_SAE_PASSWORD: attribute for passing SAE password material. It
-+ *	is used with %NL80211_CMD_CONNECT to provide password for offloading
-+ *	SAE authentication for WPA3-Personal networks.
-+ *
-+ * @NL80211_ATTR_TWT_RESPONDER: Enable target wait time responder support.
-+ *
+@@ -657,9 +657,7 @@
+  *	is used during CSA period.
+  * @NL80211_CMD_FRAME_WAIT_CANCEL: When an off-channel TX was requested, this
+  *	command may be used with the corresponding cookie to cancel the wait
+- *	time if it is known that it is no longer necessary.  This command is
+- *	also sent as an event whenever the driver has completed the off-channel
+- *	wait time.
++ *	time if it is known that it is no longer necessary.
+  * @NL80211_CMD_ACTION: Alias for @NL80211_CMD_FRAME for backward compatibility.
+  * @NL80211_CMD_FRAME_TX_STATUS: Report TX status of a management frame
+  *	transmitted with %NL80211_CMD_FRAME. %NL80211_ATTR_COOKIE identifies
+@@ -2358,8 +2356,8 @@ enum nl80211_commands {
+  *
+  * @NL80211_ATTR_TWT_RESPONDER: Enable target wait time responder support.
+  *
+- * @NL80211_ATTR_HE_OBSS_PD: nested attribute for OBSS Packet Detection
+- *	functionality.
 + * @NL80211_ATTR_WIPHY_ANTENNA_GAIN: Configured antenna gain. Used to reduce
 + *	transmit power to stay within regulatory limits. u32, dBi.
-+ *
+  *
   * @NUM_NL80211_ATTR: total number of nl80211_attrs available
   * @NL80211_ATTR_MAX: highest attribute number currently defined
-  * @__NL80211_ATTR_AFTER_LAST: internal use
-@@ -2748,6 +2808,16 @@ enum nl80211_attrs {
+@@ -2818,7 +2816,7 @@ enum nl80211_attrs {
  
- 	NL80211_ATTR_PEER_MEASUREMENTS,
+ 	NL80211_ATTR_TWT_RESPONDER,
  
-+	NL80211_ATTR_AIRTIME_WEIGHT,
-+	NL80211_ATTR_STA_TX_POWER_SETTING,
-+	NL80211_ATTR_STA_TX_POWER,
-+
-+	NL80211_ATTR_SAE_PASSWORD,
-+
-+	NL80211_ATTR_TWT_RESPONDER,
-+
+-	NL80211_ATTR_HE_OBSS_PD,
 +	NL80211_ATTR_WIPHY_ANTENNA_GAIN,
-+
- 	/* add attributes here, update the policy in nl80211.c */
- 
- 	__NL80211_ATTR_AFTER_LAST,
-@@ -2791,14 +2861,14 @@ enum nl80211_attrs {
- 
- #define NL80211_MAX_SUPP_RATES			32
- #define NL80211_MAX_SUPP_HT_RATES		77
--#define NL80211_MAX_SUPP_REG_RULES		64
-+#define NL80211_MAX_SUPP_REG_RULES		128
- #define NL80211_TKIP_DATA_OFFSET_ENCR_KEY	0
- #define NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY	16
- #define NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY	24
- #define NL80211_HT_CAPABILITY_LEN		26
- #define NL80211_VHT_CAPABILITY_LEN		12
- #define NL80211_HE_MIN_CAPABILITY_LEN           16
--#define NL80211_HE_MAX_CAPABILITY_LEN           51
-+#define NL80211_HE_MAX_CAPABILITY_LEN           54
- #define NL80211_MAX_NR_CIPHER_SUITES		5
- #define NL80211_MAX_NR_AKM_SUITES		2
  
-@@ -3125,6 +3195,10 @@ enum nl80211_sta_bss_param {
-  *	might not be fully accurate.
-  * @NL80211_STA_INFO_CONNECTED_TO_GATE: set to true if STA has a path to a
-  *	mesh gate (u8, 0 or 1)
-+ * @NL80211_STA_INFO_TX_DURATION: aggregate PPDU duration for all frames
-+ *	sent to the station (u64, usec)
-+ * @NL80211_STA_INFO_AIRTIME_WEIGHT: current airtime weight for station (u16)
-+ * @NL80211_STA_INFO_AIRTIME_LINK_METRIC: airtime link metric for mesh station
-  * @__NL80211_STA_INFO_AFTER_LAST: internal
-  * @NL80211_STA_INFO_MAX: highest possible station info attribute
-  */
-@@ -3168,6 +3242,9 @@ enum nl80211_sta_info {
- 	NL80211_STA_INFO_RX_MPDUS,
- 	NL80211_STA_INFO_FCS_ERROR_COUNT,
- 	NL80211_STA_INFO_CONNECTED_TO_GATE,
-+	NL80211_STA_INFO_TX_DURATION,
-+	NL80211_STA_INFO_AIRTIME_WEIGHT,
-+	NL80211_STA_INFO_AIRTIME_LINK_METRIC,
- 
- 	/* keep last */
- 	__NL80211_STA_INFO_AFTER_LAST,
-@@ -3277,8 +3354,10 @@ enum nl80211_mpath_flags {
-  * 	&enum nl80211_mpath_flags;
-  * @NL80211_MPATH_INFO_DISCOVERY_TIMEOUT: total path discovery timeout, in msec
-  * @NL80211_MPATH_INFO_DISCOVERY_RETRIES: mesh path discovery retries
-+ * @NL80211_MPATH_INFO_HOP_COUNT: hop count to destination
-+ * @NL80211_MPATH_INFO_PATH_CHANGE: total number of path changes to destination
-  * @NL80211_MPATH_INFO_MAX: highest mesh path information attribute number
-- *	currently defind
-+ *	currently defined
-  * @__NL80211_MPATH_INFO_AFTER_LAST: internal use
-  */
- enum nl80211_mpath_info {
-@@ -3290,6 +3369,8 @@ enum nl80211_mpath_info {
- 	NL80211_MPATH_INFO_FLAGS,
- 	NL80211_MPATH_INFO_DISCOVERY_TIMEOUT,
- 	NL80211_MPATH_INFO_DISCOVERY_RETRIES,
-+	NL80211_MPATH_INFO_HOP_COUNT,
-+	NL80211_MPATH_INFO_PATH_CHANGE,
- 
- 	/* keep last */
- 	__NL80211_MPATH_INFO_AFTER_LAST,
-@@ -3618,6 +3699,14 @@ enum nl80211_reg_rule_attr {
-  *	value as specified by &struct nl80211_bss_select_rssi_adjust.
-  * @NL80211_SCHED_SCAN_MATCH_ATTR_BSSID: BSSID to be used for matching
-  *	(this cannot be used together with SSID).
-+ * @NL80211_SCHED_SCAN_MATCH_PER_BAND_RSSI: Nested attribute that carries the
-+ *	band specific minimum rssi thresholds for the bands defined in
-+ *	enum nl80211_band. The minimum rssi threshold value(s32) specific to a
-+ *	band shall be encapsulated in attribute with type value equals to one
-+ *	of the NL80211_BAND_* defined in enum nl80211_band. For example, the
-+ *	minimum rssi threshold value for 2.4GHZ band shall be encapsulated
-+ *	within an attribute of type NL80211_BAND_2GHZ. And one or more of such
-+ *	attributes will be nested within this attribute.
-  * @NL80211_SCHED_SCAN_MATCH_ATTR_MAX: highest scheduled scan filter
-  *	attribute number currently defined
-  * @__NL80211_SCHED_SCAN_MATCH_ATTR_AFTER_LAST: internal use
-@@ -3630,6 +3719,7 @@ enum nl80211_sched_scan_match_attr {
- 	NL80211_SCHED_SCAN_MATCH_ATTR_RELATIVE_RSSI,
- 	NL80211_SCHED_SCAN_MATCH_ATTR_RSSI_ADJUST,
- 	NL80211_SCHED_SCAN_MATCH_ATTR_BSSID,
-+	NL80211_SCHED_SCAN_MATCH_PER_BAND_RSSI,
- 
- 	/* keep last */
- 	__NL80211_SCHED_SCAN_MATCH_ATTR_AFTER_LAST,
-@@ -4115,6 +4205,27 @@ enum nl80211_channel_type {
- };
- 
- /**
-+ * enum nl80211_key_mode - Key mode
-+ *
-+ * @NL80211_KEY_RX_TX: (Default)
-+ *	Key can be used for Rx and Tx immediately
-+ *
-+ * The following modes can only be selected for unicast keys and when the
-+ * driver supports @NL80211_EXT_FEATURE_EXT_KEY_ID:
-+ *
-+ * @NL80211_KEY_NO_TX: Only allowed in combination with @NL80211_CMD_NEW_KEY:
-+ *	Unicast key can only be used for Rx, Tx not allowed, yet
-+ * @NL80211_KEY_SET_TX: Only allowed in combination with @NL80211_CMD_SET_KEY:
-+ *	The unicast key identified by idx and mac is cleared for Tx and becomes
-+ *	the preferred Tx key for the station.
-+ */
-+enum nl80211_key_mode {
-+	NL80211_KEY_RX_TX,
-+	NL80211_KEY_NO_TX,
-+	NL80211_KEY_SET_TX
-+};
-+
-+/**
-  * enum nl80211_chan_width - channel width definitions
-  *
-  * These values are used with the %NL80211_ATTR_CHANNEL_WIDTH
-@@ -4319,6 +4430,7 @@ enum nl80211_mfp {
- enum nl80211_wpa_versions {
- 	NL80211_WPA_VERSION_1 = 1 << 0,
- 	NL80211_WPA_VERSION_2 = 1 << 1,
-+	NL80211_WPA_VERSION_3 = 1 << 2,
- };
- 
- /**
-@@ -4357,6 +4469,9 @@ enum nl80211_key_default_types {
-  * @NL80211_KEY_DEFAULT_TYPES: A nested attribute containing flags
-  *	attributes, specifying what a key should be set as default as.
-  *	See &enum nl80211_key_default_types.
-+ * @NL80211_KEY_MODE: the mode from enum nl80211_key_mode.
-+ *	Defaults to @NL80211_KEY_RX_TX.
-+ *
-  * @__NL80211_KEY_AFTER_LAST: internal
-  * @NL80211_KEY_MAX: highest key attribute
-  */
-@@ -4370,6 +4485,7 @@ enum nl80211_key_attributes {
- 	NL80211_KEY_DEFAULT_MGMT,
- 	NL80211_KEY_TYPE,
- 	NL80211_KEY_DEFAULT_TYPES,
-+	NL80211_KEY_MODE,
- 
- 	/* keep last */
- 	__NL80211_KEY_AFTER_LAST,
-@@ -5223,7 +5339,7 @@ enum nl80211_feature_flags {
- 	NL80211_FEATURE_TDLS_CHANNEL_SWITCH		= 1 << 28,
- 	NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR		= 1 << 29,
- 	NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR	= 1 << 30,
--	NL80211_FEATURE_ND_RANDOM_MAC_ADDR		= 1 << 31,
-+	NL80211_FEATURE_ND_RANDOM_MAC_ADDR		= 1U << 31,
- };
- 
- /**
-@@ -5315,6 +5431,24 @@ enum nl80211_feature_flags {
-  *      able to rekey an in-use key correctly. Userspace must not rekey PTK keys
-  *      if this flag is not set. Ignoring this can leak clear text packets and/or
-  *      freeze the connection.
-+ * @NL80211_EXT_FEATURE_EXT_KEY_ID: Driver supports "Extended Key ID for
-+ *      Individually Addressed Frames" from IEEE802.11-2016.
-+ *
-+ * @NL80211_EXT_FEATURE_AIRTIME_FAIRNESS: Driver supports getting airtime
-+ *	fairness for transmitted packets and has enabled airtime fairness
-+ *	scheduling.
-+ *
-+ * @NL80211_EXT_FEATURE_AP_PMKSA_CACHING: Driver/device supports PMKSA caching
-+ *	(set/del PMKSA operations) in AP mode.
-+ *
-+ * @NL80211_EXT_FEATURE_SCHED_SCAN_BAND_SPECIFIC_RSSI_THOLD: Driver supports
-+ *	filtering of sched scan results using band specific RSSI thresholds.
-+ *
-+ * @NL80211_EXT_FEATURE_STA_TX_PWR: This driver supports controlling tx power
-+ *	to a station.
-+ *
-+ * @NL80211_EXT_FEATURE_SAE_OFFLOAD: Device wants to do SAE authentication in
-+ *	station mode (SAE password is passed as part of the connect command).
-  *
-  * @NUM_NL80211_EXT_FEATURES: number of extended features.
-  * @MAX_NL80211_EXT_FEATURES: highest extended feature index.
-@@ -5355,6 +5489,12 @@ enum nl80211_ext_feature_index {
- 	NL80211_EXT_FEATURE_SCAN_MIN_PREQ_CONTENT,
- 	NL80211_EXT_FEATURE_CAN_REPLACE_PTK0,
- 	NL80211_EXT_FEATURE_ENABLE_FTM_RESPONDER,
-+	NL80211_EXT_FEATURE_AIRTIME_FAIRNESS,
-+	NL80211_EXT_FEATURE_AP_PMKSA_CACHING,
-+	NL80211_EXT_FEATURE_SCHED_SCAN_BAND_SPECIFIC_RSSI_THOLD,
-+	NL80211_EXT_FEATURE_EXT_KEY_ID,
-+	NL80211_EXT_FEATURE_STA_TX_PWR,
-+	NL80211_EXT_FEATURE_SAE_OFFLOAD,
+ 	/* add attributes here, update the policy in nl80211.c */
  
- 	/* add new features before the definition below */
- 	NUM_NL80211_EXT_FEATURES,
-@@ -5606,9 +5746,14 @@ enum nl80211_crit_proto_id {
-  * Used by cfg80211_rx_mgmt()
-  *
-  * @NL80211_RXMGMT_FLAG_ANSWERED: frame was answered by device/driver.
-+ * @NL80211_RXMGMT_FLAG_EXTERNAL_AUTH: Host driver intends to offload
-+ *	the authentication. Exclusively defined for host drivers that
-+ *	advertises the SME functionality but would like the userspace
-+ *	to handle certain authentication algorithms (e.g. SAE).
-  */
- enum nl80211_rxmgmt_flags {
- 	NL80211_RXMGMT_FLAG_ANSWERED = 1 << 0,
-+	NL80211_RXMGMT_FLAG_EXTERNAL_AUTH = 1 << 1,
+@@ -6495,26 +6493,4 @@ enum nl80211_peer_measurement_ftm_resp {
+ 	NL80211_PMSR_FTM_RESP_ATTR_MAX = NUM_NL80211_PMSR_FTM_RESP_ATTR - 1
  };
  
- /*
+-/**
+- * enum nl80211_obss_pd_attributes - OBSS packet detection attributes
+- * @__NL80211_HE_OBSS_PD_ATTR_INVALID: Invalid
+- *
+- * @NL80211_HE_OBSS_PD_ATTR_MIN_OFFSET: the OBSS PD minimum tx power offset.
+- * @NL80211_HE_OBSS_PD_ATTR_MAX_OFFSET: the OBSS PD maximum tx power offset.
+- *
+- * @__NL80211_HE_OBSS_PD_ATTR_LAST: Internal
+- * @NL80211_HE_OBSS_PD_ATTR_MAX: highest OBSS PD attribute.
+- */
+-enum nl80211_obss_pd_attributes {
+-	__NL80211_HE_OBSS_PD_ATTR_INVALID,
+-
+-	NL80211_HE_OBSS_PD_ATTR_MIN_OFFSET,
+-	NL80211_HE_OBSS_PD_ATTR_MAX_OFFSET,
+-
+-	/* keep last */
+-	__NL80211_HE_OBSS_PD_ATTR_LAST,
+-	NL80211_HE_OBSS_PD_ATTR_MAX = __NL80211_HE_OBSS_PD_ATTR_LAST - 1,
+-};
+-
+-
+ #endif /* __LINUX_NL80211_H */
diff --git a/package/network/utils/iw/patches/120-antenna_gain.patch b/package/network/utils/iw/patches/120-antenna_gain.patch
index c81bcab602..f8d537fe1e 100644
--- a/package/network/utils/iw/patches/120-antenna_gain.patch
+++ b/package/network/utils/iw/patches/120-antenna_gain.patch
@@ -1,6 +1,6 @@
 --- a/phy.c
 +++ b/phy.c
-@@ -843,3 +843,30 @@ static int handle_get_txq(struct nl80211
+@@ -855,3 +855,30 @@ static int handle_get_txq(struct nl80211
  COMMAND(get, txq, "",
  	NL80211_CMD_GET_WIPHY, 0, CIB_PHY, handle_get_txq,
  	"Get TXQ parameters.");
diff --git a/package/network/utils/iw/patches/200-reduce_size.patch b/package/network/utils/iw/patches/200-reduce_size.patch
index 07ea7113e2..a6d1855771 100644
--- a/package/network/utils/iw/patches/200-reduce_size.patch
+++ b/package/network/utils/iw/patches/200-reduce_size.patch
@@ -38,7 +38,23 @@
  
 --- a/info.c
 +++ b/info.c
-@@ -205,6 +205,7 @@ next:
+@@ -164,6 +164,7 @@ static int print_phy_handler(struct nl_m
+ 			    tb_band[NL80211_BAND_ATTR_VHT_MCS_SET])
+ 				print_vht_info(nla_get_u32(tb_band[NL80211_BAND_ATTR_VHT_CAPA]),
+ 					       nla_data(tb_band[NL80211_BAND_ATTR_VHT_MCS_SET]));
++#ifdef IW_FULL
+ 			if (tb_band[NL80211_BAND_ATTR_IFTYPE_DATA]) {
+ 				struct nlattr *nl_iftype;
+ 				int rem_band;
+@@ -171,6 +172,7 @@ static int print_phy_handler(struct nl_m
+ 				nla_for_each_nested(nl_iftype, tb_band[NL80211_BAND_ATTR_IFTYPE_DATA], rem_band)
+ 					print_he_info(nl_iftype);
+ 			}
++#endif
+ 			if (tb_band[NL80211_BAND_ATTR_FREQS]) {
+ 				if (!band_had_freq) {
+ 					printf("\t\tFrequencies:\n");
+@@ -213,6 +215,7 @@ next:
  				}
  			}
  
@@ -46,7 +62,7 @@
  			if (tb_band[NL80211_BAND_ATTR_RATES]) {
  			printf("\t\tBitrates (non-HT):\n");
  			nla_for_each_nested(nl_rate, tb_band[NL80211_BAND_ATTR_RATES], rem_rate) {
-@@ -221,6 +222,7 @@ next:
+@@ -229,6 +232,7 @@ next:
  				printf("\n");
  			}
  			}
@@ -54,7 +70,7 @@
  		}
  	}
  
-@@ -286,6 +288,7 @@ next:
+@@ -294,6 +298,7 @@ next:
  		printf("\tCoverage class: %d (up to %dm)\n", coverage, 450 * coverage);
  	}
  
@@ -62,7 +78,7 @@
  	if (tb_msg[NL80211_ATTR_CIPHER_SUITES]) {
  		int num = nla_len(tb_msg[NL80211_ATTR_CIPHER_SUITES]) / sizeof(__u32);
  		int i;
-@@ -297,6 +300,7 @@ next:
+@@ -305,6 +310,7 @@ next:
  					cipher_name(ciphers[i]));
  		}
  	}
@@ -70,7 +86,7 @@
  
  	if (tb_msg[NL80211_ATTR_WIPHY_ANTENNA_AVAIL_TX] &&
  	    tb_msg[NL80211_ATTR_WIPHY_ANTENNA_AVAIL_RX])
-@@ -316,11 +320,13 @@ next:
+@@ -324,11 +330,13 @@ next:
  			printf("\t\t * %s\n", iftype_name(nla_type(nl_mode)));
  	}
  
@@ -84,7 +100,7 @@
  
  	if (tb_msg[NL80211_ATTR_INTERFACE_COMBINATIONS]) {
  		struct nlattr *nl_combi;
-@@ -417,6 +423,7 @@ broken_combination:
+@@ -425,6 +433,7 @@ broken_combination:
  			printf("\tinterface combinations are not supported\n");
  	}
  
@@ -92,7 +108,7 @@
  	if (tb_msg[NL80211_ATTR_SUPPORTED_COMMANDS]) {
  		printf("\tSupported commands:\n");
  		nla_for_each_nested(nl_cmd, tb_msg[NL80211_ATTR_SUPPORTED_COMMANDS], rem_cmd)
-@@ -514,6 +521,7 @@ broken_combination:
+@@ -522,6 +531,7 @@ broken_combination:
  				printf("\t\t * wake up on TCP connection\n");
  		}
  	}
@@ -100,7 +116,7 @@
  
  	if (tb_msg[NL80211_ATTR_ROAM_SUPPORT])
  		printf("\tDevice supports roaming.\n");
-@@ -552,6 +560,7 @@ broken_combination:
+@@ -560,6 +570,7 @@ broken_combination:
  		}
  	}
  
@@ -108,7 +124,7 @@
  	if (tb_msg[NL80211_ATTR_FEATURE_FLAGS]) {
  		unsigned int features = nla_get_u32(tb_msg[NL80211_ATTR_FEATURE_FLAGS]);
  
-@@ -616,6 +625,7 @@ broken_combination:
+@@ -624,6 +635,7 @@ broken_combination:
  		if (features & NL80211_FEATURE_ND_RANDOM_MAC_ADDR)
  			printf("\tDevice supports randomizing MAC-addr in net-detect scans.\n");
  	}
@@ -116,7 +132,7 @@
  
  	if (tb_msg[NL80211_ATTR_TDLS_SUPPORT])
  		printf("\tDevice supports T-DLS.\n");
-@@ -740,6 +750,7 @@ TOPLEVEL(list, NULL, NL80211_CMD_GET_WIP
+@@ -732,6 +744,7 @@ TOPLEVEL(list, NULL, NL80211_CMD_GET_WIP
  	 "List all wireless devices and their capabilities.");
  TOPLEVEL(phy, NULL, NL80211_CMD_GET_WIPHY, NLM_F_DUMP, CIB_NONE, handle_info, NULL);
  
@@ -124,7 +140,7 @@
  static int handle_commands(struct nl80211_state *state, struct nl_msg *msg,
  			   int argc, char **argv, enum id_input id)
  {
-@@ -751,6 +762,7 @@ static int handle_commands(struct nl8021
+@@ -743,6 +756,7 @@ static int handle_commands(struct nl8021
  }
  TOPLEVEL(commands, NULL, NL80211_CMD_GET_WIPHY, 0, CIB_NONE, handle_commands,
  	 "list all known commands and their decimal & hex value");
@@ -240,7 +256,7 @@
 +#endif
 --- a/util.c
 +++ b/util.c
-@@ -289,6 +289,7 @@ static const char *commands[NL80211_CMD_
+@@ -291,6 +291,7 @@ static const char *commands[NL80211_CMD_
  
  static char cmdbuf[100];
  
@@ -248,7 +264,7 @@
  const char *command_name(enum nl80211_commands cmd)
  {
  	if (cmd <= NL80211_CMD_MAX && commands[cmd])
-@@ -296,6 +297,7 @@ const char *command_name(enum nl80211_co
+@@ -298,6 +299,7 @@ const char *command_name(enum nl80211_co
  	sprintf(cmdbuf, "Unknown command (%d)", cmd);
  	return cmdbuf;
  }
@@ -256,7 +272,7 @@
  
  int ieee80211_channel_to_frequency(int chan, enum nl80211_band band)
  {
-@@ -434,6 +436,9 @@ int parse_keys(struct nl_msg *msg, char
+@@ -436,6 +438,9 @@ int parse_keys(struct nl_msg *msg, char
  	char keybuf[13];
  	int pos = 0;
  
@@ -268,9 +284,9 @@
  
 --- a/Makefile
 +++ b/Makefile
-@@ -31,6 +31,12 @@ OBJS-$(HWSIM) += hwsim.o
- 
- OBJS += $(OBJS-y) $(OBJS-Y)
+@@ -22,6 +22,12 @@ _OBJS := $(sort $(patsubst %.c,%.o,$(wil
+ VERSION_OBJS := $(filter-out version.o, $(_OBJS))
+ OBJS := $(VERSION_OBJS) version.o
  
 +OBJS_FULL = ocb offch cqm wowlan coalesce roc p2p vendor mgmt ap sha256 nan bloom measurements ftm
 +ifdef IW_FULL
@@ -283,7 +299,7 @@
  ifeq ($(NO_PKG_CONFIG),)
 --- a/station.c
 +++ b/station.c
-@@ -709,10 +709,12 @@ static int handle_station_set_plink(stru
+@@ -736,10 +736,12 @@ static int handle_station_set_plink(stru
   nla_put_failure:
  	return -ENOBUFS;
  }
@@ -296,7 +312,7 @@
  
  static int handle_station_set_vlan(struct nl80211_state *state,
  				   struct nl_msg *msg,
-@@ -807,11 +809,13 @@ static int handle_station_set_mesh_power
+@@ -834,11 +836,13 @@ static int handle_station_set_mesh_power
  nla_put_failure:
  	return -ENOBUFS;
  }
@@ -308,11 +324,11 @@
  	select_station_cmd, station_set_mesh_power_mode);
 +#endif
  
- static int handle_station_dump(struct nl80211_state *state,
- 			       struct nl_msg *msg,
+ static int handle_station_set_airtime_weight(struct nl80211_state *state,
+ 					     struct nl_msg *msg,
 --- a/interface.c
 +++ b/interface.c
-@@ -621,9 +621,11 @@ static int handle_interface_wds_peer(str
+@@ -627,9 +627,11 @@ static int handle_interface_wds_peer(str
   nla_put_failure:
  	return -ENOBUFS;
  }
@@ -324,7 +340,7 @@
  
  static int set_mcast_rate(struct nl80211_state *state,
  			  struct nl_msg *msg,
-@@ -713,6 +715,7 @@ static int handle_chan(struct nl80211_st
+@@ -719,6 +721,7 @@ static int handle_chan(struct nl80211_st
  	return handle_chanfreq(state, msg, true, argc, argv, id);
  }
  
@@ -332,22 +348,22 @@
  SECTION(switch);
  COMMAND(switch, freq,
  	"<freq> [NOHT|HT20|HT40+|HT40-|5MHz|10MHz|80MHz] [beacons <count>] [block-tx]\n"
-@@ -721,3 +724,4 @@ COMMAND(switch, freq,
+@@ -727,3 +730,4 @@ COMMAND(switch, freq,
  	"Switch the operating channel by sending a channel switch announcement (CSA).");
  COMMAND(switch, channel, "<channel> [NOHT|HT20|HT40+|HT40-|5MHz|10MHz|80MHz] [beacons <count>] [block-tx]",
  	NL80211_CMD_CHANNEL_SWITCH, 0, CIB_NETDEV, handle_chan, NULL);
 +#endif
 --- a/phy.c
 +++ b/phy.c
-@@ -359,6 +359,7 @@ static int handle_cac(struct nl80211_sta
- 
- 	return 0;
+@@ -369,6 +369,7 @@ err_out:
+ 		free(cac_trigger_argv);
+ 	return err;
  }
 +#ifdef IW_FULL
  TOPLEVEL(cac, "channel <channel> [NOHT|HT20|HT40+|HT40-|5MHz|10MHz|80MHz]\n"
  	      "freq <freq> [NOHT|HT20|HT40+|HT40-|5MHz|10MHz|80MHz]\n"
  	      "freq <control freq> [5|10|20|40|80|80+80|160] [<center1_freq> [<center2_freq>]]",
-@@ -370,6 +371,7 @@ COMMAND(cac, trigger,
+@@ -380,6 +381,7 @@ COMMAND(cac, trigger,
  	NL80211_CMD_RADAR_DETECT, 0, CIB_NETDEV, handle_cac_trigger,
  	"Start or trigger a channel availability check (CAC) looking to look for\n"
  	"radars on the given channel.");
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
