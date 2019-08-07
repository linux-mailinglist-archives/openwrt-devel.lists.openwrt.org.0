Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4456D8466B
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 09:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W4M6v+Kwl7Tu24Q9qBVSZg+V0N7cUeesaX6WeX9+Fko=; b=QFYdo8EYiwAfKS
	1OpNJVXJPbaJuQqtRMIPv9IATI6qZkcx3/gTLq1cBju2UFpQVctcnl2f5xMRylKZo6/rOLRU+n1da
	Ov7/wwvgbSUndwonlzYLxSa3fO7fiUf5lB5uxjoQ688pId7adb5bWYYVUx80YFwlnU5FcvUF183p1
	YpsJLRJzefrxb1NmzBbsqySlir6OySR4gu25nfcy7ufGArtL9xY115RNUMVINJ6tTInNjU1XNTvBX
	0blnWkkuiCNLEAhz/UYtsuE9VaqRWCP3i2co+IeT358P2T+J73gQhIU3FvltER+2ODatAlisvkcvv
	4u3/43vX8X4YYnj8Dl0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGmT-00089v-8e; Wed, 07 Aug 2019 07:54:45 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGl9-0007Ro-0n
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 07:53:25 +0000
Received: by mail-pl1-x635.google.com with SMTP id 4so32514646pld.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 00:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CR099KoIVSFntlUEzo+lGxk+W7ST8OnRmiWSCMXMoxs=;
 b=mgLJQssTy+srPLaLCj/rdzPyIJ5yTpYP8HwenrafQwa6vksmma2h0HT2ZSYTfsxVX3
 5mkxDJW+NdKeMbEIwSKaQK+dN3PBVrZEbKFO4KhwaapunbtZlLxjVCxU3/K0wxTZ4qit
 SWB7k/E7JzYvKw5JpGZWE3uli0+TwNhSPdQPFq1fvP9+QxDq2bFTBOM2xLlRG0IWRc8k
 J2TnYAjr9Rizsf0PZEU0ahtvmtxXZbkwAyd32LUhsUgk34Pxbkl8XCdQZwTElHVlhSRc
 azN+eRBhkouJT4JClAdWfzEiVpZUc1iYb67/Rv1O/eYPk5r4QF9eVLcgGLxKlEQVB8kq
 KVVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CR099KoIVSFntlUEzo+lGxk+W7ST8OnRmiWSCMXMoxs=;
 b=Fg27z8hVHouC236gTh7t3vv/0h/6Do2F/pLmoCtZlqM0V7WwkOMwk1v9s6VVIf6F8E
 fNFYHm3FnI4MYJUaXdvLrRn5zkTbKXHo1a0YNBNczLBWid+HkMkHvkWLdgtFOJFrhb06
 xtzGeC3EZCR5x+0GMpFzASlH/LWs5Sq+OCykXyVlPq+UarAwayOBVVxTXjPzWwyVgU2f
 zu9qyzPXXErhzaowymVz1eYT50x66RvD4AnPCDzRE6+JwUlrZKbAPNrDPXHAPrTdJIaN
 VmmzkcgRPnKt+1gNkmDdozJggQeph3toxKYAPgptaJWcVxwkAt+WZpxk75x4963CiszJ
 /orQ==
X-Gm-Message-State: APjAAAV1wBNQYXAVRhiCtyVRaK2ziJ+2XUCcBHadJZMVMdguah5YwPX6
 z8ogtJXEzSGkkH78ydDDaR8SJN7R
X-Google-Smtp-Source: APXvYqyDgWCHXiln8hf01U7eCAFLL4EIfYI617q05EQLyPAhqDqAIduFz0gDyW0isdVtK0akxtPswQ==
X-Received: by 2002:a63:460c:: with SMTP id t12mr6540536pga.69.1565164400562; 
 Wed, 07 Aug 2019 00:53:20 -0700 (PDT)
Received: from echampetier.lab1.anevia.com
 ([2601:646:8200:acf4:805e:e3db:4a5a:9ad7])
 by smtp.gmail.com with ESMTPSA id l25sm109548744pff.143.2019.08.07.00.53.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 00:53:19 -0700 (PDT)
From: Etienne Champetier <champetier.etienne@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  7 Aug 2019 00:52:52 -0700
Message-Id: <20190807075252.863-1-champetier.etienne@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_005323_201768_E6B72C6F 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:635 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] [RFCv2] kernel: add disable_eap_hack sysfs
 attribute
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

We are not sure if 640-bridge-only-accept-EAP-locally.patch is still needed
as a first step, add disable_eap_hack sysfs config to allow to disable it

Signed-off-by: Etienne Champetier <champetier.etienne@gmail.com>
---
 .../640-bridge-only-accept-EAP-locally.patch  | 59 +++++++++++++++++--
 .../640-bridge-only-accept-EAP-locally.patch  | 59 +++++++++++++++++--
 .../640-bridge-only-accept-EAP-locally.patch  | 59 +++++++++++++++++--
 3 files changed, 165 insertions(+), 12 deletions(-)

diff --git a/target/linux/generic/hack-4.14/640-bridge-only-accept-EAP-locally.patch b/target/linux/generic/hack-4.14/640-bridge-only-accept-EAP-locally.patch
index 0dbb8ee3c0..7b026642a6 100644
--- a/target/linux/generic/hack-4.14/640-bridge-only-accept-EAP-locally.patch
+++ b/target/linux/generic/hack-4.14/640-bridge-only-accept-EAP-locally.patch
@@ -1,4 +1,3 @@
-From c6905cfdeb31a5c049db3da434b10fa0d3e83569 Mon Sep 17 00:00:00 2001
 From: Felix Fietkau <nbd@nbd.name>
 Date: Fri, 7 Jul 2017 17:18:54 +0200
 Subject: bridge: only accept EAP locally
@@ -7,9 +6,9 @@ When bridging, do not forward EAP frames to other ports, only deliver
 them locally, regardless of the state.
 
 Signed-off-by: Felix Fietkau <nbd@nbd.name>
+[add disable_eap_hack sysfs attribute]
+Signed-off-by: Etienne Champetier <champetier.etienne@gmail.com>
 ---
- net/bridge/br_input.c | 7 +++++--
- 1 file changed, 5 insertions(+), 2 deletions(-)
 
 --- a/net/bridge/br_input.c
 +++ b/net/bridge/br_input.c
@@ -19,7 +18,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
 +	BR_INPUT_SKB_CB(skb)->brdev = br->dev;
 +
-+	if (skb->protocol == htons(ETH_P_PAE))
++	if (skb->protocol == htons(ETH_P_PAE) && !br->disable_eap_hack)
 +		return br_pass_frame_up(skb);
 +
  	if (p->state == BR_STATE_LEARNING)
@@ -29,3 +28,55 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	BR_INPUT_SKB_CB(skb)->src_port_isolated = !!(p->flags & BR_ISOLATED);
  
  	if (IS_ENABLED(CONFIG_INET) && skb->protocol == htons(ETH_P_ARP))
+--- a/net/bridge/br_private.h
++++ b/net/bridge/br_private.h
+@@ -320,6 +320,8 @@ struct net_bridge {
+ 	u16				group_fwd_mask;
+ 	u16				group_fwd_mask_required;
+ 
++	bool				disable_eap_hack;
++
+ 	/* STP */
+ 	bridge_id			designated_root;
+ 	bridge_id			bridge_id;
+--- a/net/bridge/br_sysfs_br.c
++++ b/net/bridge/br_sysfs_br.c
+@@ -170,6 +170,30 @@ static ssize_t group_fwd_mask_store(stru
+ }
+ static DEVICE_ATTR_RW(group_fwd_mask);
+ 
++static ssize_t disable_eap_hack_show(struct device *d,
++				   struct device_attribute *attr,
++				   char *buf)
++{
++	struct net_bridge *br = to_bridge(d);
++	return sprintf(buf, "%u\n", br->disable_eap_hack);
++}
++
++static int set_disable_eap_hack(struct net_bridge *br, unsigned long val)
++{
++	br->disable_eap_hack = val ? true : false;
++
++	return 0;
++}
++
++static ssize_t disable_eap_hack_store(struct device *d,
++				    struct device_attribute *attr,
++				    const char *buf,
++				    size_t len)
++{
++	return store_bridge_parm(d, buf, len, set_disable_eap_hack);
++}
++static DEVICE_ATTR_RW(disable_eap_hack);
++
+ static ssize_t priority_show(struct device *d, struct device_attribute *attr,
+ 			     char *buf)
+ {
+@@ -817,6 +841,7 @@ static struct attribute *bridge_attrs[]
+ 	&dev_attr_ageing_time.attr,
+ 	&dev_attr_stp_state.attr,
+ 	&dev_attr_group_fwd_mask.attr,
++	&dev_attr_disable_eap_hack.attr,
+ 	&dev_attr_priority.attr,
+ 	&dev_attr_bridge_id.attr,
+ 	&dev_attr_root_id.attr,
diff --git a/target/linux/generic/hack-4.19/640-bridge-only-accept-EAP-locally.patch b/target/linux/generic/hack-4.19/640-bridge-only-accept-EAP-locally.patch
index 3de4048074..dfe64cb5af 100644
--- a/target/linux/generic/hack-4.19/640-bridge-only-accept-EAP-locally.patch
+++ b/target/linux/generic/hack-4.19/640-bridge-only-accept-EAP-locally.patch
@@ -1,4 +1,3 @@
-From c6905cfdeb31a5c049db3da434b10fa0d3e83569 Mon Sep 17 00:00:00 2001
 From: Felix Fietkau <nbd@nbd.name>
 Date: Fri, 7 Jul 2017 17:18:54 +0200
 Subject: bridge: only accept EAP locally
@@ -7,9 +6,9 @@ When bridging, do not forward EAP frames to other ports, only deliver
 them locally, regardless of the state.
 
 Signed-off-by: Felix Fietkau <nbd@nbd.name>
+[add disable_eap_hack sysfs attribute]
+Signed-off-by: Etienne Champetier <champetier.etienne@gmail.com>
 ---
- net/bridge/br_input.c | 7 +++++--
- 1 file changed, 5 insertions(+), 2 deletions(-)
 
 --- a/net/bridge/br_input.c
 +++ b/net/bridge/br_input.c
@@ -19,7 +18,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
 +	BR_INPUT_SKB_CB(skb)->brdev = br->dev;
 +
-+	if (skb->protocol == htons(ETH_P_PAE))
++	if (skb->protocol == htons(ETH_P_PAE) && !br->disable_eap_hack)
 +		return br_pass_frame_up(skb);
 +
  	if (p->state == BR_STATE_LEARNING)
@@ -29,3 +28,55 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	BR_INPUT_SKB_CB(skb)->src_port_isolated = !!(p->flags & BR_ISOLATED);
  
  	if (IS_ENABLED(CONFIG_INET) &&
+--- a/net/bridge/br_private.h
++++ b/net/bridge/br_private.h
+@@ -337,6 +337,8 @@ struct net_bridge {
+ 	u16				group_fwd_mask;
+ 	u16				group_fwd_mask_required;
+ 
++	bool				disable_eap_hack;
++
+ 	/* STP */
+ 	bridge_id			designated_root;
+ 	bridge_id			bridge_id;
+--- a/net/bridge/br_sysfs_br.c
++++ b/net/bridge/br_sysfs_br.c
+@@ -170,6 +170,30 @@ static ssize_t group_fwd_mask_store(stru
+ }
+ static DEVICE_ATTR_RW(group_fwd_mask);
+ 
++static ssize_t disable_eap_hack_show(struct device *d,
++				   struct device_attribute *attr,
++				   char *buf)
++{
++	struct net_bridge *br = to_bridge(d);
++	return sprintf(buf, "%u\n", br->disable_eap_hack);
++}
++
++static int set_disable_eap_hack(struct net_bridge *br, unsigned long val)
++{
++	br->disable_eap_hack = val ? true : false;
++
++	return 0;
++}
++
++static ssize_t disable_eap_hack_store(struct device *d,
++				    struct device_attribute *attr,
++				    const char *buf,
++				    size_t len)
++{
++	return store_bridge_parm(d, buf, len, set_disable_eap_hack);
++}
++static DEVICE_ATTR_RW(disable_eap_hack);
++
+ static ssize_t priority_show(struct device *d, struct device_attribute *attr,
+ 			     char *buf)
+ {
+@@ -810,6 +834,7 @@ static struct attribute *bridge_attrs[]
+ 	&dev_attr_ageing_time.attr,
+ 	&dev_attr_stp_state.attr,
+ 	&dev_attr_group_fwd_mask.attr,
++	&dev_attr_disable_eap_hack.attr,
+ 	&dev_attr_priority.attr,
+ 	&dev_attr_bridge_id.attr,
+ 	&dev_attr_root_id.attr,
diff --git a/target/linux/generic/hack-4.9/640-bridge-only-accept-EAP-locally.patch b/target/linux/generic/hack-4.9/640-bridge-only-accept-EAP-locally.patch
index ba87420b32..04e139f0e4 100644
--- a/target/linux/generic/hack-4.9/640-bridge-only-accept-EAP-locally.patch
+++ b/target/linux/generic/hack-4.9/640-bridge-only-accept-EAP-locally.patch
@@ -1,4 +1,3 @@
-From c6905cfdeb31a5c049db3da434b10fa0d3e83569 Mon Sep 17 00:00:00 2001
 From: Felix Fietkau <nbd@nbd.name>
 Date: Fri, 7 Jul 2017 17:18:54 +0200
 Subject: bridge: only accept EAP locally
@@ -7,9 +6,9 @@ When bridging, do not forward EAP frames to other ports, only deliver
 them locally, regardless of the state.
 
 Signed-off-by: Felix Fietkau <nbd@nbd.name>
+[add disable_eap_hack sysfs attribute]
+Signed-off-by: Etienne Champetier <champetier.etienne@gmail.com>
 ---
- net/bridge/br_input.c | 7 +++++--
- 1 file changed, 5 insertions(+), 2 deletions(-)
 
 --- a/net/bridge/br_input.c
 +++ b/net/bridge/br_input.c
@@ -19,7 +18,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
 +	BR_INPUT_SKB_CB(skb)->brdev = br->dev;
 +
-+	if (skb->protocol == htons(ETH_P_PAE))
++	if (skb->protocol == htons(ETH_P_PAE) && !br->disable_eap_hack)
 +		return br_pass_frame_up(skb);
 +
  	if (p->state == BR_STATE_LEARNING)
@@ -30,3 +29,55 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	if (IS_ENABLED(CONFIG_INET) && skb->protocol == htons(ETH_P_ARP))
  		br_do_proxy_arp(skb, br, vid, p);
  
+--- a/net/bridge/br_private.h
++++ b/net/bridge/br_private.h
+@@ -295,6 +295,8 @@ struct net_bridge
+ 	u16				group_fwd_mask;
+ 	u16				group_fwd_mask_required;
+ 
++	bool				disable_eap_hack;
++
+ 	/* STP */
+ 	bridge_id			designated_root;
+ 	bridge_id			bridge_id;
+--- a/net/bridge/br_sysfs_br.c
++++ b/net/bridge/br_sysfs_br.c
+@@ -169,6 +169,30 @@ static ssize_t group_fwd_mask_store(stru
+ }
+ static DEVICE_ATTR_RW(group_fwd_mask);
+ 
++static ssize_t disable_eap_hack_show(struct device *d,
++				   struct device_attribute *attr,
++				   char *buf)
++{
++	struct net_bridge *br = to_bridge(d);
++	return sprintf(buf, "%u\n", br->disable_eap_hack);
++}
++
++static int set_disable_eap_hack(struct net_bridge *br, unsigned long val)
++{
++	br->disable_eap_hack = val ? true : false;
++
++	return 0;
++}
++
++static ssize_t disable_eap_hack_store(struct device *d,
++				    struct device_attribute *attr,
++				    const char *buf,
++				    size_t len)
++{
++	return store_bridge_parm(d, buf, len, set_disable_eap_hack);
++}
++static DEVICE_ATTR_RW(disable_eap_hack);
++
+ static ssize_t priority_show(struct device *d, struct device_attribute *attr,
+ 			     char *buf)
+ {
+@@ -780,6 +804,7 @@ static struct attribute *bridge_attrs[]
+ 	&dev_attr_ageing_time.attr,
+ 	&dev_attr_stp_state.attr,
+ 	&dev_attr_group_fwd_mask.attr,
++	&dev_attr_disable_eap_hack.attr,
+ 	&dev_attr_priority.attr,
+ 	&dev_attr_bridge_id.attr,
+ 	&dev_attr_root_id.attr,
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
