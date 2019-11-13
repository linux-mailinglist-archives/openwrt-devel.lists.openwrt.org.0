Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F63FB602
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 18:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OBdTkQGoIOP4NVHncqtzJE9E8e6LlCTFBS72wIXJNAo=; b=lZCk+o63+L8ayg
	EH2vvyoHM+C75GE47SwqStmD+AJRX+DLmKwD5AWiI/Y0wjNlWzlittQGA9kWkCZFcs5orLLZ5BX9v
	T9oOm1cMr2J+wHJZQrzdxwl07igXBxN609JrA7cmDLMRJ2LJGMZLUzqBSchyn3pNFepJ6oIgQ0wiD
	w3tq69+Y32KLQx7wZvbcP/miwgWX7eVkWVtG40lUabs6mwCOqG139gml+P0m3259WR+ECwI+6Q+MQ
	d7rm/GQFkltqx/WBWBX+gbQcTg1/S+OlbOD8a+UdXz9rOgKAnkrVAQcAuBO0AdNBXjewAb0k0hAj9
	vMK8MazzKQXn77gSe+LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwCD-00083F-3O; Wed, 13 Nov 2019 17:12:45 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwC5-00082n-EJ
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 17:12:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id l24so1743749pgh.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 Nov 2019 09:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wskoY9prSqmEaQkfH05Kee0Ces2jwFUD0PZ5vP7x8H4=;
 b=cp1lR/2styb8p8oP9bHoX8wTDbX/JDXvfgmvmA8AW+GER54hA+ajRdso110DvHqI5J
 wjJ65hpXHy526A8hAsVgBeM0Lfz2Al/8eb69hwRmAOXSJI7H4jl0pd178Rh04f+I9Ho9
 28NNpc0rl6BKiQiffk9wSOpnR/tpnpR7ZPBw6kpdI5pOapZvKvbycOL16fBFN+5lFbkT
 58XWXs+JO1KV+Rrj9XyBOm0eDstTjdttXMYLnxCqC4quD+JJ/9/isMMKJxdZ+7YnTNg8
 cXVmx2GQiQaudRivurpZ1wXFiipJjGyZTBUvXx+x31y/6X8fpAKcg6tTI6RMnJND2Q6S
 ggdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wskoY9prSqmEaQkfH05Kee0Ces2jwFUD0PZ5vP7x8H4=;
 b=ZtcF0AqiPV4W09vmMMgF/+x4c298v2klZw/9y5svk/RNYW/714e2opv7owVgweRhsv
 srrDz+kmAnR22WlRu4ncKug/vliNexoKmu9usH3A0jMyUjKBIzJZyIiy8hItnzp7VcnC
 EWp823Ai7CPgKgi5rFkL8guNAUTArR/OZkZAEvKiCdwROvYO1HeSLJAcS7q7HBa72mlp
 OrP8e9RDW8cdQapt0NgOzyjpBwGBalxm07WTnmv0OYxRyzc0kl0wGobJGv5FUSq7s3yA
 B9FWUZpBFqliPHH6NTJElbQ6oCjgkBF4o2SVuVq7blWK/c7FL/2NDRtkbgT6frrKbmnK
 3vJw==
X-Gm-Message-State: APjAAAU+dR4xB/OjXytAjGCaft3nYRqGRtU8qbhbuSYCxa9IQNXO2Zjn
 kcyTxd/8nRFgvYdHYuGFXVf/UTjP
X-Google-Smtp-Source: APXvYqzm/J8pmoqEIkDixbH2aWdFIT4hr9aMU8hdLiwd3PmlYuIyDEB0UGaRcgudzdJVrZvqwaPtLg==
X-Received: by 2002:aa7:8e15:: with SMTP id c21mr5789801pfr.122.1573665155816; 
 Wed, 13 Nov 2019 09:12:35 -0800 (PST)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id 13sm3488970pgq.72.2019.11.13.09.12.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 Nov 2019 09:12:34 -0800 (PST)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 Nov 2019 17:12:25 +0000
Message-Id: <20191113171226.31591-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_091237_482400_2918D387 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] kernel: nf_conntrack_rtcache: fix cleanup
 on netns delete and rmmod
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, hauke@hauke-m.de, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Fixes FS#1472, FS#2353, FS#2426

Fixes: b3f95490 ("kernel: generic: Add kernel 4.14 support")
Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 .../020-backport_netfilter_rtcache.patch           | 14 +++++++++++++-
 .../020-backport_netfilter_rtcache.patch           | 14 +++++++++++++-
 2 files changed, 26 insertions(+), 2 deletions(-)

diff --git a/target/linux/generic/backport-4.14/020-backport_netfilter_rtcache.patch b/target/linux/generic/backport-4.14/020-backport_netfilter_rtcache.patch
index 8a6fba4307..d745a97026 100644
--- a/target/linux/generic/backport-4.14/020-backport_netfilter_rtcache.patch
+++ b/target/linux/generic/backport-4.14/020-backport_netfilter_rtcache.patch
@@ -127,7 +127,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
  # netlink interface for nf_conntrack
 --- /dev/null
 +++ b/net/netfilter/nf_conntrack_rtcache.c
-@@ -0,0 +1,428 @@
+@@ -0,0 +1,440 @@
 +/* route cache for netfilter.
 + *
 + * (C) 2014 Red Hat GmbH
@@ -444,6 +444,11 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
 +	.destroy = nf_conn_rtcache_destroy,
 +};
 +
++static int __net_init rtcache_net_init(struct net *net)
++{
++	return nf_register_net_hooks(net, rtcache_ops, ARRAY_SIZE(rtcache_ops));
++}
++
 +static void __net_exit rtcache_net_exit(struct net *net)
 +{
 +	/* remove hooks so no new connections get rtcache extension */
@@ -451,6 +456,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
 +}
 +
 +static struct pernet_operations rtcache_ops_net_ops = {
++	.init	= rtcache_net_init,
 +	.exit	= rtcache_net_exit,
 +};
 +
@@ -531,6 +537,11 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
 +	synchronize_net();
 +
 +	unregister_netdevice_notifier(&nf_rtcache_notifier);
++	unregister_pernet_subsys(&rtcache_ops_net_ops);
++	for_each_net(net)
++		nf_unregister_net_hooks(net, rtcache_ops, ARRAY_SIZE(rtcache_ops));
++
++	synchronize_net();
 +
 +	rtnl_lock();
 +
@@ -547,6 +558,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
 +	}
 +
 +	rtnl_unlock();
++
 +	synchronize_net();
 +	nf_ct_extend_unregister(&rtcache_extend);
 +}
diff --git a/target/linux/generic/backport-4.19/020-backport_netfilter_rtcache.patch b/target/linux/generic/backport-4.19/020-backport_netfilter_rtcache.patch
index 3a35381ce3..2d84bc2acf 100644
--- a/target/linux/generic/backport-4.19/020-backport_netfilter_rtcache.patch
+++ b/target/linux/generic/backport-4.19/020-backport_netfilter_rtcache.patch
@@ -127,7 +127,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
  # netlink interface for nf_conntrack
 --- /dev/null
 +++ b/net/netfilter/nf_conntrack_rtcache.c
-@@ -0,0 +1,428 @@
+@@ -0,0 +1,440 @@
 +/* route cache for netfilter.
 + *
 + * (C) 2014 Red Hat GmbH
@@ -444,6 +444,11 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
 +	.destroy = nf_conn_rtcache_destroy,
 +};
 +
++static int __net_init rtcache_net_init(struct net *net)
++{
++	return nf_register_net_hooks(net, rtcache_ops, ARRAY_SIZE(rtcache_ops));
++}
++
 +static void __net_exit rtcache_net_exit(struct net *net)
 +{
 +	/* remove hooks so no new connections get rtcache extension */
@@ -451,6 +456,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
 +}
 +
 +static struct pernet_operations rtcache_ops_net_ops = {
++	.init	= rtcache_net_init,
 +	.exit	= rtcache_net_exit,
 +};
 +
@@ -531,6 +537,11 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
 +	synchronize_net();
 +
 +	unregister_netdevice_notifier(&nf_rtcache_notifier);
++	unregister_pernet_subsys(&rtcache_ops_net_ops);
++	for_each_net(net)
++		nf_unregister_net_hooks(net, rtcache_ops, ARRAY_SIZE(rtcache_ops));
++
++	synchronize_net();
 +
 +	rtnl_lock();
 +
@@ -547,6 +558,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
 +	}
 +
 +	rtnl_unlock();
++
 +	synchronize_net();
 +	nf_ct_extend_unregister(&rtcache_extend);
 +}

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
