Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1140D196DEC
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Mar 2020 16:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AX1/N5YbmAaBzXMDmNxKDxSi52MUwW17FaLfTyDHOaw=; b=NX2ew3PETP0FoJ
	ahSqPRCYI7pAE02GeuyjAYa3vOrXwlC+q1eOwIEfQ31PNiNLuAcYN6OpV85eaERuJw+gglMcknjOk
	TpxCrdJRl03peiEsUEINYBS/HXQnPxo0CP19AnILPwwgbxdzOVl1qUzwfHJ2rB/fKpQjd0Mi7fKu3
	iBXU/cUMrLbO9MR7xgOSw0K0NdWdJrKcPCTPKVm6lKpxY4RPv5ch42CFTrFSgifh83JRP6MG1J2U8
	yZl94sp6si14F+VGlX6RXVwujThZQr30xRes6+ATLT305aG+LLtftAHy3ctzMsOs9bAGscnKb3ID7
	zfMhP4dVyF0MD9pi87GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIYyl-0002N4-GL; Sun, 29 Mar 2020 14:31:59 +0000
Received: from mout-p-102.mailbox.org ([80.241.56.152])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIYyf-0002M0-Dr
 for openwrt-devel@lists.openwrt.org; Sun, 29 Mar 2020 14:31:55 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 48qyhk1NLPzKmfS;
 Sun, 29 Mar 2020 16:31:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id FBrCzv5v7--H; Sun, 29 Mar 2020 16:31:47 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Mar 2020 16:31:32 +0200
Message-Id: <20200329143132.15192-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_073153_777868_3DA7D83D 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.152 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] mac80211: Fix rt2x00 exports
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
Cc: hauke@hauke-m.de, pozega.tomislav@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Do not export static functions, they are anyway not referenced by any
code in a different module.

This fixes the following compile warning:
WARNING: "rt2800_rf_aux_tx0_loopback" [/drivers/net/wireless/ralink/rt2x00/rt2800lib] is a static EXPORT_SYMBOL_GPL
WARNING: "rt2800_write_dc" [/drivers/net/wireless/ralink/rt2x00/rt2800lib] is a static EXPORT_SYMBOL_GPL
WARNING: "rt2800_rf_configstore" [/drivers/net/wireless/ralink/rt2x00/rt2800lib] is a static EXPORT_SYMBOL_GPL
WARNING: "rt2800_do_sqrt_accumulation" [/drivers/net/wireless/ralink/rt2x00/rt2800lib] is a static EXPORT_SYMBOL_GPL
WARNING: "rt2800_rf_configrecover" [/drivers/net/wireless/ralink/rt2x00/rt2800lib] is a static EXPORT_SYMBOL_GPL
WARNING: "rt2800_loft_search" [/drivers/net/wireless/ralink/rt2x00/rt2800lib] is a static EXPORT_SYMBOL_GPL
WARNING: "rt2800_iq_search" [/drivers/net/wireless/ralink/rt2x00/rt2800lib] is a static EXPORT_SYMBOL_GPL
WARNING: "rt2800_setbbptonegenerator" [/drivers/net/wireless/ralink/rt2x00/rt2800lib] is a static EXPORT_SYMBOL_GPL
WARNING: "rt2800_rf_aux_tx1_loopback" [/drivers/net/wireless/ralink/rt2x00/rt2800lib] is a static EXPORT_SYMBOL_GPL

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 .../985-rt2x00-add-rxiq-calibration.patch      |  5 ++---
 .../986-rt2x00-add-TX-LOFT-calibration.patch   | 18 ++++--------------
 2 files changed, 6 insertions(+), 17 deletions(-)

diff --git a/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch b/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
index 9603d94f57ac..63cca526c294 100644
--- a/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -8693,6 +8693,386 @@ void rt2800_rxdcoc_calibration(struct rt
+@@ -8693,6 +8693,385 @@ void rt2800_rxdcoc_calibration(struct rt
  }
  EXPORT_SYMBOL_GPL(rt2800_rxdcoc_calibration);
  
@@ -18,7 +18,6 @@
 +
 +	return root;
 +}
-+EXPORT_SYMBOL_GPL(rt2800_do_sqrt_accumulation);
 +
 +void rt2800_rxiq_calibration(struct rt2x00_dev *rt2x00dev) {
 +	u8 rfb0r1, rfb0r2, rfb0r42;
@@ -387,7 +386,7 @@
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -9305,6 +9685,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9305,6 +9684,7 @@ static void rt2800_init_rfcsr_6352(struc
  	rt2800_rxdcoc_calibration(rt2x00dev);
  	rt2800_bw_filter_calibration(rt2x00dev, true);
  	rt2800_bw_filter_calibration(rt2x00dev, false);
diff --git a/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch b/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
index e0bf00deb6f7..1a18f13f8eaa 100644
--- a/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -9073,6 +9073,954 @@ restore_value:
+@@ -9072,6 +9072,944 @@ restore_value:
  }
  EXPORT_SYMBOL_GPL(rt2800_rxiq_calibration);
  
@@ -121,7 +121,6 @@
 +
 +	return;
 +}
-+EXPORT_SYMBOL_GPL(rt2800_rf_configstore);
 +
 +static void rt2800_rf_configrecover(struct rt2x00_dev *rt2x00dev, rf_reg_pair rf_record[][13])
 +{
@@ -140,7 +139,6 @@
 +
 +	return;
 +}
-+EXPORT_SYMBOL_GPL(rt2800_rf_configrecover);
 +
 +static void rt2800_setbbptonegenerator(struct rt2x00_dev *rt2x00dev)
 +{
@@ -160,9 +158,8 @@
 +
 +	return;
 +}
-+EXPORT_SYMBOL_GPL(rt2800_setbbptonegenerator);
 +
-+u32 rt2800_do_fft_accumulation(struct rt2x00_dev *rt2x00dev, u8 tidx, u8 read_neg)
++static u32 rt2800_do_fft_accumulation(struct rt2x00_dev *rt2x00dev, u8 tidx, u8 read_neg)
 +{
 +	u32 macvalue = 0;
 +	int fftout_i = 0, fftout_q = 0;
@@ -220,9 +217,8 @@
 +
 +	return pint;
 +}
-+EXPORT_SYMBOL_GPL(rt2800_do_fft_accumulation);
 +
-+u32 rt2800_read_fft_accumulation(struct rt2x00_dev *rt2x00dev, u8 tidx) {
++static u32 rt2800_read_fft_accumulation(struct rt2x00_dev *rt2x00dev, u8 tidx) {
 +	u32 macvalue = 0;
 +	int fftout_i = 0, fftout_q = 0;
 +	u32 ptmp=0, pint = 0;
@@ -245,7 +241,6 @@
 +
 +	return pint;
 +}
-+EXPORT_SYMBOL_GPL(rt2800_read_fft_accumulation);
 +
 +static void rt2800_write_dc(struct rt2x00_dev *rt2x00dev, u8 ch_idx, u8 alc, u8 iorq, u8 dc)
 +{
@@ -266,7 +261,6 @@
 +
 +	return;
 +}
-+EXPORT_SYMBOL_GPL(rt2800_write_dc);
 +
 +static void rt2800_loft_search(struct rt2x00_dev *rt2x00dev, u8 ch_idx, u8 alc_idx, u8 dc_result[][RF_ALC_NUM][2])
 +{
@@ -324,7 +318,6 @@
 +
 +	return;
 +}
-+EXPORT_SYMBOL_GPL(rt2800_loft_search);
 +
 +static void rt2800_iq_search(struct rt2x00_dev *rt2x00dev, u8 ch_idx, u8 *ges, u8 *pes)
 +{
@@ -450,7 +443,6 @@
 +
 +	return;
 +}
-+EXPORT_SYMBOL_GPL(rt2800_iq_search);
 +
 +static void rt2800_rf_aux_tx0_loopback(struct rt2x00_dev *rt2x00dev)
 +{
@@ -468,7 +460,6 @@
 +	rt2800_rfcsr_write_bank(rt2x00dev, 5, 19, 0xa2);
 +	rt2800_rfcsr_write_bank(rt2x00dev, 5, 20, 0x20);
 +}
-+EXPORT_SYMBOL_GPL(rt2800_rf_aux_tx0_loopback);
 +
 +static void rt2800_rf_aux_tx1_loopback(struct rt2x00_dev *rt2x00dev)
 +{
@@ -486,7 +477,6 @@
 +	rt2800_rfcsr_write_bank(rt2x00dev, 7, 19, 0xa2);
 +	rt2800_rfcsr_write_bank(rt2x00dev, 7, 20, 0x20);
 +}
-+EXPORT_SYMBOL_GPL(rt2800_rf_aux_tx1_loopback);
 +
 +void rt2800_loft_iq_calibration(struct rt2x00_dev *rt2x00dev)
 +{
@@ -955,7 +945,7 @@
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -9685,6 +10633,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9684,6 +10622,7 @@ static void rt2800_init_rfcsr_6352(struc
  	rt2800_rxdcoc_calibration(rt2x00dev);
  	rt2800_bw_filter_calibration(rt2x00dev, true);
  	rt2800_bw_filter_calibration(rt2x00dev, false);
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
