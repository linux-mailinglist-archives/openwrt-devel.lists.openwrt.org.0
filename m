Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAC5F1490
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 12:06:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lIP3zQABTmrQed2ntriLslf54So92p7afrVES4YRjbI=; b=BlHomILoEO4Irk
	DRH47iJJhMBfTG+sZmNtroX7gr+aEFpxZ8Sd+iIQavWxZ5BPESuEeboMwh9Jfe2QZiLaRxml9eoIy
	2YeW+NZPem1BpiOV7gdkfMkQCdQvGULQi7lqJFpPnsGG6o8W897Jhm6prOrmAwVgNqdmufxadrWqS
	kvDwmdgyaFlDe6mKBDdkf8CSEWwhwy+B7vPDLaJ63wvycO8n9tV++zXbbh38gVNJjHS54xkz/dhN3
	xhxJoSL1VQ0ahUqLPQUErXorfRcKEp9nYkPUe+UZJIzMW6cFDcF3bRCwiZYFz7s7o2L0QIfT4XBP4
	Us1Dj7cEB4Buc7l2d3nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJ93-0002cY-FQ; Wed, 06 Nov 2019 11:06:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJ7v-0001Qz-R4
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 11:05:32 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 583936B24;
 Wed,  6 Nov 2019 12:05:23 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 60a5adfa;
 Wed, 6 Nov 2019 12:05:12 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 12:05:05 +0100
Message-Id: <20191106110514.20413-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_030528_185901_24D73548 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
Subject: [OpenWrt-Devel] [PATCH 19.07 00/14] bump hostap to latest stable
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

TL;DR I would like to propose backport of most of hostap patches from master
and thus bumping hostapd in 19.07 to the latest stable release v2.9.

I understand, that it's quite a radical change as we've 19.07-rc1 already
tagged, but bellow you can find a filtered list of 147 (total count is 1195)
interesting commits which are worth considering of this bump of hostap for
19.07-rc2.

I would like to add, that v2.9 has been tested for some time already, I'm not
aware about any issues and v2.9 is going to make the backporting of fixes much
easier as well.

 d776bf8c66ff EAP-TEAP peer: Fix fragmentation of final message
 1c7e61a35aff wolfssl: Avoid void pointer arithmetic
 7122a02fa5b7 SAE: Fix order_len for FFC groups
 ac734a342ed1 SAE: Fix KCK, PMK, and PMKID derivation for groups 22, 23, 24
 c65168ccd29c OpenSSL: Fix crypto_bignum_to_bin() with padlen == 0
 64e37be9454c Avoid nested enum wpas_mode declaration to allow C++ compilation
 fe2e1edf431d EAP-SIM server: Avoid void pointer arithmetic
 cfc9ebea0326 EAP-AKA server: Avoid void pointer arithmetic
 bd0414043594 trace: Avoid void pointer arithmetic
 fc03ea2c1fc7 DPP: Avoid void pointer arithmetic
 4da91881cbf0 P2P: Fix memory size for os_memmove() in p2p_check_pref_chan()
 f74618cb928e wpa_supplicant: Fix type for ssid->mode comparisons
 30bbff142d04 DPP: Fix documentation to include operating class for URI
 29f85561894d HE: Fix HE capability check for PPE threshold present
 ce11c281ad1d TLS: Fix X.509v3 BasicConstraints parsing
 09448d94a7c9 Avoid use of a shadowed local variable
 2552a3735a13 SAE: Fix external_auth status in driver-SME STA case with AP SME support
 8f5fc369e263 HE: Fix HE Capabilities element variable length encoding
 0dbc894f466e HE: Fix HE Capabilities indication from driver
 39b9d059cd98 HE: Remove vht_ prefix from acs_adjust_vht_center_freq()
 7118a697f4b9 HE: Remove vht_ prefix from seg0/seg1_idx in DFS
 f428332d322d HE: Remove vht_ prefix from bw/seg0/seg1_idx in CSA fallback
 f200631c3563 HE: Remove vht_ prefix from CSA/bandwidth
 b04e43086ba3 HE: Remove vht_ prefix from shared set_freq argument
 464dcfd0304c HE: Remove VHT_ prefix from CHANWITDH_* define
 31bc66e4d193 More forceful clearing of stack memory with keys
 18f4fc43f280 hs20-osu-client: Check snprintf result to avoid compiler warnings
 0de46d8a6643 mesh: Fix RSN initialization failure handling
 baf8ab8ceca0 RADIUS server: Do not close fd=0 in error cases
 312ec34e40fc UBSan: Avoid dependency on undefined behavior in internal AES operation
 5bad612311ae WNM: Fix bounds checking in SSID List element matching
 e8ebef87cb4b WNM: Fix BSS Termination Duration subelement length validation
 b1aee7a622b8 DPP: Fix bootstrapping URI parser to handle channel list for an opclass
 a96c78364518 dbus: Fix some memory leaks on error paths
 e3b39e62c2de OpenSSL: Fix a memory leak in OCSP handling
 6602d9e3a6fa DPP: Fix a memory leak in testing sequence
 c5622b43cd8d DPP: Fix a memory leak on duplicate Authentication Response
 1cdfe8d23f9f DPP: Fix a memory leak in PKEX Qi/Qr derivation
 677e120181d3 dragonfly: Fix a memory leak on error path
 8925d2010d93 OpenSSL: Fix memory leak in crypto_dh_derive_secret()
 57ec74ea9b9a DPP: Fix memory leak in EC_GROUP handling
 7a9ddba6f524 DPP: Fix a memory leak in key pair generation
 f9cd1327adf7 OpenSSL: Fix memory leak in crypto_ecdh_init()
 6326fa0c408c Fix ENGINE support with OpenSSL 1.1+
 e6ca2f1139b3 nl80211: Fix handling of if_indices reallocation failure
 d42df8d6ce81 Fix a regression in storing of external_auth SSID/BSSID
 b1664c8e4f00 HE: Fix he_bss_color documentation
 e6f9eab90ebc HE: Fix HE Operation element byte order on bigendian CPUs
 3869c159d95e HE: Fix HE operation field size
 7cac255632e6 HE: Fix Operation Parameters order
 fa52bc8b98b8 EAP-PAX server: Fix message length checks for MSGDUMP level hexdump
 a3be79a14202 EAP-GPSK server: Fix memory freeing on error path
 24b06511e248 EAP-SAKE server: Fix memory freeing on error path
 a40bd06e9b8e FILS: Fix PTK rekeying
 d2d1a324ce93 EAP-pwd peer: Fix reassembly buffer handling
 fe76f487e28b EAP-pwd server: Fix reassembly buffer handling
 a9d224f560be EAP-pwd server: Fix a memory leak on error path
 824cb5a530a8 RSN: Ignore IGTK configuration errors with swapped KeyID values
 fe01cd0067e8 Fix FILS ERP association event with 4-way HS offload drivers
 0be8b9238f6c mka: Avoid memory leak in unexpected case in RECEIVE
 984d5b7e1fdd mesh: Fix random llid generation in an error case
 10cf866bac4b mesh: Fix operations after SAE state machine removing the STA
 153d4c501a82 mesh: Fix SAE reauthentication processing
 2f6805139559 Fix hostapd BSS_TM_REQ handling of bss_term parameter
 2e70e807c8b8 D-Bus: Fix P2P GroupStarted signal not to use uninitialized IP buffer
 6570949b2c1d OpenSSL: Fix server side openssl_ecdh_curves configuration with 1.0.2
 ac8fa9ef1986 SAE: Fix confirm message validation in error cases
 362704dda045 SAE: Avoid branches in is_quadratic_residue_blind()
 aaf65feac67c EAP-pwd: Use constant time and memory access for finding the PWE
 242e857285e5 Extend domain_match and domain_suffix_match to allow list of values
 dcc0ccd5b0fa wolfSSL: Fix dNSName matching with domain_match and domain_suffix_match
 6bb9d9a8db89 AP: Avoid NULL use with snprintf string
 0487967153ac OWE: Fix a possible memory leak on error path
 277fa92b3767 crypto: Fix unreachable code in tls_prf_sha1_md5()
 be609c6fc6cb SAE: Fix commit message override with external authentication
 ab3aebcce50e SAE: Fix PMKSA cache entry search for FT-SAE case
 322d328e71a4 FT: Fix SAE + FT-SAE behavior in association parameter selection
 08dc8efd29d2 Fix memcpy regression in PMK handling
 130444738bea FILS: Fix KEK2 derivation for FILS+FT
 4efade31571a nl80211: Clear keys from heap memory before freeing it for get_seqnum
 2b7fa03559c3 P2P: Fix ACS offloading behavior with p2p_no_group_iface=1
 002edb6303c5 Fix AP MLME in driver handling of FT and SA Query Action frames
 1e653daa31d4 EAP-pwd server: Fix memory leak with salted passwords
 fda7660106a8 EAP-pwd: Fix a memory leak in hunting-and-pecking loop
 4a9531a7559a bignum: Fix documentation for bignum_cmp_d()
 2f7bc0681632 UBSan: Avoid a warning on unsigned integer overflow
 bb05d03606ad Fix a regression from VLAN assignment using WPA/WPA2 passphrase/PSK
 429ed54a3dae UBSan: Avoid a warning on signed left shift
 b3957edbe9c6 UBSan: Split loop index decrementation into a separate step
 5ac13f6d00ac atheros: Avoid clang compiler warning on address of array check
 aaa6b14984a0 Avoid compiler warning about potentially unaligned pointer value
 cce974d367d4 UBSan: Define FST LLT macros without integer overflow
 9140caf5fbe8 UBSan: Avoid integer overflow in a loop index counter
 8fc22fdde6a2 UBSan: Avoid NULL pointer dereferences on an error path
 43216777e5e4 UBSan: Avoid unsigned integer overflow in base64 encoding
 fed7d8fcba68 UBSan: Avoid unsigned integer overflow in utf8_{,un}escape()
 cc4cdefc7f78 UBSan: Avoid unnecessary warning
 a9377bc380d8 UBSan: Avoid memcpy(ptr, NULL, 0)
 5a23c2528a5b UBSan: Avoid an unsigned integer overflow warning
 abde4eba45ac UBSan: Pack MACsec peer id structure
 c4fccfc7a5dd UBSan: Avoid memcmp(ptr, NULL, 0)
 1b85cad29c13 UBSan: Use typecast to avoid unsigned integer overflow
 e3b5bd81bdb6 UBSan: Fix RRM beacon processing attempt without scan_info
 01d01a311c52 UBSan: Avoid size_t variable overflow in control interface
 ec2e7c4cfa17 UBSan: Avoid unsigned integer overflow is throughput estimation
 1415d4b82d5e Multi-AP: Avoid memcpy(ptr, NULL, 0) in WPS Registrar initialization
 2c129a1b71c6 Fix cipher suite selector default value in RSNE for DMG
 2fae58fdc142 Fix wpa_psk_file parser error case handling
 fe468b071434 HE: Fix set_he_cap() parsing of config options for MU EDCA Params
 91205c8eb4e6 OpenSSL: Fix uninitialized variable in CRL reloading corner case
 1e5506588dcc JSON: Fix string parsing when \\ escape is at the end of buffer
 0dedcb3154fa JSON: Fix parsing of a number from the end of the buffer
 62269c8d8d79 TLS: Fix X.509 certificate name conversion into empty string
 3eae9766b7e3 TLS: Fix ASN.1 parsing with no room for the header
 fbc2123a1431 TLS: Fix AlertDescription for missing partial processing case
 b642ab4062f6 TLS server: More complete logging of ClientHello decode errors
 fdd8a2f0b85b TLS client: Fix peer certificate event checking for probing
 a68e9b698008 D-Bus: Fix P2P DeleteService dict iteration
 0607346f1270 D-Bus: Fix a memory leak in DeleteService handler
 d05dda61d8b9 PEAP: Explicitly clear temporary keys from memory when using CMK
 59fa205388aa P2P: Allow the avoid channels for P2P discovery/negotiation
 e34cd9f06e7c WNM: Fix WNM-Sleep Mode Request bounds checking
 c85249aa150f Fix test compilation error related to sme_event_unprot_disconnect()
 cc0f24196b31 D-Bus: Fix P2P Flush method to clear pending Action frames
 9da1641a4cee Clarify documentation of avoid channels expectations
 89d79150ac17 Avoid forward references to enum types in ieee802_11_common.h
 7814838f9200 eloop: Fix kqueue event deletion filter
 7153bd46745c eloop: Fix fd_table allocation for epoll and kqueue
 a898113823a3 HS 2.0: Fix EST compilation with OpenSSL 1.1.0 and newer
 27859f5203c6 mka: Fix deleteSAs clearing of principal->new_key
 54c6a69952e3 mka: Check for errors on create Secure Channel
 52171e18c9d4 mka: Fix a memory leak on error path
 bab1d0d3593a mka: Fix resource leak when detecting duplicated SCI
 1cb0f63b0e45 mka: Fix READY to TRANSMIT logic in CP state machine
 8ae29b4e9c3f mka: Fix READY to ABANDON logic in CP state machine
 3dce43ba5fc3 mka: Fix RECEIVING to TRANSMIT logic in CP state machine
 06e06a8df798 mka: Fix RETIRE state deletion of SAs
 2fc0675683ab mka: Fix lowest acceptable Packet Number (LPN) calculation and use
 d9a0a72229cd mka: Fix MKPDU SAK Use Body's Delay Protect bit setting
 5864545492b7 mka: Fix conf_offset value in MKPDU when in policy mode SHOULD_SECURE
 5759bd36aac6 WPS: Fix wps_validate_credential() argument type
 e422a819d0fd Check snprintf result to avoid compiler warnings
 22d8bb04d94c WMM AC: Do not write ERROR level log entries when WMM AC is not in use
 06c00e6d930a OWE: Fix OWE network profile saving
 3ce48c440e31 HS 2.0: Fix PMF-in-use check for ANQP Venue URL processing
 f81e65510c8f WPS NFC: Fix potential NULL pointer dereference on an error path
 0e1ab324cc8f HS 2.0 server: Fix couple of memory leaks

Eneas U de Queiroz (1):
  hostapd: adjust removed wolfssl options

Hauke Mehrtens (8):
  hostapd: Allow CONFIG_IEEE80211W for all but mini variant
  hostapd: Fix security problem
  hostapd: SAE/EAP-pwd side-channel attack update
  hostapd: Update to version 2.8 (2019-04-21)
  hostapd: Update to version 2.9 (2019-08-08)
  hostapd: use config option CONFIG_NO_LINUX_PACKET_SOCKET_WAR
  hostapd: Remove unneeded patch
  hostapd: use getrandom syscall

Jo-Philipp Wich (2):
  hostapd: fix OWE settings in client mode
  hostapd: mirror ieee80211w ap mode defaults in station mode

Kyle Copperfield (1):
  hostapd: add IEEE 802.11k support

Leon M. George (2):
  hostapd: revert signature change in patch
  hostapd: declare struct wpa_bss early

 package/network/services/hostapd/Config.in    |   4 -
 package/network/services/hostapd/Makefile     |   8 +-
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
 97 files changed, 680 insertions(+), 6176 deletions(-)
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
