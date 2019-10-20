Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E8ADDD86
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 11:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mQP3Xg78+mluFiDQXKeD9efa3BRqgX1No1LZUDN/WlA=; b=dXqhkUejRCQ/yZvkuADhGWI8K
	4nHL7tjWhjd2eRYyvazLYxTU9qy9nGK7LKrLR+QkCrwnfVt5imfAKNDedsovrHsZUUM5R/sKF5R5M
	fMM2bt2CqpMzuRFivSQ1YIXlLXi+cxTRWO50z+OdyDqLwVv0jUyFblyR+tyJ9N49mqC7SDtzhWmtc
	yVXbkFMe9DYgtf2LUzuD5lu/BB8l6GTtnWw94Ffjdy2qQKwl3x3LLoWd3O30lnYtYX0H2f3NfCQGQ
	9PWaUOT/Vp8ElIhvbqcCxI5Yf+qyEJm50Apj7YR163FW23GZEBUvQn8E74MTaWLwzkfEsEgJdh1ku
	gw9feoC1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM7gp-000114-MS; Sun, 20 Oct 2019 09:39:55 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM7gi-00010U-Bl
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 09:39:51 +0000
Received: from p5dcfb3ca.dip0.t-ipconnect.de ([93.207.179.202]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iM7gc-0008Oq-LD; Sun, 20 Oct 2019 11:39:42 +0200
To: Masafumi UTSUGI <mutsugi@allied-telesis.co.jp>,
 openwrt-devel@lists.openwrt.org
References: <1569923958-99413-1-git-send-email-mutsugi@allied-telesis.co.jp>
From: John Crispin <john@phrozen.org>
Message-ID: <89c14047-2cb8-79b0-da9e-690ca71abc1c@phrozen.org>
Date: Sun, 20 Oct 2019 11:39:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1569923958-99413-1-git-send-email-mutsugi@allied-telesis.co.jp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_023948_564498_1C1CB9DD 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: essedma: Fix dead lock
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

On 01/10/2019 11:59, Masafumi UTSUGI wrote:
> edma_read_append_stats() is called from kernel timer
> (Bottom half context) but it used spin_lock() to take a lock.
> Using ethtool command rarely causes deadlock because of this.
> Change lock function to spin_lock_bh() to avoid this.
> 

Hi,
patch looks good, could you please rebase it for v4.19 and merge the fix 
directly into the essedma patch ?
	John

> Signed-off-by: Masafumi UTSUGI <mutsugi@allied-telesis.co.jp>
> ---
>   .../patches-4.14/715-essedma-fix-dead-lock.patch     | 20 ++++++++++++++++++++
>   .../patches-4.19/715-essedma-fix-dead-lock.patch     | 20 ++++++++++++++++++++
>   2 files changed, 40 insertions(+)
>   create mode 100644 target/linux/ipq40xx/patches-4.14/715-essedma-fix-dead-lock.patch
>   create mode 100644 target/linux/ipq40xx/patches-4.19/715-essedma-fix-dead-lock.patch
> 
> diff --git a/target/linux/ipq40xx/patches-4.14/715-essedma-fix-dead-lock.patch b/target/linux/ipq40xx/patches-4.14/715-essedma-fix-dead-lock.patch
> new file mode 100644
> index 0000000..1c44924
> --- /dev/null
> +++ b/target/linux/ipq40xx/patches-4.14/715-essedma-fix-dead-lock.patch
> @@ -0,0 +1,20 @@
> +--- a/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
> ++++ b/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
> +@@ -230,7 +230,7 @@
> + 	int i;
> + 	u32 stat;
> +
> +-	spin_lock(&edma_cinfo->stats_lock);
> ++	spin_lock_bh(&edma_cinfo->stats_lock);
> + 	p = (uint32_t *)&(edma_cinfo->edma_ethstats);
> +
> + 	for (i = 0; i < EDMA_MAX_TRANSMIT_QUEUE; i++) {
> +@@ -257,7 +257,7 @@
> + 		p++;
> + 	}
> +
> +-	spin_unlock(&edma_cinfo->stats_lock);
> ++	spin_unlock_bh(&edma_cinfo->stats_lock);
> + }
> +
> + static void edma_statistics_timer(unsigned long data)
> diff --git a/target/linux/ipq40xx/patches-4.19/715-essedma-fix-dead-lock.patch b/target/linux/ipq40xx/patches-4.19/715-essedma-fix-dead-lock.patch
> new file mode 100644
> index 0000000..1c44924
> --- /dev/null
> +++ b/target/linux/ipq40xx/patches-4.19/715-essedma-fix-dead-lock.patch
> @@ -0,0 +1,20 @@
> +--- a/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
> ++++ b/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
> +@@ -230,7 +230,7 @@
> + 	int i;
> + 	u32 stat;
> +
> +-	spin_lock(&edma_cinfo->stats_lock);
> ++	spin_lock_bh(&edma_cinfo->stats_lock);
> + 	p = (uint32_t *)&(edma_cinfo->edma_ethstats);
> +
> + 	for (i = 0; i < EDMA_MAX_TRANSMIT_QUEUE; i++) {
> +@@ -257,7 +257,7 @@
> + 		p++;
> + 	}
> +
> +-	spin_unlock(&edma_cinfo->stats_lock);
> ++	spin_unlock_bh(&edma_cinfo->stats_lock);
> + }
> +
> + static void edma_statistics_timer(unsigned long data)
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
