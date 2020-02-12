Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC0815A8F2
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 13:18:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RDiZ2yeDnFxNlhyBC9kBW+nddSuYQ8G9j+Bsf2uoolw=; b=RM7tnsRVyk6xwz
	WhUz8tWXME0S7fQ0YgQWO4z00wI87dr7QaVw1BgS4cXeoCeNKbJmxr+LL2Zzj2aSCfzhjjVHKv6d9
	lj6p5ARlzcWO6BuKZgvCcRj5wDwMHU17ewAT89dcK4ft8UYh7aZV5FHseRVaN++KrF3r1rToa2c6d
	x1d/DhXGrBtJdrTge5TYVk6lw8/SYguoNWbe8LRWhunZhNoN+a5uDvcGr0USSPvin1xZ8xpYrZMhE
	iIn3e17vethqL6wLlRpn6zMZIe7enBOl+CYySjeF8pl08WUfoel1anWq/GsMvyll3y8p1bGcOkgki
	Y7Tx9jMeAYzhjdpPEFmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qxq-00088e-3R; Wed, 12 Feb 2020 12:17:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qxf-000887-Dj
 for openwrt-devel@bombadil.infradead.org; Wed, 12 Feb 2020 12:17:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=h5RG+LtlQzRVUSS7zzuppLM7JYYmliocDFQV0UhZoRo=; b=l8XxByw24sI8EdjtHApHYZXuqR
 P3iSuqEGgiC/noHm5BoV6WKvsi1rbnTEVAoxcfWkkqNSmZ4MB66RGh488wXhfv79F7zwnBOIFnv70
 /IUDg2LPG0/1sptxv0cByDGl3eADbQrZ6AN5yKCBVOY2oOL8dLLuM34+FIiJSLUQq+5QerfgEBNbu
 Va+YpnhPh1jP4oXvemiN0NtOGu5FPVFXup/haeuulIZHueFO0Vi1r0KAhLnCgvXoo7lJoiWO8peUJ
 5OLi/dm6oSz0Apja3hEzdlW1KpRqlxFVl/MmBF2HXp4Y9WuoWElTvOxq58134AvTWwBKhVZgGniKB
 BTfi/9/Q==;
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qxT-0000aZ-VQ
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 12:17:42 +0000
X-QQ-mid: bizesmtp18t1581509766t7oy7u3a
Received: from P65xSA.lan (unknown [112.94.103.26])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Feb 2020 20:16:06 +0800 (CST)
X-QQ-SSF: 0140000000000060F3F0B00A0000000
X-QQ-FEAT: lm51M56XDGwZ3Vjwz3fh968EyvAM6Hx52vDnoW0LQYMvOQtxS4Phc9UeLi5jJ
 yw7v2TCOnzqhLhY+H1EE5/dOG/fpxdqGqw5tpXDGieh2h1uG+tFUU9nmaF1M66/4OcLcBqz
 9R4KuQjyqyXG8y4Y26APgv3Wt1mh6OtbTGX8LZmItu+dEXlP16up+QCZk1Be/4N12jYAmtp
 iwM0UnthnduzgocMVwE8mfNST7bPAPBGO2t6udJ4JNPOl9qFe4+iKTM/Et4UFSnvL8WY88D
 UO1NoTEme18HA8+gZU2KgZr7JxEhgg3fwknsXiZOPZCz75pnTSncCwPkbC86TB3X3R2YbEl
 h/vDakD
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 12 Feb 2020 20:16:05 +0800
Message-Id: <20200212121605.14794-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
Subject: [OpenWrt-Devel] [PATCH] iw: update to 5.4
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

Update iw to 5.4
This increases the ipk size of iw-tiny/full by about 400 bytes

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 package/network/utils/iw/Makefile             |   6 +-
 .../utils/iw/patches/001-nl80211_h_sync.patch | 111 +-----------------
 .../utils/iw/patches/200-reduce_size.patch    |  30 ++---
 3 files changed, 21 insertions(+), 126 deletions(-)

diff --git a/package/network/utils/iw/Makefile b/package/network/utils/iw/Makefile
index ed2599342c..7abf93e01e 100644
--- a/package/network/utils/iw/Makefile
+++ b/package/network/utils/iw/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=iw
-PKG_VERSION:=5.3
-PKG_RELEASE:=2
+PKG_VERSION:=5.4
+PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@KERNEL/software/network/iw
-PKG_HASH:=04afe857bc8dea67e461946de30ae1b012954b6965839c5c3fda7d0ed15505d5
+PKG_HASH:=a2469f677088d7b1070a7fbb28f3c747041697e8f6ec70783339cb1bc27a395f
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 PKG_LICENSE:=GPL-2.0
diff --git a/package/network/utils/iw/patches/001-nl80211_h_sync.patch b/package/network/utils/iw/patches/001-nl80211_h_sync.patch
index 97cf82793d..63645554db 100644
--- a/package/network/utils/iw/patches/001-nl80211_h_sync.patch
+++ b/package/network/utils/iw/patches/001-nl80211_h_sync.patch
@@ -1,116 +1,11 @@
 --- a/nl80211.h
 +++ b/nl80211.h
-@@ -52,6 +52,11 @@
- #define NL80211_MULTICAST_GROUP_NAN		"nan"
- #define NL80211_MULTICAST_GROUP_TESTMODE	"testmode"
+@@ -2835,6 +2835,8 @@ enum nl80211_attrs {
+ 	NL80211_ATTR_WIPHY_EDMG_CHANNELS,
+ 	NL80211_ATTR_WIPHY_EDMG_BW_CONFIG,
  
-+#define NL80211_EDMG_BW_CONFIG_MIN	4
-+#define NL80211_EDMG_BW_CONFIG_MAX	15
-+#define NL80211_EDMG_CHANNELS_MIN	1
-+#define NL80211_EDMG_CHANNELS_MAX	0x3c /* 0b00111100 */
-+
- /**
-  * DOC: Station handling
-  *
-@@ -2361,6 +2366,16 @@ enum nl80211_commands {
-  * @NL80211_ATTR_HE_OBSS_PD: nested attribute for OBSS Packet Detection
-  *	functionality.
-  *
-+ * @NL80211_ATTR_WIPHY_EDMG_CHANNELS: bitmap that indicates the 2.16 GHz
-+ *	channel(s) that are allowed to be used for EDMG transmissions.
-+ *	Defined by IEEE P802.11ay/D4.0 section 9.4.2.251. (u8 attribute)
-+ * @NL80211_ATTR_WIPHY_EDMG_BW_CONFIG: Channel BW Configuration subfield encodes
-+ *	the allowed channel bandwidth configurations. (u8 attribute)
-+ *	Defined by IEEE P802.11ay/D4.0 section 9.4.2.251, Table 13.
-+ *
-+ * @NL80211_ATTR_WIPHY_ANTENNA_GAIN: Configured antenna gain. Used to reduce
-+ *	transmit power to stay within regulatory limits. u32, dBi.
-+ *
-  * @NUM_NL80211_ATTR: total number of nl80211_attrs available
-  * @NL80211_ATTR_MAX: highest attribute number currently defined
-  * @__NL80211_ATTR_AFTER_LAST: internal use
-@@ -2820,6 +2835,11 @@ enum nl80211_attrs {
- 
- 	NL80211_ATTR_HE_OBSS_PD,
- 
-+	NL80211_ATTR_WIPHY_EDMG_CHANNELS,
-+	NL80211_ATTR_WIPHY_EDMG_BW_CONFIG,
-+
 +	NL80211_ATTR_WIPHY_ANTENNA_GAIN,
 +
  	/* add attributes here, update the policy in nl80211.c */
  
  	__NL80211_ATTR_AFTER_LAST,
-@@ -3201,6 +3221,8 @@ enum nl80211_sta_bss_param {
-  *	sent to the station (u64, usec)
-  * @NL80211_STA_INFO_AIRTIME_WEIGHT: current airtime weight for station (u16)
-  * @NL80211_STA_INFO_AIRTIME_LINK_METRIC: airtime link metric for mesh station
-+ * @NL80211_STA_INFO_ASSOC_AT_BOOTTIME: Timestamp (CLOCK_BOOTTIME, nanoseconds)
-+ *	of STA's association
-  * @__NL80211_STA_INFO_AFTER_LAST: internal
-  * @NL80211_STA_INFO_MAX: highest possible station info attribute
-  */
-@@ -3247,6 +3269,7 @@ enum nl80211_sta_info {
- 	NL80211_STA_INFO_TX_DURATION,
- 	NL80211_STA_INFO_AIRTIME_WEIGHT,
- 	NL80211_STA_INFO_AIRTIME_LINK_METRIC,
-+	NL80211_STA_INFO_ASSOC_AT_BOOTTIME,
- 
- 	/* keep last */
- 	__NL80211_STA_INFO_AFTER_LAST,
-@@ -3428,6 +3451,12 @@ enum nl80211_band_iftype_attr {
-  * @NL80211_BAND_ATTR_VHT_CAPA: VHT capabilities, as in the HT information IE
-  * @NL80211_BAND_ATTR_IFTYPE_DATA: nested array attribute, with each entry using
-  *	attributes from &enum nl80211_band_iftype_attr
-+ * @NL80211_BAND_ATTR_EDMG_CHANNELS: bitmap that indicates the 2.16 GHz
-+ *	channel(s) that are allowed to be used for EDMG transmissions.
-+ *	Defined by IEEE P802.11ay/D4.0 section 9.4.2.251.
-+ * @NL80211_BAND_ATTR_EDMG_BW_CONFIG: Channel BW Configuration subfield encodes
-+ *	the allowed channel bandwidth configurations.
-+ *	Defined by IEEE P802.11ay/D4.0 section 9.4.2.251, Table 13.
-  * @NL80211_BAND_ATTR_MAX: highest band attribute currently defined
-  * @__NL80211_BAND_ATTR_AFTER_LAST: internal use
-  */
-@@ -3445,6 +3474,9 @@ enum nl80211_band_attr {
- 	NL80211_BAND_ATTR_VHT_CAPA,
- 	NL80211_BAND_ATTR_IFTYPE_DATA,
- 
-+	NL80211_BAND_ATTR_EDMG_CHANNELS,
-+	NL80211_BAND_ATTR_EDMG_BW_CONFIG,
-+
- 	/* keep last */
- 	__NL80211_BAND_ATTR_AFTER_LAST,
- 	NL80211_BAND_ATTR_MAX = __NL80211_BAND_ATTR_AFTER_LAST - 1
-@@ -3843,6 +3875,8 @@ enum nl80211_user_reg_hint_type {
-  * @NL80211_SURVEY_INFO_TIME_SCAN: time the radio spent for scan
-  *	(on this channel or globally)
-  * @NL80211_SURVEY_INFO_PAD: attribute used for padding for 64-bit alignment
-+ * @NL80211_SURVEY_INFO_TIME_BSS_RX: amount of time the radio spent
-+ *	receiving frames destined to the local BSS
-  * @NL80211_SURVEY_INFO_MAX: highest survey info attribute number
-  *	currently defined
-  * @__NL80211_SURVEY_INFO_AFTER_LAST: internal use
-@@ -3859,6 +3893,7 @@ enum nl80211_survey_info {
- 	NL80211_SURVEY_INFO_TIME_TX,
- 	NL80211_SURVEY_INFO_TIME_SCAN,
- 	NL80211_SURVEY_INFO_PAD,
-+	NL80211_SURVEY_INFO_TIME_BSS_RX,
- 
- 	/* keep last */
- 	__NL80211_SURVEY_INFO_AFTER_LAST,
-@@ -4543,6 +4578,7 @@ enum nl80211_txrate_gi {
-  * @NL80211_BAND_2GHZ: 2.4 GHz ISM band
-  * @NL80211_BAND_5GHZ: around 5 GHz band (4.9 - 5.7 GHz)
-  * @NL80211_BAND_60GHZ: around 60 GHz band (58.32 - 69.12 GHz)
-+ * @NL80211_BAND_6GHZ: around 6 GHz band (5.9 - 7.2 GHz)
-  * @NUM_NL80211_BANDS: number of bands, avoid using this in userspace
-  *	since newer kernel versions may support more bands
-  */
-@@ -4550,6 +4586,7 @@ enum nl80211_band {
- 	NL80211_BAND_2GHZ,
- 	NL80211_BAND_5GHZ,
- 	NL80211_BAND_60GHZ,
-+	NL80211_BAND_6GHZ,
- 
- 	NUM_NL80211_BANDS,
- };
diff --git a/package/network/utils/iw/patches/200-reduce_size.patch b/package/network/utils/iw/patches/200-reduce_size.patch
index a6d1855771..58613d59a0 100644
--- a/package/network/utils/iw/patches/200-reduce_size.patch
+++ b/package/network/utils/iw/patches/200-reduce_size.patch
@@ -150,7 +150,7 @@
  {
 --- a/scan.c
 +++ b/scan.c
-@@ -1197,6 +1197,9 @@ static void print_ht_op(const uint8_t ty
+@@ -1195,6 +1195,9 @@ static void print_ht_op(const uint8_t ty
  	printf("\t\t * secondary channel offset: %s\n",
  		ht_secondary_offset[data[1] & 0x3]);
  	printf("\t\t * STA channel width: %s\n", sta_chan_width[(data[1] & 0x4)>>2]);
@@ -160,7 +160,7 @@
  	printf("\t\t * RIFS: %d\n", (data[1] & 0x8)>>3);
  	printf("\t\t * HT protection: %s\n", protection[data[2] & 0x3]);
  	printf("\t\t * non-GF present: %d\n", (data[2] & 0x4) >> 2);
-@@ -1524,6 +1527,14 @@ static void print_ie(const struct ie_pri
+@@ -1522,6 +1525,14 @@ static void print_ie(const struct ie_pri
  
  static const struct ie_print ieprinters[] = {
  	[0] = { "SSID", print_ssid, 0, 32, BIT(PRINT_SCAN) | BIT(PRINT_LINK), },
@@ -175,7 +175,7 @@
  	[1] = { "Supported rates", print_supprates, 0, 255, BIT(PRINT_SCAN), },
  	[3] = { "DS Parameter set", print_ds, 1, 1, BIT(PRINT_SCAN), },
  	[5] = { "TIM", print_tim, 4, 255, BIT(PRINT_SCAN), },
-@@ -1533,21 +1544,15 @@ static const struct ie_print ieprinters[
+@@ -1531,21 +1542,15 @@ static const struct ie_print ieprinters[
  	[32] = { "Power constraint", print_powerconstraint, 1, 1, BIT(PRINT_SCAN), },
  	[35] = { "TPC report", print_tpcreport, 2, 2, BIT(PRINT_SCAN), },
  	[42] = { "ERP", print_erp, 1, 255, BIT(PRINT_SCAN), },
@@ -198,7 +198,7 @@
  };
  
  static void print_wifi_wpa(const uint8_t type, uint8_t len, const uint8_t *data,
-@@ -2026,6 +2031,7 @@ void print_ies(unsigned char *ie, int ie
+@@ -2024,6 +2029,7 @@ void print_ies(unsigned char *ie, int ie
  		    ieprinters[ie[0]].flags & BIT(ptype)) {
  			print_ie(&ieprinters[ie[0]],
  				 ie[0], ie[1], ie + 2, &ie_buffer);
@@ -206,7 +206,7 @@
  		} else if (ie[0] == 221 /* vendor */) {
  			print_vendor(ie[1], ie + 2, unknown, ptype);
  		} else if (unknown) {
-@@ -2035,6 +2041,7 @@ void print_ies(unsigned char *ie, int ie
+@@ -2033,6 +2039,7 @@ void print_ies(unsigned char *ie, int ie
  			for (i=0; i<ie[1]; i++)
  				printf(" %.2x", ie[2+i]);
  			printf("\n");
@@ -214,7 +214,7 @@
  		}
  		ielen -= ie[1] + 2;
  		ie += ie[1] + 2;
-@@ -2075,6 +2082,7 @@ static void print_capa_non_dmg(__u16 cap
+@@ -2073,6 +2080,7 @@ static void print_capa_non_dmg(__u16 cap
  		printf(" ESS");
  	if (capa & WLAN_CAPABILITY_IBSS)
  		printf(" IBSS");
@@ -222,7 +222,7 @@
  	if (capa & WLAN_CAPABILITY_CF_POLLABLE)
  		printf(" CfPollable");
  	if (capa & WLAN_CAPABILITY_CF_POLL_REQUEST)
-@@ -2103,6 +2111,7 @@ static void print_capa_non_dmg(__u16 cap
+@@ -2101,6 +2109,7 @@ static void print_capa_non_dmg(__u16 cap
  		printf(" DelayedBACK");
  	if (capa & WLAN_CAPABILITY_IMM_BACK)
  		printf(" ImmediateBACK");
@@ -230,7 +230,7 @@
  }
  
  static int print_bss_handler(struct nl_msg *msg, void *arg)
-@@ -2187,8 +2196,10 @@ static int print_bss_handler(struct nl_m
+@@ -2185,8 +2194,10 @@ static int print_bss_handler(struct nl_m
  	if (bss[NL80211_BSS_FREQUENCY]) {
  		int freq = nla_get_u32(bss[NL80211_BSS_FREQUENCY]);
  		printf("\tfreq: %d\n", freq);
@@ -241,7 +241,7 @@
  	}
  	if (bss[NL80211_BSS_BEACON_INTERVAL])
  		printf("\tbeacon interval: %d TUs\n",
-@@ -2382,6 +2393,7 @@ static int handle_stop_sched_scan(struct
+@@ -2380,6 +2391,7 @@ static int handle_stop_sched_scan(struct
  	return 0;
  }
  
@@ -249,14 +249,14 @@
  COMMAND(scan, sched_start,
  	SCHED_SCAN_OPTIONS,
  	NL80211_CMD_START_SCHED_SCAN, 0, CIB_NETDEV, handle_start_sched_scan,
-@@ -2392,3 +2404,4 @@ COMMAND(scan, sched_start,
+@@ -2390,3 +2402,4 @@ COMMAND(scan, sched_start,
  COMMAND(scan, sched_stop, "",
  	NL80211_CMD_STOP_SCHED_SCAN, 0, CIB_NETDEV, handle_stop_sched_scan,
  	"Stop an ongoing scheduled scan.");
 +#endif
 --- a/util.c
 +++ b/util.c
-@@ -291,6 +291,7 @@ static const char *commands[NL80211_CMD_
+@@ -153,6 +153,7 @@ static const char *commands[NL80211_CMD_
  
  static char cmdbuf[100];
  
@@ -264,7 +264,7 @@
  const char *command_name(enum nl80211_commands cmd)
  {
  	if (cmd <= NL80211_CMD_MAX && commands[cmd])
-@@ -298,6 +299,7 @@ const char *command_name(enum nl80211_co
+@@ -160,6 +161,7 @@ const char *command_name(enum nl80211_co
  	sprintf(cmdbuf, "Unknown command (%d)", cmd);
  	return cmdbuf;
  }
@@ -272,7 +272,7 @@
  
  int ieee80211_channel_to_frequency(int chan, enum nl80211_band band)
  {
-@@ -436,6 +438,9 @@ int parse_keys(struct nl_msg *msg, char
+@@ -298,6 +300,9 @@ int parse_keys(struct nl_msg *msg, char
  	char keybuf[13];
  	int pos = 0;
  
@@ -299,7 +299,7 @@
  ifeq ($(NO_PKG_CONFIG),)
 --- a/station.c
 +++ b/station.c
-@@ -736,10 +736,12 @@ static int handle_station_set_plink(stru
+@@ -759,10 +759,12 @@ static int handle_station_set_plink(stru
   nla_put_failure:
  	return -ENOBUFS;
  }
@@ -312,7 +312,7 @@
  
  static int handle_station_set_vlan(struct nl80211_state *state,
  				   struct nl_msg *msg,
-@@ -834,11 +836,13 @@ static int handle_station_set_mesh_power
+@@ -857,11 +859,13 @@ static int handle_station_set_mesh_power
  nla_put_failure:
  	return -ENOBUFS;
  }
-- 
2.25.0




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
