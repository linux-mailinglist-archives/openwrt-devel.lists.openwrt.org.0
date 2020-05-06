Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F971C6FAB
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 May 2020 13:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojsrlg37hNe0QFdlYgMvHx9q0XLrtUNGeIsN2WbqbKM=; b=lA3t/B9MQuZGIS
	ghvU19wGGMddQ2Sf5NbI/OaSbKaNd09F9ENcY3+OwKimGmBAeDuSLgYikH1nyzc5EWjlqB+5qJLqO
	bKc/v68VE+wXz2qTFOpewZROCuSm9w0hW3Q5z++e4xZk4C8HfF8qjEM16oSK24t3PqfONbnw7ozOy
	NfcRhAYp8OznUobjjA3GyUrBJR71er2FcFsgGKPGHiUloI8aT8722hl8+cGTHeA4r/I+OZqCAFxIV
	g2HYu+nEzbTnz1IGFQwMqfJqnAjP+H5JVp8VC4pQHdC8qhmsEPCpZT2TQZPVibHbeVB1qTC+EJz+z
	O7G0wvucFKo+b3ZxRyaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIbp-00054X-8P; Wed, 06 May 2020 11:53:05 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIbi-00053m-S6
 for openwrt-devel@lists.openwrt.org; Wed, 06 May 2020 11:53:01 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jWIbc-00041I-0S; Wed, 06 May 2020 13:52:52 +0200
Date: Wed, 6 May 2020 12:52:47 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: zhangkaiheb@126.com
Message-ID: <20200506115247.GC1810@makrotopia.org>
References: <20200506105117.66929-1-zhangkaiheb@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506105117.66929-1-zhangkaiheb@126.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_045258_904467_8D89F2EC 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] add i40e netdevice configs
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, May 06, 2020 at 10:51:17AM +0000, zhangkaiheb@126.com wrote:
> From: kai zhang <zhangkaiheb@126.com>

Must have been a too bit early for me today, but apart from the missing
commit description and 'kernel: ' prefix of the commit titles, I have
also just noticed that this has already been added recently with

commit 5d81b28a829ac20fb60991e71ee7a7c53d14fd58
Author: Xiaobo Tian <peterwillcn@gmail.com>
Date:   Wed Apr 1 12:19:35 2020 +0800

kernel: support intel X7xx 10/40GbE adapters

Signed-off-by: Xiaobo Tian <peterwillcn@gmail.com>
[Add i40evf/i40evf.ko and setect CONFIG_IAVF]
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>


> 
> Signed-off-by: kai zhang <zhangkaiheb@126.com>
> ---
>  package/kernel/linux/modules/netdevices.mk | 32 ++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/package/kernel/linux/modules/netdevices.mk b/package/kernel/linux/modules/netdevices.mk
> index 6ea2f1df89..ce03ae998e 100644
> --- a/package/kernel/linux/modules/netdevices.mk
> +++ b/package/kernel/linux/modules/netdevices.mk
> @@ -642,6 +642,38 @@ endef
>  $(eval $(call KernelPackage,ixgbevf))
>  
>  
> +define KernelPackage/i40e
> +  SUBMENU:=$(NETWORK_DEVICES_MENU)
> +  TITLE:=Intel(R) Ethernet Controller XL710 Family support
> +  DEPENDS:=@PCI_SUPPORT +kmod-mdio +kmod-ptp
> +  KCONFIG:=CONFIG_I40E
> +  FILES:=$(LINUX_DIR)/drivers/net/ethernet/intel/i40e/i40e.ko
> +  AUTOLOAD:=$(call AutoLoad,35,i40e)
> +endef
> +
> +define KernelPackage/i40e/description
> + Kernel modules for Intel(R) Ethernet Controller XL710 Family support.
> +endef
> +
> +$(eval $(call KernelPackage,i40e))
> +
> +
> +define KernelPackage/i40evf
> +  SUBMENU:=$(NETWORK_DEVICES_MENU)
> +  TITLE:=Intel(R) Ethernet Adaptive Virtual Function support
> +  DEPENDS:=@PCI_SUPPORT
> +  KCONFIG:=CONFIG_I40EVF
> +  FILES:=$(LINUX_DIR)/drivers/net/ethernet/intel/i40evf/i40evf.ko
> +  AUTOLOAD:=$(call AutoLoad,35,i40evf)
> +endef
> +
> +define KernelPackage/i40evf/description
> + Kernel modules for Intel(R) Ethernet Adaptive Virtual Function support.
> +endef
> +
> +$(eval $(call KernelPackage,i40evf))
> +
> +
>  define KernelPackage/b44
>    TITLE:=Broadcom 44xx driver
>    KCONFIG:=CONFIG_B44
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
