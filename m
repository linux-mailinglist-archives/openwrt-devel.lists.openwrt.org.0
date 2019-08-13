Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A478ACF5
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 05:07:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/C40y1MSF4puA5FKg8Rnoc1m6c5aFhAfkh9d+f9sLuE=; b=oDtobzgJ0py8Hh
	2afxsu5+q1KdaywlNGk8uzXL13HIW7IJFmrRM/j5bJaUncd048JKlL07zG8mai8jYMEb7qwf8IF6X
	FOTJNsy+MswV3cSSLPUbnMEDbpNBeC20IhMRHiqWDNATB8aomiR/i9azqHy90LcSidsqjC1YS+wmM
	aNVE6saRZFzGxLyrQ2jUf6p5BU0X1e9x40emtyHOvpT5V4iUA3Fbn9XCy81XC5nR+vME+YQMSlrJC
	A4P2rsNj3XFf54/b7qTfo7G55cxoCHEv4mh8ruRidUJLDWapAxYOzoQj2I5PsXMOuA0RpAP6hoWBG
	wVmILNdkjASdlNHqjZfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxN9Q-0006Un-1d; Tue, 13 Aug 2019 03:07:08 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxN9H-0006UO-1g
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 03:07:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id n4so8747905pgv.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 12 Aug 2019 20:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NfXxGVWO0fzY7IS9E8pPTqY388UXs4A+pc0K+OIV7+Y=;
 b=nER2T1zooJI9fRloyBdg+64EcJHOv+Mh9QGv5nHLYHIdRp6d0reQv51PvKcVjQYOKn
 PllOUo6wbKpyAPYtcxwp9rRC3vZUYx/K+qKwrk3ypvWdxxCjYv2YaFFhe7jg+uTMZXCd
 oJgx0VMrqXJp6n24cHZLJK3werWBZ8Z5MQWk5+xPUA+YP8UBrSxk88Hg9Vl+IVECRTB0
 TPCp92gSzEIkxfAXbZ0cZqfOt8TJI1clqTIVAzzRjc5pTn+T+5BJ4Zmm7NJyMepUG+r5
 ekEmsLAcxTveV8jL8VwNjmtHvW1cxVIkTMMw2Q6QRUNc8IYUZLJEnd1aCGe3bVtv4Bac
 emjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NfXxGVWO0fzY7IS9E8pPTqY388UXs4A+pc0K+OIV7+Y=;
 b=CxK+UIbdzhEvlKvcLiKKj3zqqAlgZ4xdxEJK6xVBs1F28X3zDljDyLyGhLD+E9WZZ0
 HrFtchu16KorPtXBgsJYf5E8PcoIWxyawVDxnwk6C02H2LE1OVzIn4uL3pSwxNqK5n7X
 2NaEkYzInMJoRVnXZS46ISrD6/VD1Od2A3GkdHubiTJOCEL27UGdyTJxH9CVgekYl5Ie
 zcdoiis4GUpuYDzz3lpBQ2XdChaMxxHkIG9SXk21woiZ9ADzOTGjKsamhJNpv8VVmepI
 y5iWlYyH6Xt7+S71OF72IHs7SH79HRUEZ3xQfr9X0r0ty6erVOHNRFUusx0hftdsoOrM
 xeug==
X-Gm-Message-State: APjAAAXCjORAEZpZ0BrIOZjK8k6Tua+6RtXCmdt0E2vla36/LOJOie2S
 6G2S8PND2D8WfD86vHly4yUBsmAy
X-Google-Smtp-Source: APXvYqz0Zp4bXCuKXbfu4tlT2PRWz+3vkmLNxKut0MMcQlkUon6m4oVbChXEOYJtgGrhzdtPP6aQ2A==
X-Received: by 2002:a63:b74e:: with SMTP id w14mr33208990pgt.264.1565665617403; 
 Mon, 12 Aug 2019 20:06:57 -0700 (PDT)
Received: from echampetier.lab1.anevia.com ([73.93.152.143])
 by smtp.gmail.com with ESMTPSA id l17sm32766181pgj.44.2019.08.12.20.06.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 20:06:56 -0700 (PDT)
From: Etienne Champetier <champetier.etienne@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 12 Aug 2019 20:06:13 -0700
Message-Id: <20190813030613.8798-1-champetier.etienne@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_200659_120365_069044B7 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] kernel: add disable_eap_hack sysfs attribute
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
 Felix Fietkau <nbd@nbd.name>
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
index 0dbb8ee3c0..fbe9ab0876 100644
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
++	br->disable_eap_hack = !!val;
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
index 3de4048074..f77a1965ca 100644
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
++	br->disable_eap_hack = !!val;
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
index ba87420b32..819314f74a 100644
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
++	br->disable_eap_hack = !!val;
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
