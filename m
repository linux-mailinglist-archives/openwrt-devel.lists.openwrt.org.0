Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1F5198791
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 00:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=46YzZvc/eyVMR0borIeJr3GKuYIhm+ImZtwkdkd74rM=; b=MJccS9uFqpeh4l
	Vt8ZicQESePUdbSX4cGpx9y12+KfyMZXycObQ96P2iWP7RT8H9tz5ginmrWaCHfXq0v8r4h70Adhc
	L7gfCLxpxT6Ojvf8lPSMDP14yinDoXi6ruJ2ZgfQsmHSBEBQyvsXZ7R5an/iBFBm9eaMXgvQFJRe8
	ZVKgFa2VlYVFNM5sSGV6HmQJY0WsmoD8RqZgkHhaxRg1AGKhmP0Gd3YFzSFOc1Mv8+LjUsYSKNK0P
	65CNDxydWVnT6fLuPccQXxLgU9PWtIsaZfgH8u1euNqdTTeV57AssMn/jD58BtGMu8oqES6EeKTPp
	9l2uUchLu89R29tjJPGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3Af-00074V-PG; Mon, 30 Mar 2020 22:46:17 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3AV-00073n-Jj
 for openwrt-devel@lists.openwrt.org; Mon, 30 Mar 2020 22:46:09 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jJ3AN-0001Dm-2Y; Tue, 31 Mar 2020 00:46:06 +0200
Date: Mon, 30 Mar 2020 23:45:28 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200330224528.GA41973@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_154607_953963_557A5676 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] mac80211: rt2x00: prune more unnecessary
 exports
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, pozega.tomislav@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The calibration patches for MT7620 unnecessarily export symbols and
populate never accessed function pointers. Remove all that and make
functions static as the only place where each of those functions is
called is within rt2800lib.c.

See also https://github.com/openwrt/openwrt/pull/626 for more
inspiration.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 ...-rt2x00-add-rf-self-txdc-calibration.patch | 28 ++-------------
 .../rt2x00/983-rt2x00-add-r-calibration.patch | 34 +++----------------
 .../984-rt2x00-add-rxdcoc-calibration.patch   | 29 +++-------------
 .../985-rt2x00-add-rxiq-calibration.patch     | 29 +++-------------
 .../986-rt2x00-add-TX-LOFT-calibration.patch  | 25 ++------------
 5 files changed, 19 insertions(+), 126 deletions(-)

diff --git a/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch b/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch
index 3bb91ec7c5..4addb8e545 100644
--- a/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch
@@ -1,10 +1,10 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -8422,6 +8422,58 @@ static void rt2800_init_rfcsr_5592(struc
+@@ -8422,6 +8422,56 @@ static void rt2800_init_rfcsr_5592(struc
  	rt2800_led_open_drain_enable(rt2x00dev);
  }
  
-+void rt2800_rf_self_txdc_cal(struct rt2x00_dev *rt2x00dev)
++static void rt2800_rf_self_txdc_cal(struct rt2x00_dev *rt2x00dev)
 +{
 +	u8 rfb5r1_org, rfb7r1_org, rfvalue;
 +	u32 mac0518, mac051c, mac0528, mac052c;
@@ -52,14 +52,12 @@
 +	rt2800_register_write(rt2x00dev, RF_BYPASS2, mac052c);
 +
 +	rt2x00_info(rt2x00dev, "RF Tx self calibration end\n");
-+
 +}
-+EXPORT_SYMBOL_GPL(rt2800_rf_self_txdc_cal);
 +
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -9029,6 +9081,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9029,6 +9079,7 @@ static void rt2800_init_rfcsr_6352(struc
  	rt2800_rfcsr_write_dccal(rt2x00dev, 5, 0x00);
  	rt2800_rfcsr_write_dccal(rt2x00dev, 17, 0x7C);
  
@@ -67,23 +65,3 @@
  	rt2800_bw_filter_calibration(rt2x00dev, true);
  	rt2800_bw_filter_calibration(rt2x00dev, false);
  }
---- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-@@ -242,6 +242,7 @@ void rt2800_link_tuner(struct rt2x00_dev
- 		       const u32 count);
- void rt2800_gain_calibration(struct rt2x00_dev *rt2x00dev);
- void rt2800_vco_calibration(struct rt2x00_dev *rt2x00dev);
-+void rt2800_rf_self_txdc_cal(struct rt2x00_dev *rt2x00dev);
- 
- int rt2800_enable_radio(struct rt2x00_dev *rt2x00dev);
- void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
---- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -562,6 +562,7 @@ struct rt2x00lib_ops {
- 			    struct link_qual *qual, const u32 count);
- 	void (*gain_calibration) (struct rt2x00_dev *rt2x00dev);
- 	void (*vco_calibration) (struct rt2x00_dev *rt2x00dev);
-+	void (*rf_self_txdc_cal) (struct rt2x00_dev *rt2x00dev);
- 
- 	/*
- 	 * Data queue handlers.
diff --git a/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch b/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch
index d7d07f8bb6..a2b0ae086a 100644
--- a/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch
@@ -1,10 +1,10 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -8474,6 +8474,160 @@ void rt2800_rf_self_txdc_cal(struct rt2x
+@@ -8472,6 +8472,158 @@ static void rt2800_rf_self_txdc_cal(stru
+ 	rt2x00_info(rt2x00dev, "RF Tx self calibration end\n");
  }
- EXPORT_SYMBOL_GPL(rt2800_rf_self_txdc_cal);
  
-+int rt2800_calcrcalibrationcode(struct rt2x00_dev *rt2x00dev, int d1, int d2)
++static int rt2800_calcrcalibrationcode(struct rt2x00_dev *rt2x00dev, int d1, int d2)
 +{
 +	int calcode;
 +	calcode = ((d2 - d1) * 1000) / 43;
@@ -14,9 +14,8 @@
 +
 +	return calcode;
 +}
-+EXPORT_SYMBOL_GPL(rt2800_calcrcalibrationcode);
 +
-+void rt2800_r_calibration(struct rt2x00_dev *rt2x00dev)
++static void rt2800_r_calibration(struct rt2x00_dev *rt2x00dev)
 +{
 +	u32 savemacsysctrl;
 +	u8 saverfb0r1, saverfb0r34, saverfb0r35;
@@ -156,12 +155,11 @@
 +	rt2800_register_write(rt2x00dev, MAC_SYS_CTRL, savemacsysctrl);
 +	rt2800_register_write(rt2x00dev, PWR_PIN_CFG, MAC_PWR_PIN_CFG);
 +}
-+EXPORT_SYMBOL_GPL(rt2800_r_calibration);
 +
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -9081,6 +9235,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9079,6 +9231,7 @@ static void rt2800_init_rfcsr_6352(struc
  	rt2800_rfcsr_write_dccal(rt2x00dev, 5, 0x00);
  	rt2800_rfcsr_write_dccal(rt2x00dev, 17, 0x7C);
  
@@ -169,25 +167,3 @@
  	rt2800_rf_self_txdc_cal(rt2x00dev);
  	rt2800_bw_filter_calibration(rt2x00dev, true);
  	rt2800_bw_filter_calibration(rt2x00dev, false);
---- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-@@ -243,6 +243,8 @@ void rt2800_link_tuner(struct rt2x00_dev
- void rt2800_gain_calibration(struct rt2x00_dev *rt2x00dev);
- void rt2800_vco_calibration(struct rt2x00_dev *rt2x00dev);
- void rt2800_rf_self_txdc_cal(struct rt2x00_dev *rt2x00dev);
-+int rt2800_calcrcalibrationcode(struct rt2x00_dev *rt2x00dev, int d1, int d2);
-+void rt2800_r_calibration(struct rt2x00_dev *rt2x00dev);
- 
- int rt2800_enable_radio(struct rt2x00_dev *rt2x00dev);
- void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
---- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -563,6 +563,8 @@ struct rt2x00lib_ops {
- 	void (*gain_calibration) (struct rt2x00_dev *rt2x00dev);
- 	void (*vco_calibration) (struct rt2x00_dev *rt2x00dev);
- 	void (*rf_self_txdc_cal) (struct rt2x00_dev *rt2x00dev);
-+	int (*calcrcalibrationcode) (struct rt2x00_dev *rt2x00dev, int d1, int d2);
-+	void (*r_calibration) (struct rt2x00_dev *rt2x00dev);
- 
- 	/*
- 	 * Data queue handlers.
diff --git a/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch b/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch
index b6180efa8b..29b5d3732f 100644
--- a/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch
@@ -1,10 +1,10 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -8628,6 +8628,71 @@ void rt2800_r_calibration(struct rt2x00_
+@@ -8624,6 +8624,70 @@ static void rt2800_r_calibration(struct
+ 	rt2800_register_write(rt2x00dev, PWR_PIN_CFG, MAC_PWR_PIN_CFG);
  }
- EXPORT_SYMBOL_GPL(rt2800_r_calibration);
  
-+void rt2800_rxdcoc_calibration(struct rt2x00_dev *rt2x00dev)
++static void rt2800_rxdcoc_calibration(struct rt2x00_dev *rt2x00dev)
 +{
 +	u8 bbpreg = 0;
 +	u32 macvalue = 0, macvalue1 = 0;
@@ -67,12 +67,11 @@
 +
 +	rt2800_rfcsr_write_bank(rt2x00dev, 0, 2, saverfb0r2);
 +}
-+EXPORT_SYMBOL_GPL(rt2800_rxdcoc_calibration);
 +
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -9237,6 +9302,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9233,6 +9297,7 @@ static void rt2800_init_rfcsr_6352(struc
  
  	rt2800_r_calibration(rt2x00dev);
  	rt2800_rf_self_txdc_cal(rt2x00dev);
@@ -80,23 +79,3 @@
  	rt2800_bw_filter_calibration(rt2x00dev, true);
  	rt2800_bw_filter_calibration(rt2x00dev, false);
  }
---- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-@@ -245,6 +245,7 @@ void rt2800_vco_calibration(struct rt2x0
- void rt2800_rf_self_txdc_cal(struct rt2x00_dev *rt2x00dev);
- int rt2800_calcrcalibrationcode(struct rt2x00_dev *rt2x00dev, int d1, int d2);
- void rt2800_r_calibration(struct rt2x00_dev *rt2x00dev);
-+void rt2800_rxdcoc_calibration(struct rt2x00_dev *rt2x00dev);
- 
- int rt2800_enable_radio(struct rt2x00_dev *rt2x00dev);
- void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
---- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -565,6 +565,7 @@ struct rt2x00lib_ops {
- 	void (*rf_self_txdc_cal) (struct rt2x00_dev *rt2x00dev);
- 	int (*calcrcalibrationcode) (struct rt2x00_dev *rt2x00dev, int d1, int d2);
- 	void (*r_calibration) (struct rt2x00_dev *rt2x00dev);
-+	void (*rxdcoc_calibration) (struct rt2x00_dev *rt2x00dev);
- 
- 	/*
- 	 * Data queue handlers.
diff --git a/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch b/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
index 63cca526c2..bd8123fb3c 100644
--- a/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
@@ -1,8 +1,8 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -8693,6 +8693,385 @@ void rt2800_rxdcoc_calibration(struct rt
+@@ -8688,6 +8688,384 @@ static void rt2800_rxdcoc_calibration(st
+ 	rt2800_rfcsr_write_bank(rt2x00dev, 0, 2, saverfb0r2);
  }
- EXPORT_SYMBOL_GPL(rt2800_rxdcoc_calibration);
  
 +static u32 rt2800_do_sqrt_accumulation(u32 si) {
 +	u32 root, root_pre, bit;
@@ -19,7 +19,7 @@
 +	return root;
 +}
 +
-+void rt2800_rxiq_calibration(struct rt2x00_dev *rt2x00dev) {
++static void rt2800_rxiq_calibration(struct rt2x00_dev *rt2x00dev) {
 +	u8 rfb0r1, rfb0r2, rfb0r42;
 +	u8 rfb4r0, rfb4r19;
 +	u8 rfb5r3, rfb5r4, rfb5r17, rfb5r18, rfb5r19, rfb5r20;
@@ -381,12 +381,11 @@
 +	rt2800_register_write(rt2x00dev, RF_BYPASS3, orig_RF_BYPASS3);
 +	rt2800_register_write(rt2x00dev, MAC_SYS_CTRL, savemacsysctrl);
 +}
-+EXPORT_SYMBOL_GPL(rt2800_rxiq_calibration);
 +
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -9305,6 +9684,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9300,6 +9678,7 @@ static void rt2800_init_rfcsr_6352(struc
  	rt2800_rxdcoc_calibration(rt2x00dev);
  	rt2800_bw_filter_calibration(rt2x00dev, true);
  	rt2800_bw_filter_calibration(rt2x00dev, false);
@@ -394,23 +393,3 @@
  }
  
  static void rt2800_init_rfcsr(struct rt2x00_dev *rt2x00dev)
---- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-@@ -246,6 +246,7 @@ void rt2800_rf_self_txdc_cal(struct rt2x
- int rt2800_calcrcalibrationcode(struct rt2x00_dev *rt2x00dev, int d1, int d2);
- void rt2800_r_calibration(struct rt2x00_dev *rt2x00dev);
- void rt2800_rxdcoc_calibration(struct rt2x00_dev *rt2x00dev);
-+void rt2800_rxiq_calibration(struct rt2x00_dev *rt2x00dev);
- 
- int rt2800_enable_radio(struct rt2x00_dev *rt2x00dev);
- void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
---- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -566,6 +566,7 @@ struct rt2x00lib_ops {
- 	int (*calcrcalibrationcode) (struct rt2x00_dev *rt2x00dev, int d1, int d2);
- 	void (*r_calibration) (struct rt2x00_dev *rt2x00dev);
- 	void (*rxdcoc_calibration) (struct rt2x00_dev *rt2x00dev);
-+	void (*rxiq_calibration) (struct rt2x00_dev *rt2x00dev);
- 
- 	/*
- 	 * Data queue handlers.
diff --git a/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch b/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
index 1a18f13f8e..1da4018f04 100644
--- a/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
@@ -1,8 +1,8 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -9072,6 +9072,944 @@ restore_value:
+@@ -9066,6 +9066,943 @@ restore_value:
+ 	rt2800_register_write(rt2x00dev, MAC_SYS_CTRL, savemacsysctrl);
  }
- EXPORT_SYMBOL_GPL(rt2800_rxiq_calibration);
  
 +static void rt2800_rf_configstore(struct rt2x00_dev *rt2x00dev, rf_reg_pair rf_reg_record[][13], u8 chain)
 +{
@@ -940,12 +940,11 @@
 +
 +	return;
 +}
-+EXPORT_SYMBOL_GPL(rt2800_loft_iq_calibration);
 +
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -9684,6 +10622,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9678,6 +10615,7 @@ static void rt2800_init_rfcsr_6352(struc
  	rt2800_rxdcoc_calibration(rt2x00dev);
  	rt2800_bw_filter_calibration(rt2x00dev, true);
  	rt2800_bw_filter_calibration(rt2x00dev, false);
@@ -972,21 +971,3 @@
  
  /* RT2800 driver data structure */
  struct rt2800_drv_data {
-@@ -247,6 +257,7 @@ int rt2800_calcrcalibrationcode(struct r
- void rt2800_r_calibration(struct rt2x00_dev *rt2x00dev);
- void rt2800_rxdcoc_calibration(struct rt2x00_dev *rt2x00dev);
- void rt2800_rxiq_calibration(struct rt2x00_dev *rt2x00dev);
-+void rt2800_loft_iq_calibration(struct rt2x00_dev *rt2x00dev);
- 
- int rt2800_enable_radio(struct rt2x00_dev *rt2x00dev);
- void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
---- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -567,6 +567,7 @@ struct rt2x00lib_ops {
- 	void (*r_calibration) (struct rt2x00_dev *rt2x00dev);
- 	void (*rxdcoc_calibration) (struct rt2x00_dev *rt2x00dev);
- 	void (*rxiq_calibration) (struct rt2x00_dev *rt2x00dev);
-+	void (*loft_iq_calibration) (struct rt2x00_dev *rt2x00dev);
- 
- 	/*
- 	 * Data queue handlers.
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
