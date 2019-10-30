Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBDBEA0B1
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 17:03:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2JDxjBq+Fov/vUezXMWlggc3ivmeL0l/ZcQeUuEXLYw=; b=TN9MhtP7GKJQlO
	ANR5LLcFKAEp07U1s+MDwuO5phsb9A0HiTH2ffvqhgo2SY+B2N/tF6mJMKIa+pkxkfFfu5s5JH6Kc
	9nIOSJfyr+IYQ7IDfbrER7Ygw/61dpqXPJ3/Zan3yXr1iZEBNi3tm7Nuw/NdtVjt++VwtEdsaOnkF
	bTn6skjSaGZc6AwS3oyAbpQHT1JKldOxpV9MWBDB5leJHImhZ6vvrjO2LEwx4L4dI0iircENmFKna
	u+50B5fVwyRBFdRTSFa9uLTP6OdyQFLQSc+mdR74rQywooEDXjsLQGNcs3/81ulzS557S/pC56KFP
	7iHz1N98cXDZLFiaFyPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqRf-0000eI-Oq; Wed, 30 Oct 2019 16:03:39 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqQu-0006GN-Hz
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:03:32 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iPqLl-0001nP-L7
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:57:34 +0100
Date: Wed, 30 Oct 2019 16:57:22 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191030155722.GA139304@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_090329_895501_469F92AF 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/5] hostapd: add ubus reload
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: John Crispin <john@phrozen.org>

Add ubus interface to hostapd and wpa_supplicant to allow dynamically
reloading wiface configuration without having to restart the hostapd
process.
As a consequence, bost hostapd and wpa_supplicant are now started
persistently on boot for each wifi device in the system and then
receive ubus calls adding, modifying or removing interface
configuration.
At a later stage it would be desirable to reduce the services to one
single instance of each managing all radios.

Signed-off-by: John Crispin <john@phrozen.org>
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 package/network/services/hostapd/Makefile     |   3 +-
 .../services/hostapd/files/hostapd.hotplug    |  14 ++
 .../network/services/hostapd/files/hostapd.sh |  25 +--
 .../hostapd/patches/600-ubus_support.patch    | 127 ++++++++++++-
 .../hostapd/patches/700-wifi-reload.patch     | 118 ++++++++++++
 .../services/hostapd/src/src/ap/ubus.c        | 131 ++++++++++++-
 .../services/hostapd/src/src/ap/ubus.h        |  12 ++
 .../hostapd/src/wpa_supplicant/ubus.c         | 176 +++++++++++++++++-
 .../hostapd/src/wpa_supplicant/ubus.h         |  13 ++
 9 files changed, 600 insertions(+), 19 deletions(-)
 create mode 100644 package/network/services/hostapd/files/hostapd.hotplug
 create mode 100644 package/network/services/hostapd/patches/700-wifi-reload.patch

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index 4f6420f503..52adb1115e 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -519,8 +519,9 @@ define Install/supplicant
 endef
 
 define Package/hostapd-common/install
-	$(INSTALL_DIR) $(1)/lib/netifd $(1)/etc/rc.button
+	$(INSTALL_DIR) $(1)/lib/netifd $(1)/etc/rc.button $(1)/etc/hotplug.d/ieee80211
 	$(INSTALL_DATA) ./files/hostapd.sh $(1)/lib/netifd/hostapd.sh
+	$(INSTALL_BIN) ./files/hostapd.hotplug $(1)/etc/hotplug.d/ieee80211/20-hostapd
 	$(INSTALL_BIN) ./files/wps-hotplug.sh $(1)/etc/rc.button/wps
 endef
 
diff --git a/package/network/services/hostapd/files/hostapd.hotplug b/package/network/services/hostapd/files/hostapd.hotplug
new file mode 100644
index 0000000000..d568b3c85a
--- /dev/null
+++ b/package/network/services/hostapd/files/hostapd.hotplug
@@ -0,0 +1,14 @@
+#!/bin/sh
+
+[ ${ACTION} = "remove" -a -n "${DEVICENAME}" ] && {
+	kill $(cat /var/run/hostapd-${DEVICENAME}.pid)
+	rm -rf /var/run/hostapd-${DEVICENAME}.pid /var/run/hostapd-${DEVICENAME}/
+	kill $(cat /var/run/wpa_supplicant-${DEVICENAME}.pid)
+	rm -rf /var/run/wpa_supplicant-${DEVICENAME}.pid /var/run/wpa_supplicant-${DEVICENAME}/
+}
+
+[ ${ACTION} = "add" -a -n "${DEVICENAME}" ] && {
+	/usr/sbin/hostapd -s -n ${DEVICENAME} -P /var/run/hostapd-${DEVICENAME}.pid -g /var/run/hostapd-${DEVICENAME}/global -B &
+	mkdir -p /var/run/wpa_supplicant-${DEVICENAME}
+	/usr/sbin/wpa_supplicant -s -n ${DEVICENAME} -P /var/run/wpa_supplicant-${DEVICENAME}.pid -g /var/run/wpa_supplicant-${DEVICENAME}/global -B &
+}
diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index 8da8539e8a..d2d9f95f59 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -252,7 +252,7 @@ hostapd_set_bss_options() {
 
 	wireless_vif_parse_encryption
 
-	local bss_conf
+	local bss_conf bss_md5sum
 	local wep_rekey wpa_group_rekey wpa_pair_rekey wpa_master_rekey wpa_key_mgmt
 
 	json_get_vars \
@@ -607,6 +607,9 @@ hostapd_set_bss_options() {
 		}
 	}
 
+	bss_md5sum=$(echo $bss_conf | md5sum | cut -d" " -f1)
+	append bss_conf "config_id=$bss_md5sum" "$N"
+
 	append "$var" "$bss_conf" "$N"
 	return 0
 }
@@ -930,21 +933,19 @@ EOF
 }
 
 wpa_supplicant_run() {
-	local ifname="$1"; shift
+	local ifname="$1"
+	local hostapd_ctrl="$2"
 
 	_wpa_supplicant_common "$ifname"
 
-	/usr/sbin/wpa_supplicant -B -s \
-		${network_bridge:+-b $network_bridge} \
-		-P "/var/run/wpa_supplicant-${ifname}.pid" \
-		-D ${_w_driver:-wext} \
-		-i "$ifname" \
-		-c "$_config" \
-		-C "$_rpath" \
-		"$@"
+	ubus call wpa_supplicant.$phy config_add "{ \
+		\"driver\": \"${_w_driver:-wext}\", \"ctrl\": \"$_rpath\", \
+		\"iface\": \"$ifname\", \"config\": \"$_config\" \
+		${network_bridge:+, \"bridge\": \"$network_bridge\"} \
+		${hostapd_ctrl:+, \"hostapd_ctrl\": \"$hostapd_ctrl\"} \
+		}"
 
 	ret="$?"
-	wireless_add_process "$(cat "/var/run/wpa_supplicant-${ifname}.pid")" /usr/sbin/wpa_supplicant 1
 
 	[ "$ret" != 0 ] && wireless_setup_vif_failed WPA_SUPPLICANT_FAILED
 
@@ -952,5 +953,5 @@ wpa_supplicant_run() {
 }
 
 hostapd_common_cleanup() {
-	killall hostapd wpa_supplicant meshd-nl80211
+	killall meshd-nl80211
 }
diff --git a/package/network/services/hostapd/patches/600-ubus_support.patch b/package/network/services/hostapd/patches/600-ubus_support.patch
index 0eb0a4a3ba..6842c0e63e 100644
--- a/package/network/services/hostapd/patches/600-ubus_support.patch
+++ b/package/network/services/hostapd/patches/600-ubus_support.patch
@@ -22,7 +22,16 @@
  
  #define OCE_STA_CFON_ENABLED(hapd) \
  	((hapd->conf->oce & OCE_STA_CFON) && \
-@@ -145,6 +146,7 @@ struct hostapd_data {
+@@ -72,6 +73,8 @@ struct hapd_interfaces {
+ #ifdef CONFIG_DPP
+ 	struct dpp_global *dpp;
+ #endif /* CONFIG_DPP */
++	struct ubus_object ubus;
++	char *name;
+ };
+ 
+ enum hostapd_chan_status {
+@@ -145,6 +148,7 @@ struct hostapd_data {
  	struct hostapd_iface *iface;
  	struct hostapd_config *iconf;
  	struct hostapd_bss_config *conf;
@@ -30,6 +39,14 @@
  	int interface_added; /* virtual interface added for this BSS */
  	unsigned int started:1;
  	unsigned int disabled:1;
+@@ -580,6 +584,7 @@ hostapd_alloc_bss_data(struct hostapd_if
+ 		       struct hostapd_bss_config *bss);
+ int hostapd_setup_interface(struct hostapd_iface *iface);
+ int hostapd_setup_interface_complete(struct hostapd_iface *iface, int err);
++void hostapd_set_own_neighbor_report(struct hostapd_data *hapd);
+ void hostapd_interface_deinit(struct hostapd_iface *iface);
+ void hostapd_interface_free(struct hostapd_iface *iface);
+ struct hostapd_iface * hostapd_alloc_iface(void);
 --- a/src/ap/hostapd.c
 +++ b/src/ap/hostapd.c
 @@ -380,6 +380,7 @@ static void hostapd_free_hapd_data(struc
@@ -298,6 +315,36 @@
  	/* Remove interface from the global list of interfaces */
  	prev = global->ifaces;
  	if (prev == wpa_s) {
+@@ -6520,6 +6524,8 @@ struct wpa_global * wpa_supplicant_init(
+ 	if (params->override_ctrl_interface)
+ 		global->params.override_ctrl_interface =
+ 			os_strdup(params->override_ctrl_interface);
++	if (params->name)
++		global->params.name = os_strdup(params->name);
+ #ifdef CONFIG_MATCH_IFACE
+ 	global->params.match_iface_count = params->match_iface_count;
+ 	if (params->match_iface_count) {
+@@ -6626,8 +6632,12 @@ int wpa_supplicant_run(struct wpa_global
+ 	eloop_register_signal_terminate(wpa_supplicant_terminate, global);
+ 	eloop_register_signal_reconfig(wpa_supplicant_reconfig, global);
+ 
++	wpas_ubus_add(global);
++
+ 	eloop_run();
+ 
++	wpas_ubus_free(global);
++
+ 	return 0;
+ }
+ 
+@@ -6687,6 +6697,7 @@ void wpa_supplicant_deinit(struct wpa_gl
+ #ifdef CONFIG_MATCH_IFACE
+ 	os_free(global->params.match_ifaces);
+ #endif /* CONFIG_MATCH_IFACE */
++	os_free(global->params.name);
+ #ifdef CONFIG_P2P
+ 	os_free(global->params.conf_p2p_dev);
+ #endif /* CONFIG_P2P */
 --- a/wpa_supplicant/wpa_supplicant_i.h
 +++ b/wpa_supplicant/wpa_supplicant_i.h
 @@ -17,6 +17,7 @@
@@ -308,7 +355,25 @@
  
  extern const char *const wpa_supplicant_version;
  extern const char *const wpa_supplicant_license;
-@@ -506,6 +507,7 @@ struct wpa_supplicant {
+@@ -246,6 +247,8 @@ struct wpa_params {
+ 	 */
+ 	int match_iface_count;
+ #endif /* CONFIG_MATCH_IFACE */
++
++	char *name;
+ };
+ 
+ struct p2p_srv_bonjour {
+@@ -306,6 +309,8 @@ struct wpa_global {
+ #endif /* CONFIG_WIFI_DISPLAY */
+ 
+ 	struct psk_list_entry *add_psk; /* From group formation */
++
++	struct ubus_object ubus_global;
+ };
+ 
+ 
+@@ -506,6 +511,7 @@ struct wpa_supplicant {
  	unsigned char own_addr[ETH_ALEN];
  	unsigned char perm_addr[ETH_ALEN];
  	char ifname[100];
@@ -335,3 +400,61 @@
  	if (wpa_s->conf->wps_cred_processing == 1)
  		return 0;
  
+--- a/hostapd/main.c
++++ b/hostapd/main.c
+@@ -688,7 +688,7 @@ int main(int argc, char *argv[])
+ 	wpa_supplicant_event = hostapd_wpa_event;
+ 	wpa_supplicant_event_global = hostapd_wpa_event_global;
+ 	for (;;) {
+-		c = getopt(argc, argv, "b:Bde:f:hi:KP:sSTtu:g:G:v::");
++		c = getopt(argc, argv, "b:Bde:f:hi:KP:sSTtu:g:G:n:v::");
+ 		if (c < 0)
+ 			break;
+ 		switch (c) {
+@@ -763,6 +763,8 @@ int main(int argc, char *argv[])
+ 			if (hostapd_get_interface_names(&if_names,
+ 							&if_names_size, optarg))
+ 				goto out;
++		case 'n':
++			interfaces.name = optarg;
+ 			break;
+ 		default:
+ 			usage();
+@@ -894,6 +896,7 @@ int main(int argc, char *argv[])
+ 	}
+ 
+ 	hostapd_global_ctrl_iface_init(&interfaces);
++	hostapd_ubus_add(&interfaces);
+ 
+ 	if (hostapd_global_run(&interfaces, daemonize, pid_file)) {
+ 		wpa_printf(MSG_ERROR, "Failed to start eloop");
+@@ -903,6 +906,7 @@ int main(int argc, char *argv[])
+ 	ret = 0;
+ 
+  out:
++	hostapd_ubus_free(&interfaces);
+ 	hostapd_global_ctrl_iface_deinit(&interfaces);
+ 	/* Deinitialize all interfaces */
+ 	for (i = 0; i < interfaces.count; i++) {
+--- a/wpa_supplicant/main.c
++++ b/wpa_supplicant/main.c
+@@ -203,7 +203,7 @@ int main(int argc, char *argv[])
+ 
+ 	for (;;) {
+ 		c = getopt(argc, argv,
+-			   "b:Bc:C:D:de:f:g:G:hH:i:I:KLMm:No:O:p:P:qsTtuv::W");
++			   "b:Bc:C:D:de:f:g:G:hH:i:I:KLMm:n:No:O:p:P:qsTtuv::W");
+ 		if (c < 0)
+ 			break;
+ 		switch (c) {
+@@ -271,6 +271,10 @@ int main(int argc, char *argv[])
+ 			params.conf_p2p_dev = optarg;
+ 			break;
+ #endif /* CONFIG_P2P */
++		case 'n':
++			params.name = optarg;
++			iface_count = 0;
++			break;
+ 		case 'o':
+ 			params.override_driver = optarg;
+ 			break;
diff --git a/package/network/services/hostapd/patches/700-wifi-reload.patch b/package/network/services/hostapd/patches/700-wifi-reload.patch
new file mode 100644
index 0000000000..c5ba631a0f
--- /dev/null
+++ b/package/network/services/hostapd/patches/700-wifi-reload.patch
@@ -0,0 +1,118 @@
+--- a/hostapd/config_file.c
++++ b/hostapd/config_file.c
+@@ -2470,6 +2470,8 @@ static int hostapd_config_fill(struct ho
+ 		bss->isolate = atoi(pos);
+ 	} else if (os_strcmp(buf, "ap_max_inactivity") == 0) {
+ 		bss->ap_max_inactivity = atoi(pos);
++	} else if (os_strcmp(buf, "config_id") == 0) {
++		bss->config_id = os_strdup(pos);
+ 	} else if (os_strcmp(buf, "skip_inactivity_poll") == 0) {
+ 		bss->skip_inactivity_poll = atoi(pos);
+ 	} else if (os_strcmp(buf, "country_code") == 0) {
+--- a/src/ap/ap_config.c
++++ b/src/ap/ap_config.c
+@@ -698,6 +698,7 @@ void hostapd_config_free_bss(struct host
+ 	os_free(conf->radius_req_attr_sqlite);
+ 	os_free(conf->rsn_preauth_interfaces);
+ 	os_free(conf->ctrl_interface);
++	os_free(conf->config_id);
+ 	os_free(conf->ca_cert);
+ 	os_free(conf->server_cert);
+ 	os_free(conf->server_cert2);
+--- a/src/ap/ap_config.h
++++ b/src/ap/ap_config.h
+@@ -829,6 +829,7 @@ struct hostapd_bss_config {
+ 	 */
+ 	u8 mka_psk_set;
+ #endif /* CONFIG_MACSEC */
++	char *config_id;
+ };
+ 
+ /**
+--- a/src/ap/hostapd.c
++++ b/src/ap/hostapd.c
+@@ -242,13 +242,13 @@ int hostapd_reload_config(struct hostapd
+ 	if (newconf == NULL)
+ 		return -1;
+ 
+-	hostapd_clear_old(iface);
+-
+ 	oldconf = hapd->iconf;
+ 	if (hostapd_iface_conf_changed(newconf, oldconf)) {
+ 		char *fname;
+ 		int res;
+ 
++		hostapd_clear_old(iface);
++
+ 		wpa_printf(MSG_DEBUG,
+ 			   "Configuration changes include interface/BSS modification - force full disable+enable sequence");
+ 		fname = os_strdup(iface->config_fname);
+@@ -273,6 +273,22 @@ int hostapd_reload_config(struct hostapd
+ 			wpa_printf(MSG_ERROR,
+ 				   "Failed to enable interface on config reload");
+ 		return res;
++	} else {
++		for (j = 0; j < iface->num_bss; j++) {
++			hapd = iface->bss[j];
++			if (!hapd->config_id || strcmp(hapd->config_id, newconf->bss[j]->config_id)) {
++				hostapd_flush_old_stations(iface->bss[j],
++							   WLAN_REASON_PREV_AUTH_NOT_VALID);
++				hostapd_broadcast_wep_clear(iface->bss[j]);
++
++#ifndef CONFIG_NO_RADIUS
++				/* TODO: update dynamic data based on changed configuration
++				 * items (e.g., open/close sockets, etc.) */
++				radius_client_flush(iface->bss[j]->radius, 0);
++#endif /* CONFIG_NO_RADIUS */
++				wpa_printf(MSG_INFO, "bss %d changed", j);
++			}
++		}
+ 	}
+ 	iface->conf = newconf;
+ 
+@@ -289,6 +305,12 @@ int hostapd_reload_config(struct hostapd
+ 
+ 	for (j = 0; j < iface->num_bss; j++) {
+ 		hapd = iface->bss[j];
++		if (hapd->config_id) {
++			os_free(hapd->config_id);
++			hapd->config_id = NULL;
++		}
++		if (newconf->bss[j]->config_id)
++			hapd->config_id = strdup(newconf->bss[j]->config_id);
+ 		hapd->iconf = newconf;
+ 		hapd->conf = newconf->bss[j];
+ 		hostapd_reload_bss(hapd);
+@@ -2257,6 +2279,10 @@ hostapd_alloc_bss_data(struct hostapd_if
+ 	hapd->iconf = conf;
+ 	hapd->conf = bss;
+ 	hapd->iface = hapd_iface;
++	if (bss->config_id)
++		hapd->config_id = strdup(bss->config_id);
++	else
++		hapd->config_id = NULL;
+ 	if (conf)
+ 		hapd->driver = conf->driver;
+ 	hapd->ctrl_sock = -1;
+--- a/src/ap/hostapd.h
++++ b/src/ap/hostapd.h
+@@ -149,6 +149,7 @@ struct hostapd_data {
+ 	struct hostapd_config *iconf;
+ 	struct hostapd_bss_config *conf;
+ 	struct hostapd_ubus_bss ubus;
++	char *config_id;
+ 	int interface_added; /* virtual interface added for this BSS */
+ 	unsigned int started:1;
+ 	unsigned int disabled:1;
+--- a/src/drivers/driver_nl80211.c
++++ b/src/drivers/driver_nl80211.c
+@@ -4295,6 +4295,9 @@ static int wpa_driver_nl80211_set_ap(voi
+ 	if (ret) {
+ 		wpa_printf(MSG_DEBUG, "nl80211: Beacon set failed: %d (%s)",
+ 			   ret, strerror(-ret));
++		if (!bss->beacon_set)
++			ret = 0;
++		bss->beacon_set = 0;
+ 	} else {
+ 		bss->beacon_set = 1;
+ 		nl80211_set_bss(bss, params->cts_protect, params->preamble,
diff --git a/package/network/services/hostapd/src/src/ap/ubus.c b/package/network/services/hostapd/src/src/ap/ubus.c
index 3b768d0e8c..e25c3294ee 100644
--- a/package/network/services/hostapd/src/src/ap/ubus.c
+++ b/package/network/services/hostapd/src/src/ap/ubus.c
@@ -26,12 +26,16 @@ static struct ubus_context *ctx;
 static struct blob_buf b;
 static int ctx_ref;
 
+static inline struct hapd_interfaces *get_hapd_interfaces_from_object(struct ubus_object *obj)
+{
+	return container_of(obj, struct hapd_interfaces, ubus);
+}
+
 static inline struct hostapd_data *get_hapd_from_object(struct ubus_object *obj)
 {
 	return container_of(obj, struct hostapd_data, ubus.obj);
 }
 
-
 struct ubus_banned_client {
 	struct avl_node avl;
 	u8 addr[ETH_ALEN];
@@ -142,6 +146,16 @@ hostapd_bss_ban_client(struct hostapd_data *hapd, u8 *addr, int time)
 	eloop_register_timeout(0, time * 1000, hostapd_bss_del_ban, ban, hapd);
 }
 
+static int
+hostapd_bss_reload(struct ubus_context *ctx, struct ubus_object *obj,
+		   struct ubus_request_data *req, const char *method,
+		   struct blob_attr *msg)
+{
+	struct hostapd_data *hapd = container_of(obj, struct hostapd_data, ubus.obj);
+	hostapd_reload_config(hapd->iface);
+	hostapd_reload_iface(hapd->iface);
+}
+
 static int
 hostapd_bss_get_clients(struct ubus_context *ctx, struct ubus_object *obj,
 			struct ubus_request_data *req, const char *method,
@@ -379,6 +393,70 @@ hostapd_bss_update_beacon(struct ubus_context *ctx, struct ubus_object *obj,
 	return 0;
 }
 
+enum {
+	CONFIG_IFACE,
+	CONFIG_FILE,
+	__CONFIG_MAX
+};
+
+static const struct blobmsg_policy config_add_policy[__CONFIG_MAX] = {
+	[CONFIG_IFACE] = { "iface", BLOBMSG_TYPE_STRING },
+	[CONFIG_FILE] = { "config", BLOBMSG_TYPE_STRING },
+};
+
+static int
+hostapd_config_add(struct ubus_context *ctx, struct ubus_object *obj,
+		   struct ubus_request_data *req, const char *method,
+		   struct blob_attr *msg)
+{
+	struct blob_attr *tb[__CONFIG_MAX];
+	struct hapd_interfaces *interfaces = get_hapd_interfaces_from_object(obj);
+	char buf[128];
+
+	blobmsg_parse(config_add_policy, __CONFIG_MAX, tb, blob_data(msg), blob_len(msg));
+
+	if (!tb[CONFIG_FILE] || !tb[CONFIG_IFACE])
+		return UBUS_STATUS_INVALID_ARGUMENT;
+
+	snprintf(buf, sizeof(buf), "bss_config=%s:%s",
+		blobmsg_get_string(tb[CONFIG_IFACE]),
+		blobmsg_get_string(tb[CONFIG_FILE]));
+
+	if (hostapd_add_iface(interfaces, buf))
+		return UBUS_STATUS_INVALID_ARGUMENT;
+
+	return UBUS_STATUS_OK;
+}
+
+enum {
+	CONFIG_REM_IFACE,
+	__CONFIG_REM_MAX
+};
+
+static const struct blobmsg_policy config_remove_policy[__CONFIG_REM_MAX] = {
+	[CONFIG_REM_IFACE] = { "iface", BLOBMSG_TYPE_STRING },
+};
+
+static int
+hostapd_config_remove(struct ubus_context *ctx, struct ubus_object *obj,
+		      struct ubus_request_data *req, const char *method,
+		      struct blob_attr *msg)
+{
+	struct blob_attr *tb[__CONFIG_REM_MAX];
+	struct hapd_interfaces *interfaces = get_hapd_interfaces_from_object(obj);
+	char buf[128];
+
+	blobmsg_parse(config_remove_policy, __CONFIG_REM_MAX, tb, blob_data(msg), blob_len(msg));
+
+	if (!tb[CONFIG_REM_IFACE])
+		return UBUS_STATUS_INVALID_ARGUMENT;
+
+	if (hostapd_remove_iface(interfaces, blobmsg_get_string(tb[CONFIG_REM_IFACE])))
+		return UBUS_STATUS_INVALID_ARGUMENT;
+
+	return UBUS_STATUS_OK;
+}
+
 enum {
 	CSA_FREQ,
 	CSA_BCN_COUNT,
@@ -949,6 +1027,7 @@ hostapd_wnm_disassoc_imminent(struct ubus_context *ctx, struct ubus_object *obj,
 #endif
 
 static const struct ubus_method bss_methods[] = {
+	UBUS_METHOD_NOARG("reload", hostapd_bss_reload),
 	UBUS_METHOD_NOARG("get_clients", hostapd_bss_get_clients),
 	UBUS_METHOD("del_client", hostapd_bss_del_client, del_policy),
 	UBUS_METHOD_NOARG("list_bans", hostapd_bss_list_bans),
@@ -1021,6 +1100,56 @@ void hostapd_ubus_free_bss(struct hostapd_data *hapd)
 	free(name);
 }
 
+static const struct ubus_method daemon_methods[] = {
+	UBUS_METHOD("config_add", hostapd_config_add, config_add_policy),
+	UBUS_METHOD("config_remove", hostapd_config_remove, config_remove_policy),
+};
+
+static struct ubus_object_type daemon_object_type =
+	UBUS_OBJECT_TYPE("hostapd", daemon_methods);
+
+void hostapd_ubus_add(struct hapd_interfaces *interfaces)
+{
+	struct ubus_object *obj = &interfaces->ubus;
+	int name_len;
+	int ret;
+
+	if (!hostapd_ubus_init())
+		return;
+
+	name_len = strlen("hostapd") + 1;
+	if (interfaces->name)
+		name_len += strlen(interfaces->name) + 1;
+	obj->name = malloc(name_len);
+	strcpy(obj->name, "hostapd");
+	if (interfaces->name) {
+		strcat(obj->name, ".");
+		strcat(obj->name, interfaces->name);
+	}
+
+	obj->type = &daemon_object_type;
+	obj->methods = daemon_object_type.methods;
+	obj->n_methods = daemon_object_type.n_methods;
+	ret = ubus_add_object(ctx, obj);
+	hostapd_ubus_ref_inc();
+}
+
+void hostapd_ubus_free(struct hapd_interfaces *interfaces)
+{
+	struct ubus_object *obj = &interfaces->ubus;
+	char *name = (char *) obj->name;
+
+	if (!ctx)
+		return;
+
+	if (obj->id) {
+		ubus_remove_object(ctx, obj);
+		hostapd_ubus_ref_dec();
+	}
+
+	free(name);
+}
+
 struct ubus_event_req {
 	struct ubus_notify_request nreq;
 	int resp;
diff --git a/package/network/services/hostapd/src/src/ap/ubus.h b/package/network/services/hostapd/src/src/ap/ubus.h
index 58ebe0e65b..27acd32659 100644
--- a/package/network/services/hostapd/src/src/ap/ubus.h
+++ b/package/network/services/hostapd/src/src/ap/ubus.h
@@ -25,6 +25,7 @@ struct hostapd_ubus_request {
 
 struct hostapd_iface;
 struct hostapd_data;
+struct hapd_interfaces;
 
 #ifdef UBUS_SUPPORT
 
@@ -45,6 +46,9 @@ void hostapd_ubus_free_bss(struct hostapd_data *hapd);
 int hostapd_ubus_handle_event(struct hostapd_data *hapd, struct hostapd_ubus_request *req);
 void hostapd_ubus_notify(struct hostapd_data *hapd, const char *type, const u8 *mac);
 
+void hostapd_ubus_add(struct hapd_interfaces *interfaces);
+void hostapd_ubus_free(struct hapd_interfaces *interfaces);
+
 #else
 
 struct hostapd_ubus_bss {};
@@ -73,6 +77,14 @@ static inline int hostapd_ubus_handle_event(struct hostapd_data *hapd, struct ho
 static inline void hostapd_ubus_notify(struct hostapd_data *hapd, const char *type, const u8 *mac)
 {
 }
+
+static inline void hostapd_ubus_add(struct hapd_interfaces *interfaces)
+{
+}
+
+static inline void hostapd_ubus_free(struct hapd_interfaces *interfaces)
+{
+}
 #endif
 
 #endif
diff --git a/package/network/services/hostapd/src/wpa_supplicant/ubus.c b/package/network/services/hostapd/src/wpa_supplicant/ubus.c
index 5fdb57be7a..9a98979e9a 100644
--- a/package/network/services/hostapd/src/wpa_supplicant/ubus.c
+++ b/package/network/services/hostapd/src/wpa_supplicant/ubus.c
@@ -20,6 +20,11 @@ static struct ubus_context *ctx;
 static struct blob_buf b;
 static int ctx_ref;
 
+static inline struct wpa_global *get_wpa_global_from_object(struct ubus_object *obj)
+{
+	return container_of(obj, struct wpa_global, ubus_global);
+}
+
 static inline struct wpa_supplicant *get_wpas_from_object(struct ubus_object *obj)
 {
 	return container_of(obj, struct wpa_supplicant, ubus.obj);
@@ -95,6 +100,19 @@ wpas_bss_get_features(struct ubus_context *ctx, struct ubus_object *obj,
 	return 0;
 }
 
+static int
+wpas_bss_reload(struct ubus_context *ctx, struct ubus_object *obj,
+		struct ubus_request_data *req, const char *method,
+		struct blob_attr *msg)
+{
+	struct wpa_supplicant *wpa_s = get_wpas_from_object(obj);
+
+	if (wpa_supplicant_reload_configuration(wpa_s))
+		return UBUS_STATUS_UNKNOWN_ERROR;
+	else
+		return 0;
+}
+
 #ifdef CONFIG_WPS
 enum {
 	WPS_START_MULTI_AP,
@@ -146,11 +164,12 @@ wpas_bss_wps_cancel(struct ubus_context *ctx, struct ubus_object *obj,
 #endif
 
 static const struct ubus_method bss_methods[] = {
+	UBUS_METHOD_NOARG("reload", wpas_bss_reload),
+	UBUS_METHOD_NOARG("get_features", wpas_bss_get_features),
 #ifdef CONFIG_WPS
 	UBUS_METHOD_NOARG("wps_start", wpas_bss_wps_start),
 	UBUS_METHOD_NOARG("wps_cancel", wpas_bss_wps_cancel),
 #endif
-	UBUS_METHOD_NOARG("get_features", wpas_bss_get_features),
 };
 
 static struct ubus_object_type bss_object_type =
@@ -162,8 +181,6 @@ void wpas_ubus_add_bss(struct wpa_supplicant *wpa_s)
 	char *name;
 	int ret;
 
-	if (!wpas_ubus_init())
-		return;
 
 	if (asprintf(&name, "wpa_supplicant.%s", wpa_s->ifname) < 0)
 		return;
@@ -192,6 +209,159 @@ void wpas_ubus_free_bss(struct wpa_supplicant *wpa_s)
 	free(name);
 }
 
+enum {
+	WPAS_CONFIG_DRIVER,
+	WPAS_CONFIG_IFACE,
+	WPAS_CONFIG_BRIDGE,
+	WPAS_CONFIG_HOSTAPD_CTRL,
+	WPAS_CONFIG_CTRL,
+	WPAS_CONFIG_FILE,
+	__WPAS_CONFIG_MAX
+};
+
+static const struct blobmsg_policy wpas_config_add_policy[__WPAS_CONFIG_MAX] = {
+	[WPAS_CONFIG_DRIVER] = { "driver", BLOBMSG_TYPE_STRING },
+	[WPAS_CONFIG_IFACE] = { "iface", BLOBMSG_TYPE_STRING },
+	[WPAS_CONFIG_BRIDGE] = { "bridge", BLOBMSG_TYPE_STRING },
+	[WPAS_CONFIG_HOSTAPD_CTRL] = { "hostapd_ctrl", BLOBMSG_TYPE_STRING },
+	[WPAS_CONFIG_CTRL] = { "ctrl", BLOBMSG_TYPE_STRING },
+	[WPAS_CONFIG_FILE] = { "config", BLOBMSG_TYPE_STRING },
+};
+
+static int
+wpas_config_add(struct ubus_context *ctx, struct ubus_object *obj,
+		struct ubus_request_data *req, const char *method,
+		struct blob_attr *msg)
+{
+	struct blob_attr *tb[__WPAS_CONFIG_MAX];
+	struct wpa_global *global = get_wpa_global_from_object(obj);
+	struct wpa_interface *iface;
+
+	blobmsg_parse(wpas_config_add_policy, __WPAS_CONFIG_MAX, tb, blob_data(msg), blob_len(msg));
+
+	if (!tb[WPAS_CONFIG_FILE] || !tb[WPAS_CONFIG_IFACE] || !tb[WPAS_CONFIG_DRIVER])
+		return UBUS_STATUS_INVALID_ARGUMENT;
+
+	iface = os_zalloc(sizeof(struct wpa_interface));
+	if (iface == NULL)
+		return UBUS_STATUS_UNKNOWN_ERROR;
+
+	iface->driver = blobmsg_get_string(tb[WPAS_CONFIG_DRIVER]);
+	iface->ifname = blobmsg_get_string(tb[WPAS_CONFIG_IFACE]);
+	iface->confname = blobmsg_get_string(tb[WPAS_CONFIG_FILE]);
+
+	if (tb[WPAS_CONFIG_BRIDGE])
+		iface->bridge_ifname = blobmsg_get_string(tb[WPAS_CONFIG_BRIDGE]);
+
+	if (tb[WPAS_CONFIG_CTRL])
+		iface->ctrl_interface = blobmsg_get_string(tb[WPAS_CONFIG_CTRL]);
+
+	if (tb[WPAS_CONFIG_HOSTAPD_CTRL])
+		iface->hostapd_ctrl = blobmsg_get_string(tb[WPAS_CONFIG_HOSTAPD_CTRL]);
+
+	if (!wpa_supplicant_add_iface(global, iface, NULL))
+		return UBUS_STATUS_INVALID_ARGUMENT;
+
+	return UBUS_STATUS_OK;
+}
+
+enum {
+	WPAS_CONFIG_REM_IFACE,
+	__WPAS_CONFIG_REM_MAX
+};
+
+static const struct blobmsg_policy wpas_config_remove_policy[__WPAS_CONFIG_REM_MAX] = {
+	[WPAS_CONFIG_REM_IFACE] = { "iface", BLOBMSG_TYPE_STRING },
+};
+
+static int
+wpas_config_remove(struct ubus_context *ctx, struct ubus_object *obj,
+		   struct ubus_request_data *req, const char *method,
+		   struct blob_attr *msg)
+{
+	struct blob_attr *tb[__WPAS_CONFIG_REM_MAX];
+	struct wpa_global *global = get_wpa_global_from_object(obj);
+	struct wpa_supplicant *wpa_s = NULL;
+	unsigned int found = 0;
+
+	blobmsg_parse(wpas_config_remove_policy, __WPAS_CONFIG_REM_MAX, tb, blob_data(msg), blob_len(msg));
+
+	if (!tb[WPAS_CONFIG_REM_IFACE])
+		return UBUS_STATUS_INVALID_ARGUMENT;
+
+	/* find wpa_s object for to-be-removed interface */
+	for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
+		if (!strncmp(wpa_s->ifname,
+			     blobmsg_get_string(tb[WPAS_CONFIG_REM_IFACE]),
+			     sizeof(wpa_s->ifname)))
+		{
+			found = 1;
+			break;
+		}
+	}
+
+	if (!found)
+		return UBUS_STATUS_INVALID_ARGUMENT;
+
+	if (wpa_supplicant_remove_iface(global, wpa_s, 0))
+		return UBUS_STATUS_INVALID_ARGUMENT;
+
+	return UBUS_STATUS_OK;
+}
+
+static const struct ubus_method wpas_daemon_methods[] = {
+	UBUS_METHOD("config_add", wpas_config_add, wpas_config_add_policy),
+	UBUS_METHOD("config_remove", wpas_config_remove, wpas_config_remove_policy),
+};
+
+static struct ubus_object_type wpas_daemon_object_type =
+	UBUS_OBJECT_TYPE("wpa_supplicant", wpas_daemon_methods);
+
+void wpas_ubus_add(struct wpa_global *global)
+{
+	struct ubus_object *obj = &global->ubus_global;
+	int name_len;
+	int ret;
+
+	if (!wpas_ubus_init())
+		return;
+
+	name_len = strlen("wpa_supplicant") + 1;
+	if (global->params.name)
+		name_len += strlen(global->params.name) + 1;
+	obj->name = malloc(name_len);
+	strcpy(obj->name, "wpa_supplicant");
+
+	if (global->params.name)
+	{
+		strcat(obj->name, ".");
+		strcat(obj->name, global->params.name);
+	}
+
+	obj->type = &wpas_daemon_object_type;
+	obj->methods = wpas_daemon_object_type.methods;
+	obj->n_methods = wpas_daemon_object_type.n_methods;
+	ret = ubus_add_object(ctx, obj);
+	wpas_ubus_ref_inc();
+}
+
+void wpas_ubus_free(struct wpa_global *global)
+{
+	struct ubus_object *obj = &global->ubus_global;
+	char *name = (char *) obj->name;
+
+	if (!ctx)
+		return;
+
+	if (obj->id) {
+		ubus_remove_object(ctx, obj);
+		wpas_ubus_ref_dec();
+	}
+
+	free(name);
+}
+
+
 #ifdef CONFIG_WPS
 void wpas_ubus_notify(struct wpa_supplicant *wpa_s, const struct wps_credential *cred)
 {
diff --git a/package/network/services/hostapd/src/wpa_supplicant/ubus.h b/package/network/services/hostapd/src/wpa_supplicant/ubus.h
index c37e743e73..bf92b98c01 100644
--- a/package/network/services/hostapd/src/wpa_supplicant/ubus.h
+++ b/package/network/services/hostapd/src/wpa_supplicant/ubus.h
@@ -10,6 +10,8 @@
 #define __WPAS_UBUS_H
 
 struct wpa_supplicant;
+struct wpa_global;
+
 #include "wps_supplicant.h"
 
 #ifdef UBUS_SUPPORT
@@ -22,6 +24,9 @@ struct wpas_ubus_bss {
 void wpas_ubus_add_bss(struct wpa_supplicant *wpa_s);
 void wpas_ubus_free_bss(struct wpa_supplicant *wpa_s);
 
+void wpas_ubus_add(struct wpa_global *global);
+void wpas_ubus_free(struct wpa_global *global);
+
 #ifdef CONFIG_WPS
 void wpas_ubus_notify(struct wpa_supplicant *wpa_s, const struct wps_credential *cred);
 #endif
@@ -48,6 +53,14 @@ static inline void wpas_ubus_free_bss(struct wpa_supplicant *wpa_s)
 static inline void wpas_ubus_notify(struct wpa_supplicant *wpa_s, struct wps_credential *cred)
 {
 }
+
+static inline void wpas_ubus_add(struct wpa_global *global)
+{
+}
+
+static inline void wpas_ubus_free(struct wpa_global *global)
+{
+}
 #endif
 
 #endif
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
