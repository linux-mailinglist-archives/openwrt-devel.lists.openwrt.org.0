Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE8313CCC5
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 20:07:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lOOyNTnPHtVp+PFxqIZ7xx69l9iWOh30dXWO5Bjy25o=; b=idOoOLhVX3gRg/Zx0lys1X0ec
	NmdwGdt4XdrKfPlFnfq1GC6cD12qGLRWxtqCX60M+LCOBPRk1ytg4ket5ELasdBS7NPJAw/UvyC9B
	3smaU2GP1iBryfaf+gKlAK93+EOrwbfEeYReX1fRCP/LtQjESzgprLANxiaXmRei8HTJGNyzH/tzF
	KQutY2sgoYcIydTGwaluPjzIZEpMcXqWOI4gzsAJRt0K8Og68jyq3ZdwNuOYduof+HGj0FgkR5/0u
	28toB5cXJWM04V0r6kQ23jjWEB6dNwB3XGYH8qTxbpOlCvaKxcf5XoCWi3fRgrpu9Vjoq/1z3GLF7
	I46Dzpd2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iro0T-00081u-TP; Wed, 15 Jan 2020 19:07:09 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iro0J-00080K-BA
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 19:07:03 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iro0H-0006hd-7p; Wed, 15 Jan 2020 20:06:57 +0100
To: Jeff Kletsky <lede@allycomm.com>, openwrt-devel@lists.openwrt.org
References: <20191113210949.2490-1-lede@allycomm.com>
From: John Crispin <john@phrozen.org>
Message-ID: <232ac781-fc95-e6c6-eef8-80f15a8eb602@phrozen.org>
Date: Wed, 15 Jan 2020 20:06:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191113210949.2490-1-lede@allycomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_110659_542897_D447E364 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] build: define check-kernel-size to
 remove unflashable images
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
Cc: Jeff Kletsky <git-commits@allycomm.com>,
 Chuanhong Guo <gch981213@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 13/11/2019 22:09, Jeff Kletsky wrote:
> From: Jeff Kletsky <git-commits@allycomm.com>
> 
> Certain boards have limitations on U-Boot that prevent flashing
> of images where the kernel size exceeds a threshold, yet
> sysupgrade can sucessfully manage larger kernels. The current
> check-size will remove the target artifact if its total size
> exceeds the threshold. If applied after append-kernel,
> it will remove the kernel, but the remaining image-assembly
> steps will continue, resulting in an image without a kernel
> that is likely unbootable.
> 
> By defining check-kernel-size, it is now possible to prevent release
> of such unbootable images through a construct similar to:
> 
>    IMAGE/factory.img := append-kernel | pad-to $$$$(GL_UBOOT_UBI_OFFSET) | \
>      append-ubi | check-kernel-size $$$$(GL_UBOOT_UBI_OFFSET)
> 
> Cc: Chuanhong Guo <gch981213@gmail.com>
> 
> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
Merged, thanks !
> ---
>   include/image-commands.mk | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/include/image-commands.mk b/include/image-commands.mk
> index 5dfd6a2c2f..f561ad4669 100644
> --- a/include/image-commands.mk
> +++ b/include/image-commands.mk
> @@ -271,6 +271,13 @@ define Build/check-size
>   	}
>   endef
>   
> +define Build/check-kernel-size
> +	@[ $$(($(subst k,* 1024,$(subst m, * 1024k,$(1))))) -ge "$$(stat -c%s $(IMAGE_KERNEL))" ] || { \
> +		echo "WARNING: Kernel for $@ is too big > $(1)" >&2; \
> +		rm -f $@; \
> +	}
> +endef
> +
>   define Build/combined-image
>   	-sh $(TOPDIR)/scripts/combined-image.sh \
>   		"$(IMAGE_KERNEL)" \
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
