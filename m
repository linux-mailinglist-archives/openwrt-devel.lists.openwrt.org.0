Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1848E1F40E0
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 18:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RKQ1PwWpdE7dzQex8xv7MfCYT2B9S48JyuXkQh3/SPY=; b=LCB2dEeWg0nKqUnXnDqjHlIfN
	YtZAZGDOAzqPudnBPC3UN5c3MOF/w2sycn9f/WTadxkofJ2IASQ39Ih8WgMCvFnT/bfUwVb+Wx2iM
	Xxy9Hp5JBEYQzplqPFx5X1TQFSCbUpWOEHbdsp0jaPMdmZKCh/7jduFHdnjQxSyRpVWit71ga7VSm
	Mw69CvKHohaGO+MsGe4igNNqKNz23NWBUcmi9ep7Cj1loievHDpS7xVNGbEfor6V6FS8TJCPPB3eX
	bIsa73pmKzvs1IYM55LIxJC0FggkBpJQA/hT0l6BOw8bGlmNRWWuZFoCPNOAgaSe57c/r2eC9jpzr
	GVGOWle2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jih83-0003Uv-HJ; Tue, 09 Jun 2020 16:29:35 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jih4N-0000Od-Lp
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jun 2020 16:25:50 +0000
Received: from [2a04:4540:1400:6800:2d8:61ff:feed:60f5]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jih4J-0006W9-7f; Tue, 09 Jun 2020 18:25:43 +0200
To: Sven Eckelmann <sven@narfation.org>, openwrt-devel@lists.openwrt.org
References: <20200609133504.6563-1-sven@narfation.org>
From: John Crispin <john@phrozen.org>
Message-ID: <8528da9c-8f1f-2e8f-1100-e02bd2304546@phrozen.org>
Date: Tue, 9 Jun 2020 18:25:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200609133504.6563-1-sven@narfation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_092547_939302_46197EE0 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ipq40xx: essedma: Disable TCP
 segmentation offload for IPv6
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

On 09.06.20 15:35, Sven Eckelmann wrote:
> It was noticed that the the whole MAC can hang when transferring data from
> one ar40xx port (WAN ports) to the CPU and from the CPU back to another
> ar40xx port (LAN ports). The CPU was doing only NATing in that process.
> 
> Usually, the problem first starts with a simple data corruption:
> 
>    $ wget https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-10.4.0-amd64-netinst.iso -O /dev/null
>    ...
>    Connecting to saimei.ftp.acc.umu.se (saimei.ftp.acc.umu.se)|2001:6b0:19::138|:443... connected.
>    ...
>    Read  error at byte 48807936/352321536 (Decryption has failed.). Retrying.
> 
> But after a short while, the whole MAC will stop to react. No traffic can
> be transported anymore from the CPU port from/to the AR40xx PHY/switch and
> the MAC has to be resetted.
> 
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
Acked-by: John Crispin <john@phrozen.org>

> ---
> v2:
> * move the changes directly to
>    target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
> 
> The problem was first observed on OpenWrt 18.06 and OpenWrt 19.07. It would
> be good that the patch (or maybe even a better one) is "backported". This
> actually means copying the one from the v1 [1] to the correct ipq40xx patch
> folder and then refresh the patch.
> 
> Thanks
> 
> [1] https://patchwork.ozlabs.org/project/openwrt/patch/20200609132304.31669-1-sven@narfation.org/
> 
>   .../drivers/net/ethernet/qualcomm/essedma/edma_axi.c  | 11 ++++-------
>   1 file changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_axi.c b/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
> index b619bbbab9..96a82b3116 100644
> --- a/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
> +++ b/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
> @@ -970,17 +970,14 @@ static int edma_axi_probe(struct platform_device *pdev)
>   		edma_netdev[i]->features = NETIF_F_HW_CSUM | NETIF_F_RXCSUM
>   				      | NETIF_F_HW_VLAN_CTAG_TX
>   				      | NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_SG |
> -				      NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_GRO;
> +				      NETIF_F_TSO | NETIF_F_GRO;
>   		edma_netdev[i]->hw_features = NETIF_F_HW_CSUM | NETIF_F_RXCSUM |
>   				NETIF_F_HW_VLAN_CTAG_RX
> -				| NETIF_F_SG | NETIF_F_TSO | NETIF_F_TSO6 |
> -				NETIF_F_GRO;
> +				| NETIF_F_SG | NETIF_F_TSO | NETIF_F_GRO;
>   		edma_netdev[i]->vlan_features = NETIF_F_HW_CSUM | NETIF_F_SG |
> -					   NETIF_F_TSO | NETIF_F_TSO6 |
> -					   NETIF_F_GRO;
> +					   NETIF_F_TSO | NETIF_F_GRO;
>   		edma_netdev[i]->wanted_features = NETIF_F_HW_CSUM | NETIF_F_SG |
> -					     NETIF_F_TSO | NETIF_F_TSO6 |
> -					     NETIF_F_GRO;
> +					     NETIF_F_TSO | NETIF_F_GRO;
>   
>   #ifdef CONFIG_RFS_ACCEL
>   		edma_netdev[i]->features |=  NETIF_F_RXHASH | NETIF_F_NTUPLE;
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
