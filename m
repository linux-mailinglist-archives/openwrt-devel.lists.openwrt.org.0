Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7001E2FBB
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 22:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FrwdkqSNYG/UGng02oLTg+Ho7t0fcLuyeuC1s/GVRcM=; b=loC4iyAtzuUVBZ
	umc5yOIm+p8OSrkxXWs3QA7En3/qWR25rjYy0g6J17QXpIVMckNFw4Y2Ogw/08mcB0WJlgEElXN2L
	jhlRZlDf9Dv0Z5NWHTdnUOWCRZSWzufW2BxGBJHIcvDMk0k/roraET0fTXHhms9iAUPDwr55JsvZ0
	E8Nh0tGo/aoG2T9P7pZJGfm0OjFYX3uUaI//kXlapiF2pVclL6cc1xPLLVDP4Q7b2KoZlyNXVNzbz
	L6GpcquKo7q9Q3+UaV+tEveDtsoMSLBMTlxUYdXRdi2CvAaBL6lZStxB7Yp9qwNhWreMMRyLjlpJo
	ZKLiB3ieUoEQ5aeVnwmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfnM-00075M-6c; Tue, 26 May 2020 20:03:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdflI-0005J0-KF
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 20:01:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6CDF34EEE;
 Tue, 26 May 2020 22:01:09 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 386baa6a;
 Tue, 26 May 2020 22:00:53 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 26 May 2020 22:01:02 +0200
Message-Id: <20200526200102.15470-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_130120_868013_DC5C8F2F 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07] generic: fix flow table hw offload
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

From: John Crispin <john@phrozen.org>

Make the driver work with recent upstream changes.

Fixes: FS#2632
Ref: https://github.com/openwrt/openwrt/pull/2815
Signed-off-by: John Crispin <john@phrozen.org>
(cherry picked from commit 6786dc26a205da55ec2d9771693cdfb99e756e59)
---
 ...w_table-support-hw-offload-through-v.patch | 33 ++++++++++---------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/target/linux/generic/pending-4.14/641-netfilter-nf_flow_table-support-hw-offload-through-v.patch b/target/linux/generic/pending-4.14/641-netfilter-nf_flow_table-support-hw-offload-through-v.patch
index 93117253466b..e1b13a1ad491 100644
--- a/target/linux/generic/pending-4.14/641-netfilter-nf_flow_table-support-hw-offload-through-v.patch
+++ b/target/linux/generic/pending-4.14/641-netfilter-nf_flow_table-support-hw-offload-through-v.patch
@@ -79,7 +79,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  struct nf_flow_route {
 --- a/net/netfilter/nf_flow_table_hw.c
 +++ b/net/netfilter/nf_flow_table_hw.c
-@@ -19,48 +19,75 @@ struct flow_offload_hw {
+@@ -19,48 +19,77 @@ struct flow_offload_hw {
  	enum flow_offload_type	type;
  	struct flow_offload	*flow;
  	struct nf_conn		*ct;
@@ -92,6 +92,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 -static int do_flow_offload_hw(struct net *net, struct flow_offload *flow,
 -			      int type)
 +static void flow_offload_check_ethernet(struct flow_offload_tuple *tuple,
++					struct dst_entry *dst,
 +					struct flow_offload_hw_path *path)
  {
 -	struct net_device *indev;
@@ -112,7 +113,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
 -	dev_put(indev);
 +	memcpy(path->eth_src, path->dev->dev_addr, ETH_ALEN);
-+	n = dst_neigh_lookup(tuple->dst_cache, &tuple->src_v4);
++	n = dst_neigh_lookup(dst, &tuple->src_v4);
 +	if (!n)
 +		return;
  
@@ -125,6 +126,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 -static void flow_offload_hw_work_add(struct flow_offload_hw *offload)
 +static int flow_offload_check_path(struct net *net,
 +				   struct flow_offload_tuple *tuple,
++				   struct dst_entry *dst,
 +				   struct flow_offload_hw_path *path)
  {
 -	struct net *net;
@@ -138,7 +140,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 +		return -ENOENT;
 +
 +	path->dev = dev;
-+	flow_offload_check_ethernet(tuple, path);
++	flow_offload_check_ethernet(tuple, dst, path);
  
 -	net = read_pnet(&offload->flow_hw_net);
 -	ret = do_flow_offload_hw(net, offload->flow, FLOW_OFFLOAD_ADD);
@@ -166,11 +168,11 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 +	/* restore devices in case the driver mangled them */
 +	offload->src.dev = src_dev;
 +	offload->dest.dev = dest_dev;
-+
-+	return ret;
-+}
  
 -	do_flow_offload_hw(net, offload->flow, FLOW_OFFLOAD_DEL);
++	return ret;
++}
++
 +static void flow_offload_hw_free(struct flow_offload_hw *offload)
 +{
 +	dev_put(offload->src.dev);
@@ -182,7 +184,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  }
  
  static void flow_offload_hw_work(struct work_struct *work)
-@@ -73,18 +100,22 @@ static void flow_offload_hw_work(struct
+@@ -73,18 +102,22 @@ static void flow_offload_hw_work(struct
  	spin_unlock_bh(&flow_offload_hw_pending_list_lock);
  
  	list_for_each_entry_safe(offload, next, &hw_offload_pending, list) {
@@ -211,7 +213,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	}
  }
  
-@@ -97,20 +128,55 @@ static void flow_offload_queue_work(stru
+@@ -97,20 +130,56 @@ static void flow_offload_queue_work(stru
  	schedule_work(&nf_flow_offload_hw_work);
  }
  
@@ -220,17 +222,18 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 +{
 +	struct flow_offload_hw_path src = {};
 +	struct flow_offload_hw_path dest = {};
-+	struct flow_offload_tuple *tuple;
++	struct flow_offload_tuple *tuple_s, *tuple_d;
 +	struct flow_offload_hw *offload = NULL;
 +
 +	rcu_read_lock_bh();
 +
-+	tuple = &flow->tuplehash[FLOW_OFFLOAD_DIR_ORIGINAL].tuple;
-+	if (flow_offload_check_path(net, tuple, &src))
++	tuple_s = &flow->tuplehash[FLOW_OFFLOAD_DIR_ORIGINAL].tuple;
++	tuple_d = &flow->tuplehash[FLOW_OFFLOAD_DIR_REPLY].tuple;
++
++	if (flow_offload_check_path(net, tuple_s, tuple_d->dst_cache, &src))
 +		goto out;
 +
-+	tuple = &flow->tuplehash[FLOW_OFFLOAD_DIR_REPLY].tuple;
-+	if (flow_offload_check_path(net, tuple, &dest))
++	if (flow_offload_check_path(net, tuple_d, tuple_s->dst_cache, &dest))
 +		goto out;
 +
 +	if (!src.dev->netdev_ops->ndo_flow_offload)
@@ -270,7 +273,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
  	flow_offload_queue_work(offload);
  }
-@@ -119,14 +185,11 @@ static void flow_offload_hw_del(struct n
+@@ -119,14 +188,11 @@ static void flow_offload_hw_del(struct n
  {
  	struct flow_offload_hw *offload;
  
@@ -286,7 +289,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
  	flow_offload_queue_work(offload);
  }
-@@ -153,12 +216,8 @@ static void __exit nf_flow_table_hw_modu
+@@ -153,12 +219,8 @@ static void __exit nf_flow_table_hw_modu
  	nf_flow_table_hw_unregister(&flow_offload_hw);
  	cancel_work_sync(&nf_flow_offload_hw_work);
  

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
