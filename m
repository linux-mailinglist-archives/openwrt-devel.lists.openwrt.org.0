Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A981D6BC7
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 20:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0T5e/hQi63p3G7KgXI/36M5HiWB5uxuXERbhQWvADU=; b=ApXwFAuEbSk7pv
	D/Jpyhn++fOgK67gntdmYbdZBFpXuCF7an6escp/6RpNmUckDYtS+2SdM/Tw1s1Pz8ArrDWDG2IDF
	Bl+vgYbUT3Rb2g1Gm7LBO/DCX9SWBYJwI7IcolQQAxyS+tA7k6Z9k/vk4Hs3TgIkHBUxx0KD9M2mr
	eckQNaiVEiTZUsQ5s6m4b6RVLBUhbLVIPau7kz5YMX2A1JJiVUHXnbx7VXly/rCKsUwmj6dSTBnFY
	P4qHHnUdXJUuBNKTaMG/Ebq7o5nm6K7msoYSPl9wEYIHfC33H7v8+wL13VUb3P8CpovioLYSZr/Xk
	WQn1bn0uO0fAHE3tafuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaODF-00072m-R7; Sun, 17 May 2020 18:40:37 +0000
Received: from espeweb.net ([146.185.173.227] helo=mail.espeweb.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaOD8-00072H-1e
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 18:40:32 +0000
Received: from static.masmovil.com (unknown [93.176.188.130])
 by mail.espeweb.net (Postfix) with ESMTPSA id 529FB1010D6;
 Sun, 17 May 2020 20:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=espeweb.net;
 s=myselector; t=1589740808;
 bh=z/ZjWcdL/PH8qNC3Jvs+imBsGp5kb8/woYC8/dLFhr8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=AbwDk52b8CWOOxs/jFlclr80s6ZMp6E4u9nMJ9qGddzvErhMh2Q/8/jBKAM7uu1hE
 TdeZ72pPeaCpK7mxP9oDqlqyM+nLo6tsHa26G/7y0CcKtG5qEVUtzk9l8I8lNJZRui
 xg57oMkWZ9onNKLmeq/H5uj/6expPflmEh03QV/w=
From: Pau Espin Pedrol <pespin@espeweb.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 May 2020 20:39:44 +0200
Message-Id: <20200517183944.33477-1-pespin@espeweb.net>
In-Reply-To: <20200428074054.2091-1-pespin@espeweb.net>
References: <20200428074054.2091-1-pespin@espeweb.net>
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_114030_445311_967F8CB6 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH netifd] vlandev: support setting
 ingress/egress QoS mappings
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
Cc: dedeckeh@gmail.com, Pedro <pedrowrt@cas.cat>,
 Pau Espin Pedrol <pespin.shar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Pau Espin Pedrol <pespin.shar@gmail.com>

It allows setting mappings for instance this way:
"""
config device
  option name 'vlan41'
  option type '8021q'
  option vid '41'
  option ifname 'eth1'
  list   ingress_qos_mapping '1:2'
  list   ingress_qos_mapping '2:5'
  list   egress_qos_mapping '0:3'
"""

Signed-off-by: Pau Espin Pedrol <pespin.shar@gmail.com>
Tested-by: Pedro <pedrowrt@cas.cat>
---
 system-linux.c | 25 +++++++++++++++++-
 system.h       |  9 +++++++
 vlandev.c      | 72 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 105 insertions(+), 1 deletion(-)

diff --git a/system-linux.c b/system-linux.c
index 62636c4..c225175 100644
--- a/system-linux.c
+++ b/system-linux.c
@@ -74,6 +74,7 @@
 #include "netifd.h"
 #include "device.h"
 #include "system.h"
+#include "utils.h"
 
 struct event_socket {
 	struct uloop_fd uloop;
@@ -1401,8 +1402,10 @@ int system_vlan_del(struct device *dev)
 int system_vlandev_add(struct device *vlandev, struct device *dev, struct vlandev_config *cfg)
 {
 	struct nl_msg *msg;
-	struct nlattr *linkinfo, *data;
+	struct nlattr *linkinfo, *data, *qos;
 	struct ifinfomsg iim = { .ifi_family = AF_UNSPEC };
+	struct vlan_qos_mapping *elem;
+	struct ifla_vlan_qos_mapping nl_qos_map;
 	int rv;
 
 	msg = nlmsg_alloc_simple(RTM_NEWLINK, NLM_F_REQUEST | NLM_F_CREATE | NLM_F_EXCL);
@@ -1431,6 +1434,26 @@ int system_vlandev_add(struct device *vlandev, struct device *dev, struct vlande
 		netifd_log_message(L_WARNING, "%s Your kernel is older than linux 3.10.0, 802.1ad is not supported defaulting to 802.1q", vlandev->type->name);
 #endif
 
+	if (!(qos = nla_nest_start(msg, IFLA_VLAN_INGRESS_QOS)))
+		goto nla_put_failure;
+
+	vlist_simple_for_each_element(&cfg->ingress_qos_mapping_list, elem, node) {
+		nl_qos_map.from = elem->from;
+		nl_qos_map.to = elem->to;
+		nla_put(msg, IFLA_VLAN_QOS_MAPPING, sizeof(nl_qos_map), &nl_qos_map);
+	}
+	nla_nest_end(msg, qos);
+
+	if (!(qos = nla_nest_start(msg, IFLA_VLAN_EGRESS_QOS)))
+		goto nla_put_failure;
+
+	vlist_simple_for_each_element(&cfg->egress_qos_mapping_list, elem, node) {
+		nl_qos_map.from = elem->from;
+		nl_qos_map.to = elem->to;
+		nla_put(msg, IFLA_VLAN_QOS_MAPPING, sizeof(nl_qos_map), &nl_qos_map);
+	}
+	nla_nest_end(msg, qos);
+
 	nla_nest_end(msg, data);
 	nla_nest_end(msg, linkinfo);
 
diff --git a/system.h b/system.h
index b377416..252fd92 100644
--- a/system.h
+++ b/system.h
@@ -21,6 +21,7 @@
 #include "device.h"
 #include "interface-ip.h"
 #include "iprule.h"
+#include "utils.h"
 
 enum tunnel_param {
 	TUNNEL_ATTR_TYPE,
@@ -158,9 +159,17 @@ enum vlan_proto {
 	VLAN_PROTO_8021AD = 0x88A8
 };
 
+struct vlan_qos_mapping {
+	struct vlist_simple_node node; /* entry in vlandev_config->{e,in}gress_qos_mapping_list */
+	uint32_t from;
+	uint32_t to;
+};
+
 struct vlandev_config {
 	enum vlan_proto proto;
 	uint16_t vid;
+	struct vlist_simple_tree ingress_qos_mapping_list; /* list of struct vlan_qos_mapping */
+	struct vlist_simple_tree egress_qos_mapping_list;  /* list of struct vlan_qos_mapping */
 };
 
 static inline int system_get_addr_family(unsigned int flags)
diff --git a/vlandev.c b/vlandev.c
index ceaeb3e..10b78e2 100644
--- a/vlandev.c
+++ b/vlandev.c
@@ -13,21 +13,27 @@
  */
 
 #include <string.h>
+#include <inttypes.h>
 
 #include "netifd.h"
 #include "device.h"
 #include "interface.h"
 #include "system.h"
+#include "utils.h"
 
 enum {
 	VLANDEV_ATTR_IFNAME,
 	VLANDEV_ATTR_VID,
+	VLANDEV_ATTR_INGRESS_QOS_MAPPING,
+	VLANDEV_ATTR_EGRESS_QOS_MAPPING,
 	__VLANDEV_ATTR_MAX
 };
 
 static const struct blobmsg_policy vlandev_attrs[__VLANDEV_ATTR_MAX] = {
 	[VLANDEV_ATTR_IFNAME] = { "ifname", BLOBMSG_TYPE_STRING },
 	[VLANDEV_ATTR_VID] = { "vid", BLOBMSG_TYPE_INT32 },
+	[VLANDEV_ATTR_INGRESS_QOS_MAPPING] = { "ingress_qos_mapping", BLOBMSG_TYPE_ARRAY },
+	[VLANDEV_ATTR_EGRESS_QOS_MAPPING] = { "egress_qos_mapping", BLOBMSG_TYPE_ARRAY },
 };
 
 static const struct uci_blob_param_list vlandev_attr_list = {
@@ -126,9 +132,30 @@ vlandev_free(struct device *dev)
 	mvdev = container_of(dev, struct vlandev_device, dev);
 	device_remove_user(&mvdev->parent);
 	free(mvdev->config_data);
+	vlist_simple_flush_all(&mvdev->config.ingress_qos_mapping_list);
+	vlist_simple_flush_all(&mvdev->config.egress_qos_mapping_list);
 	free(mvdev);
 }
 
+static void vlandev_qos_mapping_dump(struct blob_buf *b, const char *name, const struct vlist_simple_tree *qos_mapping_li)
+{
+	const struct vlan_qos_mapping *elem;
+	void *a, *t;
+
+	a = blobmsg_open_array(b, name);
+
+	vlist_simple_for_each_element(qos_mapping_li, elem, node) {
+		t = blobmsg_open_table(b, NULL);
+
+		blobmsg_add_u32(b, "from", elem->from);
+		blobmsg_add_u32(b, "to", elem->to);
+
+		blobmsg_close_table(b, t);
+	}
+
+	blobmsg_close_array(b, a);
+}
+
 static void
 vlandev_dump_info(struct device *dev, struct blob_buf *b)
 {
@@ -137,6 +164,8 @@ vlandev_dump_info(struct device *dev, struct blob_buf *b)
 	mvdev = container_of(dev, struct vlandev_device, dev);
 	blobmsg_add_string(b, "parent", mvdev->parent.dev->ifname);
 	system_if_dump_info(dev, b);
+	vlandev_qos_mapping_dump(b, "ingress_qos_mapping", &mvdev->config.ingress_qos_mapping_list);
+	vlandev_qos_mapping_dump(b, "egress_qos_mapping", &mvdev->config.egress_qos_mapping_list);
 }
 
 static void
@@ -152,6 +181,32 @@ vlandev_config_init(struct device *dev)
 	device_add_user(&mvdev->parent, basedev);
 }
 
+static void vlandev_qos_mapping_list_apply(struct vlist_simple_tree *qos_mapping_li, struct blob_attr *list)
+{
+	struct blob_attr *cur;
+	struct vlan_qos_mapping *qos_mapping;
+	int rem, rc;
+
+	blobmsg_for_each_attr(cur, list, rem) {
+		if (blobmsg_type(cur) != BLOBMSG_TYPE_STRING)
+			continue;
+
+		if (!blobmsg_check_attr(cur, false))
+			continue;
+
+		qos_mapping = calloc(1, sizeof(*qos_mapping));
+		if (!qos_mapping)
+			continue;
+
+		rc = sscanf(blobmsg_data(cur), "%" PRIu32 ":%" PRIu32, &qos_mapping->from, &qos_mapping->to);
+		if (rc != 2) {
+			free(qos_mapping);
+			continue;
+		}
+		vlist_simple_add(qos_mapping_li, &qos_mapping->node);
+	}
+}
+
 static void
 vlandev_apply_settings(struct vlandev_device *mvdev, struct blob_attr **tb)
 {
@@ -162,8 +217,20 @@ vlandev_apply_settings(struct vlandev_device *mvdev, struct blob_attr **tb)
 		VLAN_PROTO_8021Q : VLAN_PROTO_8021AD;
 	cfg->vid = 1;
 
+	vlist_simple_update(&cfg->ingress_qos_mapping_list);
+	vlist_simple_update(&cfg->egress_qos_mapping_list);
+
 	if ((cur = tb[VLANDEV_ATTR_VID]))
 		cfg->vid = (uint16_t) blobmsg_get_u32(cur);
+
+	if ((cur = tb[VLANDEV_ATTR_INGRESS_QOS_MAPPING]))
+		vlandev_qos_mapping_list_apply(&cfg->ingress_qos_mapping_list, cur);
+
+	if ((cur = tb[VLANDEV_ATTR_EGRESS_QOS_MAPPING]))
+		vlandev_qos_mapping_list_apply(&cfg->egress_qos_mapping_list, cur);
+
+	vlist_simple_flush(&cfg->ingress_qos_mapping_list);
+	vlist_simple_flush(&cfg->egress_qos_mapping_list);
 }
 
 static enum dev_change_type
@@ -221,6 +288,11 @@ vlandev_create(const char *name, struct device_type *devtype,
 	if (!mvdev)
 		return NULL;
 
+	vlist_simple_init(&mvdev->config.ingress_qos_mapping_list,
+			  struct vlan_qos_mapping, node);
+	vlist_simple_init(&mvdev->config.egress_qos_mapping_list,
+			  struct vlan_qos_mapping, node);
+
 	dev = &mvdev->dev;
 
 	if (device_init(dev, devtype, name) < 0) {
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
