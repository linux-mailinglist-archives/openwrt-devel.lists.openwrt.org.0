Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2913F1BB7E1
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 09:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=drpapxyOp/TRm2rIHvjQcCZ11nL0DgDUc4a0ZWJsaPE=; b=tEkYgcPZYLizjP
	2HSk1sARcp90IXZ17yXDSCcAHEvOhEiEG6BfxSZ3S+kdeqbqkaOHQwjcmrmthzgD2uovA7pKRBIT7
	IPHxfVqmF8n3gjTXsQqfWEXapAPeVb6EXyu/89BCSHlJHn5TWT3VOoEbVVlU3RUT4sWx6LOBQjlrb
	r7ZrVIRqrB5+PzoiRxoMr8nHfwSx+oYK3E3MY1uhRdc4Ppz6LGMXsRX4zzBD6egrrL5APYBOFlhcQ
	h5UUm/9dJcLRCvy0po1SXhGl0XJ869GU+28Ftty+62oPYxth00G7kCB0KCCQmwWWQtSranT6dm3sI
	5azZ9V6PM0sv/QscVlkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKs2-0007YD-Oi; Tue, 28 Apr 2020 07:41:34 +0000
Received: from espeweb.net ([146.185.173.227] helo=mail.espeweb.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKrf-0007PQ-Kh
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 07:41:13 +0000
Received: from static.masmovil.com (unknown [93.176.188.130])
 by mail.espeweb.net (Postfix) with ESMTPSA id 3F1AF1010D1;
 Tue, 28 Apr 2020 09:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=espeweb.net;
 s=myselector; t=1588059662;
 bh=hhgu5LVdk7YT4A14g/x3eMMpt/WjztBlGqYIQr9oNmk=;
 h=From:To:Cc:Subject:Date;
 b=XSyqzcA5F85s3xwMP7xfXiSN5rMtYskbO4HemGBBgl6a56YFql8ZT/PDEBydPNQp2
 LwcWQCcnckMrFnPj2fuFf+XyoHpys/RUC8zPgOz1t/R3aomSBRzCezD/TYNCMWw4bw
 /bkaKoV4aZT1FqTTP77MiAyFm0dcNI7tHrHdqBhQ=
From: Pau Espin Pedrol <pespin@espeweb.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 28 Apr 2020 09:40:54 +0200
Message-Id: <20200428074054.2091-1-pespin@espeweb.net>
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_004112_007012_19EBFBDB 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Pedro <pedrowrt@cas.cat>, Pau Espin Pedrol <pespin.shar@gmail.com>
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

Size of mapping arrays (ingress=8, egress=16) taken from linux kernel
"struct vlan_dev_priv".

Signed-off-by: Pau Espin Pedrol <pespin.shar@gmail.com>
Tested-by: Pedro <pedrowrt@cas.cat>
---
 system-linux.c | 19 ++++++++++++++++-
 system.h       |  5 +++++
 vlandev.c      | 57 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 80 insertions(+), 1 deletion(-)

diff --git a/system-linux.c b/system-linux.c
index 62636c4..fa236ad 100644
--- a/system-linux.c
+++ b/system-linux.c
@@ -1401,9 +1401,10 @@ int system_vlan_del(struct device *dev)
 int system_vlandev_add(struct device *vlandev, struct device *dev, struct vlandev_config *cfg)
 {
 	struct nl_msg *msg;
-	struct nlattr *linkinfo, *data;
+	struct nlattr *linkinfo, *data, *qos;
 	struct ifinfomsg iim = { .ifi_family = AF_UNSPEC };
 	int rv;
+	int i;
 
 	msg = nlmsg_alloc_simple(RTM_NEWLINK, NLM_F_REQUEST | NLM_F_CREATE | NLM_F_EXCL);
 
@@ -1431,6 +1432,22 @@ int system_vlandev_add(struct device *vlandev, struct device *dev, struct vlande
 		netifd_log_message(L_WARNING, "%s Your kernel is older than linux 3.10.0, 802.1ad is not supported defaulting to 802.1q", vlandev->type->name);
 #endif
 
+	if (!(qos = nla_nest_start(msg, IFLA_VLAN_INGRESS_QOS)))
+		goto nla_put_failure;
+	for (i = 0; i < cfg->ingress_qos_mappings_len; i++)
+		nla_put(msg, IFLA_VLAN_QOS_MAPPING,
+			sizeof(cfg->ingress_qos_mappings[i]),
+			&cfg->ingress_qos_mappings[i]);
+	nla_nest_end(msg, qos);
+
+	if (!(qos = nla_nest_start(msg, IFLA_VLAN_EGRESS_QOS)))
+		goto nla_put_failure;
+	for (i = 0; i < cfg->egress_qos_mappings_len; i++)
+		nla_put(msg, IFLA_VLAN_QOS_MAPPING,
+			sizeof(cfg->egress_qos_mappings[i]),
+			&cfg->egress_qos_mappings[i]);
+	nla_nest_end(msg, qos);
+
 	nla_nest_end(msg, data);
 	nla_nest_end(msg, linkinfo);
 
diff --git a/system.h b/system.h
index b377416..d8fc0c4 100644
--- a/system.h
+++ b/system.h
@@ -18,6 +18,7 @@
 #include <sys/time.h>
 #include <sys/socket.h>
 #include <arpa/inet.h>
+#include <linux/if_link.h>
 #include "device.h"
 #include "interface-ip.h"
 #include "iprule.h"
@@ -161,6 +162,10 @@ enum vlan_proto {
 struct vlandev_config {
 	enum vlan_proto proto;
 	uint16_t vid;
+	struct ifla_vlan_qos_mapping ingress_qos_mappings[8];
+	size_t ingress_qos_mappings_len;
+	struct ifla_vlan_qos_mapping egress_qos_mappings[16];
+	size_t egress_qos_mappings_len;
 };
 
 static inline int system_get_addr_family(unsigned int flags)
diff --git a/vlandev.c b/vlandev.c
index ceaeb3e..2cc9a19 100644
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
@@ -152,6 +157,42 @@ vlandev_config_init(struct device *dev)
 	device_add_user(&mvdev->parent, basedev);
 }
 
+static size_t vlandev_qos_mappings_list_apply(struct ifla_vlan_qos_mapping *qos_mapping, size_t len, struct blob_attr *list)
+{
+	struct blob_attr *cur;
+	int rem, rc;
+	int i = 0;
+
+	blobmsg_for_each_attr(cur, list, rem) {
+		if (i == len) {
+			netifd_log_message(L_WARNING, "parsing failed: too many (>%d) qos mappings\n", len);
+			return 0;
+		}
+
+		if (blobmsg_type(cur) != BLOBMSG_TYPE_STRING) {
+			netifd_log_message(L_WARNING, "parsing failed: qos mapping attr type != string\n");
+			return 0;
+		}
+
+		if (!blobmsg_check_attr(cur, false)) {
+			netifd_log_message(L_WARNING, "parsing failed: qos mapping attr blobmsg_check_attr() failed\n");
+			return 0;
+		}
+
+		rc = sscanf(blobmsg_data(cur), "%" PRIu32 ":%" PRIu32, &qos_mapping[i].from, &qos_mapping[i].to);
+		if (rc != 2) {
+			netifd_log_message(L_WARNING, "parsing failed: qos mapping not in form <from_nr>:<to_nr>\n");
+			return 0;
+		}
+
+		i++;
+	}
+
+	return i;
+}
+
+
+
 static void
 vlandev_apply_settings(struct vlandev_device *mvdev, struct blob_attr **tb)
 {
@@ -161,9 +202,25 @@ vlandev_apply_settings(struct vlandev_device *mvdev, struct blob_attr **tb)
 	cfg->proto = (mvdev->dev.type == &vlan8021q_device_type) ?
 		VLAN_PROTO_8021Q : VLAN_PROTO_8021AD;
 	cfg->vid = 1;
+	cfg->ingress_qos_mappings_len = 0;
+	cfg->egress_qos_mappings_len = 0;
 
 	if ((cur = tb[VLANDEV_ATTR_VID]))
 		cfg->vid = (uint16_t) blobmsg_get_u32(cur);
+
+	if ((cur = tb[VLANDEV_ATTR_INGRESS_QOS_MAPPING])) {
+		cfg->ingress_qos_mappings_len =
+			vlandev_qos_mappings_list_apply(cfg->ingress_qos_mappings,
+							ARRAY_SIZE(cfg->ingress_qos_mappings),
+							cur);
+	}
+
+	if ((cur = tb[VLANDEV_ATTR_EGRESS_QOS_MAPPING])) {
+		cfg->egress_qos_mappings_len =
+			vlandev_qos_mappings_list_apply(cfg->egress_qos_mappings,
+							ARRAY_SIZE(cfg->egress_qos_mappings),
+							cur);
+	}
 }
 
 static enum dev_change_type
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
