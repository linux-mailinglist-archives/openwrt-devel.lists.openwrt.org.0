Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629DD199352
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 12:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNkZR8A/P0al0Qz5FcMnZpL+I9/fQOy+j/+rsYUJykk=; b=Rz5e8m+e/Ws6u1
	0P4dM8k3Yk51PGftq/Y3rjNtw2s2y7nA4ArFdS8JvB1GosBfryrfSO+6JxSM44RDZN2PxkQoCf25c
	5YNRZ/neXsT4CoucnCofZHVo9o0HMUVo3n0HsJc2Za86IK33KRQ1bP/T8LT9z5lHZ4VHj+Y/KUsZM
	uHreqitbW9DC/lgCQyVoW4xWUnFLIoNTg9AMp5YRuQcl2EXFn75f9SZ4AgkaRxQF4CUqDwclPLj71
	jQgBSingiFd/LNHXwc8bI6QuikCneeNHwBzJ63olj5ZyT3WuZ98h7iz8VDK9jx0dJKhFgTTp4Myuh
	dpUS/nC6V+qkOLAbsLJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJE0z-00076T-BY; Tue, 31 Mar 2020 10:21:01 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJE0r-00075t-M8
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 10:20:55 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id A7C0067EF7; Tue, 31 Mar 2020 12:20:50 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 70D8E67EF5
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Mar 2020 12:20:50 +0200 (CEST)
Received: (qmail 33266 invoked from network); 31 Mar 2020 12:20:50 +0200
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.36.22)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 31 Mar 2020 12:20:50 +0200
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Mar 2020 12:20:49 +0200
Message-Id: <20200331102049.193157-1-jo@mein.io>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <000001d60740bb90fc032b2f40adrianschmutzler.de>
References: <000001d60740bb90fc032b2f40adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_032053_877620_745F7330 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] generic: drop
 616-net_optimize_xfrm_calls.patch
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The conditional check introduced by this patch may trigger a NULL pointer
dereference in case the result of dev_net() is NULL.

Since the purpose of this patch is neither sufficiently explained and since
this patch apparently has never been submitted upstream despite it being in
the pending-* patch directory, I propose to drop it without replacement.

If the performance implications of dropping this patch are found to be
significiant, it should be reintroduced with proper description and
benchmark results.

Ref: https://bugs.openwrt.org/index.php?do=details&task_id=2943
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 .../616-net_optimize_xfrm_calls.patch         | 20 -------------------
 .../616-net_optimize_xfrm_calls.patch         | 20 -------------------
 .../616-net_optimize_xfrm_calls.patch         | 20 -------------------
 3 files changed, 60 deletions(-)
 delete mode 100644 target/linux/generic/pending-4.14/616-net_optimize_xfrm_calls.patch
 delete mode 100644 target/linux/generic/pending-4.19/616-net_optimize_xfrm_calls.patch
 delete mode 100644 target/linux/generic/pending-5.4/616-net_optimize_xfrm_calls.patch

diff --git a/target/linux/generic/pending-4.14/616-net_optimize_xfrm_calls.patch b/target/linux/generic/pending-4.14/616-net_optimize_xfrm_calls.patch
deleted file mode 100644
index c64694ea3c..0000000000
--- a/target/linux/generic/pending-4.14/616-net_optimize_xfrm_calls.patch
+++ /dev/null
@@ -1,20 +0,0 @@
-From: Felix Fietkau <nbd@nbd.name>
-Subject: kernel: add a small xfrm related performance optimization
-
-Signed-off-by: Felix Fietkau <nbd@nbd.name>
----
- net/netfilter/nf_nat_core.c | 3 +++
- 1 file changed, 3 insertions(+)
-
---- a/net/netfilter/nf_nat_core.c
-+++ b/net/netfilter/nf_nat_core.c
-@@ -90,6 +90,9 @@ int nf_xfrm_me_harder(struct net *net, s
- 	struct dst_entry *dst;
- 	int err;
- 
-+	if (skb->dev && !dev_net(skb->dev)->xfrm.policy_count[XFRM_POLICY_OUT])
-+		return 0;
-+
- 	err = xfrm_decode_session(skb, &fl, family);
- 	if (err < 0)
- 		return err;
diff --git a/target/linux/generic/pending-4.19/616-net_optimize_xfrm_calls.patch b/target/linux/generic/pending-4.19/616-net_optimize_xfrm_calls.patch
deleted file mode 100644
index 6a5801027c..0000000000
--- a/target/linux/generic/pending-4.19/616-net_optimize_xfrm_calls.patch
+++ /dev/null
@@ -1,20 +0,0 @@
-From: Felix Fietkau <nbd@nbd.name>
-Subject: kernel: add a small xfrm related performance optimization
-
-Signed-off-by: Felix Fietkau <nbd@nbd.name>
----
- net/netfilter/nf_nat_core.c | 3 +++
- 1 file changed, 3 insertions(+)
-
---- a/net/netfilter/nf_nat_core.c
-+++ b/net/netfilter/nf_nat_core.c
-@@ -110,6 +110,9 @@ int nf_xfrm_me_harder(struct net *net, s
- 	struct sock *sk = skb->sk;
- 	int err;
- 
-+	if (skb->dev && !dev_net(skb->dev)->xfrm.policy_count[XFRM_POLICY_OUT])
-+		return 0;
-+
- 	err = xfrm_decode_session(skb, &fl, family);
- 	if (err < 0)
- 		return err;
diff --git a/target/linux/generic/pending-5.4/616-net_optimize_xfrm_calls.patch b/target/linux/generic/pending-5.4/616-net_optimize_xfrm_calls.patch
deleted file mode 100644
index 952bf690d8..0000000000
--- a/target/linux/generic/pending-5.4/616-net_optimize_xfrm_calls.patch
+++ /dev/null
@@ -1,20 +0,0 @@
-From: Felix Fietkau <nbd@nbd.name>
-Subject: kernel: add a small xfrm related performance optimization
-
-Signed-off-by: Felix Fietkau <nbd@nbd.name>
----
- net/netfilter/nf_nat_core.c | 3 +++
- 1 file changed, 3 insertions(+)
-
---- a/net/netfilter/nf_nat_core.c
-+++ b/net/netfilter/nf_nat_core.c
-@@ -155,6 +155,9 @@ int nf_xfrm_me_harder(struct net *net, s
- 	struct sock *sk = skb->sk;
- 	int err;
- 
-+	if (skb->dev && !dev_net(skb->dev)->xfrm.policy_count[XFRM_POLICY_OUT])
-+		return 0;
-+
- 	err = xfrm_decode_session(skb, &fl, family);
- 	if (err < 0)
- 		return err;
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
