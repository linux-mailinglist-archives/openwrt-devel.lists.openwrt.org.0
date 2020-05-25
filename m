Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533EF1E0B03
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 11:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Esv2Mmj9aY0l5+darWLFAuGOZ6vssY3Sw1xDg55oqt8=; b=YtvF/rsS3fBaJM
	hHgxwdGf5kIbHcHaBjmHCiJIXH3ibTa0OqVbupaAbRTflLRtwKn05sNziOBe4AZLq8TVjpUvSPwCM
	a/Zy7uWxDYa0vcISrC1NU6qlQKM8cLVvWwdLoiCVNHzWQvz0V1fcdoDFxJ7XejyalhkzRMM4xhx9z
	bZzVPcOLJCf4aKMn4i2nFnSZR651+DoVNm4NRMeQW75P7P++sN+guVgzgp1MiyAyyx6aaw1P3iAO9
	Z2tihRyr0FW8dX2yaR62pErKmnu+UUZUNM6d857wG7KXjsBd51gS0K7XtAHyAme1PCQAEeX9JG8y6
	TlBTCwgHOL1Xr21g0+1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9jo-0005iC-Cx; Mon, 25 May 2020 09:49:40 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9jf-0005hS-DU
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 09:49:33 +0000
Received: from [46.59.216.37] (helo=bertha8.fritz.box)
 by ds12 with esmtpa (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jd9jb-0005ik-QP; Mon, 25 May 2020 11:49:27 +0200
From: John Crispin <john@phrozen.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 May 2020 11:49:19 +0200
Message-Id: <20200525094919.15206-2-john@phrozen.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525094919.15206-1-john@phrozen.org>
References: <20200525094919.15206-1-john@phrozen.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_024931_617804_5FC78B31 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] netifd: wireless: add support for
 tracking wifi-station sections
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This new section allows us to assign mac specific key/vid settings to a
station.

Signed-off-by: John Crispin <john@phrozen.org>
---
 config.c                   |  29 ++++++++
 scripts/netifd-wireless.sh |  24 +++++++
 wireless.c                 | 134 ++++++++++++++++++++++++++++++++++++-
 wireless.h                 |  17 ++++-
 4 files changed, 200 insertions(+), 4 deletions(-)

diff --git a/config.c b/config.c
index 1bb3737..b1b4bf3 100644
--- a/config.c
+++ b/config.c
@@ -364,6 +364,19 @@ config_parse_wireless_vlan(struct wireless_device *wdev, char *vif, struct uci_s
 	wireless_vlan_create(wdev, vif, b.head, s->anonymous ? name : s->e.name);
 }
 
+static void
+config_parse_wireless_station(struct wireless_device *wdev, char *vif, struct uci_section *s)
+{
+	char *name;
+
+	name = alloca(strlen(s->type) + 16);
+	sprintf(name, "@%s[%d]", s->type, config_section_idx(s));
+
+	blob_buf_init(&b, 0);
+	uci_to_blob(&b, s, wdev->drv->station.config);
+	wireless_station_create(wdev, vif, b.head, s->anonymous ? name : s->e.name);
+}
+
 static void
 config_init_wireless(void)
 {
@@ -393,6 +406,8 @@ config_init_wireless(void)
 		vlist_update(&wdev->interfaces);
 		wdev->vlan_idx = 0;
 		vlist_update(&wdev->vlans);
+		wdev->sta_idx = 0;
+		vlist_update(&wdev->stations);
 	}
 
 	uci_foreach_element(&uci_wireless->sections, e) {
@@ -429,11 +444,25 @@ config_init_wireless(void)
 				continue;
 			config_parse_wireless_vlan(wdev, vif->name, s);
 		}
+
+		uci_foreach_element(&uci_wireless->sections, f) {
+			struct uci_section *s = uci_to_section(f);
+			const char *vif_name;
+
+			if (strcmp(s->type, "wifi-station") != 0)
+				continue;
+
+			vif_name = uci_lookup_option_string(uci_ctx, s, "iface");
+			if (vif_name && strcmp(e->name, vif_name))
+				continue;
+			config_parse_wireless_station(wdev, vif->name, s);
+		}
 	}
 
 	vlist_for_each_element(&wireless_devices, wdev, node) {
 		vlist_flush(&wdev->interfaces);
 		vlist_flush(&wdev->vlans);
+		vlist_flush(&wdev->stations);
 	}
 }
 
diff --git a/scripts/netifd-wireless.sh b/scripts/netifd-wireless.sh
index 41e380f..d51380d 100644
--- a/scripts/netifd-wireless.sh
+++ b/scripts/netifd-wireless.sh
@@ -333,6 +333,21 @@ for_each_vlan() {
 	json_select ..
 }
 
+for_each_station() {
+	local _w_stas _w_sta
+
+	json_get_keys _w_stas stas
+	json_select stas
+	for _w_sta in $_w_stas; do
+		json_select "$_w_sta"
+		json_select config
+		"$@" "$_w_sta"
+		json_select ..
+		json_select ..
+	done
+	json_select ..
+}
+
 _wdev_common_device_config() {
 	config_add_string channel hwmode htmode noscan
 }
@@ -345,6 +360,10 @@ _wdev_common_vlan_config() {
 	config_add_string name vid iface
 }
 
+_wdev_common_station_config() {
+	config_add_string mac key vid iface
+}
+
 init_wireless_driver() {
 	name="$1"; shift
 	cmd="$1"; shift
@@ -372,6 +391,11 @@ init_wireless_driver() {
 				eval "drv_$1_init_vlan_config"
 				json_close_array
 
+				json_add_array station
+				_wdev_common_station_config
+				eval "drv_$1_init_station_config"
+				json_close_array
+
 				json_dump
 			}
 		;;
diff --git a/wireless.c b/wireless.c
index b0b35a1..efb7992 100644
--- a/wireless.c
+++ b/wireless.c
@@ -82,6 +82,20 @@ static const struct uci_blob_param_list vlan_param = {
 	.params = vlan_policy,
 };
 
+enum {
+	STA_ATTR_DISABLED,
+	__STA_ATTR_MAX,
+};
+
+static const struct blobmsg_policy sta_policy[__STA_ATTR_MAX] = {
+	[STA_ATTR_DISABLED] = { .name = "disabled", .type = BLOBMSG_TYPE_BOOL },
+};
+
+static const struct uci_blob_param_list station_param = {
+	.n_params = ARRAY_SIZE(sta_policy),
+	.params = sta_policy,
+};
+
 static void
 wireless_handler_stop(struct wireless_device *wdev)
 {
@@ -144,6 +158,7 @@ prepare_config(struct wireless_device *wdev, struct blob_buf *buf, bool up)
 {
 	struct wireless_interface *vif;
 	struct wireless_vlan *vlan;
+	struct wireless_station *sta;
 	void *l, *i, *j, *k;
 
 	blob_buf_init(&b, 0);
@@ -171,6 +186,18 @@ prepare_config(struct wireless_device *wdev, struct blob_buf *buf, bool up)
 			blobmsg_close_table(&b, k);
 		}
 		blobmsg_close_table(&b, j);
+
+		j = blobmsg_open_table(&b, "stas");
+		vlist_for_each_element(&wdev->stations, sta, node) {
+			if (strcmp(sta->vif, vif->name))
+				continue;
+			k = blobmsg_open_table(&b, sta->name);
+			put_container(&b, sta->config, "config");
+			if (sta->data)
+				blobmsg_add_blob(&b, sta->data);
+			blobmsg_close_table(&b, k);
+		}
+		blobmsg_close_table(&b, j);
 		blobmsg_close_table(&b, i);
 	}
 	blobmsg_close_table(&b, l);
@@ -242,6 +269,7 @@ wireless_device_free_state(struct wireless_device *wdev)
 {
 	struct wireless_interface *vif;
 	struct wireless_vlan *vlan;
+	struct wireless_station *sta;
 
 	wireless_handler_stop(wdev);
 	uloop_timeout_cancel(&wdev->script_check);
@@ -259,6 +287,10 @@ wireless_device_free_state(struct wireless_device *wdev)
 		vlan->data = NULL;
 		vlan->ifname = NULL;
 	}
+	vlist_for_each_element(&wdev->stations, sta, node) {
+		free(sta->data);
+		sta->data = NULL;
+	}
 }
 
 static void wireless_interface_handle_link(struct wireless_interface *vif, bool up)
@@ -426,6 +458,7 @@ wireless_device_free(struct wireless_device *wdev)
 	wireless_handler_stop(wdev);
 	vlist_flush_all(&wdev->interfaces);
 	vlist_flush_all(&wdev->vlans);
+	vlist_flush_all(&wdev->stations);
 	avl_delete(&wireless_devices.avl, &wdev->node.avl);
 	free(wdev->config);
 	free(wdev->prev_config);
@@ -653,20 +686,22 @@ wireless_add_handler(const char *script, const char *name, json_object *obj)
 {
 	struct wireless_driver *drv;
 	char *name_str, *script_str;
-	json_object *dev_config_obj, *iface_config_obj, *vlan_config_obj;
-	struct uci_blob_param_list *dev_config, *iface_config, *vlan_config;
+	json_object *dev_config_obj, *iface_config_obj, *vlan_config_obj, *station_config_obj;
+	struct uci_blob_param_list *dev_config, *iface_config, *vlan_config, *station_config;
 
 	dev_config_obj = json_get_field(obj, "device", json_type_array);
 	iface_config_obj = json_get_field(obj, "iface", json_type_array);
 	vlan_config_obj = json_get_field(obj, "vlan", json_type_array);
+	station_config_obj = json_get_field(obj, "station", json_type_array);
 
-	if (!dev_config_obj || !iface_config_obj || !vlan_config_obj)
+	if (!dev_config_obj || !iface_config_obj || !vlan_config_obj || !station_config_obj)
 		return;
 
 	drv = calloc_a(sizeof(*drv),
 		&dev_config, sizeof(*dev_config) + sizeof(void *),
 		&iface_config, sizeof(*iface_config) + sizeof(void *),
 		&vlan_config, sizeof(*vlan_config) + sizeof(void *),
+		&station_config, sizeof(*station_config) + sizeof(void *),
 		&name_str, strlen(name) + 1,
 		&script_str, strlen(script) + 1);
 
@@ -685,9 +720,14 @@ wireless_add_handler(const char *script, const char *name, json_object *obj)
 	vlan_config->next[0] = &vlan_param;
 	drv->vlan.config = vlan_config;
 
+	station_config->n_next = 1;
+	station_config->next[0] = &station_param;
+	drv->station.config = station_config;
+
 	drv->device.buf = netifd_handler_parse_config(drv->device.config, dev_config_obj);
 	drv->interface.buf = netifd_handler_parse_config(drv->interface.config, iface_config_obj);
 	drv->vlan.buf = netifd_handler_parse_config(drv->vlan.config, vlan_config_obj);
+	drv->station.buf = netifd_handler_parse_config(drv->station.config, station_config_obj);
 
 	drv->node.key = drv->name;
 	avl_insert(&wireless_drivers, &drv->node);
@@ -835,6 +875,45 @@ vlan_update(struct vlist_tree *tree, struct vlist_node *node_new,
 	wdev_set_config_state(wdev, IFC_RELOAD);
 }
 
+static void
+station_update(struct vlist_tree *tree, struct vlist_node *node_new,
+	       struct vlist_node *node_old)
+{
+	struct wireless_station *sta_old = container_of(node_old, struct wireless_station, node);
+	struct wireless_station *sta_new = container_of(node_new, struct wireless_station, node);
+	struct wireless_device *wdev;
+
+	if (sta_old)
+		wdev = sta_old->wdev;
+	else
+		wdev = sta_new->wdev;
+
+	if (sta_old && sta_new) {
+		free((void *) sta_old->section);
+		sta_old->section = strdup(sta_new->section);
+		if (blob_attr_equal(sta_old->config, sta_new->config)) {
+			free(sta_new);
+			return;
+		}
+
+		D(WIRELESS, "Update wireless station %s on device %s\n", sta_new->name, wdev->name);
+		free(sta_old->config);
+		sta_old->config = blob_memdup(sta_new->config);
+		free(sta_new);
+	} else if (sta_new) {
+		D(WIRELESS, "Create new wireless station %s on device %s\n", sta_new->name, wdev->name);
+		sta_new->section = strdup(sta_new->section);
+		sta_new->config = blob_memdup(sta_new->config);
+	} else if (sta_old) {
+		D(WIRELESS, "Delete wireless station %s on device %s\n", sta_old->name, wdev->name);
+		free((void *) sta_old->section);
+		free(sta_old->config);
+		free(sta_old);
+	}
+
+	wdev_set_config_state(wdev, IFC_RELOAD);
+}
+
 static void
 wireless_proc_poll_fd(struct uloop_fd *fd, unsigned int events)
 {
@@ -921,6 +1000,8 @@ wireless_device_create(struct wireless_driver *drv, const char *name, struct blo
 	wdev->interfaces.keep_old = true;
 	vlist_init(&wdev->vlans, avl_strcmp, vlan_update);
 	wdev->vlans.keep_old = true;
+	vlist_init(&wdev->stations, avl_strcmp, station_update);
+	wdev->stations.keep_old = true;
 
 	wdev->timeout.cb = wireless_device_setup_timeout;
 	wdev->script_task.cb = wireless_device_script_task_cb;
@@ -935,6 +1016,47 @@ wireless_device_create(struct wireless_driver *drv, const char *name, struct blo
 	vlist_add(&wireless_devices, &wdev->node, wdev->name);
 }
 
+void
+wireless_station_create(struct wireless_device *wdev, char *vif, struct blob_attr *data, const char *section)
+{
+	struct wireless_station *sta;
+	struct blob_attr *tb[__STA_ATTR_MAX];
+	struct blob_attr *cur;
+	char *name_buf, *vif_buf;
+	char name[8];
+
+	blobmsg_parse(sta_policy, __STA_ATTR_MAX, tb, blob_data(data), blob_len(data));
+
+	cur = tb[STA_ATTR_DISABLED];
+	if (cur && blobmsg_get_bool(cur))
+		return;
+
+	sprintf(name, "%d", wdev->vlan_idx++);
+
+	sta = calloc_a(sizeof(*sta),
+		       &name_buf, strlen(name) + 1,
+		       &vif_buf, strlen(vif) + 1);
+	sta->name = strcpy(name_buf, name);
+	sta->vif = strcpy(vif_buf, vif);
+	sta->wdev = wdev;
+	sta->config = data;
+	sta->section = section;
+
+	vlist_add(&wdev->stations, &sta->node, sta->name);
+}
+
+static void
+wireless_station_status(struct wireless_station *sta, struct blob_buf *b)
+{
+	void *i;
+
+	i = blobmsg_open_table(b, NULL);
+	if (sta->section)
+		blobmsg_add_string(b, "section", sta->section);
+	put_container(b, sta->config, "config");
+	blobmsg_close_table(b, i);
+}
+
 void
 wireless_vlan_create(struct wireless_device *wdev, char *vif, struct blob_attr *data, const char *section)
 {
@@ -1011,6 +1133,7 @@ static void
 wireless_interface_status(struct wireless_interface *iface, struct blob_buf *b)
 {
 	struct wireless_vlan *vlan;
+	struct wireless_station *sta;
 	void *i, *j;
 
 	i = blobmsg_open_table(b, NULL);
@@ -1024,6 +1147,11 @@ wireless_interface_status(struct wireless_interface *iface, struct blob_buf *b)
 		if (!strcmp(iface->name, vlan->vif))
 			wireless_vlan_status(vlan, b);
 	blobmsg_close_array(b, j);
+	j = blobmsg_open_array(b, "stations");
+	vlist_for_each_element(&iface->wdev->stations, sta, node)
+		if (!strcmp(iface->name, sta->vif))
+			wireless_station_status(sta, b);
+	blobmsg_close_array(b, j);
 	blobmsg_close_table(b, i);
 }
 
diff --git a/wireless.h b/wireless.h
index 8d0a1f0..5fedd20 100644
--- a/wireless.h
+++ b/wireless.h
@@ -30,7 +30,7 @@ struct wireless_driver {
 	struct {
 		char *buf;
 		struct uci_blob_param_list *config;
-	} device, interface, vlan;
+	} device, interface, vlan, station;
 };
 
 struct wireless_device {
@@ -44,6 +44,7 @@ struct wireless_device {
 	struct wireless_driver *drv;
 	struct vlist_tree interfaces;
 	struct vlist_tree vlans;
+	struct vlist_tree stations;
 	char *name;
 
 	struct netifd_process script_task;
@@ -72,6 +73,7 @@ struct wireless_device {
 
 	int vif_idx;
 	int vlan_idx;
+	int sta_idx;
 };
 
 struct wireless_interface {
@@ -106,6 +108,18 @@ struct wireless_vlan {
 	bool isolate;
 };
 
+struct wireless_station {
+	struct vlist_node node;
+	const char *section;
+	char *name;
+
+	struct wireless_device *wdev;
+	char *vif;
+
+	struct blob_attr *config;
+	struct blob_attr *data;
+};
+
 struct wireless_process {
 	struct list_head list;
 
@@ -123,6 +137,7 @@ void wireless_device_status(struct wireless_device *wdev, struct blob_buf *b);
 void wireless_device_get_validate(struct wireless_device *wdev, struct blob_buf *b);
 struct wireless_interface* wireless_interface_create(struct wireless_device *wdev, struct blob_attr *data, const char *section);
 void wireless_vlan_create(struct wireless_device *wdev, char *vif, struct blob_attr *data, const char *section);
+void wireless_station_create(struct wireless_device *wdev, char *vif, struct blob_attr *data, const char *section);
 int wireless_device_notify(struct wireless_device *wdev, struct blob_attr *data,
 			   struct ubus_request_data *req);
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
