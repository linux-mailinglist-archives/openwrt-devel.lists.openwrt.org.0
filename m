Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E7F1E0B04
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 11:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uzLtmlOb2Seenm/d6CFBlPqFXxAzgZ6O57XmnFV9+wY=; b=bxceHrl4omvsfR
	UnwaTr0L+p7IJw8vmk5lp6+7+9f2PTx1BACdg4Z+M0FTTvSuFFtb7fuTmMKu0VG5e1UU/YjG5N2qu
	58yj3+e3n86/5DTe3SCoa2bcAmzIwyBsfLSj8Ax3kDdVmoaErFAxM91Bf/Kp1bGAbY1vLxZKUdNYq
	krzxQdaRbGaX1xLi6rF5HCh2+c5MsrsWDiz6ks1ktty7USlPpYN0FCLK/Gk7n+BRjYutOd7ru0f5O
	oFM7dzMFmOgOuPxKSu/mvcvPoI4R4O3ssiWo9YaReLMXreX0oU0+TG9whS0ygLw4m0ysr6zb3vln7
	6NBDm/9lmVnd+ui2UfRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9k2-0005sd-MN; Mon, 25 May 2020 09:49:54 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9jf-0005hR-K4
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 09:49:34 +0000
Received: from [46.59.216.37] (helo=bertha8.fritz.box)
 by ds12 with esmtpa (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jd9jb-0005ik-DS; Mon, 25 May 2020 11:49:27 +0200
From: John Crispin <john@phrozen.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 May 2020 11:49:18 +0200
Message-Id: <20200525094919.15206-1-john@phrozen.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_024931_972083_7CA16278 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] netifd: wireless: add support for
 tracking wifi-vlann sections
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

This new section allows us to create apvlan settings for hostapd.

Signed-off-by: John Crispin <john@phrozen.org>
---
 config.c                   |  42 ++++++-
 scripts/netifd-wireless.sh |  42 ++++++-
 wireless.c                 | 247 +++++++++++++++++++++++++++++++++++--
 wireless.h                 |  23 +++-
 4 files changed, 337 insertions(+), 17 deletions(-)

diff --git a/config.c b/config.c
index 843c53f..1bb3737 100644
--- a/config.c
+++ b/config.c
@@ -338,7 +338,7 @@ config_parse_wireless_device(struct uci_section *s)
 	wireless_device_create(drv, s->e.name, b.head);
 }
 
-static void
+static struct wireless_interface*
 config_parse_wireless_interface(struct wireless_device *wdev, struct uci_section *s)
 {
 	char *name;
@@ -348,7 +348,20 @@ config_parse_wireless_interface(struct wireless_device *wdev, struct uci_section
 
 	blob_buf_init(&b, 0);
 	uci_to_blob(&b, s, wdev->drv->interface.config);
-	wireless_interface_create(wdev, b.head, s->anonymous ? name : s->e.name);
+	return wireless_interface_create(wdev, b.head, s->anonymous ? name : s->e.name);
+}
+
+static void
+config_parse_wireless_vlan(struct wireless_device *wdev, char *vif, struct uci_section *s)
+{
+	char *name;
+
+	name = alloca(strlen(s->type) + 16);
+	sprintf(name, "@%s[%d]", s->type, config_section_idx(s));
+
+	blob_buf_init(&b, 0);
+	uci_to_blob(&b, s, wdev->drv->vlan.config);
+	wireless_vlan_create(wdev, vif, b.head, s->anonymous ? name : s->e.name);
 }
 
 static void
@@ -378,10 +391,14 @@ config_init_wireless(void)
 	vlist_for_each_element(&wireless_devices, wdev, node) {
 		wdev->vif_idx = 0;
 		vlist_update(&wdev->interfaces);
+		wdev->vlan_idx = 0;
+		vlist_update(&wdev->vlans);
 	}
 
 	uci_foreach_element(&uci_wireless->sections, e) {
 		struct uci_section *s = uci_to_section(e);
+		struct wireless_interface *vif;
+		struct uci_element *f;
 
 		if (strcmp(s->type, "wifi-iface") != 0)
 			continue;
@@ -396,11 +413,28 @@ config_init_wireless(void)
 			continue;
 		}
 
-		config_parse_wireless_interface(wdev, s);
+		vif = config_parse_wireless_interface(wdev, s);
+
+		if (!vif || s->anonymous)
+			continue;
+		uci_foreach_element(&uci_wireless->sections, f) {
+			struct uci_section *s = uci_to_section(f);
+			const char *vif_name;
+
+			if (strcmp(s->type, "wifi-vlan") != 0)
+				continue;
+
+			vif_name = uci_lookup_option_string(uci_ctx, s, "iface");
+			if (vif_name && strcmp(e->name, vif_name))
+				continue;
+			config_parse_wireless_vlan(wdev, vif->name, s);
+		}
 	}
 
-	vlist_for_each_element(&wireless_devices, wdev, node)
+	vlist_for_each_element(&wireless_devices, wdev, node) {
 		vlist_flush(&wdev->interfaces);
+		vlist_flush(&wdev->vlans);
+	}
 }
 
 int
diff --git a/scripts/netifd-wireless.sh b/scripts/netifd-wireless.sh
index 6bc48c6..41e380f 100644
--- a/scripts/netifd-wireless.sh
+++ b/scripts/netifd-wireless.sh
@@ -108,12 +108,13 @@ _wdev_wrapper() {
 
 _wdev_notify_init() {
 	local command="$1"
-	local interface="$2"
+	local name="$2"
+	local value="$3"
 
 	json_init
 	json_add_int "command" "$command"
 	json_add_string "device" "$__netifd_device"
-	[ -n "$interface" ] && json_add_string "interface" "$interface"
+	[ -n "$name" -a -n "$value" ] && json_add_string "$name" "$value"
 	json_add_object "data"
 }
 
@@ -139,7 +140,17 @@ _wireless_add_vif() {
 	local name="$1"; shift
 	local ifname="$1"; shift
 
-	_wdev_notify_init $CMD_SET_DATA "$name"
+	_wdev_notify_init $CMD_SET_DATA "interface" "$name"
+	json_add_string "ifname" "$ifname"
+	_wdev_add_variables "$@"
+	_wdev_notify
+}
+
+_wireless_add_vlan() {
+	local name="$1"; shift
+	local ifname="$1"; shift
+
+	_wdev_notify_init $CMD_SET_DATA "vlan" "$name"
 	json_add_string "ifname" "$ifname"
 	_wdev_add_variables "$@"
 	_wdev_notify
@@ -182,6 +193,7 @@ _wireless_set_retry() {
 
 _wdev_wrapper \
 	wireless_add_vif \
+	wireless_add_vlan \
 	wireless_set_up \
 	wireless_set_data \
 	wireless_add_process \
@@ -306,6 +318,21 @@ for_each_interface() {
 	json_select ..
 }
 
+for_each_vlan() {
+	local _w_vlans _w_vlan
+
+	json_get_keys _w_vlans vlans
+	json_select vlans
+	for _w_vlan in $_w_vlans; do
+		json_select "$_w_vlan"
+		json_select config
+		"$@" "$_w_vlan"
+		json_select ..
+		json_select ..
+	done
+	json_select ..
+}
+
 _wdev_common_device_config() {
 	config_add_string channel hwmode htmode noscan
 }
@@ -314,6 +341,10 @@ _wdev_common_iface_config() {
 	config_add_string mode ssid encryption 'key:wpakey'
 }
 
+_wdev_common_vlan_config() {
+	config_add_string name vid iface
+}
+
 init_wireless_driver() {
 	name="$1"; shift
 	cmd="$1"; shift
@@ -336,6 +367,11 @@ init_wireless_driver() {
 				eval "drv_$1_init_iface_config"
 				json_close_array
 
+				json_add_array vlan
+				_wdev_common_vlan_config
+				eval "drv_$1_init_vlan_config"
+				json_close_array
+
 				json_dump
 			}
 		;;
diff --git a/wireless.c b/wireless.c
index c8e196f..b0b35a1 100644
--- a/wireless.c
+++ b/wireless.c
@@ -64,6 +64,24 @@ static const struct uci_blob_param_list vif_param = {
 	.params = vif_policy,
 };
 
+enum {
+	VLAN_ATTR_DISABLED,
+	VLAN_ATTR_NETWORK,
+	VLAN_ATTR_ISOLATE,
+	__VLAN_ATTR_MAX,
+};
+
+static const struct blobmsg_policy vlan_policy[__VLAN_ATTR_MAX] = {
+	[VLAN_ATTR_DISABLED] = { .name = "disabled", .type = BLOBMSG_TYPE_BOOL },
+	[VLAN_ATTR_NETWORK] = { .name = "network", .type = BLOBMSG_TYPE_ARRAY },
+	[VLAN_ATTR_ISOLATE] = { .name = "isolate", .type = BLOBMSG_TYPE_BOOL },
+};
+
+static const struct uci_blob_param_list vlan_param = {
+	.n_params = ARRAY_SIZE(vlan_policy),
+	.params = vlan_policy,
+};
+
 static void
 wireless_handler_stop(struct wireless_device *wdev)
 {
@@ -125,7 +143,8 @@ static void
 prepare_config(struct wireless_device *wdev, struct blob_buf *buf, bool up)
 {
 	struct wireless_interface *vif;
-	void *l, *i;
+	struct wireless_vlan *vlan;
+	void *l, *i, *j, *k;
 
 	blob_buf_init(&b, 0);
 	put_container(&b, wdev->config, "config");
@@ -139,9 +158,23 @@ prepare_config(struct wireless_device *wdev, struct blob_buf *buf, bool up)
 		put_container(&b, vif->config, "config");
 		if (vif->data)
 			blobmsg_add_blob(&b, vif->data);
+
+		j = blobmsg_open_table(&b, "vlans");
+		vlist_for_each_element(&wdev->vlans, vlan, node) {
+			if (strcmp(vlan->vif, vif->name))
+				continue;
+			k = blobmsg_open_table(&b, vlan->name);
+			vif_config_add_bridge(&b, vlan->network, up);
+			put_container(&b, vlan->config, "config");
+			if (vlan->data)
+				blobmsg_add_blob(&b, vlan->data);
+			blobmsg_close_table(&b, k);
+		}
+		blobmsg_close_table(&b, j);
 		blobmsg_close_table(&b, i);
 	}
 	blobmsg_close_table(&b, l);
+
 }
 
 static bool
@@ -208,6 +241,7 @@ static void
 wireless_device_free_state(struct wireless_device *wdev)
 {
 	struct wireless_interface *vif;
+	struct wireless_vlan *vlan;
 
 	wireless_handler_stop(wdev);
 	uloop_timeout_cancel(&wdev->script_check);
@@ -220,6 +254,11 @@ wireless_device_free_state(struct wireless_device *wdev)
 		vif->data = NULL;
 		vif->ifname = NULL;
 	}
+	vlist_for_each_element(&wdev->vlans, vlan, node) {
+		free(vlan->data);
+		vlan->data = NULL;
+		vlan->ifname = NULL;
+	}
 }
 
 static void wireless_interface_handle_link(struct wireless_interface *vif, bool up)
@@ -252,6 +291,36 @@ static void wireless_interface_handle_link(struct wireless_interface *vif, bool
 	}
 }
 
+static void wireless_vlan_handle_link(struct wireless_vlan *vlan, bool up)
+{
+	struct interface *iface;
+	struct blob_attr *cur;
+	const char *network;
+	int rem;
+
+	if (!vlan->network || !vlan->ifname)
+		return;
+
+	if (up) {
+		struct device *dev = device_get(vlan->ifname, 2);
+		if (dev) {
+			dev->wireless_isolate = vlan->isolate;
+			dev->wireless = true;
+			dev->wireless_ap = true;
+		}
+	}
+
+	blobmsg_for_each_attr(cur, vlan->network, rem) {
+		network = blobmsg_data(cur);
+
+		iface = vlist_find(&interfaces, network, iface, node);
+		if (!iface)
+			continue;
+
+		interface_handle_link(iface, vlan->ifname, up, true);
+	}
+}
+
 static void
 wireless_device_setup_cancel(struct wireless_device *wdev)
 {
@@ -356,6 +425,7 @@ wireless_device_free(struct wireless_device *wdev)
 {
 	wireless_handler_stop(wdev);
 	vlist_flush_all(&wdev->interfaces);
+	vlist_flush_all(&wdev->vlans);
 	avl_delete(&wireless_devices.avl, &wdev->node.avl);
 	free(wdev->config);
 	free(wdev->prev_config);
@@ -384,9 +454,13 @@ static void
 wireless_device_mark_down(struct wireless_device *wdev)
 {
 	struct wireless_interface *vif;
+	struct wireless_vlan *vlan;
 
 	D(WIRELESS, "Wireless device '%s' is now down\n", wdev->name);
 
+	vlist_for_each_element(&wdev->vlans, vlan, node)
+		wireless_vlan_handle_link(vlan, false);
+
 	vlist_for_each_element(&wdev->interfaces, vif, node)
 		wireless_interface_handle_link(vif, false);
 
@@ -447,6 +521,7 @@ static void
 wireless_device_mark_up(struct wireless_device *wdev)
 {
 	struct wireless_interface *vif;
+	struct wireless_vlan *vlan;
 
 	if (wdev->cancel) {
 		wdev->cancel = false;
@@ -458,6 +533,8 @@ wireless_device_mark_up(struct wireless_device *wdev)
 	wdev->state = IFS_UP;
 	vlist_for_each_element(&wdev->interfaces, vif, node)
 		wireless_interface_handle_link(vif, true);
+	vlist_for_each_element(&wdev->vlans, vlan, node)
+		wireless_vlan_handle_link(vlan, true);
 }
 
 static void
@@ -576,18 +653,20 @@ wireless_add_handler(const char *script, const char *name, json_object *obj)
 {
 	struct wireless_driver *drv;
 	char *name_str, *script_str;
-	json_object *dev_config_obj, *iface_config_obj;
-	struct uci_blob_param_list *dev_config, *iface_config;
+	json_object *dev_config_obj, *iface_config_obj, *vlan_config_obj;
+	struct uci_blob_param_list *dev_config, *iface_config, *vlan_config;
 
 	dev_config_obj = json_get_field(obj, "device", json_type_array);
 	iface_config_obj = json_get_field(obj, "iface", json_type_array);
+	vlan_config_obj = json_get_field(obj, "vlan", json_type_array);
 
-	if (!dev_config_obj || !iface_config_obj)
+	if (!dev_config_obj || !iface_config_obj || !vlan_config_obj)
 		return;
 
 	drv = calloc_a(sizeof(*drv),
 		&dev_config, sizeof(*dev_config) + sizeof(void *),
 		&iface_config, sizeof(*iface_config) + sizeof(void *),
+		&vlan_config, sizeof(*vlan_config) + sizeof(void *),
 		&name_str, strlen(name) + 1,
 		&script_str, strlen(script) + 1);
 
@@ -602,8 +681,13 @@ wireless_add_handler(const char *script, const char *name, json_object *obj)
 	iface_config->next[0] = &vif_param;
 	drv->interface.config = iface_config;
 
+	vlan_config->n_next = 1;
+	vlan_config->next[0] = &vlan_param;
+	drv->vlan.config = vlan_config;
+
 	drv->device.buf = netifd_handler_parse_config(drv->device.config, dev_config_obj);
 	drv->interface.buf = netifd_handler_parse_config(drv->interface.config, iface_config_obj);
+	drv->vlan.buf = netifd_handler_parse_config(drv->vlan.config, vlan_config_obj);
 
 	drv->node.key = drv->name;
 	avl_insert(&wireless_drivers, &drv->node);
@@ -690,6 +774,67 @@ vif_update(struct vlist_tree *tree, struct vlist_node *node_new,
 	wdev_set_config_state(wdev, IFC_RELOAD);
 }
 
+static void
+wireless_vlan_init_config(struct wireless_vlan *vlan)
+{
+	struct blob_attr *tb[__VLAN_ATTR_MAX];
+	struct blob_attr *cur;
+
+	vlan->network = NULL;
+	blobmsg_parse(vlan_policy, __VLAN_ATTR_MAX, tb, blob_data(vlan->config), blob_len(vlan->config));
+
+	if ((cur = tb[VLAN_ATTR_NETWORK]))
+		vlan->network = cur;
+
+	cur = tb[VLAN_ATTR_ISOLATE];
+	if (cur)
+		vlan->isolate = blobmsg_get_bool(cur);
+}
+
+static void
+vlan_update(struct vlist_tree *tree, struct vlist_node *node_new,
+	    struct vlist_node *node_old)
+{
+	struct wireless_vlan *vlan_old = container_of(node_old, struct wireless_vlan, node);
+	struct wireless_vlan *vlan_new = container_of(node_new, struct wireless_vlan, node);
+	struct wireless_device *wdev;
+
+	if (vlan_old)
+		wdev = vlan_old->wdev;
+	else
+		wdev = vlan_new->wdev;
+
+	if (vlan_old && vlan_new) {
+		free((void *) vlan_old->section);
+		vlan_old->section = strdup(vlan_new->section);
+		if (blob_attr_equal(vlan_old->config, vlan_new->config)) {
+			free(vlan_new);
+			return;
+		}
+
+		D(WIRELESS, "Update wireless vlan %s on device %s\n", vlan_new->name, wdev->name);
+		wireless_vlan_handle_link(vlan_old, false);
+		free(vlan_old->config);
+		vlan_old->config = blob_memdup(vlan_new->config);
+		vlan_old->isolate = vlan_new->isolate;
+		wireless_vlan_init_config(vlan_old);
+		free(vlan_new);
+	} else if (vlan_new) {
+		D(WIRELESS, "Create new wireless vlan %s on device %s\n", vlan_new->name, wdev->name);
+		vlan_new->section = strdup(vlan_new->section);
+		vlan_new->config = blob_memdup(vlan_new->config);
+		wireless_vlan_init_config(vlan_new);
+	} else if (vlan_old) {
+		D(WIRELESS, "Delete wireless interface %s on device %s\n", vlan_old->name, wdev->name);
+		wireless_vlan_handle_link(vlan_old, false);
+		free((void *) vlan_old->section);
+		free(vlan_old->config);
+		free(vlan_old);
+	}
+
+	wdev_set_config_state(wdev, IFC_RELOAD);
+}
+
 static void
 wireless_proc_poll_fd(struct uloop_fd *fd, unsigned int events)
 {
@@ -774,6 +919,8 @@ wireless_device_create(struct wireless_driver *drv, const char *name, struct blo
 	INIT_LIST_HEAD(&wdev->script_proc);
 	vlist_init(&wdev->interfaces, avl_strcmp, vif_update);
 	wdev->interfaces.keep_old = true;
+	vlist_init(&wdev->vlans, avl_strcmp, vlan_update);
+	wdev->vlans.keep_old = true;
 
 	wdev->timeout.cb = wireless_device_setup_timeout;
 	wdev->script_task.cb = wireless_device_script_task_cb;
@@ -788,7 +935,51 @@ wireless_device_create(struct wireless_driver *drv, const char *name, struct blo
 	vlist_add(&wireless_devices, &wdev->node, wdev->name);
 }
 
-void wireless_interface_create(struct wireless_device *wdev, struct blob_attr *data, const char *section)
+void
+wireless_vlan_create(struct wireless_device *wdev, char *vif, struct blob_attr *data, const char *section)
+{
+	struct wireless_vlan *vlan;
+	struct blob_attr *tb[__VLAN_ATTR_MAX];
+	struct blob_attr *cur;
+	char *name_buf, *vif_buf;
+	char name[8];
+
+	blobmsg_parse(vlan_policy, __VLAN_ATTR_MAX, tb, blob_data(data), blob_len(data));
+
+	cur = tb[VLAN_ATTR_DISABLED];
+	if (cur && blobmsg_get_bool(cur))
+		return;
+
+	sprintf(name, "%d", wdev->vlan_idx++);
+
+	vlan = calloc_a(sizeof(*vlan),
+		       &name_buf, strlen(name) + 1,
+		       &vif_buf, strlen(vif) + 1);
+	vlan->name = strcpy(name_buf, name);
+	vlan->vif = strcpy(vif_buf, vif);
+	vlan->wdev = wdev;
+	vlan->config = data;
+	vlan->section = section;
+	vlan->isolate = false;
+
+	vlist_add(&wdev->vlans, &vlan->node, vlan->name);
+}
+
+static void
+wireless_vlan_status(struct wireless_vlan *vlan, struct blob_buf *b)
+{
+	void *i;
+
+	i = blobmsg_open_table(b, NULL);
+	if (vlan->section)
+		blobmsg_add_string(b, "section", vlan->section);
+	if (vlan->ifname)
+		blobmsg_add_string(b, "ifname", vlan->ifname);
+	put_container(b, vlan->config, "config");
+	blobmsg_close_table(b, i);
+}
+
+struct wireless_interface* wireless_interface_create(struct wireless_device *wdev, struct blob_attr *data, const char *section)
 {
 	struct wireless_interface *vif;
 	struct blob_attr *tb[__VIF_ATTR_MAX];
@@ -800,7 +991,7 @@ void wireless_interface_create(struct wireless_device *wdev, struct blob_attr *d
 
 	cur = tb[VIF_ATTR_DISABLED];
 	if (cur && blobmsg_get_bool(cur))
-		return;
+		return NULL;
 
 	sprintf(name, "%d", wdev->vif_idx++);
 
@@ -813,12 +1004,14 @@ void wireless_interface_create(struct wireless_device *wdev, struct blob_attr *d
 	vif->isolate = false;
 
 	vlist_add(&wdev->interfaces, &vif->node, vif->name);
+	return vif;
 }
 
 static void
 wireless_interface_status(struct wireless_interface *iface, struct blob_buf *b)
 {
-	void *i;
+	struct wireless_vlan *vlan;
+	void *i, *j;
 
 	i = blobmsg_open_table(b, NULL);
 	if (iface->section)
@@ -826,6 +1019,11 @@ wireless_interface_status(struct wireless_interface *iface, struct blob_buf *b)
 	if (iface->ifname)
 		blobmsg_add_string(b, "ifname", iface->ifname);
 	put_container(b, iface->config, "config");
+	j = blobmsg_open_array(b, "vlans");
+	vlist_for_each_element(&iface->wdev->vlans, vlan, node)
+		if (!strcmp(iface->name, vlan->vif))
+			wireless_vlan_status(vlan, b);
+	blobmsg_close_array(b, j);
 	blobmsg_close_table(b, i);
 }
 
@@ -894,6 +1092,26 @@ wireless_interface_set_data(struct wireless_interface *vif)
 		vif->ifname = blobmsg_data(cur);
 }
 
+static void
+wireless_vlan_set_data(struct wireless_vlan *vlan)
+{
+	enum {
+		VLAN_DATA_IFNAME,
+		__VLAN_DATA_MAX,
+	};
+	static const struct blobmsg_policy data_policy[__VLAN_DATA_MAX] = {
+		[VLAN_DATA_IFNAME] = { .name = "ifname", .type = BLOBMSG_TYPE_STRING },
+	};
+	struct blob_attr *tb[__VLAN_DATA_MAX];
+	struct blob_attr *cur;
+
+	blobmsg_parse(data_policy, __VLAN_DATA_MAX, tb,
+		      blobmsg_data(vlan->data), blobmsg_data_len(vlan->data));
+
+	if ((cur = tb[VLAN_DATA_IFNAME]))
+		vlan->ifname = blobmsg_data(cur);
+}
+
 static int
 wireless_device_add_process(struct wireless_device *wdev, struct blob_attr *data)
 {
@@ -1011,15 +1229,18 @@ wireless_device_notify(struct wireless_device *wdev, struct blob_attr *data,
 	enum {
 		NOTIFY_ATTR_COMMAND,
 		NOTIFY_ATTR_VIF,
+		NOTIFY_ATTR_VLAN,
 		NOTIFY_ATTR_DATA,
 		__NOTIFY_MAX,
 	};
 	static const struct blobmsg_policy notify_policy[__NOTIFY_MAX] = {
 		[NOTIFY_ATTR_COMMAND] = { .name = "command", .type = BLOBMSG_TYPE_INT32 },
 		[NOTIFY_ATTR_VIF] = { .name = "interface", .type = BLOBMSG_TYPE_STRING },
+		[NOTIFY_ATTR_VLAN] = { .name = "vlan", .type = BLOBMSG_TYPE_STRING },
 		[NOTIFY_ATTR_DATA] = { .name = "data", .type = BLOBMSG_TYPE_TABLE },
 	};
 	struct wireless_interface *vif = NULL;
+	struct wireless_vlan *vlan = NULL;
 	struct blob_attr *tb[__NOTIFY_MAX];
 	struct blob_attr *cur, **pdata;
 
@@ -1034,13 +1255,19 @@ wireless_device_notify(struct wireless_device *wdev, struct blob_attr *data,
 			return UBUS_STATUS_NOT_FOUND;
 	}
 
+	if ((cur = tb[NOTIFY_ATTR_VLAN]) != NULL) {
+		vlan = vlist_find(&wdev->vlans, blobmsg_data(cur), vlan, node);
+		if (!vlan)
+			return UBUS_STATUS_NOT_FOUND;
+	}
+
 	cur = tb[NOTIFY_ATTR_DATA];
 	if (!cur)
 		return UBUS_STATUS_INVALID_ARGUMENT;
 
 	switch (blobmsg_get_u32(tb[NOTIFY_ATTR_COMMAND])) {
 	case NOTIFY_CMD_UP:
-		if (vif)
+		if (vif || vlan)
 			return UBUS_STATUS_INVALID_ARGUMENT;
 
 		if (wdev->state != IFS_SETUP)
@@ -1051,6 +1278,8 @@ wireless_device_notify(struct wireless_device *wdev, struct blob_attr *data,
 	case NOTIFY_CMD_SET_DATA:
 		if (vif)
 			pdata = &vif->data;
+		else if (vlan)
+			pdata = &vlan->data;
 		else
 			pdata = &wdev->data;
 
@@ -1060,6 +1289,8 @@ wireless_device_notify(struct wireless_device *wdev, struct blob_attr *data,
 		*pdata = blob_memdup(cur);
 		if (vif)
 			wireless_interface_set_data(vif);
+		else if (vlan)
+			wireless_vlan_set_data(vlan);
 		break;
 	case NOTIFY_CMD_PROCESS_ADD:
 		return wireless_device_add_process(wdev, cur);
diff --git a/wireless.h b/wireless.h
index f734770..8d0a1f0 100644
--- a/wireless.h
+++ b/wireless.h
@@ -30,7 +30,7 @@ struct wireless_driver {
 	struct {
 		char *buf;
 		struct uci_blob_param_list *config;
-	} device, interface;
+	} device, interface, vlan;
 };
 
 struct wireless_device {
@@ -43,6 +43,7 @@ struct wireless_device {
 
 	struct wireless_driver *drv;
 	struct vlist_tree interfaces;
+	struct vlist_tree vlans;
 	char *name;
 
 	struct netifd_process script_task;
@@ -70,6 +71,7 @@ struct wireless_device {
 	int retry;
 
 	int vif_idx;
+	int vlan_idx;
 };
 
 struct wireless_interface {
@@ -88,6 +90,22 @@ struct wireless_interface {
 	bool ap_mode;
 };
 
+struct wireless_vlan {
+	struct vlist_node node;
+	const char *section;
+	char *name;
+
+	struct wireless_device *wdev;
+	char *vif;
+
+	struct blob_attr *config;
+	struct blob_attr *data;
+
+	const char *ifname;
+	struct blob_attr *network;
+	bool isolate;
+};
+
 struct wireless_process {
 	struct list_head list;
 
@@ -103,7 +121,8 @@ void wireless_device_set_down(struct wireless_device *wdev);
 void wireless_device_reconf(struct wireless_device *wdev);
 void wireless_device_status(struct wireless_device *wdev, struct blob_buf *b);
 void wireless_device_get_validate(struct wireless_device *wdev, struct blob_buf *b);
-void wireless_interface_create(struct wireless_device *wdev, struct blob_attr *data, const char *section);
+struct wireless_interface* wireless_interface_create(struct wireless_device *wdev, struct blob_attr *data, const char *section);
+void wireless_vlan_create(struct wireless_device *wdev, char *vif, struct blob_attr *data, const char *section);
 int wireless_device_notify(struct wireless_device *wdev, struct blob_attr *data,
 			   struct ubus_request_data *req);
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
