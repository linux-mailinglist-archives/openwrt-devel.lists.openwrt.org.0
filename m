Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA75D1C2E6A
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 19:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQ7MUFSOcQv2J0WY9xu7hs46PVpyMftZ27l/NsHQekk=; b=ugD7XzsTyRiZcE
	Ctyw3BBQjB+yJJ3IwurpuZWXF82SG069Y9Od2+Q+E0tdcW+nAsBLyGF1LDNdPtvf/Z0K0+ETtrIbG
	UwfuHjb8b5Soz6Rpe+50fyacxV8cb86xPT2vih2SC23kEUVelN6TMO+cbFsOknUCWJQtNAqpF+aTa
	52WhI4sAbQE1ncs9XngDuzliuDjjWVvINoUZuvdPfMp4oKZSwBghbOWQFkAwYc9c73wtaI5TzKWFc
	CFsgYq9m8VDzMxkhHko76hTwk5ufg1rZre4mqXxILB9H9hNI3hBfZrkH6wuT8/Rbflmi2m+bwVZ99
	b4RFiylocNAupEbEopHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVIe3-0000lI-Pr; Sun, 03 May 2020 17:43:15 +0000
Received: from espeweb.net ([146.185.173.227] helo=mail.espeweb.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVIdv-0000kP-Co
 for openwrt-devel@lists.openwrt.org; Sun, 03 May 2020 17:43:09 +0000
Received: from static.masmovil.com (unknown [93.176.188.130])
 by mail.espeweb.net (Postfix) with ESMTPSA id A148110069D;
 Sun,  3 May 2020 19:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=espeweb.net;
 s=myselector; t=1588527781;
 bh=KuOvvCV1cFB22pDu5SkpRoIosYSx6tL5mE4Epnj07mo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=c25UPTXx+CzzagkifiDFM0Buu7REIQbkl/twZtF883GMwEr4xXka80oELc53F+FKs
 HDV2cT/QZKi29woKmfTJaqx3DDLPWmvbeuq7XoXdWmmdtBd1J1gaKeaJS66sJ2P1FO
 WYB9yC3yYrki6WZ/8Vad4HG/0RU4XHdiwMS1Hj1g=
From: Pau Espin Pedrol <pespin@espeweb.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  3 May 2020 19:42:42 +0200
Message-Id: <20200503174242.6466-1-pespin@espeweb.net>
In-Reply-To: <20200428074054.2091-1-pespin@espeweb.net>
References: <20200428074054.2091-1-pespin@espeweb.net>
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_104307_893553_C9C3BE5E 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 system-linux.c | 22 +++++++++++++-
 system.h       |  8 +++++
 vlandev.c      | 80 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 109 insertions(+), 1 deletion(-)

diff --git a/system-linux.c b/system-linux.c
index 62636c4..c61a5a2 100644
--- a/system-linux.c
+++ b/system-linux.c
@@ -1401,8 +1401,10 @@ int system_vlan_del(struct device *dev)
 int system_vlandev_add(struct device *vlandev, struct device *dev, struct vlandev_config *cfg)
 {
 	struct nl_msg *msg;
-	struct nlattr *linkinfo, *data;
+	struct nlattr *linkinfo, *data, *qos;
 	struct ifinfomsg iim = { .ifi_family = AF_UNSPEC };
+	struct vlan_qos_mapping *dep;
+	struct ifla_vlan_qos_mapping nl_qos_map;
 	int rv;
 
 	msg = nlmsg_alloc_simple(RTM_NEWLINK, NLM_F_REQUEST | NLM_F_CREATE | NLM_F_EXCL);
@@ -1431,6 +1433,24 @@ int system_vlandev_add(struct device *vlandev, struct device *dev, struct vlande
 		netifd_log_message(L_WARNING, "%s Your kernel is older than linux 3.10.0, 802.1ad is not supported defaulting to 802.1q", vlandev->type->name);
 #endif
 
+	if (!(qos = nla_nest_start(msg, IFLA_VLAN_INGRESS_QOS)))
+		goto nla_put_failure;
+	list_for_each_entry(dep, &cfg->ingress_qos_mapping_list, list) {
+		nl_qos_map.from = dep->from;
+		nl_qos_map.to = dep->to;
+		nla_put(msg, IFLA_VLAN_QOS_MAPPING, sizeof(nl_qos_map), &nl_qos_map);
+	}
+	nla_nest_end(msg, qos);
+
+	if (!(qos = nla_nest_start(msg, IFLA_VLAN_EGRESS_QOS)))
+		goto nla_put_failure;
+	list_for_each_entry(dep, &cfg->egress_qos_mapping_list, list) {
+		nl_qos_map.from = dep->from;
+		nl_qos_map.to = dep->to;
+		nla_put(msg, IFLA_VLAN_QOS_MAPPING, sizeof(nl_qos_map), &nl_qos_map);
+	}
+	nla_nest_end(msg, qos);
+
 	nla_nest_end(msg, data);
 	nla_nest_end(msg, linkinfo);
 
diff --git a/system.h b/system.h
index b377416..e677c95 100644
--- a/system.h
+++ b/system.h
@@ -158,9 +158,17 @@ enum vlan_proto {
 	VLAN_PROTO_8021AD = 0x88A8
 };
 
+struct vlan_qos_mapping {
+	struct list_head list; /* entry in vlandev_config->{e,in}ress_qos_mapping_list */
+	uint32_t from;
+	uint32_t to;
+};
+
 struct vlandev_config {
 	enum vlan_proto proto;
 	uint16_t vid;
+	struct list_head ingress_qos_mapping_list; /* list of struct vlan_qos_mapping  */
+	struct list_head egress_qos_mapping_list;  /* list of struct vlan_qos_mapping  */
 };
 
 static inline int system_get_addr_family(unsigned int flags)
diff --git a/vlandev.c b/vlandev.c
index ceaeb3e..3d4d0e4 100644
--- a/vlandev.c
+++ b/vlandev.c
@@ -13,6 +13,7 @@
  */
 
 #include <string.h>
+#include <inttypes.h>
 
 #include "netifd.h"
 #include "device.h"
@@ -22,12 +23,16 @@
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
@@ -122,13 +127,41 @@ static void
 vlandev_free(struct device *dev)
 {
 	struct vlandev_device *mvdev;
+	struct vlan_qos_mapping *dep, *tmp;
 
 	mvdev = container_of(dev, struct vlandev_device, dev);
 	device_remove_user(&mvdev->parent);
 	free(mvdev->config_data);
+	list_for_each_entry_safe(dep, tmp, &mvdev->config.ingress_qos_mapping_list, list) {
+		list_del(&dep->list);
+		free(dep);
+	}
+	list_for_each_entry_safe(dep, tmp, &mvdev->config.egress_qos_mapping_list, list) {
+		list_del(&dep->list);
+		free(dep);
+	}
 	free(mvdev);
 }
 
+static void vlandev_qos_mapping_dump(struct blob_buf *b, const char *name, const struct list_head *qos_mapping_li)
+{
+	const struct vlan_qos_mapping *dep;
+	void *a, *t;
+
+	a = blobmsg_open_array(b, name);
+
+	list_for_each_entry(dep, qos_mapping_li, list) {
+		t = blobmsg_open_table(b, NULL);
+
+		blobmsg_add_u32(b, "from", dep->from);
+		blobmsg_add_u32(b, "to", dep->to);
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
@@ -137,6 +170,8 @@ vlandev_dump_info(struct device *dev, struct blob_buf *b)
 	mvdev = container_of(dev, struct vlandev_device, dev);
 	blobmsg_add_string(b, "parent", mvdev->parent.dev->ifname);
 	system_if_dump_info(dev, b);
+	vlandev_qos_mapping_dump(b, "ingress_qos_mapping", &mvdev->config.ingress_qos_mapping_list);
+	vlandev_qos_mapping_dump(b, "egress_qos_mapping", &mvdev->config.egress_qos_mapping_list);
 }
 
 static void
@@ -152,18 +187,60 @@ vlandev_config_init(struct device *dev)
 	device_add_user(&mvdev->parent, basedev);
 }
 
+static void vlandev_qos_mapping_list_apply(struct list_head *qos_mapping_li, struct blob_attr *list)
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
+		INIT_LIST_HEAD(&qos_mapping->list);
+		rc = sscanf(blobmsg_data(cur), "%" PRIu32 ":%" PRIu32, &qos_mapping->from, &qos_mapping->to);
+		if (rc != 2) {
+			free(qos_mapping);
+			continue;
+		}
+		list_add_tail(&qos_mapping->list, qos_mapping_li);
+	}
+}
+
 static void
 vlandev_apply_settings(struct vlandev_device *mvdev, struct blob_attr **tb)
 {
 	struct vlandev_config *cfg = &mvdev->config;
+	struct vlan_qos_mapping *dep, *tmp;
 	struct blob_attr *cur;
 
 	cfg->proto = (mvdev->dev.type == &vlan8021q_device_type) ?
 		VLAN_PROTO_8021Q : VLAN_PROTO_8021AD;
 	cfg->vid = 1;
 
+	list_for_each_entry_safe(dep, tmp, &cfg->ingress_qos_mapping_list, list) {
+		list_del(&dep->list);
+		free(dep);
+	}
+	list_for_each_entry_safe(dep, tmp, &cfg->egress_qos_mapping_list, list) {
+		list_del(&dep->list);
+		free(dep);
+	}
+
 	if ((cur = tb[VLANDEV_ATTR_VID]))
 		cfg->vid = (uint16_t) blobmsg_get_u32(cur);
+
+	if ((cur = tb[VLANDEV_ATTR_INGRESS_QOS_MAPPING]))
+		vlandev_qos_mapping_list_apply(&cfg->ingress_qos_mapping_list, cur);
+
+	if ((cur = tb[VLANDEV_ATTR_EGRESS_QOS_MAPPING]))
+		vlandev_qos_mapping_list_apply(&cfg->egress_qos_mapping_list, cur);
 }
 
 static enum dev_change_type
@@ -221,6 +298,9 @@ vlandev_create(const char *name, struct device_type *devtype,
 	if (!mvdev)
 		return NULL;
 
+	INIT_LIST_HEAD(&mvdev->config.ingress_qos_mapping_list);
+	INIT_LIST_HEAD(&mvdev->config.egress_qos_mapping_list);
+
 	dev = &mvdev->dev;
 
 	if (device_init(dev, devtype, name) < 0) {
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
