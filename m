Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4C6ACF68
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 17:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2Y9lHU0XrgCo756L8QsNE/z5nD/ujhvFnpN/1pNUbpo=; b=gJ/rZTDoWPTmmS
	CwV4XsGWKlC7GTJ9R9zzYiDK44TOTaqhFwdibFqzK1rUMChuGgwNiQL7FYzf+XLut+RCDS9i1CI7J
	zyazzJEIJeKQZPc+6aFnqW4DxmpWm6gHjbbJ+WNyKAInnqdj84I6Qw50Vd5eKqk+CFgZWpTsiSs28
	LzbJY8px5BIul8zcuqZ0/JMaGI1V8oHSMROgnh1BzAsrCTOewI7Bm/M7oRtIOyThe86f7fTLySywj
	RLRxpZW9ItY/g65drm8k+NbOwdI5deszzsUDVyx+nNYerSzww+IYuCxwTEcyy9YWf1/F2wOo1AIyp
	eXDYDWMD/p4MgPJaFwmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6yyh-0001Au-2D; Sun, 08 Sep 2019 15:19:47 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6yyZ-0001AU-UR
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 15:19:42 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 4212EA10A7;
 Sun,  8 Sep 2019 17:19:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id Xw5Iw1VTEF8g; Sun,  8 Sep 2019 17:19:25 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 17:18:57 +0200
Message-Id: <20190908151904.24554-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_081940_291382_C0450106 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/7] hostapd: Update to version 2.9
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This updates hostapd to version 2.9 release.
I tested AP mode and also mesh on 5GHz.

Hauke Mehrtens (7):
  hostapd: Update to version 2.8
  hostapd: backport some Fixes from upstream hostapd
  hostapd: update to version 2.9
  hostapd: use config option CONFIG_NO_LINUX_PACKET_SOCKET_WAR
  hostapd: Remove unneeded patch
  hostapd: use getrandom syscall
  hostapd: Add mesh support for wpad full

 package/network/services/hostapd/Makefile     |  12 +-
 .../hostapd/files/hostapd-basic.config        |  34 +-
 .../hostapd/files/hostapd-full.config         |  26 +-
 .../hostapd/files/hostapd-mini.config         |  26 +-
 .../hostapd/files/wpa_supplicant-basic.config |  64 ++--
 .../hostapd/files/wpa_supplicant-full.config  |  44 ++-
 .../hostapd/files/wpa_supplicant-mini.config  |  44 ++-
 .../hostapd/files/wpa_supplicant-p2p.config   |  44 ++-
 ...1-mesh-factor-out-mesh-join-function.patch | 211 -----------
 ...2-mesh-factor-out-rsn-initialization.patch | 133 -------
 .../003-mesh-relocate-RSN-init-function.patch |  41 ---
 ...ompletion-callback-to-complete-mesh-.patch | 129 +++++--
 ...ountry-setting-to-mesh-configuration.patch |  35 --
 ...-frequency-as-pri-sec-channel-switch.patch |  26 ++
 ...rnel-driver-DFS-handler-in-userspace.patch |  14 +-
 ...annel-attributes-before-running-Mesh.patch |  38 +-
 ...ce-type-to-mesh-before-setting-inter.patch |  36 --
 .../009-mesh-set-mesh-center-frequency.patch  |  22 --
 ...-mesh-interface-on-dfs-event-handler.patch | 176 ---------
 ...hannels-to-be-selected-if-dfs-is-ena.patch |  29 +-
 ...-do-not-allow-pri-sec-channel-switch.patch |  34 +-
 ...ot-allow-scan-result-to-swap-pri-sec.patch |  24 --
 ...sh-do-not-use-offchan-mgmt-tx-on-DFS.patch |  56 +--
 ...-fix-channel-switch-error-during-CAC.patch |  43 +--
 ...nterface-context-to-send-DFS-event-m.patch | 107 ------
 ...18-mesh-make-forwarding-configurable.patch |  36 +-
 ...CHANWIDTH_USE_HT-to-max_oper_chwidth.patch |  49 ---
 ...ent-use-of-VHT20-config-in-mesh-mode.patch |  82 -----
 ...EE80211X-y-build-without-CONFIG_FILS.patch |  33 --
 ...ix-race-condition-in-mesh-mpm-new-pe.patch |   2 +-
 ...tant-time-operations-for-private-big.patch |  88 -----
 ...nctions-for-constant-time-operations.patch | 212 -----------
 ...tant-time-selection-for-crypto_bignu.patch |  55 ---
 ...timing-differences-in-PWE-derivation.patch | 242 -------------
 ...anches-in-is_quadratic_residue_blind.patch | 139 -------
 ...-Mask-timing-of-MODP-groups-22-23-24.patch | 113 ------
 ...-const_time-selection-for-PWE-in-FFC.patch | 100 -----
 ...-time-operations-in-sae_test_pwd_see.patch | 133 -------
 ...tant-time-and-memory-access-for-find.patch | 319 ----------------
 ...rm-message-validation-in-error-cases.patch |  52 ---
 ...r-Verify-received-scalar-and-element.patch |  53 ---
 ...pwd-server-Detect-reflection-attacks.patch |  40 --
 ...t-Verify-received-scalar-and-element.patch |  53 ---
 ...k-element-x-y-coordinates-explicitly.patch | 320 ----------------
 .../hostapd/patches/110-no_eapol_fix.patch    |  14 -
 ...120-disable_bridge_packet_workaround.patch |  12 -
 .../hostapd/patches/200-multicall.patch       |  54 +--
 .../services/hostapd/patches/300-noscan.patch |  10 +-
 .../hostapd/patches/301-mesh-noscan.patch     |  14 +-
 .../patches/310-rescan_immediately.patch      |   2 +-
 .../hostapd/patches/320-optional_rfkill.patch |  12 +-
 .../patches/330-nl80211_fix_set_freq.patch    |   4 +-
 .../patches/340-reload_freq_change.patch      |  26 +-
 .../341-mesh-ctrl-iface-channel-switch.patch  |   2 +-
 .../patches/350-nl80211_del_beacon_bss.patch  |  10 +-
 .../patches/360-ctrl_iface_reload.patch       |   4 +-
 .../hostapd/patches/370-ap_sta_support.patch  | 171 +--------
 .../patches/380-disable_ctrl_iface_mib.patch  |  38 +-
 .../patches/390-wpa_ie_cap_workaround.patch   |   4 +-
 .../400-wps_single_auth_enc_type.patch        |   2 +-
 .../patches/410-limit_debug_messages.patch    |  12 +-
 .../patches/420-indicate-features.patch       |   6 +-
 .../patches/430-hostapd_cli_ifdef.patch       |   4 +-
 .../hostapd/patches/450-scan_wait.patch       |  12 +-
 ...dd-new-config-params-to-be-used-with.patch |  10 +-
 ...-use-new-parameters-during-ibss-join.patch |   4 +-
 .../patches/463-add-mcast_rate-to-11s.patch   |   8 +-
 .../patches/464-fix-mesh-obss-check.patch     |   2 +-
 .../patches/470-survey_data_fallback.patch    |   4 +-
 .../patches/500-lto-jobserver-support.patch   |   4 +-
 ...ostapd-Add-Multi-AP-protocol-support.patch | 306 ----------------
 ...dd-Multi-AP-protocol-support-to-supp.patch | 311 ----------------
 .../552-tests-Multi-AP-association.patch      | 100 -----
 .../553-tests-refactor-test_multi_ap.patch    |  72 ----
 ...-reject-backhaul-STA-on-fronhaul-BSS.patch | 106 ------
 ...a_ext-add-multi_ap_subelem-parameter.patch | 342 ------------------
 ...upport-Multi-AP-backhaul-STA-onboard.patch | 217 -----------
 ...ort-Multi-AP-backhaul-STA-onboarding.patch | 339 -----------------
 .../558-hostapd-add-README-MULTI-AP.patch     | 181 ---------
 ...dd-WPS-tests-to-multi_ap-hwsim-tests.patch | 182 ----------
 .../hostapd/patches/600-ubus_support.patch    | 154 ++------
 .../services/hostapd/src/src/ap/ubus.c        |   6 +-
 .../services/hostapd/src/src/ap/ubus.h        |   2 +-
 83 files changed, 637 insertions(+), 5695 deletions(-)
 delete mode 100644 package/network/services/hostapd/patches/001-mesh-factor-out-mesh-join-function.patch
 delete mode 100644 package/network/services/hostapd/patches/002-mesh-factor-out-rsn-initialization.patch
 delete mode 100644 package/network/services/hostapd/patches/003-mesh-relocate-RSN-init-function.patch
 delete mode 100644 package/network/services/hostapd/patches/005-mesh-reflect-country-setting-to-mesh-configuration.patch
 create mode 100644 package/network/services/hostapd/patches/005-mesh-update-ssid-frequency-as-pri-sec-channel-switch.patch
 delete mode 100644 package/network/services/hostapd/patches/008-mesh-set-interface-type-to-mesh-before-setting-inter.patch
 delete mode 100644 package/network/services/hostapd/patches/009-mesh-set-mesh-center-frequency.patch
 delete mode 100644 package/network/services/hostapd/patches/010-mesh-consider-mesh-interface-on-dfs-event-handler.patch
 delete mode 100644 package/network/services/hostapd/patches/014-mesh-do-not-allow-scan-result-to-swap-pri-sec.patch
 delete mode 100644 package/network/services/hostapd/patches/017-mesh-use-right-interface-context-to-send-DFS-event-m.patch
 delete mode 100644 package/network/services/hostapd/patches/031-mesh-add-VHT_CHANWIDTH_USE_HT-to-max_oper_chwidth.patch
 delete mode 100644 package/network/services/hostapd/patches/032-mesh-implement-use-of-VHT20-config-in-mesh-mode.patch
 delete mode 100644 package/network/services/hostapd/patches/040-FT-Fix-CONFIG_IEEE80211X-y-build-without-CONFIG_FILS.patch
 delete mode 100644 package/network/services/hostapd/patches/061-0001-OpenSSL-Use-constant-time-operations-for-private-big.patch
 delete mode 100644 package/network/services/hostapd/patches/061-0002-Add-helper-functions-for-constant-time-operations.patch
 delete mode 100644 package/network/services/hostapd/patches/061-0003-OpenSSL-Use-constant-time-selection-for-crypto_bignu.patch
 delete mode 100644 package/network/services/hostapd/patches/061-0005-SAE-Minimize-timing-differences-in-PWE-derivation.patch
 delete mode 100644 package/network/services/hostapd/patches/061-0006-SAE-Avoid-branches-in-is_quadratic_residue_blind.patch
 delete mode 100644 package/network/services/hostapd/patches/061-0007-SAE-Mask-timing-of-MODP-groups-22-23-24.patch
 delete mode 100644 package/network/services/hostapd/patches/061-0008-SAE-Use-const_time-selection-for-PWE-in-FFC.patch
 delete mode 100644 package/network/services/hostapd/patches/061-0009-SAE-Use-constant-time-operations-in-sae_test_pwd_see.patch
 delete mode 100644 package/network/services/hostapd/patches/062-0004-EAP-pwd-Use-constant-time-and-memory-access-for-find.patch
 delete mode 100644 package/network/services/hostapd/patches/063-0010-SAE-Fix-confirm-message-validation-in-error-cases.patch
 delete mode 100644 package/network/services/hostapd/patches/064-0011-EAP-pwd-server-Verify-received-scalar-and-element.patch
 delete mode 100644 package/network/services/hostapd/patches/064-0012-EAP-pwd-server-Detect-reflection-attacks.patch
 delete mode 100644 package/network/services/hostapd/patches/064-0013-EAP-pwd-client-Verify-received-scalar-and-element.patch
 delete mode 100644 package/network/services/hostapd/patches/064-0014-EAP-pwd-Check-element-x-y-coordinates-explicitly.patch
 delete mode 100644 package/network/services/hostapd/patches/110-no_eapol_fix.patch
 delete mode 100644 package/network/services/hostapd/patches/120-disable_bridge_packet_workaround.patch
 delete mode 100644 package/network/services/hostapd/patches/550-hostapd-Add-Multi-AP-protocol-support.patch
 delete mode 100644 package/network/services/hostapd/patches/551-wpa_supplicant-Add-Multi-AP-protocol-support-to-supp.patch
 delete mode 100644 package/network/services/hostapd/patches/552-tests-Multi-AP-association.patch
 delete mode 100644 package/network/services/hostapd/patches/553-tests-refactor-test_multi_ap.patch
 delete mode 100644 package/network/services/hostapd/patches/554-multi_ap-don-t-reject-backhaul-STA-on-fronhaul-BSS.patch
 delete mode 100644 package/network/services/hostapd/patches/555-WPS-wps_build_wfa_ext-add-multi_ap_subelem-parameter.patch
 delete mode 100644 package/network/services/hostapd/patches/556-wpa_supplicant-support-Multi-AP-backhaul-STA-onboard.patch
 delete mode 100644 package/network/services/hostapd/patches/557-hostapd-support-Multi-AP-backhaul-STA-onboarding.patch
 delete mode 100644 package/network/services/hostapd/patches/558-hostapd-add-README-MULTI-AP.patch
 delete mode 100644 package/network/services/hostapd/patches/559-tests-add-WPS-tests-to-multi_ap-hwsim-tests.patch

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
