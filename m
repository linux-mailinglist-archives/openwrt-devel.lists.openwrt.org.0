Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2610FA86DE
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Sep 2019 19:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TC6YBMvBDl7BQgFVfPacEgqUL4z2CHJHrvWz3FvsNyg=; b=H5DgpBF3aN3uQz
	QZl0mjHO/4DRXwq1SMNwbZUimSsjGVh5rT/uUjliqClfcyzUFjELhyMMw63SHH82yPmcLN7fCSlYX
	QRhr5EV6Xn7SHcSqptvXWV3FeK6g55AHqM/PKYMAAjsxVqdLClsXBhZ3hYzS+NOKSTHypXhNFQJtz
	+Qd8pF7jugMsshRvcdeuU6AsqEaZOvVy8U6Tf22Fto79I+cHBp7ZJSCkNkHo+R1CpZB61vLR9bEB1
	shIH02gHOeiKS7Uc2Srq0NlZ8da/5JA++yxyubqucwm5VYm3JbTks6nNKs4ADgmC34IkbRPVTZ0+1
	gFkHHm8fqmwag/St1fug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YtO-00030B-Hw; Wed, 04 Sep 2019 17:16:26 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YtE-0002zW-5f
 for openwrt-devel@lists.openwrt.org; Wed, 04 Sep 2019 17:16:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id y10so3939248pll.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 04 Sep 2019 10:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VCUrKBrU/NhWxaD8LcyvJVmvnJyrbquhBxvFn5sTCQw=;
 b=qQs3z8o4/UBCnX8pF5+fcbpesXOMwkgSmvnyLRBfpMZ+3x6BXXGl0QO8jqUHm8E8yp
 /Ov8bF7O+KwW4F8dKCC/TmJWNcQKpYJCeTRnasiePD32mLRkLmjw8nB/0sdXc7c7QA0l
 iqWhqv1eiEr7Aymi8KBOUKmDROKi3J2cSLxzDDfEr+O0oIZXlV49hEtDSDEj5S46OPYQ
 /tvyBneZQx2IiLMlZ6SGxD+wir7YfUVndWK78a/bmjCjsy6wSYVlI5TI7xzIG82YyNTk
 yupyqKaPSsz4Cgd5b9j4yY2grjBppm6Csr0pup6UBP7bJ+DPG3ZIGi59vFxXrzwTG2k2
 XMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VCUrKBrU/NhWxaD8LcyvJVmvnJyrbquhBxvFn5sTCQw=;
 b=QlefizxuU7rOFkoWRBBZJPzBf8VKimanGNaJzuUTfKdlP9aPFvp8NCgBPhcLI7hXuI
 gqyrsgXp6JGjCqDK3Q0z51P7zTx8z+ChD4f4Ls5SNIxh0jkUeRwZ9Q79MEfHdpiZC06z
 YKEDci9FUZD68EzFkJfnrQ8ALoic3caWUU7wnBY88iNQrHZc5Ome5pwt6Qm+5YGO45+F
 lXb/TP35/TPMRDbNEcIrp0idRfQzek7WmBjtpT+iM5zJijhwZ7VnjFZIuQdJ3FjntLoA
 /q5WFTVBHV04fz+aAVaAYbLtz0TE5jf65lRxP7uvvLr4fo4lFkQpuB4rYNwIPgyUAa6l
 dnHw==
X-Gm-Message-State: APjAAAXzRa4Xj+2hiS+0tUd5DcF2q0kO9lsdB/hAWZdM4hznHKOyiKCr
 2qY4u2Kv7LbXwVredr95QcEn/KkE
X-Google-Smtp-Source: APXvYqyRJqQzjacfH8JNU61P6p119sIUGqkZ5q9YOrT3U4HWiejzIaq/oeiqPcgaAm/E6D4+L/DAhA==
X-Received: by 2002:a17:902:bb85:: with SMTP id
 m5mr7460924pls.336.1567617374657; 
 Wed, 04 Sep 2019 10:16:14 -0700 (PDT)
Received: from echampetier.lab1.anevia.com.com (host1.minervanetworks.com.
 [192.55.128.254])
 by smtp.gmail.com with ESMTPSA id s186sm28030404pfb.126.2019.09.04.10.16.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 10:16:14 -0700 (PDT)
From: Etienne Champetier <champetier.etienne@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  4 Sep 2019 10:15:51 -0700
Message-Id: <20190904171551.32521-1-champetier.etienne@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_101616_215836_6CEB6C3B 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 19.07] kernel: add disable_eap_hack sysfs
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

We are not sure if 640-bridge-only-accept-EAP-locally.patch is still needed
as a first step, add disable_eap_hack sysfs config to allow to disable it

Signed-off-by: Etienne Champetier <champetier.etienne@gmail.com>
(cherry picked from commit 7d542dc8047d276517b296132926e722004065e0)
---
 .../640-bridge-only-accept-EAP-locally.patch  | 59 +++++++++++++++++--
 1 file changed, 55 insertions(+), 4 deletions(-)

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
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
