Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E193038134
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Jun 2019 00:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=015iatPJhxIjmG2ci3PVJW5e4H0D+/p6aQRk4cRfauY=; b=bfbhTzA+QOaooa
	yaP9uC/rNhQ8OV75sT/pyTuwlfVCGwnn6sTTOa/2s50zcYWIGVLFfUXl9Dh5TNVYrxVywW2yWP18I
	vJwuZUGdjf1B5wYvd4N+vqCNttD/nFZXik09H646N+gAgqzKnFAW1IUyunZ2uYQRmh+RIIECFopub
	IrLNf6mAwzjWQpZ0aQl4ujC4GzXU31se4WMNaEjSdkqe+k/Ei/sik+Ixi1DLe2Lj2HdtSBd3dzGW6
	nCBesstjfwB2IV9nfXxfHWQnfs95xngi+XYEf72YsTJjcZkXMBK+D2BD3BLUSmWWW95bEJvfTwyYV
	V0065HMPheDkjo/pKL7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1AY-00010N-4O; Thu, 06 Jun 2019 22:47:38 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ18K-0000BO-GM
 for openwrt-devel@lists.openwrt.org; Thu, 06 Jun 2019 22:45:28 +0000
Received: from [192.168.180.1] (port=38644 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1hZ18F-0005jW-0Y; Fri, 07 Jun 2019 00:45:15 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id 160262802C9;
 Fri,  7 Jun 2019 00:45:15 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  7 Jun 2019 00:45:10 +0200
Message-Id: <20190606224510.22083-4-avalentin@marcant.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190606224510.22083-1-avalentin@marcant.net>
References: <20190606224510.22083-1-avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_154521_046378_839BB699 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 3/3] netifd: add xfrm tunnel interface
 support
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
Cc: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds support for xfrm interfaces. These interfaces can be used since
linux 4.19 for IPsec traffic, like VTI interface.
XFRM interfaces are less complicated compared to VTI because they need no
tunnel endpoints.

---
 system-linux.c | 61 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 system.c       |  9 +++++++++
 system.h       |  6 ++++++
 3 files changed, 76 insertions(+)

diff --git a/system-linux.c b/system-linux.c
index 2f5bbe1..c63d8d8 100644
--- a/system-linux.c
+++ b/system-linux.c
@@ -2877,6 +2877,63 @@ failure:
 }
 #endif
 
+#ifdef IFLA_XFRM_MAX
+static int system_add_xfrm_tunnel(const char *name, const char *kind,
+				 const unsigned int link, struct blob_attr **tb)
+{
+	struct nl_msg *nlm;
+	struct ifinfomsg ifi = { .ifi_family = AF_UNSPEC, };
+	struct blob_attr *cur;
+	int ret = 0;
+
+	nlm = nlmsg_alloc_simple(RTM_NEWLINK, NLM_F_REQUEST | NLM_F_ACK | NLM_F_CREATE | NLM_F_EXCL);
+	if (!nlm)
+		return -1;
+
+	nlmsg_append(nlm, &ifi, sizeof(ifi), 0);
+	nla_put_string(nlm, IFLA_IFNAME, name);
+
+	struct nlattr *linkinfo = nla_nest_start(nlm, IFLA_LINKINFO);
+	if (!linkinfo) {
+		ret = -ENOMEM;
+		goto failure;
+	}
+
+	nla_put_string(nlm, IFLA_INFO_KIND, kind);
+	struct nlattr *infodata = nla_nest_start(nlm, IFLA_INFO_DATA);
+	if (!infodata) {
+		ret = -ENOMEM;
+		goto failure;
+	}
+
+	if (link)
+		nla_put_u32(nlm, IFLA_XFRM_LINK, link);
+
+	if ((cur = tb[TUNNEL_ATTR_DATA])) {
+		struct blob_attr *tb_data[__XFRM_DATA_ATTR_MAX];
+		uint32_t if_id = 0;
+
+		blobmsg_parse(xfrm_data_attr_list.params, __XFRM_DATA_ATTR_MAX, tb_data,
+			blobmsg_data(cur), blobmsg_len(cur));
+
+		if ((cur = tb_data[XFRM_DATA_IF_ID])) {
+			if ((if_id = blobmsg_get_u32(cur)))
+				nla_put_u32(nlm, IFLA_XFRM_IF_ID, if_id);
+		}
+
+	}
+
+	nla_nest_end(nlm, infodata);
+	nla_nest_end(nlm, linkinfo);
+
+	return system_rtnl_call(nlm);
+
+failure:
+	nlmsg_free(nlm);
+	return ret;
+}
+#endif
+
 #ifdef IFLA_VXLAN_MAX
 static int system_add_vxlan(const char *name, const unsigned int link, struct blob_attr **tb, bool v6)
 {
@@ -3259,6 +3316,10 @@ int system_add_ip_tunnel(const char *name, struct blob_attr *attr)
 	} else if (!strcmp(str, "vtiip6")) {
 		return system_add_vti_tunnel(name, "vti6", link, tb, true);
 #endif
+#ifdef IFLA_XFRM_MAX
+	} else if (!strcmp(str, "xfrm")) {
+		return system_add_xfrm_tunnel(name, "xfrm", link, tb);
+#endif
 #ifdef IFLA_VXLAN_MAX
 	} else if(!strcmp(str, "vxlan")) {
 		return system_add_vxlan(name, link, tb, false);
diff --git a/system.c b/system.c
index dd9ab50..bbdfef7 100644
--- a/system.c
+++ b/system.c
@@ -70,6 +70,15 @@ const struct uci_blob_param_list vti_data_attr_list = {
 	.params = vti_data_attrs,
 };
 
+static const struct blobmsg_policy xfrm_data_attrs[__XFRM_DATA_ATTR_MAX] = {
+	[XFRM_DATA_IF_ID] = { .name = "ifid", .type = BLOBMSG_TYPE_INT32 },
+};
+
+const struct uci_blob_param_list xfrm_data_attr_list = {
+	.n_params = __XFRM_DATA_ATTR_MAX,
+	.params = xfrm_data_attrs,
+};
+
 static const struct blobmsg_policy sixrd_data_attrs[__SIXRD_DATA_ATTR_MAX] = {
 	[SIXRD_DATA_PREFIX] = { .name = "prefix", .type = BLOBMSG_TYPE_STRING },
 	[SIXRD_DATA_RELAY_PREFIX] = { .name = "relay-prefix", .type = BLOBMSG_TYPE_STRING },
diff --git a/system.h b/system.h
index 9fefcae..61c4046 100644
--- a/system.h
+++ b/system.h
@@ -63,6 +63,11 @@ enum vti_data {
 	__VTI_DATA_ATTR_MAX
 };
 
+enum xfrm_data {
+	XFRM_DATA_IF_ID,
+	__XFRM_DATA_ATTR_MAX
+};
+
 enum sixrd_data {
 	SIXRD_DATA_PREFIX,
 	SIXRD_DATA_RELAY_PREFIX,
@@ -86,6 +91,7 @@ enum fmr_data {
 extern const struct uci_blob_param_list vxlan_data_attr_list;
 extern const struct uci_blob_param_list gre_data_attr_list;
 extern const struct uci_blob_param_list vti_data_attr_list;
+extern const struct uci_blob_param_list xfrm_data_attr_list;
 extern const struct uci_blob_param_list sixrd_data_attr_list;
 extern const struct uci_blob_param_list ipip6_data_attr_list;
 extern const struct uci_blob_param_list fmr_data_attr_list;
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
