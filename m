Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F77914A9BB
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 19:20:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vFwiV1o3GquW0IruCe/szX2VWrcB9MxhofRktzrxLxs=; b=K41SPA8Anbq4HV
	zSu8HfsNZ0+z/dLYYXXHjMBze6WIOAF91DjXem5kqXnjIIVBHGlCxOtS9hKqdQbQHhtzj6Og/30V0
	FfPWyCOb8feCMV6qpQ85A5YQP6hgMr/Yhlvtt0UqD/Bu2ZwtzSNR1q3Tsn+eHZkKVNqMATOibpqa3
	CElQPXIAFpg/2o0eohiU5HzQhrCYTQQQ9CZlI1s34waGaodXtQLY6iKXFD2KMpCtZTNDmIAG74BtS
	dPCofGxpQlmAepJK9jVwJTbVb9N3kN2aqnF+w5i/jljsgak17q7J/jAxKbJlirnaaOrh9X8mfo1GN
	RvzvUcKQb+TqQ0LB8UPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw8zc-0001He-4k; Mon, 27 Jan 2020 18:20:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw8zK-0001H8-8S
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 18:19:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so12655301wrq.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Jan 2020 10:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vh4hNPKiwR9bZZ/IOHGZpr//2nwOSq7XZJfWp8uZF14=;
 b=VZpmiejmRcCTuPeaG78i4MX474Fpc6H1NG87eImDrnFE0sdOF/Knk1P7xSS+MZbsmr
 bRboR9iU/0Te26NwizehQ3nOCuohAO04cOo/WUQguo83ijwvfOeZhOkEiAJjVZwtxnd0
 s29Iq+vwbNuZh+l0JZGF+hYwSGKvV3eNijv4oYa8XF0+t4CJaBR0FFFwiibxF3FfxRV8
 fWCGNRvNScz2AecsBcsTDcDzYxqbujhsOFOeOWVbWc8fLYf5byTvvhlVCJzC9eKSOf7N
 HYNYrb/97DdpVhfk97F50o4OPMIkuJvz6ayJH5QzwM9dO4E1d6LXA9mzdBnf7POKJbNU
 VMnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vh4hNPKiwR9bZZ/IOHGZpr//2nwOSq7XZJfWp8uZF14=;
 b=G6Qi8v4UWS9h/SJcxQi6UuxFMgg/Vq55JXRJ6OWF9Y2lzFuRLWOUk0P00RNOro4y09
 sp3vAoO+zFfKLpFlrYcre5I0h9+Z/GxW9uG/Kiai2jjgs4RehUYOyuHOyURhQ6tBY1Ey
 zc7xvWFXsemRcfCKEwjeCOYVHUQcWbVDaJQAZ7aqZeJhzrkl2Q/wRSZ8jZcDeagrRzHb
 /o5X0SQ6NJrCbSAgLKdHyDOuj60oNELncz21nV3nWkC1prQMTPPZ+orwxo8PId1rm1B+
 Vq6bx0sE/mpwLj1u6BeXn2XfXcq6xQDl0ex0bNBJ41CTk7Qxqoz4ZYHioNrkx2z7rUkZ
 l35Q==
X-Gm-Message-State: APjAAAUpXYBGwmK7vqZZFOIjXmqkJXwmMiuP7kjAx7zHbiGqm4I4/hM7
 MwxytnjOT4Gby9FZ6qBk0aCDbVo=
X-Google-Smtp-Source: APXvYqxfnH6H3cHvrLz2BPSnV/hlAhV9fp6RE3R+cIzaEaSbUondQmXDo0ZvURfE0jkEbrCTLUcBpw==
X-Received: by 2002:adf:f311:: with SMTP id i17mr24889488wro.81.1580149191083; 
 Mon, 27 Jan 2020 10:19:51 -0800 (PST)
Received: from presler.lan (a109-49-10-77.cpe.netcabo.pt. [109.49.10.77])
 by smtp.gmail.com with ESMTPSA id x132sm27803wmg.0.2020.01.27.10.19.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 10:19:50 -0800 (PST)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 Jan 2020 18:19:46 +0000
Message-Id: <20200127181946.11978-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_101954_302108_2694119D 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [RFC PATCH] ath9k: enable hardware random number
 generator.
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
Cc: Rui Salvaterra <rsalvaterra@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The ath9k driver is able to leverage the PHY ADC in order to provide a
generic hardware random number generator to the kernel, filling up the
entropy pool as required. Expose this feature in the build system and
remove the old entropy patch, which only obtains entropy from the ADC
once, when the ath9k driver is initialised.

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---
 config/Config-kernel.in                       |   4 +
 package/kernel/mac80211/ath.mk                |   7 +
 .../ath/543-ath9k_entropy_from_adc.patch      | 186 ------------------
 3 files changed, 11 insertions(+), 186 deletions(-)
 delete mode 100644 package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch

diff --git a/config/Config-kernel.in b/config/Config-kernel.in
index 20930326ca..2f4cda4275 100644
--- a/config/Config-kernel.in
+++ b/config/Config-kernel.in
@@ -220,6 +220,10 @@ config KERNEL_AIO
 	bool "Compile the kernel with asynchronous IO support"
 	default y if !SMALL_FLASH
 
+config KERNEL_HW_RANDOM
+	bool "Compile the kernel with support for hardware random number generators"
+	default n
+
 config KERNEL_FHANDLE
 	bool "Compile the kernel with support for fhandle syscalls"
 	default y if !SMALL_FLASH
diff --git a/package/kernel/mac80211/ath.mk b/package/kernel/mac80211/ath.mk
index 788131b751..56859cd3c1 100644
--- a/package/kernel/mac80211/ath.mk
+++ b/package/kernel/mac80211/ath.mk
@@ -8,6 +8,7 @@ PKG_CONFIG_DEPENDS += \
 	CONFIG_PACKAGE_ATH_SPECTRAL \
 	CONFIG_PACKAGE_ATH_DYNACK \
 	CONFIG_ATH9K_SUPPORT_PCOEM \
+	CONFIG_ATH9K_HWRNG \
 	CONFIG_ATH9K_TX99 \
 	CONFIG_ATH10K_LEDS \
 	CONFIG_ATH10K_THERMAL \
@@ -45,6 +46,7 @@ config-$(CONFIG_TARGET_ipq40xx) += ATH10K_AHB
 config-$(CONFIG_PCI) += ATH9K_PCI
 config-$(CONFIG_ATH_USER_REGD) += ATH_USER_REGD
 config-$(CONFIG_ATH9K_SUPPORT_PCOEM) += ATH9K_PCOEM
+config-$(CONFIG_ATH9K_HWRNG) += ATH9K_HWRNG
 config-$(CONFIG_ATH9K_TX99) += ATH9K_TX99
 config-$(CONFIG_ATH9K_UBNTHSR) += ATH9K_UBNTHSR
 config-$(CONFIG_ATH10K_LEDS) += ATH10K_LEDS
@@ -211,6 +213,11 @@ define KernelPackage/ath9k/config
 		bool "Support chips used in PC OEM cards"
 		depends on PACKAGE_kmod-ath9k
 
+	config ATH9K_HWRNG
+		bool "Random number generator support"
+		depends on PACKAGE_kmod-ath9k
+		select KERNEL_HW_RANDOM
+
        config ATH9K_TX99
                bool "Enable TX99 support (WARNING: testing only, breaks normal operation!)"
                depends on PACKAGE_kmod-ath9k
diff --git a/package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch b/package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch
deleted file mode 100644
index 64bd6cacfd..0000000000
--- a/package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch
+++ /dev/null
@@ -1,186 +0,0 @@
---- a/drivers/net/wireless/ath/ath9k/hw.h
-+++ b/drivers/net/wireless/ath/ath9k/hw.h
-@@ -722,6 +722,7 @@ struct ath_spec_scan {
-  * @config_pci_powersave:
-  * @calibrate: periodic calibration for NF, ANI, IQ, ADC gain, ADC-DC
-  *
-+ * @get_adc_entropy: get entropy from the raw ADC I/Q output
-  * @spectral_scan_config: set parameters for spectral scan and enable/disable it
-  * @spectral_scan_trigger: trigger a spectral scan run
-  * @spectral_scan_wait: wait for a spectral scan run to finish
-@@ -744,6 +745,7 @@ struct ath_hw_ops {
- 			struct ath_hw_antcomb_conf *antconf);
- 	void (*antdiv_comb_conf_set)(struct ath_hw *ah,
- 			struct ath_hw_antcomb_conf *antconf);
-+	void (*get_adc_entropy)(struct ath_hw *ah, u8 *buf, size_t len);
- 	void (*spectral_scan_config)(struct ath_hw *ah,
- 				     struct ath_spec_scan *param);
- 	void (*spectral_scan_trigger)(struct ath_hw *ah);
---- a/drivers/net/wireless/ath/ath9k/ar9003_phy.c
-+++ b/drivers/net/wireless/ath/ath9k/ar9003_phy.c
-@@ -1927,6 +1927,26 @@ void ar9003_hw_init_rate_txpower(struct
- 	}
- }
- 
-+static void ar9003_hw_get_adc_entropy(struct ath_hw *ah, u8 *buf, size_t len)
-+{
-+	int i, j;
-+
-+	REG_RMW_FIELD(ah, AR_PHY_TEST, AR_PHY_TEST_BBB_OBS_SEL, 1);
-+	REG_CLR_BIT(ah, AR_PHY_TEST, AR_PHY_TEST_RX_OBS_SEL_BIT5);
-+	REG_RMW_FIELD(ah, AR_PHY_TEST_CTL_STATUS, AR_PHY_TEST_CTL_RX_OBS_SEL, 0);
-+
-+	memset(buf, 0, len);
-+	for (i = 0; i < len; i++) {
-+		for (j = 0; j < 4; j++) {
-+			u32 regval = REG_READ(ah, AR_PHY_TST_ADC);
-+
-+			buf[i] <<= 2;
-+			buf[i] |= (regval & 1) | ((regval & BIT(10)) >> 9);
-+			udelay(1);
-+		}
-+	}
-+}
-+
- void ar9003_hw_attach_phy_ops(struct ath_hw *ah)
- {
- 	struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);
-@@ -1963,6 +1983,7 @@ void ar9003_hw_attach_phy_ops(struct ath
- 	priv_ops->set_radar_params = ar9003_hw_set_radar_params;
- 	priv_ops->fast_chan_change = ar9003_hw_fast_chan_change;
- 
-+	ops->get_adc_entropy = ar9003_hw_get_adc_entropy;
- 	ops->antdiv_comb_conf_get = ar9003_hw_antdiv_comb_conf_get;
- 	ops->antdiv_comb_conf_set = ar9003_hw_antdiv_comb_conf_set;
- 	ops->spectral_scan_config = ar9003_hw_spectral_scan_config;
---- a/drivers/net/wireless/ath/ath9k/init.c
-+++ b/drivers/net/wireless/ath/ath9k/init.c
-@@ -819,7 +819,8 @@ static void ath9k_init_txpower_limits(st
- 	if (ah->caps.hw_caps & ATH9K_HW_CAP_5GHZ)
- 		ath9k_init_band_txpower(sc, NL80211_BAND_5GHZ);
- 
--	ah->curchan = curchan;
-+	if (curchan)
-+		ah->curchan = curchan;
- }
- 
- static const struct ieee80211_iface_limit if_limits[] = {
-@@ -1015,6 +1016,18 @@ static void ath9k_set_hw_capab(struct at
- 	wiphy_ext_feature_set(hw->wiphy, NL80211_EXT_FEATURE_AIRTIME_FAIRNESS);
- }
- 
-+static void ath_get_initial_entropy(struct ath_softc *sc)
-+{
-+	struct ath_hw *ah = sc->sc_ah;
-+	char buf[256];
-+
-+	/* reuse last channel initialized by the tx power test */
-+	ath9k_hw_reset(ah, ah->curchan, NULL, false);
-+
-+	ath9k_hw_get_adc_entropy(ah, buf, sizeof(buf));
-+	add_device_randomness(buf, sizeof(buf));
-+}
-+
- int ath9k_init_device(u16 devid, struct ath_softc *sc,
- 		    const struct ath_bus_ops *bus_ops)
- {
-@@ -1060,6 +1073,8 @@ int ath9k_init_device(u16 devid, struct
- 		ARRAY_SIZE(ath9k_tpt_blink));
- #endif
- 
-+	ath_get_initial_entropy(sc);
-+
- 	/* Register with mac80211 */
- 	error = ieee80211_register_hw(hw);
- 	if (error)
---- a/drivers/net/wireless/ath/ath9k/hw-ops.h
-+++ b/drivers/net/wireless/ath/ath9k/hw-ops.h
-@@ -100,6 +100,12 @@ static inline void ath9k_hw_tx99_set_txp
- 		ath9k_hw_ops(ah)->tx99_set_txpower(ah, power);
- }
- 
-+static inline void ath9k_hw_get_adc_entropy(struct ath_hw *ah,
-+		u8 *buf, size_t len)
-+{
-+	ath9k_hw_ops(ah)->get_adc_entropy(ah, buf, len);
-+}
-+
- #ifdef CPTCFG_ATH9K_BTCOEX_SUPPORT
- 
- static inline void ath9k_hw_set_bt_ant_diversity(struct ath_hw *ah, bool enable)
---- a/drivers/net/wireless/ath/ath9k/ar5008_phy.c
-+++ b/drivers/net/wireless/ath/ath9k/ar5008_phy.c
-@@ -1320,9 +1320,30 @@ void ar5008_hw_init_rate_txpower(struct
- 	}
- }
- 
-+static void ar5008_hw_get_adc_entropy(struct ath_hw *ah, u8 *buf, size_t len)
-+{
-+	int i, j;
-+
-+	REG_RMW_FIELD(ah, AR_PHY_TEST, AR_PHY_TEST_BBB_OBS_SEL, 1);
-+	REG_CLR_BIT(ah, AR_PHY_TEST, AR_PHY_TEST_RX_OBS_SEL_BIT5);
-+	REG_RMW_FIELD(ah, AR_PHY_TEST2, AR_PHY_TEST2_RX_OBS_SEL, 0);
-+
-+	memset(buf, 0, len);
-+	for (i = 0; i < len; i++) {
-+		for (j = 0; j < 4; j++) {
-+			u32 regval = REG_READ(ah, AR_PHY_TST_ADC);
-+
-+			buf[i] <<= 2;
-+			buf[i] |= (regval & 1) | ((regval & BIT(9)) >> 8);
-+			udelay(1);
-+		}
-+	}
-+}
-+
- int ar5008_hw_attach_phy_ops(struct ath_hw *ah)
- {
- 	struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);
-+	struct ath_hw_ops *ops = ath9k_hw_ops(ah);
- 	static const u32 ar5416_cca_regs[6] = {
- 		AR_PHY_CCA,
- 		AR_PHY_CH1_CCA,
-@@ -1337,6 +1358,8 @@ int ar5008_hw_attach_phy_ops(struct ath_
- 	if (ret)
- 	    return ret;
- 
-+	ops->get_adc_entropy = ar5008_hw_get_adc_entropy;
-+
- 	priv_ops->rf_set_freq = ar5008_hw_set_channel;
- 	priv_ops->spur_mitigate_freq = ar5008_hw_spur_mitigate;
- 
---- a/drivers/net/wireless/ath/ath9k/ar9002_phy.h
-+++ b/drivers/net/wireless/ath/ath9k/ar9002_phy.h
-@@ -20,6 +20,12 @@
- #define PHY_AGC_CLR             0x10000000
- #define RFSILENT_BB             0x00002000
- 
-+#define AR_PHY_TEST_BBB_OBS_SEL       0x780000
-+#define AR_PHY_TEST_BBB_OBS_SEL_S     19
-+
-+#define AR_PHY_TEST_RX_OBS_SEL_BIT5_S 23
-+#define AR_PHY_TEST_RX_OBS_SEL_BIT5   (1 << AR_PHY_TEST_RX_OBS_SEL_BIT5_S)
-+
- #define AR_PHY_TURBO                0x9804
- #define AR_PHY_FC_TURBO_MODE        0x00000001
- #define AR_PHY_FC_TURBO_SHORT       0x00000002
-@@ -36,6 +42,9 @@
- 
- #define AR_PHY_TEST2			0x9808
- 
-+#define AR_PHY_TEST2_RX_OBS_SEL        0x3C00
-+#define AR_PHY_TEST2_RX_OBS_SEL_S      10
-+
- #define AR_PHY_TIMING2           0x9810
- #define AR_PHY_TIMING3           0x9814
- #define AR_PHY_TIMING3_DSC_MAN   0xFFFE0000
-@@ -393,6 +402,8 @@
- #define AR_PHY_RFBUS_GRANT       0x9C20
- #define AR_PHY_RFBUS_GRANT_EN    0x00000001
- 
-+#define AR_PHY_TST_ADC      0x9C24
-+
- #define AR_PHY_CHAN_INFO_GAIN_DIFF             0x9CF4
- #define AR_PHY_CHAN_INFO_GAIN_DIFF_UPPER_LIMIT 320
- 
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
