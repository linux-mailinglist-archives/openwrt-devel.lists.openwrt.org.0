Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0609D10CFE0
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 Nov 2019 00:01:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsxjBeX1T0hRlugGmpfIm8LgifLqNTYdR0SinnD/Y50=; b=OIoZ33aR9f/rJk
	vX9wHppUeF0a4jl/EwI3SdWh1aLiJt2fs7M4yqRN8NBrchBrbTTQkIvAprCCAfzUKYGhbxJQQT9c8
	ONOG88JKsgevdgO5mcQYWZ6H0/OyZnrPfTYPr+1I9m3nyV2sFFRmFaM3WZ7V9CfTv3Z2HKP+8bUj5
	xmfYl81tjAwFZi6MnDzKBNTtTIo3Wn1AWCkC5ktY5rT3Izps0tlGXFOByevRuSqrLxAv5kSnKP3JW
	Z48MJ2vRv/qFAm92dkkWaAZA4wbha2rhLRidqMuKmZwPYVlEyhx3VXf66xydjJpYonjxaPCobDZA+
	UcGtgYdTQ1SwuihN6Vpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaSnG-0007Cw-J5; Thu, 28 Nov 2019 23:01:50 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaSn9-0007CN-Eu
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 23:01:44 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iaSn1-0003Jj-0V; Fri, 29 Nov 2019 00:01:35 +0100
Date: Fri, 29 Nov 2019 00:01:26 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Message-ID: <20191128230126.GF3366@makrotopia.org>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
 <20191122095541.688125-5-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122095541.688125-5-thomas.petazzoni@bootlin.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_150143_497676_610B716A 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 4/7] include/image.mk: implement SELinux
 squashfs image generation
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

Hi Thomas,

On Fri, Nov 22, 2019 at 10:55:38AM +0100, Thomas Petazzoni wrote:
> Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> ---
>  include/image.mk | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/include/image.mk b/include/image.mk
> index 8592c19b99..86b3edeb87 100644
> --- a/include/image.mk
> +++ b/include/image.mk
> @@ -239,13 +239,26 @@ endef
>  $(eval $(foreach S,$(JFFS2_BLOCKSIZE),$(call Image/mkfs/jffs2/template,$(S))))
>  $(eval $(foreach S,$(NAND_BLOCKSIZE),$(call Image/mkfs/jffs2-nand/template,$(S))))
>  
> -define Image/mkfs/squashfs
> +define Image/mkfs/squashfs-common
>  	$(STAGING_DIR_HOST)/bin/mksquashfs4 $(call mkfs_target_dir,$(1)) $@ \
>  		-nopad -noappend -root-owned \
>  		-comp $(SQUASHFSCOMP) $(SQUASHFSOPT) \
>  		-processors 1
>  endef
>  
> +ifeq ($(CONFIG_PACKAGE_refpolicy),y)
> +define Image/mkfs/squashfs
> +	echo "LD_LIBRARY_PATH=\$$LD_LIBRARY_PATH:$(STAGING_DIR_HOSTPKG)/lib $(STAGING_DIR_HOSTPKG)/sbin/setfiles -r $(call mkfs_target_dir,$(1)) $(call mkfs_target_dir,$(1))/etc/selinux/targeted/contexts/files/file_contexts $(call mkfs_target_dir,$(1))" > $@.fakeroot-script
> +	echo "$(Image/mkfs/squashfs-common)" >> $@.fakeroot-script
> +	chmod +x $@.fakeroot-script
> +	$(STAGING_DIR_HOST)/bin/fakeroot $@.fakeroot-script
> +endef
> +else
> +define Image/mkfs/squashfs
> +	$(call Image/mkfs/squashfs-common,$(1))
> +endef
> +endif
> +

I thought about introducing fakeroot in a similar way before, but for
different purposes such as having setuid binaries or files owned by
users other than root contained in the rootfs.
Hence I believe it'd be good to always use fakeroot instead of using
'-root-owned', but that's a bit more work...

+1 for your work to enable SELinux in OpenWrt, I'll try to find time
for some testing that.


Cheers


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
