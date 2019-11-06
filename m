Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3246F1729
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 14:31:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ENC4FbdV4Sz/NE6vsbcTBDAyzNbASdgEAqTYyb27Tpc=; b=NMlA5yvEesYB6+
	tvpfLvuNoFlP37foh+HgvCC6GACEROl/4Nw+xF2uIChZx8qYRH465CUodb3hplynYFTTfsIvuxlQJ
	DTHLU6ItnyLtO8KHLF/2CrFDMZCTXNHGCiG4oGh7aGadDMkiibvS/Q0Yhi9CRxqKYGcX7iK8Ap+BX
	fV1KJAgQGdInf1rFtAm559UFaBiGla3u4GworgAJM7MGpYry5jPMJ/GrBA2jDlVWoQVeNCkS0AxZ5
	kZErb0rMSJeIJw3EeGZDxsQNQYqGD78zostp1+htg9QtPet2QRP57IiiJ4BbClrZqjc3XFPKRp+z1
	KVPJaQv4z7kr0qtMHLlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLPa-0007Df-Vq; Wed, 06 Nov 2019 13:31:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLOM-000699-Dc
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 13:30:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 50CC44428;
 Wed,  6 Nov 2019 14:30:31 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6aca4cf3;
 Wed, 6 Nov 2019 14:30:21 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 14:30:19 +0100
Message-Id: <20191106133028.2350-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_053034_778798_1ABD6741 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 19.07 00/12] bump hostap to latest stable
 release
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

v1 patches were somehow screwed probably due to the rebase, so this v2 series
is done from scratch again. Previous cover letter[1] for reference, and Git
branch[2] with all the patches.

1. https://patchwork.ozlabs.org/cover/1190274/
2. https://git.openwrt.org/?p=openwrt/staging/ynezz.git;a=shortlog;h=refs/heads/upstream/19.07/hostapd-backports

Eneas U de Queiroz (1):
  hostapd: adjust removed wolfssl options

Hauke Mehrtens (6):
  hostapd: Update to version 2.8 (2019-04-21)
  hostapd: Update to version 2.9 (2019-08-08)
  hostapd: use config option CONFIG_NO_LINUX_PACKET_SOCKET_WAR
  hostapd: Remove unneeded patch
  hostapd: use getrandom syscall
  hostapd: Add mesh support for wpad full

Jo-Philipp Wich (2):
  hostapd: fix OWE settings in client mode
  hostapd: mirror ieee80211w ap mode defaults in station mode

Kyle Copperfield (1):
  hostapd: add IEEE 802.11k support

Leon M. George (2):
  hostapd: revert signature change in patch
  hostapd: declare struct wpa_bss early

 package/network/services/hostapd/Config.in    |   4 -
 package/network/services/hostapd/Makefile     |  12 +-
 .../hostapd/files/hostapd-basic.config        |  34 +-
 .../hostapd/files/hostapd-full.config         |  26 +-
 .../hostapd/files/hostapd-mini.config         |  26 +-
 .../network/services/hostapd/files/hostapd.sh |  23 ++
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
 ...erver-Fix-reassembly-buffer-handling.patch |  40 --
 ...-peer-Fix-reassembly-buffer-handling.patch |  40 --
 ...-ECC-groups-with-a-prime-under-256-b.patch |  40 --
 ...itable-groups-based-on-REVmd-changes.patch |  54 ---
 ...me_memcmp-for-pwd_value-prime-compar.patch |  26 --
 ...t_time_memcmp-for-pwd_value-prime-co.patch |  65 ----
 ...n2binpad-or-BN_bn2bin_padded-if-avai.patch |  61 ----
 ...prf-result-processing-even-if-it-pri.patch |  54 ---
 ...ugh-prf-result-processing-even-if-it.patch |  52 ---
 ...e-use-of-groups-using-Brainpool-curv.patch |  44 ---
 ...re-management-frame-from-unexpected-.patch |   4 +-
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
 .../patches/410-limit_debug_messages.patch    |  14 +-
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
 .../599-wpa_supplicant-fix-warnings.patch     |  19 +
 .../hostapd/patches/600-ubus_support.patch    | 154 ++------
 .../services/hostapd/src/src/ap/ubus.c        |   6 +-
 .../services/hostapd/src/src/ap/ubus.h        |   2 +-
 97 files changed, 682 insertions(+), 6178 deletions(-)
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
 delete mode 100644 package/network/services/hostapd/patches/065-0001-EAP-pwd-server-Fix-reassembly-buffer-handling.patch
 delete mode 100644 package/network/services/hostapd/patches/065-0003-EAP-pwd-peer-Fix-reassembly-buffer-handling.patch
 delete mode 100644 package/network/services/hostapd/patches/066-0000-EAP-pwd-Disallow-ECC-groups-with-a-prime-under-256-b.patch
 delete mode 100644 package/network/services/hostapd/patches/066-0000-SAE-Reject-unsuitable-groups-based-on-REVmd-changes.patch
 delete mode 100644 package/network/services/hostapd/patches/066-0001-SAE-Use-const_time_memcmp-for-pwd_value-prime-compar.patch
 delete mode 100644 package/network/services/hostapd/patches/066-0002-EAP-pwd-Use-const_time_memcmp-for-pwd_value-prime-co.patch
 delete mode 100644 package/network/services/hostapd/patches/066-0003-OpenSSL-Use-BN_bn2binpad-or-BN_bn2bin_padded-if-avai.patch
 delete mode 100644 package/network/services/hostapd/patches/066-0004-SAE-Run-through-prf-result-processing-even-if-it-pri.patch
 delete mode 100644 package/network/services/hostapd/patches/066-0005-EAP-pwd-Run-through-prf-result-processing-even-if-it.patch
 delete mode 100644 package/network/services/hostapd/patches/066-0006-dragonfly-Disable-use-of-groups-using-Brainpool-curv.patch
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
 create mode 100644 package/network/services/hostapd/patches/599-wpa_supplicant-fix-warnings.patch


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
