Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A88CFFC79
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 01:23:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m9WSyi1DLcRL5Fd6U95rOn7He1NgKOaBW+pPhF16uGM=; b=UsbXXknYuHBhB1
	uYRFmrIGwT63oR/irZiqiqlCEgdEcHRMftktq9ssDc9UA3iQcbBrjS4E/kJhHqOZ8YBKM1OHHrD/S
	IoRVLRNmxv4i86Bdo2KyFerDqgEtwZBzJyNekWkFd/2dD/LSW2DvKCO9cUdTIZORzCUkQNKKyPtVA
	tCTVhx/7dGeG6hRSrqIeZOZFvyIcm8Cm51j8YgY80i1a/h2UTVhj5cexSm5I9f7FlEAMl6MfhFozo
	0lUEHHQzKBX7Fjxj52PE5CxHZ0mUqgXF7Z4IEe3B6fxWrWN6XmTgJ+SX1nnpvSfHONu/1011O9Uxo
	W2Htwn3eZwpr11/vyJnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWUp9-0002fg-Lu; Mon, 18 Nov 2019 00:23:23 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWUp2-0002fG-Oi
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 00:23:18 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 47GV6Q4FfRzQkmD;
 Mon, 18 Nov 2019 01:23:10 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id BYF-5Hm_C4z2; Mon, 18 Nov 2019 01:23:07 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 18 Nov 2019 01:22:58 +0100
Message-Id: <20191118002258.17776-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_162316_965815_CCBDA469 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] mac80211: Adapt to changes to
 skb_get_hash_perturb()
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The skb_get_hash_perturb() function now takes a siphash_key_t instead of
an u32. This was changed in commit 55667441c84f ("net/flow_dissector:
switch to siphash"). Use the correct type in the fq header file
depending on the kernel version.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---

Koen feel free to apply this to master and 19.07 branch, I only did a 
compile test so far, but I think this is needed for more recent kernel 
versions, see my mail to netdev.

 ...t-to-changes-to-skb_get_hash_perturb.patch | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch

diff --git a/package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch b/package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch
new file mode 100644
index 0000000000..3e2a684dca
--- /dev/null
+++ b/package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch
@@ -0,0 +1,52 @@
+From e3c57dd949835419cee8d3b45db38de58bf6ebd5 Mon Sep 17 00:00:00 2001
+From: Hauke Mehrtens <hauke@hauke-m.de>
+Date: Mon, 18 Nov 2019 01:13:37 +0100
+Subject: [PATCH] backports: Adapt to changes to skb_get_hash_perturb()
+
+The skb_get_hash_perturb() function now takes a siphash_key_t instead of
+an u32. This was changed in commit 55667441c84f ("net/flow_dissector:
+switch to siphash"). Use the correct type in the fq header file
+depending on the kernel version.
+
+Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
+---
+ include/net/fq.h      | 8 ++++++++
+ include/net/fq_impl.h | 8 ++++++++
+ 2 files changed, 16 insertions(+)
+
+--- a/include/net/fq.h
++++ b/include/net/fq.h
+@@ -69,7 +69,15 @@ struct fq {
+ 	struct list_head backlogs;
+ 	spinlock_t lock;
+ 	u32 flows_cnt;
++#if LINUX_VERSION_IS_GEQ(5,3,10) || \
++    LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
++    LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
++    LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
++    LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
++	siphash_key_t	perturbation;
++#else
+ 	u32 perturbation;
++#endif
+ 	u32 limit;
+ 	u32 memory_limit;
+ 	u32 memory_usage;
+--- a/include/net/fq_impl.h
++++ b/include/net/fq_impl.h
+@@ -108,7 +108,15 @@ begin:
+ 
+ static u32 fq_flow_idx(struct fq *fq, struct sk_buff *skb)
+ {
++#if LINUX_VERSION_IS_GEQ(5,3,10) || \
++    LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
++    LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
++    LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
++    LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
++	u32 hash = skb_get_hash_perturb(skb, &fq->perturbation);
++#else
+ 	u32 hash = skb_get_hash_perturb(skb, fq->perturbation);
++#endif
+ 
+ 	return reciprocal_scale(hash, fq->flows_cnt);
+ }
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
