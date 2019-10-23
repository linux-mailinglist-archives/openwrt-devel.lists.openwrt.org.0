Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5433EE186A
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 12:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y+x8Vheixd0e/HHubsk4Wksi5oC8/p4rEnPM6pRth+0=; b=CnAD9KLW4v92hO
	eDj4Nq6qNYEBVqIpeh7PicnrJslCDWq2tQxn/93XHgR1dPETrBrJDdf3PyaYROR1OUS+pKCaiMyOZ
	1Au8aJI6GEJ9CphEt7lsOWNYDLSDT4ditWNUM3YnCkGVrzgM7evyhAneYwOcBJhQErt5PeitBfpup
	UZ3SNQp5goD+kWec6G9GPQbVQdzjzzRrQy+zk2HsPmX6iJdu42pTYNscmt3FqbhFrZOwPSxSUL3qC
	XdkH5EYlmcZCtpe4L8djVEGwujBlMwo9ZzpTMcOo2iivdpPcl0YTsd9gMgwAoqtXKWLQxUKaIhE86
	Rs+uFsREZjADTAMuzvGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNEL0-0005e3-RE; Wed, 23 Oct 2019 10:57:58 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEKc-0005LV-0R
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 10:57:41 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 3F512A255E;
 Wed, 23 Oct 2019 12:57:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id cajpNsKlmn2X; Wed, 23 Oct 2019 12:57:19 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: daniel@makrotopia.org,
	openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 12:57:09 +0200
Message-Id: <20191023105709.20929-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_035734_406427_0BB1CC00 
X-CRM114-Status: GOOD (  24.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFC PATCH] hostapd: Remove mesh DFS patches
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

Some of these patches went into upstream hostapd, but not all of them
because of quality problems, see
https://patchwork.ozlabs.org/project/hostap/list/?series=62725&state=*
I forward ported the remaining patches to hostapd 2.9, but I am not
really convinced that this works correctly.

One of the patches which was applied was also reverted later, because it
causes a memory leak:
https://w1.fi/cgit/hostap/commit/?id=3e949655ccc5fba4686d04c70380463ebf059b30
We still have this patch in.

I would like to remove these patches for now, if someone wants to work
on this feature again I am fine with adding these patches again, but I
would prefer if they are all in upstream hostapd.

Cc: Daniel Golle <daniel@makrotopia.org>
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 ...ompletion-callback-to-complete-mesh-.patch | 124 ------------------
 ...-frequency-as-pri-sec-channel-switch.patch |  26 ----
 ...rnel-driver-DFS-handler-in-userspace.patch |  48 -------
 ...annel-attributes-before-running-Mesh.patch |  47 -------
 ...hannels-to-be-selected-if-dfs-is-ena.patch |  78 -----------
 ...-do-not-allow-pri-sec-channel-switch.patch |  29 ----
 ...sh-do-not-use-offchan-mgmt-tx-on-DFS.patch |  61 ---------
 ...-fix-channel-switch-error-during-CAC.patch |  59 ---------
 ...18-mesh-make-forwarding-configurable.patch |   8 +-
 .../hostapd/patches/200-multicall.patch       |  10 +-
 .../hostapd/patches/301-mesh-noscan.patch     |   4 +-
 .../patches/310-rescan_immediately.patch      |   2 +-
 .../patches/350-nl80211_del_beacon_bss.patch  |   4 +-
 .../hostapd/patches/370-ap_sta_support.patch  |   4 +-
 ...dd-new-config-params-to-be-used-with.patch |   2 +-
 .../patches/463-add-mcast_rate-to-11s.patch   |  10 +-
 .../patches/464-fix-mesh-obss-check.patch     |   2 +-
 .../hostapd/patches/600-ubus_support.patch    |  12 +-
 18 files changed, 29 insertions(+), 501 deletions(-)
 delete mode 100644 package/network/services/hostapd/patches/004-mesh-use-setup-completion-callback-to-complete-mesh-.patch
 delete mode 100644 package/network/services/hostapd/patches/005-mesh-update-ssid-frequency-as-pri-sec-channel-switch.patch
 delete mode 100644 package/network/services/hostapd/patches/006-mesh-inform-kernel-driver-DFS-handler-in-userspace.patch
 delete mode 100644 package/network/services/hostapd/patches/007-mesh-apply-channel-attributes-before-running-Mesh.patch
 delete mode 100644 package/network/services/hostapd/patches/011-mesh-Allow-DFS-channels-to-be-selected-if-dfs-is-ena.patch
 delete mode 100644 package/network/services/hostapd/patches/013-mesh-do-not-allow-pri-sec-channel-switch.patch
 delete mode 100644 package/network/services/hostapd/patches/015-mesh-do-not-use-offchan-mgmt-tx-on-DFS.patch
 delete mode 100644 package/network/services/hostapd/patches/016-mesh-fix-channel-switch-error-during-CAC.patch

diff --git a/package/network/services/hostapd/patches/004-mesh-use-setup-completion-callback-to-complete-mesh-.patch b/package/network/services/hostapd/patches/004-mesh-use-setup-completion-callback-to-complete-mesh-.patch
deleted file mode 100644
index 3d99b3bfb9..0000000000
--- a/package/network/services/hostapd/patches/004-mesh-use-setup-completion-callback-to-complete-mesh-.patch
+++ /dev/null
@@ -1,124 +0,0 @@
-From c05ace7510ead96e72b97ce47b33f7b5865d6d36 Mon Sep 17 00:00:00 2001
-From: Peter Oh <peter.oh@bowerswilkins.com>
-Date: Mon, 27 Aug 2018 14:28:38 -0700
-Subject: [PATCH 1/7] mesh: use setup completion callback to complete mesh join
-
-mesh join function is the last function to be called during
-mesh join process, but it's been called a bit earlier than
-it's supposed to be, so that some mesh parameter values
-such as VHT capabilities not applied correct when mesh join
-is in process.
-Moreover current design of mesh join that is called directly
-after mesh initialization isn't suitable for DFS channels to use,
-since mesh join process should be paused until DFS CAC is
-done and resumed after it's done.
-The callback will be called by hostapd_setup_interface_complete_sync.
-There is possiblity that completing mesh init fails, so add error
-handle codes.
-
-Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
-Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
----
- src/ap/hostapd.c      | 11 ++++++++++-
- wpa_supplicant/mesh.c | 13 +++++++------
- 2 files changed, 17 insertions(+), 7 deletions(-)
-
---- a/src/ap/hostapd.c
-+++ b/src/ap/hostapd.c
-@@ -423,6 +423,8 @@ static void hostapd_free_hapd_data(struc
- #ifdef CONFIG_MESH
- 	wpabuf_free(hapd->mesh_pending_auth);
- 	hapd->mesh_pending_auth = NULL;
-+	/* handling setup failure is already done */
-+	hapd->setup_complete_cb = NULL;
- #endif /* CONFIG_MESH */
- 
- 	hostapd_clean_rrm(hapd);
-@@ -2049,6 +2051,13 @@ dfs_offload:
- 	if (hapd->setup_complete_cb)
- 		hapd->setup_complete_cb(hapd->setup_complete_cb_ctx);
- 
-+#ifdef CONFIG_MESH
-+	if (delay_apply_cfg && !iface->mconf) {
-+		wpa_printf(MSG_ERROR, "Error while completing mesh init");
-+		goto fail;
-+	}
-+#endif /* CONFIG_MESH */
-+
- 	wpa_printf(MSG_DEBUG, "%s: Setup of interface done.",
- 		   iface->bss[0]->conf->iface);
- 	if (iface->interfaces && iface->interfaces->terminate_on_error > 0)
-@@ -2192,7 +2201,7 @@ int hostapd_setup_interface(struct hosta
- 	ret = setup_interface(iface);
- 	if (ret) {
- 		wpa_printf(MSG_ERROR, "%s: Unable to setup interface.",
--			   iface->bss[0]->conf->iface);
-+			   iface->conf ? iface->conf->bss[0]->iface : "N/A");
- 		return -1;
- 	}
- 
---- a/wpa_supplicant/mesh.c
-+++ b/wpa_supplicant/mesh.c
-@@ -190,8 +190,9 @@ static int wpas_mesh_init_rsn(struct wpa
- }
- 
- 
--static int wpas_mesh_complete(struct wpa_supplicant *wpa_s)
-+static void wpas_mesh_complete_cb(void *ctx)
- {
-+	struct wpa_supplicant *wpa_s = ctx;
- 	struct hostapd_iface *ifmsh = wpa_s->ifmsh;
- 	struct wpa_driver_mesh_join_params *params = wpa_s->mesh_params;
- 	struct wpa_ssid *ssid = wpa_s->current_ssid;
-@@ -200,7 +201,7 @@ static int wpas_mesh_complete(struct wpa
- 	if (!params || !ssid || !ifmsh) {
- 		wpa_printf(MSG_ERROR, "mesh: %s called without active mesh",
- 			   __func__);
--		return -1;
-+		return;
- 	}
- 
- 	if (ifmsh->mconf->security != MESH_CONF_SEC_NONE &&
-@@ -209,7 +210,7 @@ static int wpas_mesh_complete(struct wpa
- 			   "mesh: RSN initialization failed - deinit mesh");
- 		wpa_supplicant_mesh_deinit(wpa_s);
- 		wpa_drv_leave_mesh(wpa_s);
--		return -1;
-+		return;
- 	}
- 
- 	if (ssid->key_mgmt & WPA_KEY_MGMT_SAE) {
-@@ -235,8 +236,6 @@ static int wpas_mesh_complete(struct wpa
- 
- 	if (!ret)
- 		wpa_supplicant_set_state(wpa_s, WPA_COMPLETED);
--
--	return ret;
- }
- 
- 
-@@ -263,6 +262,7 @@ static int wpa_supplicant_mesh_init(stru
- 	if (!ifmsh)
- 		return -ENOMEM;
- 
-+	ifmsh->owner = wpa_s;
- 	ifmsh->drv_flags = wpa_s->drv_flags;
- 	ifmsh->num_bss = 1;
- 	ifmsh->bss = os_calloc(wpa_s->ifmsh->num_bss,
-@@ -280,6 +280,8 @@ static int wpa_supplicant_mesh_init(stru
- 	bss->drv_priv = wpa_s->drv_priv;
- 	bss->iface = ifmsh;
- 	bss->mesh_sta_free_cb = mesh_mpm_free_sta;
-+	bss->setup_complete_cb = wpas_mesh_complete_cb;
-+	bss->setup_complete_cb_ctx = wpa_s;
- 	frequency = ssid->frequency;
- 	if (frequency != freq->freq &&
- 	    frequency == freq->freq + freq->sec_channel_offset * 20) {
-@@ -521,7 +523,6 @@ int wpa_supplicant_join_mesh(struct wpa_
- 		goto out;
- 	}
- 
--	ret = wpas_mesh_complete(wpa_s);
- out:
- 	return ret;
- }
diff --git a/package/network/services/hostapd/patches/005-mesh-update-ssid-frequency-as-pri-sec-channel-switch.patch b/package/network/services/hostapd/patches/005-mesh-update-ssid-frequency-as-pri-sec-channel-switch.patch
deleted file mode 100644
index 4d77f2d206..0000000000
--- a/package/network/services/hostapd/patches/005-mesh-update-ssid-frequency-as-pri-sec-channel-switch.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-From c56f18380d1d404a2abc0ea5373d294508ef1e54 Mon Sep 17 00:00:00 2001
-From: Peter Oh <peter.oh@bowerswilkins.com>
-Date: Mon, 27 Aug 2018 14:28:41 -0700
-Subject: [PATCH 2/7] mesh: update ssid->frequency as pri/sec channel switch
-
-ssid->frequency is one of variables used to gets channel
-number from given frequency. Leave it as unchanged when
-pri/sec channel switched will cause picking up wrong
-channel number after applying secondary channel offset
-for HT40 and leads failing interface bring-up.
-
-Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
----
- wpa_supplicant/mesh.c | 1 +
- 1 file changed, 1 insertion(+)
-
---- a/wpa_supplicant/mesh.c
-+++ b/wpa_supplicant/mesh.c
-@@ -287,6 +287,7 @@ static int wpa_supplicant_mesh_init(stru
- 	    frequency == freq->freq + freq->sec_channel_offset * 20) {
- 		wpa_printf(MSG_DEBUG, "mesh: pri/sec channels switched");
- 		frequency = freq->freq;
-+		ssid->frequency = frequency;
- 	}
- 	wpa_s->assoc_freq = frequency;
- 	wpa_s->current_ssid = ssid;
diff --git a/package/network/services/hostapd/patches/006-mesh-inform-kernel-driver-DFS-handler-in-userspace.patch b/package/network/services/hostapd/patches/006-mesh-inform-kernel-driver-DFS-handler-in-userspace.patch
deleted file mode 100644
index 76c43da8e2..0000000000
--- a/package/network/services/hostapd/patches/006-mesh-inform-kernel-driver-DFS-handler-in-userspace.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-From 593602b7f14be5c2695979639764b1c50f01bbec Mon Sep 17 00:00:00 2001
-From: Peter Oh <peter.oh@bowerswilkins.com>
-Date: Mon, 27 Aug 2018 14:28:49 -0700
-Subject: [PATCH 7/7] mesh: inform kernel driver DFS handler in userspace
-
-NL80211_ATTR_HANDLE_DFS is required by kerenel space
-to enable DFS channels that indicates DFS handler
-resides in userspace.
-
-Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
----
- src/drivers/driver.h         | 1 +
- src/drivers/driver_nl80211.c | 3 +++
- wpa_supplicant/mesh.c        | 1 +
- 3 files changed, 5 insertions(+)
-
---- a/src/drivers/driver.h
-+++ b/src/drivers/driver.h
-@@ -1477,6 +1477,7 @@ struct wpa_driver_mesh_join_params {
- #define WPA_DRIVER_MESH_FLAG_SAE_AUTH	0x00000004
- #define WPA_DRIVER_MESH_FLAG_AMPE	0x00000008
- 	unsigned int flags;
-+	u8 handle_dfs;
- };
- 
- /**
---- a/src/drivers/driver_nl80211.c
-+++ b/src/drivers/driver_nl80211.c
-@@ -9624,6 +9624,9 @@ static int nl80211_join_mesh(struct i802
- 
- 	wpa_printf(MSG_DEBUG, "  * flags=%08X", params->flags);
- 
-+	if (params->handle_dfs)
-+		if (nla_put_flag(msg, NL80211_ATTR_HANDLE_DFS))
-+			goto fail;
- 	container = nla_nest_start(msg, NL80211_ATTR_MESH_SETUP);
- 	if (!container)
- 		goto fail;
---- a/wpa_supplicant/mesh.c
-+++ b/wpa_supplicant/mesh.c
-@@ -309,6 +309,7 @@ static int wpa_supplicant_mesh_init(stru
- 		conf->country[0] = wpa_s->conf->country[0];
- 		conf->country[1] = wpa_s->conf->country[1];
- 		conf->country[2] = ' ';
-+		wpa_s->mesh_params->handle_dfs = 1;
- 	}
- 
- 	bss->iconf = conf;
diff --git a/package/network/services/hostapd/patches/007-mesh-apply-channel-attributes-before-running-Mesh.patch b/package/network/services/hostapd/patches/007-mesh-apply-channel-attributes-before-running-Mesh.patch
deleted file mode 100644
index f04fcc49e8..0000000000
--- a/package/network/services/hostapd/patches/007-mesh-apply-channel-attributes-before-running-Mesh.patch
+++ /dev/null
@@ -1,47 +0,0 @@
-From 2564184440d9d6041d11a8c7d50b31368634c3bd Mon Sep 17 00:00:00 2001
-From: Peter Oh <peter.oh@bowerswilkins.com>
-Date: Mon, 27 Aug 2018 14:28:40 -0700
-Subject: [PATCH] mesh: Apply channel attributes before setup interface
-
-This helps mesh interface initialization with correct channel
-parameters.
-
-Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
----
- wpa_supplicant/mesh.c | 11 ++++++++---
- 1 file changed, 8 insertions(+), 3 deletions(-)
-
---- a/wpa_supplicant/mesh.c
-+++ b/wpa_supplicant/mesh.c
-@@ -249,7 +249,7 @@ static int wpa_supplicant_mesh_init(stru
- 	struct mesh_conf *mconf;
- 	int basic_rates_erp[] = { 10, 20, 55, 60, 110, 120, 240, -1 };
- 	int rate_len;
--	int frequency;
-+	int frequency, saved_freq;
- 
- 	if (!wpa_s->conf->user_mpm) {
- 		/* not much for us to do here */
-@@ -386,6 +386,13 @@ static int wpa_supplicant_mesh_init(stru
- 		conf->basic_rates[rate_len] = -1;
- 	}
- 
-+	/* Handle pri/sec switch frequency within AP configuration parameter
-+	 * generation without changing the stored network profile in the end. */
-+	saved_freq = ssid->frequency;
-+	ssid->frequency = frequency;
-+	wpa_supplicant_conf_ap_ht(wpa_s, ssid, conf);
-+	ssid->frequency = saved_freq;
-+
- 	if (wpa_drv_init_mesh(wpa_s)) {
- 		wpa_msg(wpa_s, MSG_ERROR, "Failed to init mesh in driver");
- 		return -1;
-@@ -397,8 +404,6 @@ static int wpa_supplicant_mesh_init(stru
- 		return -1;
- 	}
- 
--	wpa_supplicant_conf_ap_ht(wpa_s, ssid, conf);
--
- 	return 0;
- out_free:
- 	wpa_supplicant_mesh_deinit(wpa_s);
diff --git a/package/network/services/hostapd/patches/011-mesh-Allow-DFS-channels-to-be-selected-if-dfs-is-ena.patch b/package/network/services/hostapd/patches/011-mesh-Allow-DFS-channels-to-be-selected-if-dfs-is-ena.patch
deleted file mode 100644
index 37f7f635ea..0000000000
--- a/package/network/services/hostapd/patches/011-mesh-Allow-DFS-channels-to-be-selected-if-dfs-is-ena.patch
+++ /dev/null
@@ -1,78 +0,0 @@
-From 89fa0d75fb1be82330258082ed3d7fd452eb6076 Mon Sep 17 00:00:00 2001
-From: Peter Oh <peter.oh@bowerswilkins.com>
-Date: Mon, 27 Aug 2018 14:28:45 -0700
-Subject: [PATCH 3/7] mesh: Allow DFS channels to be selected if dfs is enabled
-
-Note: DFS is assumed to be usable if a country code has been set
-
-Signed-off-by: Benjamin Berg <benjamin@sipsolutions.net>
-Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
----
- wpa_supplicant/wpa_supplicant.c | 24 ++++++++++++++++++------
- 1 file changed, 18 insertions(+), 6 deletions(-)
-
---- a/wpa_supplicant/wpa_supplicant.c
-+++ b/wpa_supplicant/wpa_supplicant.c
-@@ -2153,6 +2153,8 @@ void ibss_mesh_setup_freq(struct wpa_sup
- 	struct hostapd_freq_params vht_freq;
- 	int chwidth, seg0, seg1;
- 	u32 vht_caps = 0;
-+	int dfs_enabled = wpa_s->conf->country[0] &&
-+		(wpa_s->drv_flags & WPA_DRIVER_FLAGS_RADAR);
- 
- 	freq->freq = ssid->frequency;
- 
-@@ -2232,8 +2234,11 @@ void ibss_mesh_setup_freq(struct wpa_sup
- 		return;
- 
- 	/* Check primary channel flags */
--	if (pri_chan->flag & (HOSTAPD_CHAN_DISABLED | HOSTAPD_CHAN_NO_IR))
-+	if (pri_chan->flag & HOSTAPD_CHAN_DISABLED)
- 		return;
-+	if (pri_chan->flag & (HOSTAPD_CHAN_RADAR | HOSTAPD_CHAN_NO_IR))
-+		if (!dfs_enabled)
-+			return;
- 
- 	freq->channel = pri_chan->chan;
- 
-@@ -2264,8 +2269,11 @@ void ibss_mesh_setup_freq(struct wpa_sup
- 		return;
- 
- 	/* Check secondary channel flags */
--	if (sec_chan->flag & (HOSTAPD_CHAN_DISABLED | HOSTAPD_CHAN_NO_IR))
-+	if (sec_chan->flag & HOSTAPD_CHAN_DISABLED)
- 		return;
-+	if (sec_chan->flag & (HOSTAPD_CHAN_RADAR | HOSTAPD_CHAN_NO_IR))
-+		if (!dfs_enabled)
-+			return;
- 
- 	if (ht40 == -1) {
- 		if (!(pri_chan->flag & HOSTAPD_CHAN_HT40MINUS))
-@@ -2356,8 +2364,11 @@ skip_ht40:
- 			return;
- 
- 		/* Back to HT configuration if channel not usable */
--		if (chan->flag & (HOSTAPD_CHAN_DISABLED | HOSTAPD_CHAN_NO_IR))
-+		if (chan->flag & HOSTAPD_CHAN_DISABLED)
- 			return;
-+		if (chan->flag & (HOSTAPD_CHAN_RADAR | HOSTAPD_CHAN_NO_IR))
-+			if (!dfs_enabled)
-+				return;
- 	}
- 
- 	chwidth = CHANWIDTH_80MHZ;
-@@ -2377,10 +2388,11 @@ skip_ht40:
- 				if (!chan)
- 					continue;
- 
--				if (chan->flag & (HOSTAPD_CHAN_DISABLED |
--						  HOSTAPD_CHAN_NO_IR |
--						  HOSTAPD_CHAN_RADAR))
-+				if (chan->flag & HOSTAPD_CHAN_DISABLED)
- 					continue;
-+				if (chan->flag & (HOSTAPD_CHAN_RADAR | HOSTAPD_CHAN_NO_IR))
-+					if (!dfs_enabled)
-+						continue;
- 
- 				/* Found a suitable second segment for 80+80 */
- 				chwidth = CHANWIDTH_80P80MHZ;
diff --git a/package/network/services/hostapd/patches/013-mesh-do-not-allow-pri-sec-channel-switch.patch b/package/network/services/hostapd/patches/013-mesh-do-not-allow-pri-sec-channel-switch.patch
deleted file mode 100644
index 778273e67c..0000000000
--- a/package/network/services/hostapd/patches/013-mesh-do-not-allow-pri-sec-channel-switch.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From 4f4a9b9e2e61fba334a21dadea749e4b440f42e6 Mon Sep 17 00:00:00 2001
-From: Peter Oh <peter.oh@bowerswilkins.com>
-Date: Mon, 27 Aug 2018 14:28:48 -0700
-Subject: [PATCH 6/7] mesh: don't allow pri/sec channel switch
-
-This limitation isn't backed by standard, but it is known that
-mesh doesn't have capability to handle 20/40 coex change in
-current implementation and it will not able to establish
-PLINK when channel switch between primary and secondary happens.
-
-Since it's unknown when we will have the implementation of handling
-20/40 coex change for mesh, it'd better to avoid them from happening
-until standard based implementation is introduced.
-
-Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
----
- wpa_supplicant/mesh.c | 1 +
- 1 file changed, 1 insertion(+)
-
---- a/wpa_supplicant/mesh.c
-+++ b/wpa_supplicant/mesh.c
-@@ -386,6 +386,7 @@ static int wpa_supplicant_mesh_init(stru
- 		conf->basic_rates[rate_len] = -1;
- 	}
- 
-+	conf->no_pri_sec_switch = 1;
- 	/* Handle pri/sec switch frequency within AP configuration parameter
- 	 * generation without changing the stored network profile in the end. */
- 	saved_freq = ssid->frequency;
diff --git a/package/network/services/hostapd/patches/015-mesh-do-not-use-offchan-mgmt-tx-on-DFS.patch b/package/network/services/hostapd/patches/015-mesh-do-not-use-offchan-mgmt-tx-on-DFS.patch
deleted file mode 100644
index 8bac9082d7..0000000000
--- a/package/network/services/hostapd/patches/015-mesh-do-not-use-offchan-mgmt-tx-on-DFS.patch
+++ /dev/null
@@ -1,61 +0,0 @@
-From 71e9c65a7c8af90a5fd11072062b596421316452 Mon Sep 17 00:00:00 2001
-From: Peter Oh <peter.oh@bowerswilkins.com>
-Date: Mon, 27 Aug 2018 14:28:46 -0700
-Subject: [PATCH 4/7] mesh: do not set offchanok on DFS channels in non-ETSI
-
-mac80211 does not allow mgmt tx to use off channel on
-DFS channels in non-ETSI domain, because it will invalidate
-CAC result on current operating channel.
-(mac80211 commit: 34373d12f3cbb74960a73431138ef619d857996f)
-Hence don't set offchanok for mgmt tx in case of DFS channels
-in non-ETSI.
-
-Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
----
- src/drivers/driver_nl80211.c | 21 ++++++++++++++++++++-
- 1 file changed, 20 insertions(+), 1 deletion(-)
-
---- a/src/drivers/driver_nl80211.c
-+++ b/src/drivers/driver_nl80211.c
-@@ -7462,6 +7462,10 @@ static int wpa_driver_nl80211_send_actio
- 	int ret = -1;
- 	u8 *buf;
- 	struct ieee80211_hdr *hdr;
-+	struct hostapd_hw_modes *modes;
-+	int i, offchanok = 1;
-+	u16 num_modes, flags;
-+	u8 dfs_domain;
- 
- 	wpa_printf(MSG_DEBUG, "nl80211: Send Action frame (ifindex=%d, "
- 		   "freq=%u MHz wait=%d ms no_cck=%d)",
-@@ -7486,6 +7490,21 @@ static int wpa_driver_nl80211_send_actio
- 		os_memset(bss->rand_addr, 0, ETH_ALEN);
- 	}
- 
-+	if (is_mesh_interface(drv->nlmode)) {
-+		modes = nl80211_get_hw_feature_data(bss, &num_modes,
-+						    &flags, &dfs_domain);
-+		if (dfs_domain != HOSTAPD_DFS_REGION_ETSI &&
-+		    ieee80211_is_dfs(bss->freq, modes, num_modes))
-+			offchanok = 0;
-+		if (modes) {
-+			for (i = 0; i < num_modes; i++) {
-+				os_free(modes[i].channels);
-+				os_free(modes[i].rates);
-+			}
-+			os_free(modes);
-+		}
-+	}
-+
- 	if (is_ap_interface(drv->nlmode) &&
- 	    (!(drv->capa.flags & WPA_DRIVER_FLAGS_OFFCHANNEL_TX) ||
- 	     (int) freq == bss->freq || drv->device_ap_sme ||
-@@ -7497,7 +7516,7 @@ static int wpa_driver_nl80211_send_actio
- 		ret = nl80211_send_frame_cmd(bss, freq, wait_time, buf,
- 					     24 + data_len,
- 					     &drv->send_action_cookie,
--					     no_cck, 0, 1, NULL, 0);
-+					     no_cck, 0, offchanok, NULL, 0);
- 
- 	os_free(buf);
- 	return ret;
diff --git a/package/network/services/hostapd/patches/016-mesh-fix-channel-switch-error-during-CAC.patch b/package/network/services/hostapd/patches/016-mesh-fix-channel-switch-error-during-CAC.patch
deleted file mode 100644
index f2baf1d8b7..0000000000
--- a/package/network/services/hostapd/patches/016-mesh-fix-channel-switch-error-during-CAC.patch
+++ /dev/null
@@ -1,59 +0,0 @@
-From 5913d6e2a741683e7c747c046f72ca790bbe1337 Mon Sep 17 00:00:00 2001
-From: Peter Oh <peter.oh@bowerswilkins.com>
-Date: Mon, 27 Aug 2018 14:28:47 -0700
-Subject: [PATCH 5/7] mesh: fix channel switch error during CAC
-
-Mesh interface has used its channel parameters that configured
-during its initialization even after channel switched due to
-DFS radar detection during CAC which caused channel switch error.
-This change fixes the error by updating its channel parameters
-when channel's been changed from initial one.
-
-Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
----
- wpa_supplicant/mesh.c | 25 +++++++++++++++++++++++++
- 1 file changed, 25 insertions(+)
-
---- a/wpa_supplicant/mesh.c
-+++ b/wpa_supplicant/mesh.c
-@@ -13,6 +13,7 @@
- #include "utils/uuid.h"
- #include "common/ieee802_11_defs.h"
- #include "common/wpa_ctrl.h"
-+#include "common/hw_features_common.h"
- #include "ap/sta_info.h"
- #include "ap/hostapd.h"
- #include "ap/ieee802_11.h"
-@@ -204,6 +205,32 @@ static void wpas_mesh_complete_cb(void *
- 		return;
- 	}
- 
-+	/*
-+	 * inspect if channel's been changed since initialized.
-+	 * i.e. DFS radar detection
-+	 */
-+	if (ifmsh->freq != params->freq.freq) {
-+		wpa_s->assoc_freq = ifmsh->freq;
-+		ssid->frequency = ifmsh->freq;
-+		if (hostapd_set_freq_params(&params->freq,
-+				ifmsh->conf->hw_mode,
-+				ifmsh->freq,
-+				ifmsh->conf->channel,
-+				ifmsh->conf->ieee80211n,
-+				ifmsh->conf->ieee80211ac,
-+				ifmsh->conf->ieee80211ax,
-+				ifmsh->conf->secondary_channel,
-+				hostapd_get_oper_chwidth(ifmsh->conf),
-+				hostapd_get_oper_centr_freq_seg0_idx(ifmsh->conf),
-+				hostapd_get_oper_centr_freq_seg1_idx(ifmsh->conf),
-+				ifmsh->current_mode->vht_capab,
-+				&ifmsh->current_mode->he_capab[IEEE80211_MODE_AP])) {
-+			wpa_printf(MSG_ERROR, "Error updating mesh frequency params.");
-+			wpa_supplicant_mesh_deinit(wpa_s);
-+			return;
-+		}
-+	}
-+
- 	if (ifmsh->mconf->security != MESH_CONF_SEC_NONE &&
- 	    wpas_mesh_init_rsn(wpa_s)) {
- 		wpa_printf(MSG_ERROR,
diff --git a/package/network/services/hostapd/patches/018-mesh-make-forwarding-configurable.patch b/package/network/services/hostapd/patches/018-mesh-make-forwarding-configurable.patch
index af94fed4b8..041ff187dc 100644
--- a/package/network/services/hostapd/patches/018-mesh-make-forwarding-configurable.patch
+++ b/package/network/services/hostapd/patches/018-mesh-make-forwarding-configurable.patch
@@ -59,7 +59,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  
 --- a/src/drivers/driver_nl80211.c
 +++ b/src/drivers/driver_nl80211.c
-@@ -9592,6 +9592,9 @@ static int nl80211_put_mesh_config(struc
+@@ -9573,6 +9573,9 @@ static int nl80211_put_mesh_config(struc
  	if (((params->flags & WPA_DRIVER_MESH_CONF_FLAG_AUTO_PLINKS) &&
  	     nla_put_u8(msg, NL80211_MESHCONF_AUTO_OPEN_PLINKS,
  			params->auto_plinks)) ||
@@ -164,7 +164,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  
 --- a/wpa_supplicant/mesh.c
 +++ b/wpa_supplicant/mesh.c
-@@ -126,6 +126,7 @@ static struct mesh_conf * mesh_config_cr
+@@ -125,6 +125,7 @@ static struct mesh_conf * mesh_config_cr
  	conf->mesh_cc_id = 0;
  	conf->mesh_sp_id = MESH_SYNC_METHOD_NEIGHBOR_OFFSET;
  	conf->mesh_auth_id = (conf->security & MESH_CONF_SEC_AUTH) ? 1 : 0;
@@ -172,7 +172,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  	conf->dot11MeshMaxRetries = ssid->dot11MeshMaxRetries;
  	conf->dot11MeshRetryTimeout = ssid->dot11MeshRetryTimeout;
  	conf->dot11MeshConfirmTimeout = ssid->dot11MeshConfirmTimeout;
-@@ -328,6 +329,7 @@ static int wpa_supplicant_mesh_init(stru
+@@ -298,6 +299,7 @@ static int wpa_supplicant_mesh_init(stru
  	bss->conf->start_disabled = 1;
  	bss->conf->mesh = MESH_ENABLED;
  	bss->conf->ap_max_inactivity = wpa_s->conf->mesh_max_inactivity;
@@ -180,7 +180,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  
  	if (ieee80211_is_dfs(ssid->frequency, wpa_s->hw.modes,
  			     wpa_s->hw.num_modes) && wpa_s->conf->country[0]) {
-@@ -549,6 +551,10 @@ int wpa_supplicant_join_mesh(struct wpa_
+@@ -512,6 +514,10 @@ int wpa_supplicant_join_mesh(struct wpa_
  	}
  	params->conf.peer_link_timeout = wpa_s->conf->mesh_max_inactivity;
  
diff --git a/package/network/services/hostapd/patches/200-multicall.patch b/package/network/services/hostapd/patches/200-multicall.patch
index a8597edae4..9ba476f208 100644
--- a/package/network/services/hostapd/patches/200-multicall.patch
+++ b/package/network/services/hostapd/patches/200-multicall.patch
@@ -156,7 +156,7 @@
  wpa_cli.exe: wpa_cli
 --- a/src/drivers/driver.h
 +++ b/src/drivers/driver.h
-@@ -5657,8 +5657,8 @@ union wpa_event_data {
+@@ -5656,8 +5656,8 @@ union wpa_event_data {
   * Driver wrapper code should call this function whenever an event is received
   * from the driver.
   */
@@ -167,7 +167,7 @@
  
  /**
   * wpa_supplicant_event_global - Report a driver event for wpa_supplicant
-@@ -5670,7 +5670,7 @@ void wpa_supplicant_event(void *ctx, enu
+@@ -5669,7 +5669,7 @@ void wpa_supplicant_event(void *ctx, enu
   * Same as wpa_supplicant_event(), but we search for the interface in
   * wpa_global.
   */
@@ -253,7 +253,7 @@
  	struct wpa_supplicant *wpa_s;
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -6096,7 +6096,6 @@ struct wpa_interface * wpa_supplicant_ma
+@@ -6084,7 +6084,6 @@ struct wpa_interface * wpa_supplicant_ma
  	return NULL;
  }
  
@@ -261,7 +261,7 @@
  /**
   * wpa_supplicant_match_existing - Match existing interfaces
   * @global: Pointer to global data from wpa_supplicant_init()
-@@ -6133,6 +6132,11 @@ static int wpa_supplicant_match_existing
+@@ -6121,6 +6120,11 @@ static int wpa_supplicant_match_existing
  
  #endif /* CONFIG_MATCH_IFACE */
  
@@ -273,7 +273,7 @@
  
  /**
   * wpa_supplicant_add_iface - Add a new network interface
-@@ -6389,6 +6393,8 @@ struct wpa_global * wpa_supplicant_init(
+@@ -6377,6 +6381,8 @@ struct wpa_global * wpa_supplicant_init(
  #ifndef CONFIG_NO_WPA_MSG
  	wpa_msg_register_ifname_cb(wpa_supplicant_msg_ifname_cb);
  #endif /* CONFIG_NO_WPA_MSG */
diff --git a/package/network/services/hostapd/patches/301-mesh-noscan.patch b/package/network/services/hostapd/patches/301-mesh-noscan.patch
index b1450ef6db..4e28bcb6bf 100644
--- a/package/network/services/hostapd/patches/301-mesh-noscan.patch
+++ b/package/network/services/hostapd/patches/301-mesh-noscan.patch
@@ -20,7 +20,7 @@
  	INT(fixed_freq);
 --- a/wpa_supplicant/mesh.c
 +++ b/wpa_supplicant/mesh.c
-@@ -361,6 +361,8 @@ static int wpa_supplicant_mesh_init(stru
+@@ -330,6 +330,8 @@ static int wpa_supplicant_mesh_init(stru
  			   frequency);
  		goto out_free;
  	}
@@ -46,7 +46,7 @@
  	unsigned int j, k;
  	struct hostapd_freq_params vht_freq;
  	int chwidth, seg0, seg1;
-@@ -2221,7 +2221,7 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2219,7 +2219,7 @@ void ibss_mesh_setup_freq(struct wpa_sup
  		return;
  
  	/* Setup higher BW only for 5 GHz */
diff --git a/package/network/services/hostapd/patches/310-rescan_immediately.patch b/package/network/services/hostapd/patches/310-rescan_immediately.patch
index 8d0307c3a2..a807832f7e 100644
--- a/package/network/services/hostapd/patches/310-rescan_immediately.patch
+++ b/package/network/services/hostapd/patches/310-rescan_immediately.patch
@@ -1,6 +1,6 @@
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -4474,7 +4474,7 @@ wpa_supplicant_alloc(struct wpa_supplica
+@@ -4462,7 +4462,7 @@ wpa_supplicant_alloc(struct wpa_supplica
  	if (wpa_s == NULL)
  		return NULL;
  	wpa_s->scan_req = INITIAL_SCAN_REQ;
diff --git a/package/network/services/hostapd/patches/350-nl80211_del_beacon_bss.patch b/package/network/services/hostapd/patches/350-nl80211_del_beacon_bss.patch
index c3ce2b474d..e520012ab9 100644
--- a/package/network/services/hostapd/patches/350-nl80211_del_beacon_bss.patch
+++ b/package/network/services/hostapd/patches/350-nl80211_del_beacon_bss.patch
@@ -36,7 +36,7 @@
  		nl80211_destroy_bss(bss);
  		if (!bss->added_if)
  			i802_set_iface_flags(bss, 0);
-@@ -7744,7 +7747,6 @@ static int wpa_driver_nl80211_deinit_ap(
+@@ -7725,7 +7728,6 @@ static int wpa_driver_nl80211_deinit_ap(
  	if (!is_ap_interface(drv->nlmode))
  		return -1;
  	wpa_driver_nl80211_del_beacon(bss);
@@ -44,7 +44,7 @@
  
  	/*
  	 * If the P2P GO interface was dynamically added, then it is
-@@ -7764,7 +7766,6 @@ static int wpa_driver_nl80211_stop_ap(vo
+@@ -7745,7 +7747,6 @@ static int wpa_driver_nl80211_stop_ap(vo
  	if (!is_ap_interface(drv->nlmode))
  		return -1;
  	wpa_driver_nl80211_del_beacon(bss);
diff --git a/package/network/services/hostapd/patches/370-ap_sta_support.patch b/package/network/services/hostapd/patches/370-ap_sta_support.patch
index f8d4206529..c009043644 100644
--- a/package/network/services/hostapd/patches/370-ap_sta_support.patch
+++ b/package/network/services/hostapd/patches/370-ap_sta_support.patch
@@ -192,7 +192,7 @@
  #else /* CONFIG_MESH */
  		wpa_msg(wpa_s, MSG_ERROR,
  			"mesh mode support not included in the build");
-@@ -5716,6 +5771,16 @@ static int wpa_supplicant_init_iface(str
+@@ -5704,6 +5759,16 @@ static int wpa_supplicant_init_iface(str
  			   sizeof(wpa_s->bridge_ifname));
  	}
  
@@ -209,7 +209,7 @@
  	/* RSNA Supplicant Key Management - INITIALIZE */
  	eapol_sm_notify_portEnabled(wpa_s->eapol, FALSE);
  	eapol_sm_notify_portValid(wpa_s->eapol, FALSE);
-@@ -6043,6 +6108,11 @@ static void wpa_supplicant_deinit_iface(
+@@ -6031,6 +6096,11 @@ static void wpa_supplicant_deinit_iface(
  	if (terminate)
  		wpa_msg(wpa_s, MSG_INFO, WPA_EVENT_TERMINATING);
  
diff --git a/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch b/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
index b740378090..32a672b84d 100644
--- a/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
+++ b/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
@@ -174,7 +174,7 @@ Signed-hostap: Antonio Quartulli <ordex@autistici.org>
  	 * macsec_policy - Determines the policy for MACsec secure session
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -3266,6 +3266,12 @@ static void wpas_start_assoc_cb(struct w
+@@ -3254,6 +3254,12 @@ static void wpas_start_assoc_cb(struct w
  			params.beacon_int = ssid->beacon_int;
  		else
  			params.beacon_int = wpa_s->conf->beacon_int;
diff --git a/package/network/services/hostapd/patches/463-add-mcast_rate-to-11s.patch b/package/network/services/hostapd/patches/463-add-mcast_rate-to-11s.patch
index b1c0a59188..519bddf979 100644
--- a/package/network/services/hostapd/patches/463-add-mcast_rate-to-11s.patch
+++ b/package/network/services/hostapd/patches/463-add-mcast_rate-to-11s.patch
@@ -19,17 +19,17 @@ Tested-by: Simon Wunderlich <simon.wunderlich@openmesh.com>
 
 --- a/src/drivers/driver.h
 +++ b/src/drivers/driver.h
-@@ -1484,6 +1484,7 @@ struct wpa_driver_mesh_join_params {
+@@ -1483,6 +1483,7 @@ struct wpa_driver_mesh_join_params {
+ #define WPA_DRIVER_MESH_FLAG_SAE_AUTH	0x00000004
  #define WPA_DRIVER_MESH_FLAG_AMPE	0x00000008
  	unsigned int flags;
- 	u8 handle_dfs;
 +	int mcast_rate;
  };
  
  /**
 --- a/src/drivers/driver_nl80211.c
 +++ b/src/drivers/driver_nl80211.c
-@@ -9612,6 +9612,18 @@ static int nl80211_put_mesh_id(struct nl
+@@ -9593,6 +9593,18 @@ static int nl80211_put_mesh_id(struct nl
  }
  
  
@@ -48,7 +48,7 @@ Tested-by: Simon Wunderlich <simon.wunderlich@openmesh.com>
  static int nl80211_put_mesh_config(struct nl_msg *msg,
  				   struct wpa_driver_mesh_bss_params *params)
  {
-@@ -9673,6 +9685,7 @@ static int nl80211_join_mesh(struct i802
+@@ -9654,6 +9666,7 @@ static int nl80211_join_mesh(struct i802
  	    nl80211_put_basic_rates(msg, params->basic_rates) ||
  	    nl80211_put_mesh_id(msg, params->meshid, params->meshid_len) ||
  	    nl80211_put_beacon_int(msg, params->beacon_int) ||
@@ -58,7 +58,7 @@ Tested-by: Simon Wunderlich <simon.wunderlich@openmesh.com>
  
 --- a/wpa_supplicant/mesh.c
 +++ b/wpa_supplicant/mesh.c
-@@ -494,6 +494,7 @@ int wpa_supplicant_join_mesh(struct wpa_
+@@ -457,6 +457,7 @@ int wpa_supplicant_join_mesh(struct wpa_
  
  	params->meshid = ssid->ssid;
  	params->meshid_len = ssid->ssid_len;
diff --git a/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch b/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
index 4b63b6fd78..b202670326 100644
--- a/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
+++ b/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
@@ -1,6 +1,6 @@
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -2216,11 +2216,13 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2214,11 +2214,13 @@ void ibss_mesh_setup_freq(struct wpa_sup
  	for (j = 0; j < wpa_s->last_scan_res_used; j++) {
  		struct wpa_bss *bss = wpa_s->last_scan_res[j];
  
diff --git a/package/network/services/hostapd/patches/600-ubus_support.patch b/package/network/services/hostapd/patches/600-ubus_support.patch
index 0eb0a4a3ba..66a823bbbe 100644
--- a/package/network/services/hostapd/patches/600-ubus_support.patch
+++ b/package/network/services/hostapd/patches/600-ubus_support.patch
@@ -40,7 +40,7 @@
  	iapp_deinit(hapd->iapp);
  	hapd->iapp = NULL;
  	accounting_deinit(hapd);
-@@ -1377,6 +1378,8 @@ static int hostapd_setup_bss(struct host
+@@ -1375,6 +1376,8 @@ static int hostapd_setup_bss(struct host
  	if (hapd->driver && hapd->driver->set_operstate)
  		hapd->driver->set_operstate(hapd->drv_priv, 1);
  
@@ -49,7 +49,7 @@
  	return 0;
  }
  
-@@ -1891,6 +1894,7 @@ static int hostapd_setup_interface_compl
+@@ -1889,6 +1892,7 @@ static int hostapd_setup_interface_compl
  	if (err)
  		goto fail;
  
@@ -57,7 +57,7 @@
  	wpa_printf(MSG_DEBUG, "Completing interface initialization");
  	if (iface->conf->channel) {
  #ifdef NEED_AP_MLME
-@@ -2087,6 +2091,7 @@ dfs_offload:
+@@ -2078,6 +2082,7 @@ dfs_offload:
  
  fail:
  	wpa_printf(MSG_ERROR, "Interface initialization failed");
@@ -65,7 +65,7 @@
  	hostapd_set_state(iface, HAPD_IFACE_DISABLED);
  	wpa_msg(hapd->msg_ctx, MSG_INFO, AP_EVENT_DISABLED);
  #ifdef CONFIG_FST
-@@ -2562,6 +2567,7 @@ void hostapd_interface_deinit_free(struc
+@@ -2553,6 +2558,7 @@ void hostapd_interface_deinit_free(struc
  		   (unsigned int) iface->conf->num_bss);
  	driver = iface->bss[0]->driver;
  	drv_priv = iface->bss[0]->drv_priv;
@@ -280,7 +280,7 @@
  CFLAGS += -DCONFIG_WNM_AP
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -6297,6 +6297,8 @@ struct wpa_supplicant * wpa_supplicant_a
+@@ -6285,6 +6285,8 @@ struct wpa_supplicant * wpa_supplicant_a
  	}
  #endif /* CONFIG_P2P */
  
@@ -289,7 +289,7 @@
  	return wpa_s;
  }
  
-@@ -6323,6 +6325,8 @@ int wpa_supplicant_remove_iface(struct w
+@@ -6311,6 +6313,8 @@ int wpa_supplicant_remove_iface(struct w
  	struct wpa_supplicant *parent = wpa_s->parent;
  #endif /* CONFIG_MESH */
  
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
