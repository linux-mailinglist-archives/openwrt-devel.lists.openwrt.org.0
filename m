Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB5418E5AC
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 02:07:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ela+8EdYqJQkP23utdJkcPWP+BbOcEZYZ83LwOXBjxY=; b=j+cedz2CnoeQLO
	hZiu7V3vGCPKknezglqTmQKuhrnWSOuUagEJc+fk2uwcYbMka932rY/2OECl2AsVvh2ka1mayulxR
	rIpLvjo25adf2S+9EBoJoWt280bORb72W/7sqvCP+pUFBDQOtwK3POlq5i5wOtDSW/n1BFpitC/OS
	F172ZB+XlgXjZAnC5XKQKBTSc8TME0z0gsvmPxXqy+NQsYZj2c5m/lZE6d+SMGIIjybjHOm8WsPtb
	Ylo7M+SzV/hqAf1QsDUhfT9qHPxlP5GgBzARDtYYuBSIteuaOWtWWKwGCIrItZ+cU3MEz3jISpnie
	469sNuTQAwSQJtvJnzIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFp56-0008BO-Gd; Sun, 22 Mar 2020 01:07:12 +0000
Received: from mout-p-102.mailbox.org ([2001:67c:2050::465:102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFp4t-0008Aj-Cx
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 01:07:04 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 48lK8y32pVzKmN6;
 Sun, 22 Mar 2020 02:06:42 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id lJBBv29t_Olx; Sun, 22 Mar 2020 02:06:37 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Mar 2020 02:06:25 +0100
Message-Id: <20200322010625.12442-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_180659_904348_0BEA4A2C 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07] mac80211: Update to version 4.19.112
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

The removed patches are all integrated in the upstream version now.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/kernel/mac80211/Makefile              |   6 +-
 .../patches/ath/404-regd_no_assoc_hints.patch |   4 +-
 ...-ackto-to-max-timeout-in-ath_dynack_.patch |   2 +-
 ...set-but-not-used-variables-sfdoff-an.patch |   4 +-
 ...rd_type-used-for-nvram-file-selectio.patch |   2 +-
 ...dd-support-for-CYW43012-SDIO-chipset.patch |  18 ++--
 ...43012-F2-watermark-setting-to-fix-DM.patch |   2 +-
 ...c-disable-command-decode-in-sdio_aos.patch |   2 +-
 ...check-for-the-status-of-usb_register.patch |   2 +-
 .../brcm/347-v5.1-brcmfmac-fix-typos.patch    |   2 +-
 ...debugfs-files-for-bus-specific-layer.patch | 101 ------------------
 ...and-dump-trap-info-during-sdio-probe.patch |  10 +-
 ...-set-but-not-used-variable-old_state.patch |   4 +-
 ...pending-parameter-from-brcmf_usb_fre.patch |   6 +-
 ...unused-variable-i-from-brcmf_usb_fre.patch |   2 +-
 ...x-leak-of-mypkt-on-error-return-path.patch |  41 -------
 ...rcmf_attach-and-brcmf_detach-functio.patch |  14 +--
 ...-after-free-in-brcmf_sdio_readframes.patch |  31 ------
 ...-brcmfmac-fix-interface-sanity-check.patch |  40 -------
 ...ix-memory-leak-in-brcmf_usbdev_qinit.patch |  26 -----
 .../patches/build/015-ipw200-mtu.patch        |   4 +-
 .../patches/build/060-no_local_ssb_bcma.patch |   4 +-
 .../801-libertas-configure-sysfs-links.patch  |   2 +-
 .../802-libertas-set-wireless-macaddr.patch   |   2 +-
 ...ratelimited-variants-of-err-and-warn.patch |   2 +-
 ...l_ht-fix-per-group-max-throughput-ra.patch |  22 ----
 ...-Add-airtime-statistics-and-settings.patch |   8 +-
 ...0211-add-hdrlen-to-ieee80211_tx_data.patch |   4 +-
 ...op-redundant-rcu_read_lock-unlock-ca.patch |  10 +-
 ...nd-deauth-when-expiring-inactive-STA.patch |   4 +-
 ...11-accept-deauth-frames-in-IBSS-mode.patch |  39 -------
 ...al-BSS-receive-time-to-survey-inform.patch |   2 +-
 .../522-mac80211_configure_antenna_gain.patch |   8 +-
 33 files changed, 65 insertions(+), 365 deletions(-)
 delete mode 100644 package/kernel/mac80211/patches/brcm/349-v5.1-0003-brcmfmac-create-debugfs-files-for-bus-specific-layer.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/368-v5.2-brcmfmac-fix-leak-of-mypkt-on-error-return-path.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/411-v5.6-brcmfmac-Fix-use-after-free-in-brcmf_sdio_readframes.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/413-v5.6-brcmfmac-fix-interface-sanity-check.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/415-v5.6-brcmfmac-Fix-memory-leak-in-brcmf_usbdev_qinit.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/313-mac80211-minstrel_ht-fix-per-group-max-throughput-ra.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/366-mac80211-accept-deauth-frames-in-IBSS-mode.patch

diff --git a/package/kernel/mac80211/Makefile b/package/kernel/mac80211/Makefile
index 97072aacd5..cd50bd590e 100644
--- a/package/kernel/mac80211/Makefile
+++ b/package/kernel/mac80211/Makefile
@@ -10,10 +10,10 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=mac80211
 
-PKG_VERSION:=4.19.98-1
+PKG_VERSION:=4.19.112-1
 PKG_RELEASE:=1
-PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v4.19.98/
-PKG_HASH:=256d77e9cd3918d6a361e029850aba4568e8a00167ab3ed55495a359511c5bd2
+PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v4.19.112/
+PKG_HASH:=e60a7aec902638c538b150d0d6165d866eb804845b97d7770acd653fd6a6b718
 
 PKG_SOURCE:=backports-$(PKG_VERSION).tar.xz
 PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/backports-$(PKG_VERSION)
diff --git a/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch b/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch
index 266b750e4b..dc4068e542 100644
--- a/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch
+++ b/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch
@@ -1,6 +1,6 @@
 --- a/net/wireless/reg.c
 +++ b/net/wireless/reg.c
-@@ -3027,6 +3027,8 @@ void regulatory_hint_country_ie(struct w
+@@ -3034,6 +3034,8 @@ void regulatory_hint_country_ie(struct w
  	enum environment_cap env = ENVIRON_ANY;
  	struct regulatory_request *request = NULL, *lr;
  
@@ -9,7 +9,7 @@
  	/* IE len must be evenly divisible by 2 */
  	if (country_ie_len & 0x01)
  		return;
-@@ -3252,6 +3254,7 @@ static bool is_wiphy_all_set_reg_flag(en
+@@ -3259,6 +3261,7 @@ static bool is_wiphy_all_set_reg_flag(en
  
  void regulatory_hint_disconnect(void)
  {
diff --git a/package/kernel/mac80211/patches/ath/561-ath9k-dynack-set-ackto-to-max-timeout-in-ath_dynack_.patch b/package/kernel/mac80211/patches/ath/561-ath9k-dynack-set-ackto-to-max-timeout-in-ath_dynack_.patch
index 6495bf01b0..4a843376b8 100644
--- a/package/kernel/mac80211/patches/ath/561-ath9k-dynack-set-ackto-to-max-timeout-in-ath_dynack_.patch
+++ b/package/kernel/mac80211/patches/ath/561-ath9k-dynack-set-ackto-to-max-timeout-in-ath_dynack_.patch
@@ -29,7 +29,7 @@ Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
 -	an->ackto = ackto;
 +	an->ackto = da->ackto;
  
- 	spin_lock(&da->qlock);
+ 	spin_lock_bh(&da->qlock);
  	list_add_tail(&an->list, &da->nodes);
 @@ -356,20 +354,26 @@ EXPORT_SYMBOL(ath_dynack_node_deinit);
   */
diff --git a/package/kernel/mac80211/patches/brcm/305-v4.20-0001-brcmfmac-remove-set-but-not-used-variables-sfdoff-an.patch b/package/kernel/mac80211/patches/brcm/305-v4.20-0001-brcmfmac-remove-set-but-not-used-variables-sfdoff-an.patch
index 659cdabd84..2eb937367f 100644
--- a/package/kernel/mac80211/patches/brcm/305-v4.20-0001-brcmfmac-remove-set-but-not-used-variables-sfdoff-an.patch
+++ b/package/kernel/mac80211/patches/brcm/305-v4.20-0001-brcmfmac-remove-set-but-not-used-variables-sfdoff-an.patch
@@ -39,7 +39,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  		num = 0;
  
  		/* Validate all the subframe headers */
-@@ -3422,7 +3421,6 @@ static int brcmf_sdio_bus_preinit(struct
+@@ -3426,7 +3425,6 @@ static int brcmf_sdio_bus_preinit(struct
  	struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
  	struct brcmf_sdio *bus = sdiodev->bus;
  	struct brcmf_core *core = bus->sdio_core;
@@ -47,7 +47,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	u32 value;
  	int err;
  
-@@ -3465,7 +3463,6 @@ static int brcmf_sdio_bus_preinit(struct
+@@ -3467,7 +3465,6 @@ static int brcmf_sdio_bus_preinit(struct
  	if (sdiodev->sg_support) {
  		bus->txglom = false;
  		value = 1;
diff --git a/package/kernel/mac80211/patches/brcm/320-v5.0-0004-brcmfmac-Set-board_type-used-for-nvram-file-selectio.patch b/package/kernel/mac80211/patches/brcm/320-v5.0-0004-brcmfmac-Set-board_type-used-for-nvram-file-selectio.patch
index fe930508b6..5dcff90c47 100644
--- a/package/kernel/mac80211/patches/brcm/320-v5.0-0004-brcmfmac-Set-board_type-used-for-nvram-file-selectio.patch
+++ b/package/kernel/mac80211/patches/brcm/320-v5.0-0004-brcmfmac-Set-board_type-used-for-nvram-file-selectio.patch
@@ -67,7 +67,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	fwreq->bus_nr = devinfo->pdev->bus->number;
 --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
 +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
-@@ -4210,6 +4210,7 @@ brcmf_sdio_prepare_fw_request(struct brc
+@@ -4213,6 +4213,7 @@ brcmf_sdio_prepare_fw_request(struct brc
  
  	fwreq->items[BRCMF_SDIO_FW_CODE].type = BRCMF_FW_TYPE_BINARY;
  	fwreq->items[BRCMF_SDIO_FW_NVRAM].type = BRCMF_FW_TYPE_NVRAM;
diff --git a/package/kernel/mac80211/patches/brcm/329-v5.0-0004-brcmfmac-add-support-for-CYW43012-SDIO-chipset.patch b/package/kernel/mac80211/patches/brcm/329-v5.0-0004-brcmfmac-add-support-for-CYW43012-SDIO-chipset.patch
index 2c7828cf5f..daf1cddb94 100644
--- a/package/kernel/mac80211/patches/brcm/329-v5.0-0004-brcmfmac-add-support-for-CYW43012-SDIO-chipset.patch
+++ b/package/kernel/mac80211/patches/brcm/329-v5.0-0004-brcmfmac-add-support-for-CYW43012-SDIO-chipset.patch
@@ -20,7 +20,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
 
 --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
 +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
-@@ -972,6 +972,7 @@ static const struct sdio_device_id brcmf
+@@ -970,6 +970,7 @@ static const struct sdio_device_id brcmf
  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4354),
  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4356),
  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_4373),
@@ -100,7 +100,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	if (on) {
  		/* device WAKEUP through KSO:
  		 * write bit 0 & read back until
-@@ -2413,6 +2423,14 @@ static int brcmf_sdio_tx_ctrlframe(struc
+@@ -2414,6 +2424,14 @@ static int brcmf_sdio_tx_ctrlframe(struc
  	return ret;
  }
  
@@ -115,7 +115,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  static void brcmf_sdio_bus_stop(struct device *dev)
  {
  	struct brcmf_bus *bus_if = dev_get_drvdata(dev);
-@@ -2420,7 +2438,7 @@ static void brcmf_sdio_bus_stop(struct d
+@@ -2421,7 +2439,7 @@ static void brcmf_sdio_bus_stop(struct d
  	struct brcmf_sdio *bus = sdiodev->bus;
  	struct brcmf_core *core = bus->sdio_core;
  	u32 local_hostintmask;
@@ -124,7 +124,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	int err;
  
  	brcmf_dbg(TRACE, "Enter\n");
-@@ -2447,9 +2465,14 @@ static void brcmf_sdio_bus_stop(struct d
+@@ -2448,9 +2466,14 @@ static void brcmf_sdio_bus_stop(struct d
  		/* Force backplane clocks to assure F2 interrupt propagates */
  		saveclk = brcmf_sdiod_readb(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
  					    &err);
@@ -142,7 +142,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  		if (err)
  			brcmf_err("Failed to force clock for F2: err %d\n",
  				  err);
-@@ -3339,20 +3362,45 @@ err:
+@@ -3343,20 +3366,45 @@ err:
  	return bcmerror;
  }
  
@@ -190,7 +190,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_WAKEUPCTRL, val, &err);
  	if (err) {
  		brcmf_err("error writing SBSDIO_FUNC1_WAKEUPCTRL\n");
-@@ -3361,8 +3409,7 @@ static void brcmf_sdio_sr_init(struct br
+@@ -3365,8 +3413,7 @@ static void brcmf_sdio_sr_init(struct br
  
  	/* Add CMD14 Support */
  	brcmf_sdiod_func0_wb(bus->sdiodev, SDIO_CCCR_BRCM_CARDCAP,
@@ -200,7 +200,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  			     &err);
  	if (err) {
  		brcmf_err("error writing SDIO_CCCR_BRCM_CARDCAP\n");
-@@ -3370,7 +3417,7 @@ static void brcmf_sdio_sr_init(struct br
+@@ -3374,7 +3421,7 @@ static void brcmf_sdio_sr_init(struct br
  	}
  
  	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
@@ -209,7 +209,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	if (err) {
  		brcmf_err("error writing SBSDIO_FUNC1_CHIPCLKCSR\n");
  		return;
-@@ -4062,7 +4109,7 @@ static void brcmf_sdio_firmware_callback
+@@ -4065,7 +4112,7 @@ static void brcmf_sdio_firmware_callback
  	const struct firmware *code;
  	void *nvram;
  	u32 nvram_len;
@@ -218,7 +218,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	u8 devctl;
  
  	brcmf_dbg(TRACE, "Enter: dev=%s, err=%d\n", dev_name(dev), err);
-@@ -4096,8 +4143,11 @@ static void brcmf_sdio_firmware_callback
+@@ -4099,8 +4146,11 @@ static void brcmf_sdio_firmware_callback
  	/* Force clocks on backplane to be sure F2 interrupt propagates */
  	saveclk = brcmf_sdiod_readb(sdiod, SBSDIO_FUNC1_CHIPCLKCSR, &err);
  	if (!err) {
diff --git a/package/kernel/mac80211/patches/brcm/329-v5.0-0006-brcmfmac-update-43012-F2-watermark-setting-to-fix-DM.patch b/package/kernel/mac80211/patches/brcm/329-v5.0-0006-brcmfmac-update-43012-F2-watermark-setting-to-fix-DM.patch
index c43f0668e9..defee89879 100644
--- a/package/kernel/mac80211/patches/brcm/329-v5.0-0006-brcmfmac-update-43012-F2-watermark-setting-to-fix-DM.patch
+++ b/package/kernel/mac80211/patches/brcm/329-v5.0-0006-brcmfmac-update-43012-F2-watermark-setting-to-fix-DM.patch
@@ -29,7 +29,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  
  #ifdef DEBUG
  
-@@ -4184,6 +4185,17 @@ static void brcmf_sdio_firmware_callback
+@@ -4187,6 +4188,17 @@ static void brcmf_sdio_firmware_callback
  					   CY_4373_F2_WATERMARK |
  					   SBSDIO_MESBUSYCTRL_ENAB, &err);
  			break;
diff --git a/package/kernel/mac80211/patches/brcm/329-v5.0-0008-brcmfmac-disable-command-decode-in-sdio_aos.patch b/package/kernel/mac80211/patches/brcm/329-v5.0-0008-brcmfmac-disable-command-decode-in-sdio_aos.patch
index 63f30fb8e6..d99a01426b 100644
--- a/package/kernel/mac80211/patches/brcm/329-v5.0-0008-brcmfmac-disable-command-decode-in-sdio_aos.patch
+++ b/package/kernel/mac80211/patches/brcm/329-v5.0-0008-brcmfmac-disable-command-decode-in-sdio_aos.patch
@@ -30,7 +30,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
 
 --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
 +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
-@@ -3365,7 +3365,11 @@ err:
+@@ -3369,7 +3369,11 @@ err:
  
  static bool brcmf_sdio_aos_no_decode(struct brcmf_sdio *bus)
  {
diff --git a/package/kernel/mac80211/patches/brcm/341-v5.1-brcmfmac-add-a-check-for-the-status-of-usb_register.patch b/package/kernel/mac80211/patches/brcm/341-v5.1-brcmfmac-add-a-check-for-the-status-of-usb_register.patch
index 5104666b69..159bef6d3c 100644
--- a/package/kernel/mac80211/patches/brcm/341-v5.1-brcmfmac-add-a-check-for-the-status-of-usb_register.patch
+++ b/package/kernel/mac80211/patches/brcm/341-v5.1-brcmfmac-add-a-check-for-the-status-of-usb_register.patch
@@ -14,7 +14,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
 
 --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
 +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-@@ -1557,6 +1557,10 @@ void brcmf_usb_exit(void)
+@@ -1558,6 +1558,10 @@ void brcmf_usb_exit(void)
  
  void brcmf_usb_register(void)
  {
diff --git a/package/kernel/mac80211/patches/brcm/347-v5.1-brcmfmac-fix-typos.patch b/package/kernel/mac80211/patches/brcm/347-v5.1-brcmfmac-fix-typos.patch
index e21c1ee60a..3a4c2d4a12 100644
--- a/package/kernel/mac80211/patches/brcm/347-v5.1-brcmfmac-fix-typos.patch
+++ b/package/kernel/mac80211/patches/brcm/347-v5.1-brcmfmac-fix-typos.patch
@@ -51,7 +51,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
   * @ifidx: interface index.
 --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
 +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-@@ -508,7 +508,7 @@ static void brcmf_usb_rx_complete(struct
+@@ -509,7 +509,7 @@ static void brcmf_usb_rx_complete(struct
  	skb = req->skb;
  	req->skb = NULL;
  
diff --git a/package/kernel/mac80211/patches/brcm/349-v5.1-0003-brcmfmac-create-debugfs-files-for-bus-specific-layer.patch b/package/kernel/mac80211/patches/brcm/349-v5.1-0003-brcmfmac-create-debugfs-files-for-bus-specific-layer.patch
deleted file mode 100644
index 487aa00409..0000000000
--- a/package/kernel/mac80211/patches/brcm/349-v5.1-0003-brcmfmac-create-debugfs-files-for-bus-specific-layer.patch
+++ /dev/null
@@ -1,101 +0,0 @@
-From aaf6a5e86e36766abbeedf220462bde8031f9a72 Mon Sep 17 00:00:00 2001
-From: Arend van Spriel <arend.vanspriel@broadcom.com>
-Date: Thu, 14 Feb 2019 13:43:49 +0100
-Subject: [PATCH] brcmfmac: create debugfs files for bus-specific layer
-
-Since we moved the drivers debugfs directory under ieee80211 debugfs the
-debugfs entries need to be added after wiphy_register() has been called.
-For most part that has been done accordingly, but for the debugfs entries
-added by SDIO it was not and failed silently. This patch fixes that by
-adding a bus-layer callback for it.
-
-Fixes: 856d5a011c86 ("brcmfmac: allocate struct brcmf_pub instance using wiphy_new()")
-Reported-by: Russel King <linux@armlinux.org.uk>
-Reviewed-by: Franky Lin <franky.lin@broadcom.com>
-Signed-off-by: Arend van Spriel <arend.vanspriel@broadcom.com>
-Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
----
- .../net/wireless/broadcom/brcm80211/brcmfmac/bus.h   | 10 ++++++++++
- .../net/wireless/broadcom/brcm80211/brcmfmac/core.c  |  1 +
- .../net/wireless/broadcom/brcm80211/brcmfmac/sdio.c  | 12 +++++++-----
- 3 files changed, 18 insertions(+), 5 deletions(-)
-
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h
-@@ -90,6 +90,7 @@ struct brcmf_bus_ops {
- 	int (*get_memdump)(struct device *dev, void *data, size_t len);
- 	int (*get_fwname)(struct device *dev, const char *ext,
- 			  unsigned char *fw_name);
-+	void (*debugfs_create)(struct device *dev);
- };
- 
- 
-@@ -235,6 +236,15 @@ int brcmf_bus_get_fwname(struct brcmf_bu
- 	return bus->ops->get_fwname(bus->dev, ext, fw_name);
- }
- 
-+static inline
-+void brcmf_bus_debugfs_create(struct brcmf_bus *bus)
-+{
-+	if (!bus->ops->debugfs_create)
-+		return;
-+
-+	return bus->ops->debugfs_create(bus->dev);
-+}
-+
- /*
-  * interface functions from common layer
-  */
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
-@@ -1181,6 +1181,7 @@ static int brcmf_bus_started(struct brcm
- 	brcmf_debugfs_add_entry(drvr, "revinfo", brcmf_revinfo_read);
- 	brcmf_feat_debugfs_create(drvr);
- 	brcmf_proto_debugfs_create(drvr);
-+	brcmf_bus_debugfs_create(bus_if);
- 
- 	return 0;
- 
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
-@@ -3154,9 +3154,12 @@ static int brcmf_debugfs_sdio_count_read
- 	return 0;
- }
- 
--static void brcmf_sdio_debugfs_create(struct brcmf_sdio *bus)
-+static void brcmf_sdio_debugfs_create(struct device *dev)
- {
--	struct brcmf_pub *drvr = bus->sdiodev->bus_if->drvr;
-+	struct brcmf_bus *bus_if = dev_get_drvdata(dev);
-+	struct brcmf_pub *drvr = bus_if->drvr;
-+	struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
-+	struct brcmf_sdio *bus = sdiodev->bus;
- 	struct dentry *dentry = brcmf_debugfs_get_devdir(drvr);
- 
- 	if (IS_ERR_OR_NULL(dentry))
-@@ -3176,7 +3179,7 @@ static int brcmf_sdio_checkdied(struct b
- 	return 0;
- }
- 
--static void brcmf_sdio_debugfs_create(struct brcmf_sdio *bus)
-+static void brcmf_sdio_debugfs_create(struct device *dev)
- {
- }
- #endif /* DEBUG */
-@@ -3488,8 +3491,6 @@ static int brcmf_sdio_bus_preinit(struct
- 	if (bus->rxbuf)
- 		bus->rxblen = value;
- 
--	brcmf_sdio_debugfs_create(bus);
--
- 	/* the commands below use the terms tx and rx from
- 	 * a device perspective, ie. bus:txglom affects the
- 	 * bus transfers from device to host.
-@@ -4099,6 +4100,7 @@ static const struct brcmf_bus_ops brcmf_
- 	.get_ramsize = brcmf_sdio_bus_get_ramsize,
- 	.get_memdump = brcmf_sdio_bus_get_memdump,
- 	.get_fwname = brcmf_sdio_get_fwname,
-+	.debugfs_create = brcmf_sdio_debugfs_create
- };
- 
- #define BRCMF_SDIO_FW_CODE	0
diff --git a/package/kernel/mac80211/patches/brcm/349-v5.1-0005-brcmfmac-check-and-dump-trap-info-during-sdio-probe.patch b/package/kernel/mac80211/patches/brcm/349-v5.1-0005-brcmfmac-check-and-dump-trap-info-during-sdio-probe.patch
index c9757db976..2f48fdc9c2 100644
--- a/package/kernel/mac80211/patches/brcm/349-v5.1-0005-brcmfmac-check-and-dump-trap-info-during-sdio-probe.patch
+++ b/package/kernel/mac80211/patches/brcm/349-v5.1-0005-brcmfmac-check-and-dump-trap-info-during-sdio-probe.patch
@@ -18,7 +18,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
 
 --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
 +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
-@@ -3010,21 +3010,35 @@ static int brcmf_sdio_trap_info(struct s
+@@ -3011,21 +3011,35 @@ static int brcmf_sdio_trap_info(struct s
  	if (error < 0)
  		return error;
  
@@ -69,7 +69,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	return 0;
  }
  
-@@ -3078,8 +3092,10 @@ static int brcmf_sdio_checkdied(struct b
+@@ -3079,8 +3093,10 @@ static int brcmf_sdio_checkdied(struct b
  	else if (sh.flags & SDPCM_SHARED_ASSERT)
  		brcmf_err("assertion in dongle\n");
  
@@ -81,7 +81,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  
  	return 0;
  }
-@@ -4210,7 +4226,7 @@ static void brcmf_sdio_firmware_callback
+@@ -4211,7 +4227,7 @@ static void brcmf_sdio_firmware_callback
  	} else {
  		/* Disable F2 again */
  		sdio_disable_func(sdiod->func2);
@@ -90,7 +90,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	}
  
  	if (brcmf_chip_sr_capable(bus->ci)) {
-@@ -4231,8 +4247,10 @@ static void brcmf_sdio_firmware_callback
+@@ -4232,8 +4248,10 @@ static void brcmf_sdio_firmware_callback
  	}
  
  	/* If we didn't come up, turn off backplane clock */
@@ -102,7 +102,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  
  	sdio_release_host(sdiod->func1);
  
-@@ -4246,12 +4264,15 @@ static void brcmf_sdio_firmware_callback
+@@ -4247,12 +4265,15 @@ static void brcmf_sdio_firmware_callback
  	err = brcmf_attach(sdiod->dev, sdiod->settings);
  	if (err != 0) {
  		brcmf_err("brcmf_attach failed\n");
diff --git a/package/kernel/mac80211/patches/brcm/353-v5.1-brcmfmac-remove-set-but-not-used-variable-old_state.patch b/package/kernel/mac80211/patches/brcm/353-v5.1-brcmfmac-remove-set-but-not-used-variable-old_state.patch
index 2a46378e73..c07019510b 100644
--- a/package/kernel/mac80211/patches/brcm/353-v5.1-brcmfmac-remove-set-but-not-used-variable-old_state.patch
+++ b/package/kernel/mac80211/patches/brcm/353-v5.1-brcmfmac-remove-set-but-not-used-variable-old_state.patch
@@ -20,7 +20,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
 
 --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
 +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-@@ -575,7 +575,6 @@ static void
+@@ -576,7 +576,6 @@ static void
  brcmf_usb_state_change(struct brcmf_usbdev_info *devinfo, int state)
  {
  	struct brcmf_bus *bcmf_bus = devinfo->bus_pub.bus;
@@ -28,7 +28,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  
  	brcmf_dbg(USB, "Enter, current state=%d, new state=%d\n",
  		  devinfo->bus_pub.state, state);
-@@ -583,7 +582,6 @@ brcmf_usb_state_change(struct brcmf_usbd
+@@ -584,7 +583,6 @@ brcmf_usb_state_change(struct brcmf_usbd
  	if (devinfo->bus_pub.state == state)
  		return;
  
diff --git a/package/kernel/mac80211/patches/brcm/362-v5.2-0002-brcmfmac-remove-pending-parameter-from-brcmf_usb_fre.patch b/package/kernel/mac80211/patches/brcm/362-v5.2-0002-brcmfmac-remove-pending-parameter-from-brcmf_usb_fre.patch
index 088e731322..5208ce297b 100644
--- a/package/kernel/mac80211/patches/brcm/362-v5.2-0002-brcmfmac-remove-pending-parameter-from-brcmf_usb_fre.patch
+++ b/package/kernel/mac80211/patches/brcm/362-v5.2-0002-brcmfmac-remove-pending-parameter-from-brcmf_usb_fre.patch
@@ -14,7 +14,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
 
 --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
 +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-@@ -445,9 +445,10 @@ fail:
+@@ -446,9 +446,10 @@ fail:
  
  }
  
@@ -26,7 +26,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	int i = 0;
  	list_for_each_entry_safe(req, next, q, list) {
  		if (!req->urb) {
-@@ -455,12 +456,8 @@ static void brcmf_usb_free_q(struct list
+@@ -456,12 +457,8 @@ static void brcmf_usb_free_q(struct list
  			break;
  		}
  		i++;
@@ -41,7 +41,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	}
  }
  
-@@ -1029,8 +1026,8 @@ static void brcmf_usb_detach(struct brcm
+@@ -1030,8 +1027,8 @@ static void brcmf_usb_detach(struct brcm
  	brcmf_dbg(USB, "Enter, devinfo %p\n", devinfo);
  
  	/* free the URBS */
diff --git a/package/kernel/mac80211/patches/brcm/362-v5.2-0003-brcmfmac-remove-unused-variable-i-from-brcmf_usb_fre.patch b/package/kernel/mac80211/patches/brcm/362-v5.2-0003-brcmfmac-remove-unused-variable-i-from-brcmf_usb_fre.patch
index 4c8d073914..c6de4150d6 100644
--- a/package/kernel/mac80211/patches/brcm/362-v5.2-0003-brcmfmac-remove-unused-variable-i-from-brcmf_usb_fre.patch
+++ b/package/kernel/mac80211/patches/brcm/362-v5.2-0003-brcmfmac-remove-unused-variable-i-from-brcmf_usb_fre.patch
@@ -13,7 +13,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
 
 --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
 +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-@@ -449,13 +449,11 @@ static void brcmf_usb_free_q(struct list
+@@ -450,13 +450,11 @@ static void brcmf_usb_free_q(struct list
  {
  	struct brcmf_usbreq *req, *next;
  
diff --git a/package/kernel/mac80211/patches/brcm/368-v5.2-brcmfmac-fix-leak-of-mypkt-on-error-return-path.patch b/package/kernel/mac80211/patches/brcm/368-v5.2-brcmfmac-fix-leak-of-mypkt-on-error-return-path.patch
deleted file mode 100644
index a9a9d74c10..0000000000
--- a/package/kernel/mac80211/patches/brcm/368-v5.2-brcmfmac-fix-leak-of-mypkt-on-error-return-path.patch
+++ /dev/null
@@ -1,41 +0,0 @@
-From a927e8d8ab57e696800e20cf09a72b7dfe3bbebb Mon Sep 17 00:00:00 2001
-From: Colin Ian King <colin.king@canonical.com>
-Date: Tue, 9 Apr 2019 12:43:33 +0100
-Subject: [PATCH] brcmfmac: fix leak of mypkt on error return path
-
-Currently if the call to brcmf_sdiod_set_backplane_window fails then
-error return path leaks mypkt. Fix this by returning by a new
-error path labelled 'out' that calls brcmu_pkt_buf_free_skb to free
-mypkt.  Also remove redundant check on err before calling
-brcmf_sdiod_skbuff_write.
-
-Addresses-Coverity: ("Resource Leak")
-Fixes: a7c3aa1509e2 ("brcmfmac: Remove brcmf_sdiod_addrprep()")
-Signed-off-by: Colin Ian King <colin.king@canonical.com>
-Reviewed-by: Mukesh Ojha <mojha@codeaurora.org>
-Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
----
- drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c | 8 +++-----
- 1 file changed, 3 insertions(+), 5 deletions(-)
-
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
-@@ -617,15 +617,13 @@ int brcmf_sdiod_send_buf(struct brcmf_sd
- 
- 	err = brcmf_sdiod_set_backplane_window(sdiodev, addr);
- 	if (err)
--		return err;
-+		goto out;
- 
- 	addr &= SBSDIO_SB_OFT_ADDR_MASK;
- 	addr |= SBSDIO_SB_ACCESS_2_4B_FLAG;
- 
--	if (!err)
--		err = brcmf_sdiod_skbuff_write(sdiodev, sdiodev->func2, addr,
--					       mypkt);
--
-+	err = brcmf_sdiod_skbuff_write(sdiodev, sdiodev->func2, addr, mypkt);
-+out:
- 	brcmu_pkt_buf_free_skb(mypkt);
- 
- 	return err;
diff --git a/package/kernel/mac80211/patches/brcm/392-v5.4-0002-brcmfmac-split-brcmf_attach-and-brcmf_detach-functio.patch b/package/kernel/mac80211/patches/brcm/392-v5.4-0002-brcmfmac-split-brcmf_attach-and-brcmf_detach-functio.patch
index e0211fadbd..11d1b9db31 100644
--- a/package/kernel/mac80211/patches/brcm/392-v5.4-0002-brcmfmac-split-brcmf_attach-and-brcmf_detach-functio.patch
+++ b/package/kernel/mac80211/patches/brcm/392-v5.4-0002-brcmfmac-split-brcmf_attach-and-brcmf_detach-functio.patch
@@ -153,7 +153,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	kfree(bus->msgbuf->flowrings);
 --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
 +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
-@@ -4251,17 +4251,26 @@ static void brcmf_sdio_firmware_callback
+@@ -4252,17 +4252,26 @@ static void brcmf_sdio_firmware_callback
  	sdiod->bus_if->chip = bus->ci->chip;
  	sdiod->bus_if->chiprev = bus->ci->chiprev;
  
@@ -185,7 +185,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  release:
 --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
 +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-@@ -1178,8 +1178,12 @@ static void brcmf_usb_probe_phase2(struc
+@@ -1179,8 +1179,12 @@ static void brcmf_usb_probe_phase2(struc
  	if (ret)
  		goto error;
  
@@ -199,7 +199,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	if (ret)
  		goto error;
  
-@@ -1251,7 +1255,10 @@ static int brcmf_usb_probe_cb(struct brc
+@@ -1252,7 +1256,10 @@ static int brcmf_usb_probe_cb(struct brc
  	}
  
  	if (!brcmf_usb_dlneeded(devinfo)) {
@@ -211,7 +211,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  		if (ret)
  			goto fail;
  		/* we are done */
-@@ -1279,6 +1286,7 @@ static int brcmf_usb_probe_cb(struct brc
+@@ -1280,6 +1287,7 @@ static int brcmf_usb_probe_cb(struct brc
  
  fail:
  	/* Release resources in reverse order */
@@ -219,7 +219,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	kfree(bus);
  	brcmf_usb_detach(devinfo);
  	return ret;
-@@ -1292,6 +1300,7 @@ brcmf_usb_disconnect_cb(struct brcmf_usb
+@@ -1293,6 +1301,7 @@ brcmf_usb_disconnect_cb(struct brcmf_usb
  	brcmf_dbg(USB, "Enter, bus_pub %p\n", devinfo);
  
  	brcmf_detach(devinfo->dev);
@@ -227,7 +227,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	kfree(devinfo->bus_pub.bus);
  	brcmf_usb_detach(devinfo);
  }
-@@ -1435,10 +1444,12 @@ static int brcmf_usb_suspend(struct usb_
+@@ -1436,10 +1445,12 @@ static int brcmf_usb_suspend(struct usb_
  
  	brcmf_dbg(USB, "Enter\n");
  	devinfo->bus_pub.state = BRCMFMAC_USB_STATE_SLEEP;
@@ -242,7 +242,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  	return 0;
  }
  
-@@ -1451,8 +1462,19 @@ static int brcmf_usb_resume(struct usb_i
+@@ -1452,8 +1463,19 @@ static int brcmf_usb_resume(struct usb_i
  	struct brcmf_usbdev_info *devinfo = brcmf_usb_get_businfo(&usb->dev);
  
  	brcmf_dbg(USB, "Enter\n");
diff --git a/package/kernel/mac80211/patches/brcm/411-v5.6-brcmfmac-Fix-use-after-free-in-brcmf_sdio_readframes.patch b/package/kernel/mac80211/patches/brcm/411-v5.6-brcmfmac-Fix-use-after-free-in-brcmf_sdio_readframes.patch
deleted file mode 100644
index 1b56f6d7ce..0000000000
--- a/package/kernel/mac80211/patches/brcm/411-v5.6-brcmfmac-Fix-use-after-free-in-brcmf_sdio_readframes.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From 216b44000ada87a63891a8214c347e05a4aea8fe Mon Sep 17 00:00:00 2001
-From: Dan Carpenter <dan.carpenter@oracle.com>
-Date: Tue, 3 Dec 2019 12:58:55 +0300
-Subject: [PATCH] brcmfmac: Fix use after free in brcmf_sdio_readframes()
-
-The brcmu_pkt_buf_free_skb() function frees "pkt" so it leads to a
-static checker warning:
-
-    drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c:1974 brcmf_sdio_readframes()
-    error: dereferencing freed memory 'pkt'
-
-It looks like there was supposed to be a continue after we free "pkt".
-
-Fixes: 4754fceeb9a6 ("brcmfmac: streamline SDIO read frame routine")
-Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
-Acked-by: Franky Lin <franky.lin@broadcom.com>
-Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
----
- drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 1 +
- 1 file changed, 1 insertion(+)
-
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
-@@ -1935,6 +1935,7 @@ static uint brcmf_sdio_readframes(struct
- 					       BRCMF_SDIO_FT_NORMAL)) {
- 				rd->len = 0;
- 				brcmu_pkt_buf_free_skb(pkt);
-+				continue;
- 			}
- 			bus->sdcnt.rx_readahead_cnt++;
- 			if (rd->len != roundup(rd_new.len, 16)) {
diff --git a/package/kernel/mac80211/patches/brcm/413-v5.6-brcmfmac-fix-interface-sanity-check.patch b/package/kernel/mac80211/patches/brcm/413-v5.6-brcmfmac-fix-interface-sanity-check.patch
deleted file mode 100644
index e1dfe84c97..0000000000
--- a/package/kernel/mac80211/patches/brcm/413-v5.6-brcmfmac-fix-interface-sanity-check.patch
+++ /dev/null
@@ -1,40 +0,0 @@
-From 3428fbcd6e6c0850b1a8b2a12082b7b2aabb3da3 Mon Sep 17 00:00:00 2001
-From: Johan Hovold <johan@kernel.org>
-Date: Tue, 10 Dec 2019 12:44:22 +0100
-Subject: [PATCH] brcmfmac: fix interface sanity check
-
-Make sure to use the current alternate setting when verifying the
-interface descriptors to avoid binding to an invalid interface.
-
-Failing to do so could cause the driver to misbehave or trigger a WARN()
-in usb_submit_urb() that kernels with panic_on_warn set would choke on.
-
-Fixes: 71bb244ba2fd ("brcm80211: fmac: add USB support for bcm43235/6/8 chipsets")
-Cc: stable <stable@vger.kernel.org>     # 3.4
-Cc: Arend van Spriel <arend@broadcom.com>
-Signed-off-by: Johan Hovold <johan@kernel.org>
-Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
----
- drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c | 4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
-
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-@@ -1348,7 +1348,7 @@ brcmf_usb_probe(struct usb_interface *in
- 		goto fail;
- 	}
- 
--	desc = &intf->altsetting[0].desc;
-+	desc = &intf->cur_altsetting->desc;
- 	if ((desc->bInterfaceClass != USB_CLASS_VENDOR_SPEC) ||
- 	    (desc->bInterfaceSubClass != 2) ||
- 	    (desc->bInterfaceProtocol != 0xff)) {
-@@ -1361,7 +1361,7 @@ brcmf_usb_probe(struct usb_interface *in
- 
- 	num_of_eps = desc->bNumEndpoints;
- 	for (ep = 0; ep < num_of_eps; ep++) {
--		endpoint = &intf->altsetting[0].endpoint[ep].desc;
-+		endpoint = &intf->cur_altsetting->endpoint[ep].desc;
- 		endpoint_num = usb_endpoint_num(endpoint);
- 		if (!usb_endpoint_xfer_bulk(endpoint))
- 			continue;
diff --git a/package/kernel/mac80211/patches/brcm/415-v5.6-brcmfmac-Fix-memory-leak-in-brcmf_usbdev_qinit.patch b/package/kernel/mac80211/patches/brcm/415-v5.6-brcmfmac-Fix-memory-leak-in-brcmf_usbdev_qinit.patch
deleted file mode 100644
index a55d286e57..0000000000
--- a/package/kernel/mac80211/patches/brcm/415-v5.6-brcmfmac-Fix-memory-leak-in-brcmf_usbdev_qinit.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-From 4282dc057d750c6a7dd92953564b15c26b54c22c Mon Sep 17 00:00:00 2001
-From: Navid Emamdoost <navid.emamdoost@gmail.com>
-Date: Sat, 14 Dec 2019 19:51:14 -0600
-Subject: [PATCH] brcmfmac: Fix memory leak in brcmf_usbdev_qinit
-
-In the implementation of brcmf_usbdev_qinit() the allocated memory for
-reqs is leaking if usb_alloc_urb() fails. Release reqs in the error
-handling path.
-
-Fixes: 71bb244ba2fd ("brcm80211: fmac: add USB support for bcm43235/6/8 chipsets")
-Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
-Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
----
- drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c | 1 +
- 1 file changed, 1 insertion(+)
-
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-@@ -430,6 +430,7 @@ fail:
- 			usb_free_urb(req->urb);
- 		list_del(q->next);
- 	}
-+	kfree(reqs);
- 	return NULL;
- 
- }
diff --git a/package/kernel/mac80211/patches/build/015-ipw200-mtu.patch b/package/kernel/mac80211/patches/build/015-ipw200-mtu.patch
index d57d821fea..410f4e4266 100644
--- a/package/kernel/mac80211/patches/build/015-ipw200-mtu.patch
+++ b/package/kernel/mac80211/patches/build/015-ipw200-mtu.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/intel/ipw2x00/ipw2200.c
 +++ b/drivers/net/wireless/intel/ipw2x00/ipw2200.c
-@@ -11498,6 +11498,15 @@ static const struct attribute_group ipw_
+@@ -11499,6 +11499,15 @@ static const struct attribute_group ipw_
  	.attrs = ipw_sysfs_entries,
  };
  
@@ -16,7 +16,7 @@
  #ifdef CPTCFG_IPW2200_PROMISCUOUS
  static int ipw_prom_open(struct net_device *dev)
  {
-@@ -11546,15 +11555,6 @@ static netdev_tx_t ipw_prom_hard_start_x
+@@ -11547,15 +11556,6 @@ static netdev_tx_t ipw_prom_hard_start_x
  	return NETDEV_TX_OK;
  }
  
diff --git a/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch b/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch
index 06636060f7..9c86379f8c 100644
--- a/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch
+++ b/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch
@@ -140,7 +140,7 @@
  # LED support
 --- a/drivers/net/wireless/broadcom/b43legacy/main.c
 +++ b/drivers/net/wireless/broadcom/b43legacy/main.c
-@@ -1937,7 +1937,7 @@ static int b43legacy_gpio_init(struct b4
+@@ -1938,7 +1938,7 @@ static int b43legacy_gpio_init(struct b4
  	if (dev->dev->id.revision >= 2)
  		mask  |= 0x0010; /* FIXME: This is redundant. */
  
@@ -149,7 +149,7 @@
  	pcidev = bus->pcicore.dev;
  #endif
  	gpiodev = bus->chipco.dev ? : pcidev;
-@@ -1956,7 +1956,7 @@ static void b43legacy_gpio_cleanup(struc
+@@ -1957,7 +1957,7 @@ static void b43legacy_gpio_cleanup(struc
  	struct ssb_bus *bus = dev->dev->bus;
  	struct ssb_device *gpiodev, *pcidev = NULL;
  
diff --git a/package/kernel/mac80211/patches/mwl/801-libertas-configure-sysfs-links.patch b/package/kernel/mac80211/patches/mwl/801-libertas-configure-sysfs-links.patch
index c3e6db8f05..a22707e233 100644
--- a/package/kernel/mac80211/patches/mwl/801-libertas-configure-sysfs-links.patch
+++ b/package/kernel/mac80211/patches/mwl/801-libertas-configure-sysfs-links.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/marvell/libertas/cfg.c
 +++ b/drivers/net/wireless/marvell/libertas/cfg.c
-@@ -2041,6 +2041,8 @@ struct wireless_dev *lbs_cfg_alloc(struc
+@@ -2053,6 +2053,8 @@ struct wireless_dev *lbs_cfg_alloc(struc
  		goto err_wiphy_new;
  	}
  
diff --git a/package/kernel/mac80211/patches/mwl/802-libertas-set-wireless-macaddr.patch b/package/kernel/mac80211/patches/mwl/802-libertas-set-wireless-macaddr.patch
index f1966d88e6..c2d0a5890d 100644
--- a/package/kernel/mac80211/patches/mwl/802-libertas-set-wireless-macaddr.patch
+++ b/package/kernel/mac80211/patches/mwl/802-libertas-set-wireless-macaddr.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/marvell/libertas/cfg.c
 +++ b/drivers/net/wireless/marvell/libertas/cfg.c
-@@ -2117,6 +2117,8 @@ int lbs_cfg_register(struct lbs_private
+@@ -2129,6 +2129,8 @@ int lbs_cfg_register(struct lbs_private
  	wdev->wiphy->n_cipher_suites = ARRAY_SIZE(cipher_suites);
  	wdev->wiphy->reg_notifier = lbs_reg_notifier;
  
diff --git a/package/kernel/mac80211/patches/rt2x00/020-cfg80211-add-ratelimited-variants-of-err-and-warn.patch b/package/kernel/mac80211/patches/rt2x00/020-cfg80211-add-ratelimited-variants-of-err-and-warn.patch
index 8411f00cca..ec9159c59e 100644
--- a/package/kernel/mac80211/patches/rt2x00/020-cfg80211-add-ratelimited-variants-of-err-and-warn.patch
+++ b/package/kernel/mac80211/patches/rt2x00/020-cfg80211-add-ratelimited-variants-of-err-and-warn.patch
@@ -25,7 +25,7 @@ Signed-off-by: Stanislaw Gruszka <sgruszka@redhat.com>
 
 --- a/include/net/cfg80211.h
 +++ b/include/net/cfg80211.h
-@@ -6627,6 +6627,11 @@ bool cfg80211_iftype_allowed(struct wiph
+@@ -6632,6 +6632,11 @@ bool cfg80211_iftype_allowed(struct wiph
  #define wiphy_info(wiphy, format, args...)			\
  	dev_info(&(wiphy)->dev, format, ##args)
  
diff --git a/package/kernel/mac80211/patches/subsys/313-mac80211-minstrel_ht-fix-per-group-max-throughput-ra.patch b/package/kernel/mac80211/patches/subsys/313-mac80211-minstrel_ht-fix-per-group-max-throughput-ra.patch
deleted file mode 100644
index 5ae29918e7..0000000000
--- a/package/kernel/mac80211/patches/subsys/313-mac80211-minstrel_ht-fix-per-group-max-throughput-ra.patch
+++ /dev/null
@@ -1,22 +0,0 @@
-From: Felix Fietkau <nbd@nbd.name>
-Date: Fri, 14 Jun 2019 21:12:04 +0200
-Subject: [PATCH] mac80211: minstrel_ht: fix per-group max throughput rate
- initialization
-
-The group number needs to be multiplied by the number of rates per group
-to get the full rate index
-
-Signed-off-by: Felix Fietkau <nbd@nbd.name>
----
-
---- a/net/mac80211/rc80211_minstrel_ht.c
-+++ b/net/mac80211/rc80211_minstrel_ht.c
-@@ -542,7 +542,7 @@ minstrel_ht_update_stats(struct minstrel
- 
- 		/* (re)Initialize group rate indexes */
- 		for(j = 0; j < MAX_THR_RATES; j++)
--			tmp_group_tp_rate[j] = group;
-+			tmp_group_tp_rate[j] = MCS_GROUP_RATES * group;
- 
- 		for (i = 0; i < MCS_GROUP_RATES; i++) {
- 			if (!(mi->supported[group] & BIT(i)))
diff --git a/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch b/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch
index 9dac46842d..ff2dc35129 100644
--- a/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch
+++ b/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch
@@ -148,7 +148,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	MAX_NL80211_EXT_FEATURES = NUM_NL80211_EXT_FEATURES - 1
 --- a/net/wireless/nl80211.c
 +++ b/net/wireless/nl80211.c
-@@ -463,6 +463,7 @@ static const struct nla_policy nl80211_p
+@@ -469,6 +469,7 @@ static const struct nla_policy nl80211_p
  	[NL80211_ATTR_TXQ_QUANTUM] = { .type = NLA_U32 },
  	[NL80211_ATTR_HE_CAPABILITY] = { .type = NLA_BINARY,
  					 .len = NL80211_HE_MAX_CAPABILITY_LEN },
@@ -156,7 +156,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  };
  
  /* policy for the key attributes */
-@@ -4703,6 +4704,11 @@ static int nl80211_send_station(struct s
+@@ -4709,6 +4710,11 @@ static int nl80211_send_station(struct s
  	PUT_SINFO(PLID, plid, u16);
  	PUT_SINFO(PLINK_STATE, plink_state, u8);
  	PUT_SINFO_U64(RX_DURATION, rx_duration);
@@ -168,7 +168,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  
  	switch (rdev->wiphy.signal_type) {
  	case CFG80211_SIGNAL_TYPE_MBM:
-@@ -5339,6 +5345,15 @@ static int nl80211_set_station(struct sk
+@@ -5345,6 +5351,15 @@ static int nl80211_set_station(struct sk
  			nla_get_u8(info->attrs[NL80211_ATTR_OPMODE_NOTIF]);
  	}
  
@@ -184,7 +184,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	/* Include parameters for TDLS peer (will check later) */
  	err = nl80211_set_station_tdls(info, &params);
  	if (err)
-@@ -5477,6 +5492,15 @@ static int nl80211_new_station(struct sk
+@@ -5483,6 +5498,15 @@ static int nl80211_new_station(struct sk
  			return -EINVAL;
  	}
  
diff --git a/package/kernel/mac80211/patches/subsys/350-mac80211-add-hdrlen-to-ieee80211_tx_data.patch b/package/kernel/mac80211/patches/subsys/350-mac80211-add-hdrlen-to-ieee80211_tx_data.patch
index 7b2a4a1c09..f3f4401c75 100644
--- a/package/kernel/mac80211/patches/subsys/350-mac80211-add-hdrlen-to-ieee80211_tx_data.patch
+++ b/package/kernel/mac80211/patches/subsys/350-mac80211-add-hdrlen-to-ieee80211_tx_data.patch
@@ -75,7 +75,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  		rcu_read_unlock();
 --- a/net/mac80211/util.c
 +++ b/net/mac80211/util.c
-@@ -1390,6 +1390,7 @@ void ieee80211_send_auth(struct ieee8021
+@@ -1396,6 +1396,7 @@ void ieee80211_send_auth(struct ieee8021
  	struct ieee80211_local *local = sdata->local;
  	struct sk_buff *skb;
  	struct ieee80211_mgmt *mgmt;
@@ -83,7 +83,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	int err;
  
  	/* 24 + 6 = header + auth_algo + auth_transaction + status_code */
-@@ -1413,8 +1414,10 @@ void ieee80211_send_auth(struct ieee8021
+@@ -1419,8 +1420,10 @@ void ieee80211_send_auth(struct ieee8021
  		skb_put_data(skb, extra, extra_len);
  
  	if (auth_alg == WLAN_AUTH_SHARED_KEY && transaction == 3) {
diff --git a/package/kernel/mac80211/patches/subsys/353-mac80211-mesh-drop-redundant-rcu_read_lock-unlock-ca.patch b/package/kernel/mac80211/patches/subsys/353-mac80211-mesh-drop-redundant-rcu_read_lock-unlock-ca.patch
index 86300be4ed..68b939400e 100644
--- a/package/kernel/mac80211/patches/subsys/353-mac80211-mesh-drop-redundant-rcu_read_lock-unlock-ca.patch
+++ b/package/kernel/mac80211/patches/subsys/353-mac80211-mesh-drop-redundant-rcu_read_lock-unlock-ca.patch
@@ -9,7 +9,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 
 --- a/net/mac80211/mesh_hwmp.c
 +++ b/net/mac80211/mesh_hwmp.c
-@@ -1112,16 +1112,13 @@ int mesh_nexthop_resolve(struct ieee8021
+@@ -1115,16 +1115,13 @@ int mesh_nexthop_resolve(struct ieee8021
  	struct mesh_path *mpath;
  	struct sk_buff *skb_to_free = NULL;
  	u8 *target_addr = hdr->addr3;
@@ -28,7 +28,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
  	/* no nexthop found, start resolving */
  	mpath = mesh_path_lookup(sdata, target_addr);
-@@ -1129,8 +1126,7 @@ int mesh_nexthop_resolve(struct ieee8021
+@@ -1132,8 +1129,7 @@ int mesh_nexthop_resolve(struct ieee8021
  		mpath = mesh_path_add(sdata, target_addr);
  		if (IS_ERR(mpath)) {
  			mesh_path_discard_frame(sdata, skb);
@@ -38,7 +38,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  		}
  	}
  
-@@ -1143,13 +1139,10 @@ int mesh_nexthop_resolve(struct ieee8021
+@@ -1146,13 +1142,10 @@ int mesh_nexthop_resolve(struct ieee8021
  	info->flags |= IEEE80211_TX_INTFL_NEED_TXPROCESSING;
  	ieee80211_set_qos_hdr(sdata, skb);
  	skb_queue_tail(&mpath->frame_queue, skb);
@@ -53,7 +53,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  }
  
  /**
-@@ -1169,13 +1162,10 @@ int mesh_nexthop_lookup(struct ieee80211
+@@ -1172,13 +1165,10 @@ int mesh_nexthop_lookup(struct ieee80211
  	struct sta_info *next_hop;
  	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
  	u8 *target_addr = hdr->addr3;
@@ -68,7 +68,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
  	if (time_after(jiffies,
  		       mpath->exp_time -
-@@ -1190,12 +1180,10 @@ int mesh_nexthop_lookup(struct ieee80211
+@@ -1193,12 +1183,10 @@ int mesh_nexthop_lookup(struct ieee80211
  		memcpy(hdr->addr1, next_hop->sta.addr, ETH_ALEN);
  		memcpy(hdr->addr2, sdata->vif.addr, ETH_ALEN);
  		ieee80211_mps_set_frame_flags(sdata, next_hop, hdr);
diff --git a/package/kernel/mac80211/patches/subsys/365-mac80211-IBSS-send-deauth-when-expiring-inactive-STA.patch b/package/kernel/mac80211/patches/subsys/365-mac80211-IBSS-send-deauth-when-expiring-inactive-STA.patch
index 61b6d2b8d4..f977f59bb9 100644
--- a/package/kernel/mac80211/patches/subsys/365-mac80211-IBSS-send-deauth-when-expiring-inactive-STA.patch
+++ b/package/kernel/mac80211/patches/subsys/365-mac80211-IBSS-send-deauth-when-expiring-inactive-STA.patch
@@ -107,7 +107,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  					       frame_buf);
 --- a/net/mac80211/util.c
 +++ b/net/mac80211/util.c
-@@ -1427,7 +1427,8 @@ void ieee80211_send_auth(struct ieee8021
+@@ -1433,7 +1433,8 @@ void ieee80211_send_auth(struct ieee8021
  }
  
  void ieee80211_send_deauth_disassoc(struct ieee80211_sub_if_data *sdata,
@@ -117,7 +117,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  				    bool send_frame, u8 *frame_buf)
  {
  	struct ieee80211_local *local = sdata->local;
-@@ -1438,7 +1439,7 @@ void ieee80211_send_deauth_disassoc(stru
+@@ -1444,7 +1445,7 @@ void ieee80211_send_deauth_disassoc(stru
  	mgmt->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT | stype);
  	mgmt->duration = 0; /* initialize only */
  	mgmt->seq_ctrl = 0; /* initialize only */
diff --git a/package/kernel/mac80211/patches/subsys/366-mac80211-accept-deauth-frames-in-IBSS-mode.patch b/package/kernel/mac80211/patches/subsys/366-mac80211-accept-deauth-frames-in-IBSS-mode.patch
deleted file mode 100644
index 292cf55843..0000000000
--- a/package/kernel/mac80211/patches/subsys/366-mac80211-accept-deauth-frames-in-IBSS-mode.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-From 95697f9907bfe3eab0ef20265a766b22e27dde64 Mon Sep 17 00:00:00 2001
-From: Johannes Berg <johannes.berg@intel.com>
-Date: Fri, 4 Oct 2019 15:37:05 +0300
-Subject: [PATCH] mac80211: accept deauth frames in IBSS mode
-
-We can process deauth frames and all, but we drop them very
-early in the RX path today - this could never have worked.
-
-Fixes: 2cc59e784b54 ("mac80211: reply to AUTH with DEAUTH if sta allocation fails in IBSS")
-Signed-off-by: Johannes Berg <johannes.berg@intel.com>
-Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
-Link: https://lore.kernel.org/r/20191004123706.15768-2-luca@coelho.fi
-Signed-off-by: Johannes Berg <johannes.berg@intel.com>
----
- net/mac80211/rx.c | 11 ++++++++++-
- 1 file changed, 10 insertions(+), 1 deletion(-)
-
---- a/net/mac80211/rx.c
-+++ b/net/mac80211/rx.c
-@@ -3407,9 +3407,18 @@ ieee80211_rx_h_mgmt(struct ieee80211_rx_
- 	case cpu_to_le16(IEEE80211_STYPE_PROBE_RESP):
- 		/* process for all: mesh, mlme, ibss */
- 		break;
-+	case cpu_to_le16(IEEE80211_STYPE_DEAUTH):
-+		if (is_multicast_ether_addr(mgmt->da) &&
-+		    !is_broadcast_ether_addr(mgmt->da))
-+			return RX_DROP_MONITOR;
-+
-+		/* process only for station/IBSS */
-+		if (sdata->vif.type != NL80211_IFTYPE_STATION &&
-+		    sdata->vif.type != NL80211_IFTYPE_ADHOC)
-+			return RX_DROP_MONITOR;
-+		break;
- 	case cpu_to_le16(IEEE80211_STYPE_ASSOC_RESP):
- 	case cpu_to_le16(IEEE80211_STYPE_REASSOC_RESP):
--	case cpu_to_le16(IEEE80211_STYPE_DEAUTH):
- 	case cpu_to_le16(IEEE80211_STYPE_DISASSOC):
- 		if (is_multicast_ether_addr(mgmt->da) &&
- 		    !is_broadcast_ether_addr(mgmt->da))
diff --git a/package/kernel/mac80211/patches/subsys/368-cfg80211-add-local-BSS-receive-time-to-survey-inform.patch b/package/kernel/mac80211/patches/subsys/368-cfg80211-add-local-BSS-receive-time-to-survey-inform.patch
index e6d384784e..7854dbbfc4 100644
--- a/package/kernel/mac80211/patches/subsys/368-cfg80211-add-local-BSS-receive-time-to-survey-inform.patch
+++ b/package/kernel/mac80211/patches/subsys/368-cfg80211-add-local-BSS-receive-time-to-survey-inform.patch
@@ -64,7 +64,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	__NL80211_SURVEY_INFO_AFTER_LAST,
 --- a/net/wireless/nl80211.c
 +++ b/net/wireless/nl80211.c
-@@ -8367,6 +8367,10 @@ static int nl80211_send_survey(struct sk
+@@ -8373,6 +8373,10 @@ static int nl80211_send_survey(struct sk
  	    nla_put_u64_64bit(msg, NL80211_SURVEY_INFO_TIME_SCAN,
  			      survey->time_scan, NL80211_SURVEY_INFO_PAD))
  		goto nla_put_failure;
diff --git a/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch b/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
index cf4fdc13e9..07d2af21cb 100644
--- a/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
+++ b/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
@@ -8,7 +8,7 @@
   *
   * @set_wds_peer: set the WDS peer for a WDS interface
   *
-@@ -3272,6 +3273,7 @@ struct cfg80211_ops {
+@@ -3275,6 +3276,7 @@ struct cfg80211_ops {
  				enum nl80211_tx_power_setting type, int mbm);
  	int	(*get_tx_power)(struct wiphy *wiphy, struct wireless_dev *wdev,
  				int *dbm);
@@ -77,7 +77,7 @@
  static int ieee80211_set_wds_peer(struct wiphy *wiphy, struct net_device *dev,
  				  const u8 *addr)
  {
-@@ -3823,6 +3836,7 @@ const struct cfg80211_ops mac80211_confi
+@@ -3845,6 +3858,7 @@ const struct cfg80211_ops mac80211_confi
  	.set_wiphy_params = ieee80211_set_wiphy_params,
  	.set_tx_power = ieee80211_set_tx_power,
  	.get_tx_power = ieee80211_get_tx_power,
@@ -129,7 +129,7 @@
  	local->user_power_level = IEEE80211_UNSET_POWER_LEVEL;
 --- a/net/wireless/nl80211.c
 +++ b/net/wireless/nl80211.c
-@@ -464,6 +464,7 @@ static const struct nla_policy nl80211_p
+@@ -470,6 +470,7 @@ static const struct nla_policy nl80211_p
  	[NL80211_ATTR_HE_CAPABILITY] = { .type = NLA_BINARY,
  					 .len = NL80211_HE_MAX_CAPABILITY_LEN },
  	[NL80211_ATTR_AIRTIME_WEIGHT] = NLA_POLICY_MIN(NLA_U16, 1),
@@ -137,7 +137,7 @@
  };
  
  /* policy for the key attributes */
-@@ -2623,6 +2624,20 @@ static int nl80211_set_wiphy(struct sk_b
+@@ -2629,6 +2630,20 @@ static int nl80211_set_wiphy(struct sk_b
  		if (result)
  			return result;
  	}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
