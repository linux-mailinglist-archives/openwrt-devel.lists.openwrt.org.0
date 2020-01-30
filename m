Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A343714E384
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 21:04:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S4F4f5fHRsBlaOwTloRC9HI9XL3RK/k9CO3FFzeQU7I=; b=J+sOkgzqcTrXmO
	K/GaRNmHeesm0IJ7BBKDeStybxqhmvBYwNkXGaE8O2IDZYosSsbf8ItxKzvEHAtd4d/n5gwUe6rZe
	VByRmG/zwc92Owm1rZVzh46a2HdG5l7YF8rSgzMI0k63CGsWbSSbRVrfkg1IwyVzZHzhlxTEAcWi2
	GsMxnCl/UF4C+RTHDbRMqeGt9DdYhiKwz4H0+bRhzSd3Fj8M/GLP0Q8jwChE5PKUEVKBRJB4kRT1O
	2u2XIS0YaDbD5NqR+8ok7bigqPopTyrlJhrB5SE1ZqrIfysbUuT23sjftqh+WFUyTfOhgv009FO08
	Cqm/1WviLoL7O2TDIcOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixG2p-00025J-Gw; Thu, 30 Jan 2020 20:04:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixG2f-00024s-6A
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 20:03:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id a6so5625749wrx.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 30 Jan 2020 12:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YbA+urC4UyK1u0BGPpFGMRzpMjXppQUaBLllM1223SE=;
 b=i4v3YklXJR7Zv39zYFqpS9tx5YeE53Z4Lghg3fsN25BnNFU570IMeIEbJv68wbdXgc
 1wugh3fPol3YlfRkgHjtAT0aN0vGKW3EmB/+6Tf0THGecvi0UQ/aCvka8YVPrnlxfLOv
 7O5EJWJhNPyGHtbadq40XMiiegYBsGLLh/mqmAyiV8IMPlbYiBLYQgMMuLJxFanHyy1V
 Uuu2eBa+xOWl5hZbl1GBQ9DTzhXV4g207UZTD61Et1Syam4xNVZ7/roQO/xFoKcAtcXt
 QYUuVgRPnZQi2qCDqU4dDmXZIxaVeQDmtwcHXr07YT3jVylKlpOutRmidLVjyTqjGySy
 BeyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YbA+urC4UyK1u0BGPpFGMRzpMjXppQUaBLllM1223SE=;
 b=mVMB4VyY5maxYW9K/awVhafyIkEUR7n6WCeCJVXvmf5sig0apO6q2Kb6TllhGKdPsq
 0Pl1xGBt9q6ulpALLnReDQSL3NvR3WTsLpGBQhht5202jBwqPYVpSiI2L1AC+LqFbEMG
 kjHpWUfM8uOlWNeDRCEUjnet065fKuMDM3peui8ceUJ1Ei2MYKFdBrnfhZVi3vgnzOdj
 Vf9CIXjcPLYo1Tj+dFe9ddE1L0k15/20Tr6H1M7ZrbHQ257D09NahYwUDsX2lhllk1H3
 xk5o0IQ3XtVso65nw5P8NFWqrf++xEOCSRBIG61jdYDPsANgwn0Dx+9LRKubPugkgelA
 mcqg==
X-Gm-Message-State: APjAAAXcOU5RJn+TWek3nfAvBfH7bZsl0OKdJhTNpGLAZXGC0SmKWZAz
 QJgK4Lc2zbHNW0i9qAW0S8m+Ock=
X-Google-Smtp-Source: APXvYqwGXc25mgN+O5wVOPoMve8BN/JW64mbnUkLyKSA8MP36J7wpjFZ/jnN33GsTXO75qUSedR4ig==
X-Received: by 2002:a5d:608e:: with SMTP id w14mr7260830wrt.256.1580414635230; 
 Thu, 30 Jan 2020 12:03:55 -0800 (PST)
Received: from presler.lan (a109-49-10-77.cpe.netcabo.pt. [109.49.10.77])
 by smtp.gmail.com with ESMTPSA id i16sm8258302wmb.36.2020.01.30.12.03.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2020 12:03:54 -0800 (PST)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 30 Jan 2020 20:03:45 +0000
Message-Id: <20200130200345.31741-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_120357_256597_EBC56C06 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [RFC/RFT PATCH] ath9k: implement kthread entropy
 collection for AR5008 and AR9002 PHYs.
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

The mainline ath9k driver is able to provide a hardware random number
generator by collecting radio noise from the PHY ADC (using a kthread
to fill up the entropy pool as needed). Nevertheless, this feature has
only been implemented for the more recent AR9003 PHYs.

Meanwhile, OpenWrt has been carrying a patch to provide entropy from the
ADC for the three supported PHYs for a long time, but this patch only
collects entropy once per existing PHY, at the driver initialisation
time.

This patch enables kconfig support for this feature and updates the
OpenWrt patch, in order to add ADC entropy collection support to both
AR5008 and AR9002 PHYs.

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---
 package/kernel/mac80211/ath.mk                |   7 +
 .../ath/543-ath9k_entropy_from_adc.patch      | 216 ++++++++++--------
 2 files changed, 134 insertions(+), 89 deletions(-)

diff --git a/package/kernel/mac80211/ath.mk b/package/kernel/mac80211/ath.mk
index 788131b751..fb6e893494 100644
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
+		bool "Use the PHY ADC as a hardware random number generator"
+		depends on PACKAGE_kmod-ath9k
+		select PACKAGE_kmod-random-core
+
        config ATH9K_TX99
                bool "Enable TX99 support (WARNING: testing only, breaks normal operation!)"
                depends on PACKAGE_kmod-ath9k
diff --git a/package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch b/package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch
index 64bd6cacfd..8b92fbcb0b 100644
--- a/package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch
+++ b/package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch
@@ -8,145 +8,113 @@
   * @spectral_scan_config: set parameters for spectral scan and enable/disable it
   * @spectral_scan_trigger: trigger a spectral scan run
   * @spectral_scan_wait: wait for a spectral scan run to finish
-@@ -744,6 +745,7 @@ struct ath_hw_ops {
- 			struct ath_hw_antcomb_conf *antconf);
- 	void (*antdiv_comb_conf_set)(struct ath_hw *ah,
- 			struct ath_hw_antcomb_conf *antconf);
-+	void (*get_adc_entropy)(struct ath_hw *ah, u8 *buf, size_t len);
- 	void (*spectral_scan_config)(struct ath_hw *ah,
- 				     struct ath_spec_scan *param);
- 	void (*spectral_scan_trigger)(struct ath_hw *ah);
+@@ -756,6 +757,10 @@ struct ath_hw_ops {
+ #ifdef CPTCFG_ATH9K_BTCOEX_SUPPORT
+ 	void (*set_bt_ant_diversity)(struct ath_hw *hw, bool enable);
+ #endif
++
++#ifdef CPTCFG_ATH9K_HWRNG
++	int (*get_adc_entropy)(struct ath_hw *ah, u32 *buf, const u32 buf_size, u32 *rng_last);
++#endif
+ };
+ 
+ struct ath_nf_limits {
 --- a/drivers/net/wireless/ath/ath9k/ar9003_phy.c
 +++ b/drivers/net/wireless/ath/ath9k/ar9003_phy.c
-@@ -1927,6 +1927,26 @@ void ar9003_hw_init_rate_txpower(struct
+@@ -1927,6 +1927,33 @@ void ar9003_hw_init_rate_txpower(struct
  	}
  }
  
-+static void ar9003_hw_get_adc_entropy(struct ath_hw *ah, u8 *buf, size_t len)
++static int __maybe_unused
++ar9003_hw_get_adc_entropy(struct ath_hw *ah, u32 *buf, const u32 buf_size, u32 *rng_last)
 +{
 +	int i, j;
++	u32  v1, v2, last = *rng_last;
 +
 +	REG_RMW_FIELD(ah, AR_PHY_TEST, AR_PHY_TEST_BBB_OBS_SEL, 1);
 +	REG_CLR_BIT(ah, AR_PHY_TEST, AR_PHY_TEST_RX_OBS_SEL_BIT5);
 +	REG_RMW_FIELD(ah, AR_PHY_TEST_CTL_STATUS, AR_PHY_TEST_CTL_RX_OBS_SEL, 0);
 +
-+	memset(buf, 0, len);
-+	for (i = 0; i < len; i++) {
-+		for (j = 0; j < 4; j++) {
-+			u32 regval = REG_READ(ah, AR_PHY_TST_ADC);
++	for (i = 0, j = 0; i < buf_size; i++) {
++		v1 = REG_READ(ah, AR_PHY_TST_ADC) & 0xffff;
++		v2 = REG_READ(ah, AR_PHY_TST_ADC) & 0xffff;
++
++		/* wait for data ready */
++		if (v1 && v2 && last != v1 && v1 != v2 && v1 != 0xffff &&
++		    v2 != 0xffff)
++			buf[j++] = (v1 << 16) | v2;
 +
-+			buf[i] <<= 2;
-+			buf[i] |= (regval & 1) | ((regval & BIT(10)) >> 9);
-+			udelay(1);
-+		}
++		last = v2;
 +	}
++
++	*rng_last = last;
++
++	return j << 2;
 +}
 +
  void ar9003_hw_attach_phy_ops(struct ath_hw *ah)
  {
  	struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);
-@@ -1963,6 +1983,7 @@ void ar9003_hw_attach_phy_ops(struct ath
+@@ -1962,7 +1989,9 @@ void ar9003_hw_attach_phy_ops(struct ath
+ 	priv_ops->ani_cache_ini_regs = ar9003_hw_ani_cache_ini_regs;
  	priv_ops->set_radar_params = ar9003_hw_set_radar_params;
  	priv_ops->fast_chan_change = ar9003_hw_fast_chan_change;
- 
+-
++#ifdef CPTCFG_ATH9K_HWRNG
 +	ops->get_adc_entropy = ar9003_hw_get_adc_entropy;
++#endif
  	ops->antdiv_comb_conf_get = ar9003_hw_antdiv_comb_conf_get;
  	ops->antdiv_comb_conf_set = ar9003_hw_antdiv_comb_conf_set;
  	ops->spectral_scan_config = ar9003_hw_spectral_scan_config;
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
 --- a/drivers/net/wireless/ath/ath9k/ar5008_phy.c
 +++ b/drivers/net/wireless/ath/ath9k/ar5008_phy.c
-@@ -1320,9 +1320,30 @@ void ar5008_hw_init_rate_txpower(struct
+@@ -1320,9 +1320,37 @@ void ar5008_hw_init_rate_txpower(struct
  	}
  }
  
-+static void ar5008_hw_get_adc_entropy(struct ath_hw *ah, u8 *buf, size_t len)
++static int __maybe_unused
++ar5008_hw_get_adc_entropy(struct ath_hw *ah, u32 *buf, const u32 buf_size, u32 *rng_last)
 +{
 +	int i, j;
++	u32 v1, v2, last = *rng_last;
 +
 +	REG_RMW_FIELD(ah, AR_PHY_TEST, AR_PHY_TEST_BBB_OBS_SEL, 1);
 +	REG_CLR_BIT(ah, AR_PHY_TEST, AR_PHY_TEST_RX_OBS_SEL_BIT5);
 +	REG_RMW_FIELD(ah, AR_PHY_TEST2, AR_PHY_TEST2_RX_OBS_SEL, 0);
 +
-+	memset(buf, 0, len);
-+	for (i = 0; i < len; i++) {
-+		for (j = 0; j < 4; j++) {
-+			u32 regval = REG_READ(ah, AR_PHY_TST_ADC);
++	for (i = 0, j = 0; i < buf_size; i++) {
++		v1 = REG_READ(ah, AR_PHY_TST_ADC) & 0xffff;
++		v2 = REG_READ(ah, AR_PHY_TST_ADC) & 0xffff;
++
++		/* wait for data ready */
++		if (v1 && v2 && last != v1 && v1 != v2 && v1 != 0xffff &&
++		    v2 != 0xffff)
++			buf[j++] = (v1 << 16) | v2;
 +
-+			buf[i] <<= 2;
-+			buf[i] |= (regval & 1) | ((regval & BIT(9)) >> 8);
-+			udelay(1);
-+		}
++		last = v2;
 +	}
++
++	*rng_last = last;
++
++	return j << 2;
 +}
 +
  int ar5008_hw_attach_phy_ops(struct ath_hw *ah)
  {
  	struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);
-+	struct ath_hw_ops *ops = ath9k_hw_ops(ah);
++	struct ath_hw_ops *ops __maybe_unused;
  	static const u32 ar5416_cca_regs[6] = {
  		AR_PHY_CCA,
  		AR_PHY_CH1_CCA,
-@@ -1337,6 +1358,8 @@ int ar5008_hw_attach_phy_ops(struct ath_
+@@ -1336,7 +1364,10 @@ int ar5008_hw_attach_phy_ops(struct ath_
+ 	ret = ar5008_hw_rf_alloc_ext_banks(ah);
  	if (ret)
  	    return ret;
- 
+-
++#ifdef CPTCFG_ATH9K_HWRNG
++	*ops = ath9k_hw_ops(ah);
 +	ops->get_adc_entropy = ar5008_hw_get_adc_entropy;
-+
++#endif
  	priv_ops->rf_set_freq = ar5008_hw_set_channel;
  	priv_ops->spur_mitigate_freq = ar5008_hw_spur_mitigate;
  
@@ -184,3 +152,73 @@
  #define AR_PHY_CHAN_INFO_GAIN_DIFF             0x9CF4
  #define AR_PHY_CHAN_INFO_GAIN_DIFF_UPPER_LIMIT 320
  
+--- a/drivers/net/wireless/ath/ath9k/rng.c
++++ b/drivers/net/wireless/ath/ath9k/rng.c
+@@ -19,42 +19,30 @@
+ 
+ #include "ath9k.h"
+ #include "hw.h"
+-#include "ar9003_phy.h"
+ 
+ #define ATH9K_RNG_BUF_SIZE	320
+ #define ATH9K_RNG_ENTROPY(x)	(((x) * 8 * 10) >> 5) /* quality: 10/32 */
+ 
+ static DECLARE_WAIT_QUEUE_HEAD(rng_queue);
+ 
+-static int ath9k_rng_data_read(struct ath_softc *sc, u32 *buf, u32 buf_size)
++static inline int ath9k_hw_get_adc_entropy(struct ath_hw *ah,
++	u32 *buf, const u32 buf_size, u32 *rng_last)
++{
++	return ath9k_hw_ops(ah)->get_adc_entropy(ah, buf, buf_size, rng_last);
++}
++
++static int ath9k_rng_data_read(struct ath_softc *sc, u32 *buf, const u32 buf_size)
+ {
+-	int i, j;
+-	u32  v1, v2, rng_last = sc->rng_last;
+ 	struct ath_hw *ah = sc->sc_ah;
++	int bytes_read;
+ 
+ 	ath9k_ps_wakeup(sc);
+ 
+-	REG_RMW_FIELD(ah, AR_PHY_TEST, AR_PHY_TEST_BBB_OBS_SEL, 1);
+-	REG_CLR_BIT(ah, AR_PHY_TEST, AR_PHY_TEST_RX_OBS_SEL_BIT5);
+-	REG_RMW_FIELD(ah, AR_PHY_TEST_CTL_STATUS, AR_PHY_TEST_CTL_RX_OBS_SEL, 0);
+-
+-	for (i = 0, j = 0; i < buf_size; i++) {
+-		v1 = REG_READ(ah, AR_PHY_TST_ADC) & 0xffff;
+-		v2 = REG_READ(ah, AR_PHY_TST_ADC) & 0xffff;
+-
+-		/* wait for data ready */
+-		if (v1 && v2 && rng_last != v1 && v1 != v2 && v1 != 0xffff &&
+-		    v2 != 0xffff)
+-			buf[j++] = (v1 << 16) | v2;
+-
+-		rng_last = v2;
+-	}
++	bytes_read = ath9k_hw_get_adc_entropy(ah, buf, buf_size, &sc->rng_last);
+ 
+ 	ath9k_ps_restore(sc);
+ 
+-	sc->rng_last = rng_last;
+-
+-	return j << 2;
++	return bytes_read;
+ }
+ 
+ static u32 ath9k_rng_delay_get(u32 fail_stats)
+@@ -109,14 +97,9 @@ out:
+ 
+ void ath9k_rng_start(struct ath_softc *sc)
+ {
+-	struct ath_hw *ah = sc->sc_ah;
+-
+ 	if (sc->rng_task)
+ 		return;
+ 
+-	if (!AR_SREV_9300_20_OR_LATER(ah))
+-		return;
+-
+ 	sc->rng_task = kthread_run(ath9k_rng_kthread, sc, "ath9k-hwrng");
+ 	if (IS_ERR(sc->rng_task))
+ 		sc->rng_task = NULL;
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
