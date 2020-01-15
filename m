Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B1D13CD6E
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 20:50:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e1xlthR0SRHA6my0BaeF3UxvuPLS+HWQyTEBEzLW0NQ=; b=SfOVHd/sB6IntKCvMJjOPHuI1
	4l4mDLP72iclP12g1lw0SvsQM6SjNWrFu6fGct6zFsEsC9bxIkTXi5TN+GTcqNGN8UnT0vR591FB2
	DW23tqoRTSVcYrCGMHlC0sYI13NRqHRLNbLxxeZInkCjfFAwS/jirCKhLEprucKGmLMryfHyzh8Qf
	RWs/c16vcH3M1XCiQVZL4+S5j/iGorhRi82B8n9/nD6ECzrBV2Ek/cBpO74laZ5N8iO0kQpwbi1mJ
	wHNEDaM9MffY5d66IqQlGGbn2TVRr3lRYxEKyAyRgev7cQhNjNa+TCaB8Fn4ZGVtLkZvklQrEjFme
	cacusgUQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irofr-0000A5-K3; Wed, 15 Jan 2020 19:49:55 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irofh-00009Y-Pu
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 19:49:50 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1irofg-0001Lq-AA; Wed, 15 Jan 2020 20:49:44 +0100
To: Maxim Storchak <m.storchak@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20200109182744.32700-1-m.storchak@gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <97ba56f0-ddc5-08f3-c380-a08f633aa17c@phrozen.org>
Date: Wed, 15 Jan 2020 20:49:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200109182744.32700-1-m.storchak@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_114945_999863_C9501C33 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] zram-swap: support swap priority
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

On 09/01/2020 19:27, Maxim Storchak wrote:
> If zram-backed swap is added after an existing swap, it gets a lower
> priority. Assiming that usually all other swaps are slower, there should
> be a way to assign a higher priority to zram swap.
> 
> Signed-off-by: Maxim Storchak <m.storchak@gmail.com>
Merged, thanks !
> ---
>   package/system/zram-swap/Makefile        | 2 +-
>   package/system/zram-swap/files/zram.init | 4 +++-
>   2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/package/system/zram-swap/Makefile b/package/system/zram-swap/Makefile
> index bcada98a81..ee5e85927f 100644
> --- a/package/system/zram-swap/Makefile
> +++ b/package/system/zram-swap/Makefile
> @@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
>   
>   PKG_NAME:=zram-swap
>   PKG_VERSION:=1.1
> -PKG_RELEASE:=3
> +PKG_RELEASE:=4
>   
>   PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
>   
> diff --git a/package/system/zram-swap/files/zram.init b/package/system/zram-swap/files/zram.init
> index ae432f3b00..49140ad406 100755
> --- a/package/system/zram-swap/files/zram.init
> +++ b/package/system/zram-swap/files/zram.init
> @@ -172,6 +172,8 @@ start()
>   	local zram_size="$( zram_getsize )"
>   	local zram_dev="$( zram_getdev )"
>   	zram_applicable "$zram_dev" || return 1
> +	local zram_priority="$( uci -q get system.@system[0].zram_priority )"
> +	zram_priority=${zram_priority:+-p $zram_priority}
>   
>   	logger -s -t zram_start -p daemon.debug "activating '$zram_dev' for swapping ($zram_size MegaBytes)"
>   
> @@ -180,7 +182,7 @@ start()
>   	zram_comp_streams "$zram_dev"
>   	echo $(( $zram_size * 1024 * 1024 )) >"/sys/block/$( basename "$zram_dev" )/disksize"
>   	mkswap "$zram_dev"
> -	swapon "$zram_dev"
> +	swapon $zram_priority "$zram_dev"
>   }
>   
>   stop()
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
