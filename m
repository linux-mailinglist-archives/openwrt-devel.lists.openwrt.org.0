Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4283198DFC
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 10:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ikG3x0HQTU7XK9nDf82EJkIBZE+D3eS1fN1ck4XKwV4=; b=LCZhtlGxjTV+pOqG1UFKHdOVm
	R1rnvqlOdLmkqWsTHzql5ae6fOAqGbWZcS+OXJqOWG4ng3Ka3l51n/vVv9G0iRzeOQWYURCnRMJQI
	TL86FYxpd48RBUDV5+AKL2GdQCvi2UFHI8ZhaBxmP1Wi43xn6t2OpyDrhWNuNdGAtOewSZO+gJsUr
	0iFHhDOtrcsHDe4DTUajRlDikc3lJC+RLh7EHGsZXRDu0xblU5M5myr7GZzyw+62eG8Pd7JXB8VdV
	ocVwcyi41PbnH2fKqFiuGnjupVHdLW6JHqnof+heUw94iHKcpOCzIkM+6m+zgiVocBhv1D0r54Ks4
	kroxqztUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBxr-0006b5-NI; Tue, 31 Mar 2020 08:09:39 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBxh-0006am-2n
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 08:09:31 +0000
Received: from [134.101.210.219] (helo=[192.168.178.23])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jJBxf-0007Ky-1K; Tue, 31 Mar 2020 10:09:27 +0200
To: Jo-Philipp Wich <jo@mein.io>, openwrt-devel@lists.openwrt.org
References: <20200331080757.188294-1-jo@mein.io>
From: John Crispin <john@phrozen.org>
Message-ID: <d32ec433-03f8-28e8-0c67-0b1f878d378f@phrozen.org>
Date: Tue, 31 Mar 2020 10:09:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200331080757.188294-1-jo@mein.io>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_010929_317648_A4297FE5 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] target: drop
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 31.03.20 10:07, Jo-Philipp Wich wrote:
> The conditional check introduced by this patch may trigger a NULL pointer
> dereference in case the result of dev_net() is NULL.
>
> Since the purpose of this patch is neither sufficiently explained and since
> this patch apparently has never been submitted upstream despite it being in
> the pending-* patch directory, I propose to drop it without replacement.
>
> If the performance implications of dropping this patch are found to be
> significiant, it should be reintroduced with proper description and
> benchmark results.
>
> Ref: https://bugs.openwrt.org/index.php?do=details&task_id=2943
> Signed-off-by: Jo-Philipp Wich <jo@mein.io>
Acked-by: John Crispin <john@phrozen.org>
> ---
>   .../616-net_optimize_xfrm_calls.patch         | 20 -------------------
>   .../616-net_optimize_xfrm_calls.patch         | 20 -------------------
>   .../616-net_optimize_xfrm_calls.patch         | 20 -------------------
>   3 files changed, 60 deletions(-)
>   delete mode 100644 target/linux/generic/pending-4.14/616-net_optimize_xfrm_calls.patch
>   delete mode 100644 target/linux/generic/pending-4.19/616-net_optimize_xfrm_calls.patch
>   delete mode 100644 target/linux/generic/pending-5.4/616-net_optimize_xfrm_calls.patch
>
> diff --git a/target/linux/generic/pending-4.14/616-net_optimize_xfrm_calls.patch b/target/linux/generic/pending-4.14/616-net_optimize_xfrm_calls.patch
> deleted file mode 100644
> index c64694ea3c..0000000000
> --- a/target/linux/generic/pending-4.14/616-net_optimize_xfrm_calls.patch
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -From: Felix Fietkau <nbd@nbd.name>
> -Subject: kernel: add a small xfrm related performance optimization
> -
> -Signed-off-by: Felix Fietkau <nbd@nbd.name>
> ----
> - net/netfilter/nf_nat_core.c | 3 +++
> - 1 file changed, 3 insertions(+)
> -
> ---- a/net/netfilter/nf_nat_core.c
> -+++ b/net/netfilter/nf_nat_core.c
> -@@ -90,6 +90,9 @@ int nf_xfrm_me_harder(struct net *net, s
> - 	struct dst_entry *dst;
> - 	int err;
> -
> -+	if (skb->dev && !dev_net(skb->dev)->xfrm.policy_count[XFRM_POLICY_OUT])
> -+		return 0;
> -+
> - 	err = xfrm_decode_session(skb, &fl, family);
> - 	if (err < 0)
> - 		return err;
> diff --git a/target/linux/generic/pending-4.19/616-net_optimize_xfrm_calls.patch b/target/linux/generic/pending-4.19/616-net_optimize_xfrm_calls.patch
> deleted file mode 100644
> index 6a5801027c..0000000000
> --- a/target/linux/generic/pending-4.19/616-net_optimize_xfrm_calls.patch
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -From: Felix Fietkau <nbd@nbd.name>
> -Subject: kernel: add a small xfrm related performance optimization
> -
> -Signed-off-by: Felix Fietkau <nbd@nbd.name>
> ----
> - net/netfilter/nf_nat_core.c | 3 +++
> - 1 file changed, 3 insertions(+)
> -
> ---- a/net/netfilter/nf_nat_core.c
> -+++ b/net/netfilter/nf_nat_core.c
> -@@ -110,6 +110,9 @@ int nf_xfrm_me_harder(struct net *net, s
> - 	struct sock *sk = skb->sk;
> - 	int err;
> -
> -+	if (skb->dev && !dev_net(skb->dev)->xfrm.policy_count[XFRM_POLICY_OUT])
> -+		return 0;
> -+
> - 	err = xfrm_decode_session(skb, &fl, family);
> - 	if (err < 0)
> - 		return err;
> diff --git a/target/linux/generic/pending-5.4/616-net_optimize_xfrm_calls.patch b/target/linux/generic/pending-5.4/616-net_optimize_xfrm_calls.patch
> deleted file mode 100644
> index 952bf690d8..0000000000
> --- a/target/linux/generic/pending-5.4/616-net_optimize_xfrm_calls.patch
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -From: Felix Fietkau <nbd@nbd.name>
> -Subject: kernel: add a small xfrm related performance optimization
> -
> -Signed-off-by: Felix Fietkau <nbd@nbd.name>
> ----
> - net/netfilter/nf_nat_core.c | 3 +++
> - 1 file changed, 3 insertions(+)
> -
> ---- a/net/netfilter/nf_nat_core.c
> -+++ b/net/netfilter/nf_nat_core.c
> -@@ -155,6 +155,9 @@ int nf_xfrm_me_harder(struct net *net, s
> - 	struct sock *sk = skb->sk;
> - 	int err;
> -
> -+	if (skb->dev && !dev_net(skb->dev)->xfrm.policy_count[XFRM_POLICY_OUT])
> -+		return 0;
> -+
> - 	err = xfrm_decode_session(skb, &fl, family);
> - 	if (err < 0)
> - 		return err;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
