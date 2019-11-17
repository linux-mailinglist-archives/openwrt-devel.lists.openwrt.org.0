Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61404FFC4F
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 00:42:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srvaivoC8t09MUk8WwlksPsEumSeEYTv0QydY4fsBnI=; b=h91rJk1OH69GxW
	aN4maTNYbffBGjZcr9XZ9mZVqO1TQMcD2hDT5VylcB7pGbCa4sXLDPfgKMKVBs68AJcTU9bybS6QX
	QT7mCzttDN7CD55vbpw+S/G5mqeG0pbHbpAjmkBcgvPRe8nkfWkfXQkHJAlCbicd8g1cccmnq3G+F
	n6CJYiXCFfcFfknc39qwmAcbdnk9UcGQA07/dq2fyrlf3ClUkcZeP5Dkm+v82gYb30H9SykaRbYzk
	FApWHSEOciWQK0AtmggSqdbsfyJuHoDhkOQHEfqkiAUwTSruBqQZ0nyJegAFhx3A0eKjjsxD2eNGL
	DWJiw64AkVmAVEX2VOBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWUBn-0007Wu-VJ; Sun, 17 Nov 2019 23:42:43 +0000
Received: from mout-u-204.mailbox.org ([2001:67c:2050:1::465:204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWUBh-0007WM-43
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 23:42:38 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 47GTCb00VSzQkmD;
 Mon, 18 Nov 2019 00:42:35 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id p_Kpq5Y836uO; Mon, 18 Nov 2019 00:42:32 +0100 (CET)
To: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20191113171226.31591-1-yszhou4tech@gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <1c3d615c-efdd-77b1-1761-10094fbb661a@hauke-m.de>
Date: Mon, 18 Nov 2019 00:42:30 +0100
MIME-Version: 1.0
In-Reply-To: <20191113171226.31591-1-yszhou4tech@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_154237_504594_6F6B7233 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: nf_conntrack_rtcache: fix
 cleanup on netns delete and rmmod
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
Cc: nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 11/13/19 6:12 PM, Yousong Zhou wrote:
> Fixes FS#1472, FS#2353, FS#2426
> 
> Fixes: b3f95490 ("kernel: generic: Add kernel 4.14 support")
> Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>

Acked-by: Hauke Mehrtens <hauke@hauke-m.de>

Thanks for fixing this problem, this should also go into 19.07 and 18.06.

> ---
>  .../020-backport_netfilter_rtcache.patch           | 14 +++++++++++++-
>  .../020-backport_netfilter_rtcache.patch           | 14 +++++++++++++-
>  2 files changed, 26 insertions(+), 2 deletions(-)
> 
> diff --git a/target/linux/generic/backport-4.14/020-backport_netfilter_rtcache.patch b/target/linux/generic/backport-4.14/020-backport_netfilter_rtcache.patch
> index 8a6fba4307..d745a97026 100644
> --- a/target/linux/generic/backport-4.14/020-backport_netfilter_rtcache.patch
> +++ b/target/linux/generic/backport-4.14/020-backport_netfilter_rtcache.patch
> @@ -127,7 +127,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
>   # netlink interface for nf_conntrack
>  --- /dev/null
>  +++ b/net/netfilter/nf_conntrack_rtcache.c
> -@@ -0,0 +1,428 @@
> +@@ -0,0 +1,440 @@
>  +/* route cache for netfilter.
>  + *
>  + * (C) 2014 Red Hat GmbH
> @@ -444,6 +444,11 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
>  +	.destroy = nf_conn_rtcache_destroy,
>  +};
>  +
> ++static int __net_init rtcache_net_init(struct net *net)
> ++{
> ++	return nf_register_net_hooks(net, rtcache_ops, ARRAY_SIZE(rtcache_ops));
> ++}
> ++
>  +static void __net_exit rtcache_net_exit(struct net *net)
>  +{
>  +	/* remove hooks so no new connections get rtcache extension */
> @@ -451,6 +456,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
>  +}
>  +
>  +static struct pernet_operations rtcache_ops_net_ops = {
> ++	.init	= rtcache_net_init,
>  +	.exit	= rtcache_net_exit,
>  +};
>  +
> @@ -531,6 +537,11 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
>  +	synchronize_net();
>  +
>  +	unregister_netdevice_notifier(&nf_rtcache_notifier);
> ++	unregister_pernet_subsys(&rtcache_ops_net_ops);
> ++	for_each_net(net)
> ++		nf_unregister_net_hooks(net, rtcache_ops, ARRAY_SIZE(rtcache_ops));
> ++
> ++	synchronize_net();
>  +
>  +	rtnl_lock();
>  +
> @@ -547,6 +558,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
>  +	}
>  +
>  +	rtnl_unlock();
> ++
>  +	synchronize_net();
>  +	nf_ct_extend_unregister(&rtcache_extend);
>  +}
> diff --git a/target/linux/generic/backport-4.19/020-backport_netfilter_rtcache.patch b/target/linux/generic/backport-4.19/020-backport_netfilter_rtcache.patch
> index 3a35381ce3..2d84bc2acf 100644
> --- a/target/linux/generic/backport-4.19/020-backport_netfilter_rtcache.patch
> +++ b/target/linux/generic/backport-4.19/020-backport_netfilter_rtcache.patch
> @@ -127,7 +127,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
>   # netlink interface for nf_conntrack
>  --- /dev/null
>  +++ b/net/netfilter/nf_conntrack_rtcache.c
> -@@ -0,0 +1,428 @@
> +@@ -0,0 +1,440 @@
>  +/* route cache for netfilter.
>  + *
>  + * (C) 2014 Red Hat GmbH
> @@ -444,6 +444,11 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
>  +	.destroy = nf_conn_rtcache_destroy,
>  +};
>  +
> ++static int __net_init rtcache_net_init(struct net *net)
> ++{
> ++	return nf_register_net_hooks(net, rtcache_ops, ARRAY_SIZE(rtcache_ops));
> ++}
> ++
>  +static void __net_exit rtcache_net_exit(struct net *net)
>  +{
>  +	/* remove hooks so no new connections get rtcache extension */
> @@ -451,6 +456,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
>  +}
>  +
>  +static struct pernet_operations rtcache_ops_net_ops = {
> ++	.init	= rtcache_net_init,
>  +	.exit	= rtcache_net_exit,
>  +};
>  +
> @@ -531,6 +537,11 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
>  +	synchronize_net();
>  +
>  +	unregister_netdevice_notifier(&nf_rtcache_notifier);
> ++	unregister_pernet_subsys(&rtcache_ops_net_ops);
> ++	for_each_net(net)
> ++		nf_unregister_net_hooks(net, rtcache_ops, ARRAY_SIZE(rtcache_ops));
> ++
> ++	synchronize_net();
>  +
>  +	rtnl_lock();
>  +
> @@ -547,6 +558,7 @@ Signed-off-by: Florian Westphal <fw@strlen.de>
>  +	}
>  +
>  +	rtnl_unlock();
> ++
>  +	synchronize_net();
>  +	nf_ct_extend_unregister(&rtcache_extend);
>  +}
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
