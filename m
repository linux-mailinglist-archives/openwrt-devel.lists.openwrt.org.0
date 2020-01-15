Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC91313CCA2
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 19:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DuUmRLoNeUmgK6QN451TMneh46tBZIbVj6iOqi9isjo=; b=F+BjLxQYqh6+dK3REJFxBfOkI
	f4xmOAxT5vwKNV/F3SAJ2JafWDPwg9ml4MsKBGLjrJspd+7vWKZ9MrvCimiVHoVOPOP79IkCdr1iO
	cQYz5OVcOcfmmFjWjWq5c9k9WbGq64cTV+lRt1IbmEXKBGCKB8jIW2EoEBCP0/lyHQQVxPFl9L2hn
	hQmutgAt6l6kzB3rwHUB8BJWKbWqTb5Xhz/xIrM+9mn4GLmwMYfbbldxJvubLNXRAz9ZEPp+sM158
	/9KioNaGtxq146dUqXLCnIODQ29vBhadgzwgOMkW3l39wi9JcZh/4YWK663hu6Ka5OA9zyiPfMeBh
	KvwOrdvdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnpc-0002uj-RL; Wed, 15 Jan 2020 18:55:56 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnpT-0002u5-1a
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 18:55:48 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1irnpR-0005sn-Kf; Wed, 15 Jan 2020 19:55:45 +0100
To: Tomasz Maciej Nowak <tomek_n@o2.pl>, openwrt-devel@lists.openwrt.org
References: <20200114164004.3883-1-tomek_n@o2.pl>
From: John Crispin <john@phrozen.org>
Message-ID: <4bb4d346-be0d-01e1-8d69-12f9101518f6@phrozen.org>
Date: Wed, 15 Jan 2020 19:55:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200114164004.3883-1-tomek_n@o2.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_105547_244761_721038F0 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: wlr-7100: use ath10k-ct
 smallbuffers package variant
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

On 14/01/2020 17:40, Tomasz Maciej Nowak wrote:
> The memory hacks got removed from ath10k with 1e27bef ("mac80211: remove
> ath10k_pci memory hacks"). As this device has low amount of RAM, switch
> to ath-10k-ct small buffers variant, to avoid the OOM Reaper.
> 
> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
Thanks, merged !
> ---
>   target/linux/ath79/image/generic.mk | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
> index 18dad80d5d..abc6f96a80 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -986,7 +986,7 @@ define Device/sitecom_wlr-7100
>     DEVICE_VENDOR := Sitecom
>     DEVICE_MODEL := WLR-7100
>     DEVICE_VARIANT := v1 002
> -  DEVICE_PACKAGES := ath10k-firmware-qca988x kmod-ath10k kmod-usb2
> +  DEVICE_PACKAGES := ath10k-firmware-qca988x-ct kmod-ath10k-ct-smallbuffers kmod-usb2
>     IMAGES += factory.dlf
>     IMAGE/factory.dlf := append-kernel | pad-to $$$$(BLOCKSIZE) | \
>   	append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | \
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
