Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB0619B486
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 19:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QTk4pepny9tyqYvPo0kokraL2o4o7yUFvOk149V/nww=; b=ikwDWV10cK/35AA5/13UOAV1I
	InwtwIf8fRS5lQ1x7JWDBF14oO25OzOxHhRlI+uUMMeNXAK9JQr/ucd6lUobnisbVh3sY9reVXZW2
	PHn1lI85Vq5UtHAl2K68xCvpf/52oX/qAb2wEopwe0Ou/ASj1lDF46Q+puPS1PcU4lU5SzcQMu3jJ
	UgowqqY47Fst5+DDqRozbeTQ/ycHKzvjIPhkVbBkTgi+Klm6MO0Ogb6AQi0OJ1It0k8TCOODpBHiP
	mJfGccJHDXu30FBPtovt1ZMNe6jWo3YoSZKE07pKaV7scA83Vj4ewvw0EUNQwt7tPg55mkEqG2joY
	QoKknt11w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJgqO-00063N-Hx; Wed, 01 Apr 2020 17:08:00 +0000
Received: from welho-filter2.welho.com ([83.102.41.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJgqH-000622-Jx
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 17:07:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter2.welho.com (Postfix) with ESMTP id 0988F3881C;
 Wed,  1 Apr 2020 20:07:48 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp3.welho.com ([IPv6:::ffff:83.102.41.86])
 by localhost (welho-filter2.welho.com [::ffff:83.102.41.24]) (amavisd-new,
 port 10024)
 with ESMTP id OobO9fW8tvZH; Wed,  1 Apr 2020 20:07:47 +0300 (EEST)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp3.welho.com (Postfix) with ESMTPS id 239FC2320;
 Wed,  1 Apr 2020 20:07:44 +0300 (EEST)
To: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 openwrt-devel@lists.openwrt.org
References: <20200401101423.8618-1-ldir@darbyshire-bryant.me.uk>
 <20200401101423.8618-2-ldir@darbyshire-bryant.me.uk>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <73a9987e-ada9-3911-d337-c3e5656331a1@iki.fi>
Date: Wed, 1 Apr 2020 20:07:44 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101
 Thunderbird/75.0
MIME-Version: 1.0
In-Reply-To: <20200401101423.8618-2-ldir@darbyshire-bryant.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_100753_986559_0946C1EB 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.24 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v1 1/2] kmod-sched-cake: rename to
 kmod-sched-cake-oot
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

Kevin Darbyshire-Bryant kirjoitti 1.4.2020 klo 13.14:
> In preparation for dropping the out of tree cake module and using
> in tree cake from upstream, rename the package to kmod-sched-cake-oot
> (out of tree)
>
> Initially add a PROVIDES kmod-sched-cake so that package dependencies
> can be satisfied.
>
> Ultimately this package will be removed when linux 4.14 is removed.
>
> Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
> ---
>   .../Makefile                                        | 13 +++++++------
>   1 file changed, 7 insertions(+), 6 deletions(-)
>   rename package/kernel/{kmod-sched-cake => kmod-sched-cake-oot}/Makefile (75%)
>
> diff --git a/package/kernel/kmod-sched-cake/Makefile b/package/kernel/kmod-sched-cake-oot/Makefile
> similarity index 75%
> rename from package/kernel/kmod-sched-cake/Makefile
> rename to package/kernel/kmod-sched-cake-oot/Makefile
> index 42e45b5789..fbcb9cec4b 100644
> --- a/package/kernel/kmod-sched-cake/Makefile
> +++ b/package/kernel/kmod-sched-cake-oot/Makefile
> @@ -8,7 +8,7 @@
>   include $(TOPDIR)/rules.mk
>   include $(INCLUDE_DIR)/kernel.mk
>   
> -PKG_NAME:=sched-cake
> +PKG_NAME:=sched-cake-oot
>   PKG_RELEASE:=1
>   
>   PKG_SOURCE_PROTO:=git
> @@ -20,23 +20,24 @@ PKG_MAINTAINER:=Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
>   
>   include $(INCLUDE_DIR)/package.mk
>   
> -define KernelPackage/sched-cake
> +define KernelPackage/sched-cake-oot
>     SUBMENU:=Network Support
> -  TITLE:=Cake fq_codel/blue derived shaper
> +  TITLE:=OOT Cake fq_codel/blue derived shaper
>     URL:=https://github.com/dtaht/sch_cake
>     FILES:=$(PKG_BUILD_DIR)/sch_cake.ko
>     AUTOLOAD:=$(call AutoLoad,75,sch_cake)
> -  DEPENDS:=+kmod-ipt-conntrack
> +  DEPENDS:=+kmod-sched-core
> +  PROVIDES:=kmod-sched-cake
>   endef
>   

I tried to compile kmod-sched-cake-oot for ar71xx with kernel 4.14, and it 
failed due to dependency error:

Package kmod-sched-cake-oot is missing dependencies for the following libraries:
nf_conntrack.ko
make[3]: *** [Makefile:52: 
/Openwrt/wndr3700/bin/targets/ar71xx/generic/packages/kmod-sched-cake-oot_4.14.172+2020-01-10-aeff7a3e-1_mips_24kc.ipk] 
Error 1
make[3]: Leaving directory '/Openwrt/wndr3700/package/kernel/kmod-sched-cake-oot'

The old (out-of-tree) package had dependency for kmod-ipt-conntrack that was 
now replaced by sched-core, but that is apparently not enough?
(kmod-ipt-conntrack selects kmod-nf-conntrack)


>   include $(INCLUDE_DIR)/kernel-defaults.mk
>   
>   define KernelPackage/sched-cake/description
> -  Common Applications Kept Enhanced fq_codel/blue derived shaper
> +  O(ut) O(f) T(ree) Common Applications Kept Enhanced fq_codel/blue derived shaper
>   endef
>   
>   define Build/Compile
>   	$(KERNEL_MAKE) M="$(PKG_BUILD_DIR)" modules
>   endef
>   
> -$(eval $(call KernelPackage,sched-cake))
> +$(eval $(call KernelPackage,sched-cake-oot))



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
