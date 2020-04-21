Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62291B31D9
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 23:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w9Vkzymi0W0OXt1eSsolqpMbsJOFtM+bBh6hhlC27EI=; b=epcFFXMvW11Lea
	BPHp1oUFvairZydF7NkxvFnN92CRO5WP8F3oAc3DjJhWLTfiFMZlIZ1v2x4slnIbB2z4O+VI0cafn
	RF11bAtqhtsGFpkL9NLLRAXxGah3RA9oi23x8j7OddJcV6glPk2CbiFKrlQxwhwrNSbY1BMOL65ke
	w26bF2rj9brZoIEEpUAkBxhjqnYltA6hcTj9hFe1WajbKL5zcuTxI6goPInn4F4U1L61go2xQSePN
	Zo0tNnwpZHclBp4j1t7KKhDYB3LpDwMRpIiAjWoJ/BDizt5SngiOX8D8ynmeX/1miAAzoTcEFidIW
	TeikLEPvLYueVeSiZbCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR0Lw-0002DN-Pt; Tue, 21 Apr 2020 21:22:48 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR0Lh-0002Az-NT
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 21:22:36 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 496Gjr2hsBzQlGd;
 Tue, 21 Apr 2020 23:22:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id 2LcBHCThbCWc; Tue, 21 Apr 2020 23:22:20 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 21 Apr 2020 23:22:04 +0200
Message-Id: <20200421212207.8482-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 2F88F174A
X-Rspamd-Score: -6.68 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_142234_075789_9C959BB2 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/3] mac80211: Update to version 5.7-rc2
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

This updates mac80211 in OpenWrt to version 5.7-rc2.
This update contains ath11k and many other ieee80211ax updates.
ath11k only works on the ipq807x devices.

I tried to start a discussion how we want to go forward with the 
wireless subsystem we ship in the next OpenWrt release:
https://lists.infradead.org/pipermail/openwrt-devel/2020-March/022198.html

I would prefer if we apply this to master and then continuously update 
to match more recent kernel versions till we are at an LTS kernel 
version. I assume that the kernel 5.9 or 5.10 will be the next LTS 
version. Using a normal kernel release as a base will make providing 
(security) updates much harder.

You can also find these patches in my staging tree:
https://git.openwrt.org/?p=openwrt/staging/hauke.git;a=shortlog;h=refs/heads/mac80211-5.6

Please test this and report any regressions you see compared to the 
version currently shipped in OpenWrt master.

Hauke Mehrtens (3):
  mac80211: Update to version 5.5.11
  mac80211: Update to version 5.6.5-1
  mac80211: Update to version 5.7-rc2-1

 package/kernel/mac80211/Makefile              |   8 +-
 .../patches/ath/120-owl-loader-compat.patch   |   6 +-
 .../patches/ath/400-ath_move_debug_code.patch |   2 +-
 .../patches/ath/403-world_regd_fixup.patch    |  34 +-
 .../patches/ath/404-regd_no_assoc_hints.patch |   4 +-
 ...21-ath10k_init_devices_synchronously.patch |   2 +-
 .../ath/930-ath10k_add_tpt_led_trigger.patch  |   4 +-
 ...-of-peer_bw_rxnss_override-parameter.patch |  10 +-
 ...dling-for-VHT160-in-recent-firmwares.patch |   4 +-
 ...rolling-support-for-various-chipsets.patch |  42 +-
 ...75-ath10k-use-tpt-trigger-by-default.patch |   8 +-
 ...980-ath10k-fix-max-antenna-gain-unit.patch |   6 +-
 ...-power-reduction-for-US-regulatory-d.patch |   8 +-
 ...on-t-WARN-when-there-are-no-requests.patch |  28 -
 ...suspend-resume-when-power-is-cut-off.patch | 109 ---
 ...set-but-not-used-variable-mpnum-nsp-.patch |  58 --
 ...-interface-carrier-to-off-by-default.patch |  29 -
 ...wo-D11-cores-if-chip-has-two-D11-cor.patch | 121 ---
 ...-F2-blocksize-and-watermark-for-4359.patch |  79 --
 ...0003-brcmfmac-fix-rambase-for-4359-9.patch |  34 -
 ...rors-when-setting-roaming-parameters.patch |  42 --
 ...add-support-for-BCM4359-SDIO-chipset.patch |  75 --
 ...B-condition-when-setting-interface-c.patch | 130 ----
 ...-mbss-in-vif-if-firmware-does-not-su.patch |  38 -
 ...B-wake-interrupt-disabled-when-it-sh.patch |  66 --
 ...mac-use-true-false-for-bool-variable.patch |  27 -
 ...lify-building-interface-combinations.patch | 103 ---
 ...add-initial-support-for-monitor-mode.patch | 345 ---------
 ...-Remove-always-false-idx-0-statement.patch |  24 -
 ...-add-stub-for-monitor-interface-xmit.patch | 100 ---
 ...und-bug-with-some-inconsistent-BSSes.patch |   2 +-
 ...62-brcmfmac-Disable-power-management.patch |   2 +-
 .../mac80211/patches/brcm/998-survey.patch    |   8 +-
 .../patches/build/015-ipw200-mtu.patch        |   4 +-
 .../patches/build/050-lib80211_option.patch   |   4 +-
 .../patches/build/060-no_local_ssb_bcma.patch |   4 +-
 .../602-rt2x00-introduce-rt2x00eeprom.patch   |   8 +-
 ...c-loadable-via-OF-on-rt288x-305x-SoC.patch |   2 +-
 ...0-rt2x00-change-led-polarity-from-OF.patch |   2 +-
 .../611-rt2x00-add-AP+STA-support.patch       |   2 +-
 ...dd-support-for-external-PA-on-MT7620.patch |   6 +-
 ...-rt2x00-add-rf-self-txdc-calibration.patch |   4 +-
 .../rt2x00/983-rt2x00-add-r-calibration.patch |   4 +-
 .../984-rt2x00-add-rxdcoc-calibration.patch   |   4 +-
 .../985-rt2x00-add-rxiq-calibration.patch     |   4 +-
 .../986-rt2x00-add-TX-LOFT-calibration.patch  |   4 +-
 .../100-remove-cryptoapi-dependencies.patch   |   2 +-
 .../110-mac80211_keep_keys_on_stop_ap.patch   |   2 +-
 .../patches/subsys/130-disable-fils.patch     |   2 +-
 ...aes-cmac-switch-to-shash-CMAC-driver.patch |  99 ++-
 .../subsys/140-tweak-TSQ-setting.patch        |   2 +-
 .../subsys/150-disable_addr_notifier.patch    |  12 +-
 .../300-mac80211-optimize-skb-resizing.patch  |  10 +-
 ...l-remove-divisions-in-tx-status-path.patch |  61 --
 ...l_ht-replace-rate-stats-ewma-with-a-.patch | 235 ------
 ...l_ht-rename-prob_ewma-to-prob_avg-us.patch | 424 -----------
 ...domize-BA-session-dialog-token-alloc.patch |   2 +-
 ...80211-fix-tx-status-for-no-ack-cases.patch |  82 ---
 ...ore-skb-ack-code-to-its-own-function.patch |  78 --
 ...the-size-of-ack_frame_id-to-make-roo.patch |  67 --
 ...new-sta_info-getter-by-sta-vif-addrs.patch |  78 --
 ...t-airtime-calculation-code-from-mt76.patch | 690 ------------------
 ...lement-Airtime-based-Queue-Limit-AQL.patch | 446 -----------
 ...time-based-Queue-Limits-AQL-on-packe.patch | 146 ----
 ...-Fix-an-off-by-one-in-ieee80211_calc.patch |  31 -
 ...Turn-AQL-into-an-NL80211_EXT_FEATURE.patch | 253 -------
 ...ta-frames-without-key-on-encrypted-l.patch | 148 ----
 ...80211-use-more-bits-for-ack_frame_id.patch |  70 --
 .../500-mac80211_configure_antenna_gain.patch |  38 +-
 .../utils/iw/patches/001-nl80211_h_sync.patch | 420 ++++++++++-
 70 files changed, 617 insertions(+), 4391 deletions(-)
 delete mode 100644 package/kernel/mac80211/patches/brcm/101-v5.5-0001-brcmfmac-don-t-WARN-when-there-are-no-requests.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/101-v5.5-0002-brcmfmac-fix-suspend-resume-when-power-is-cut-off.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/103-v5.5-brcmfmac-remove-set-but-not-used-variable-mpnum-nsp-.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/112-v5.6-brcmfmac-set-interface-carrier-to-off-by-default.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/114-v5.6-0001-brcmfmac-reset-two-D11-cores-if-chip-has-two-D11-cor.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/114-v5.6-0002-brcmfmac-set-F2-blocksize-and-watermark-for-4359.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/114-v5.6-0003-brcmfmac-fix-rambase-for-4359-9.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/114-v5.6-0004-brcmfmac-make-errors-when-setting-roaming-parameters.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/114-v5.6-0005-brcmfmac-add-support-for-BCM4359-SDIO-chipset.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/114-v5.6-0006-brcmfmac-add-RSDB-condition-when-setting-interface-c.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/114-v5.6-0007-brcmfmac-not-set-mbss-in-vif-if-firmware-does-not-su.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/116-v5.6-brcmfmac-Keep-OOB-wake-interrupt-disabled-when-it-sh.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/117-v5.6-brcmfmac-use-true-false-for-bool-variable.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/119-v5.6-0001-brcmfmac-simplify-building-interface-combinations.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/119-v5.6-0002-brcmfmac-add-initial-support-for-monitor-mode.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/120-v5.6-brcmfmac-Remove-always-false-idx-0-statement.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/300-brcmfmac-add-stub-for-monitor-interface-xmit.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/301-mac80211-minstrel-remove-divisions-in-tx-status-path.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/302-mac80211-minstrel_ht-replace-rate-stats-ewma-with-a-.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/303-mac80211-minstrel_ht-rename-prob_ewma-to-prob_avg-us.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/305-mac80211-fix-tx-status-for-no-ack-cases.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/306-mac80211-move-store-skb-ack-code-to-its-own-function.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/307-mac80211-Shrink-the-size-of-ack_frame_id-to-make-roo.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/308-mac80211-Add-new-sta_info-getter-by-sta-vif-addrs.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/309-mac80211-Import-airtime-calculation-code-from-mt76.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/310-mac80211-Implement-Airtime-based-Queue-Limit-AQL.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/311-mac80211-Use-Airtime-based-Queue-Limits-AQL-on-packe.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/312-mac80211-airtime-Fix-an-off-by-one-in-ieee80211_calc.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/313-mac80211-Turn-AQL-into-an-NL80211_EXT_FEATURE.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/314-mac80211-drop-data-frames-without-key-on-encrypted-l.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/353-mac80211-use-more-bits-for-ack_frame_id.patch

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
