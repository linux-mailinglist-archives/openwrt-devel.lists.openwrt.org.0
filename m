Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE52B9884
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 22:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ji9cgZv86DETGiG9jB2oSPxBN9f1cr7/BN4xCvxMvnY=; b=AQqQG4pO7tx+Hi
	pv6GAjDH06QZ8rNGD1Wi5FQFeOwQy754tgGYrZyyrrZcKRrgI7tYU4by9rFeSxqiOIG+fEoll712z
	gxkcKfjJI9gKs/n4/XHO8lk/wLiz1TB8/i93zDxwa4SWXW7arW3NLTbztzYGHLMeGJNeB7+J4HCEy
	3bWUhkE+goS+D+GKfGKdt6Ig7Tl8n2YJijyBqwisbocsqWq/zMg2YxdSH/yaN+EwwTi5BdT2Gycno
	rZ+8bTSWNSW3TIYJiDj4PJD69kyriXS/VUTA2UmUKC9oLOt2mkrn61ykgSFHYPhrFUKMAVZoU2E+Z
	5/JXlrwVARXwf0sYF2eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBPch-0003XV-0Z; Fri, 20 Sep 2019 20:35:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBPca-0003X9-6M
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 20:35:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id i18so8010717wru.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Sep 2019 13:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bTusz69laUamX1gK49ZC78gnSmiXbrW++MwdGRfUoJQ=;
 b=sKO8R5URIUNBJQpXI1AECYkmnoETR9q0ufeqHzrg2mrAY6CPglsQy/lVm4d5V6SelT
 Zm5ow3W1w4E8DWjDG0dqaaS0dLuqg+PgIRW5G2uLEPMEsLY/kMyyZwglw2XucD5hMuki
 ejN056ovBaipAy7xyINhJ76Q4cQueXayi3cG6nvm9hm7wHgV3xB6LgW/AW8dO2ktcja1
 g213lUVF97NdBdu6QXQpHET6C1gyD2rS9bvUZj/iooOWpAuHIJP5vJJDVnEBS/I+U64d
 00AKi0kqTFfym0/ubzu5I4JqRAOUDRDZtROXghfmUMnBuxfe9yiUKZl6Fg6xAz6OXsBE
 k6/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bTusz69laUamX1gK49ZC78gnSmiXbrW++MwdGRfUoJQ=;
 b=FnzcGGEGP4jG5urYiv6FkBAhXNvhPCWMSRh0NmWeOPDOlsnBaRWAb+jJ5/T1+m0Yvl
 rHN3e1+RHyofDP1RNtl8+4LgMriV8AYBfp6lcYO8O+BDnWVCJ9lAIxvAEhGXwKCMppbc
 8DCmSc27LvmQmeUtLtg5DYj0TmhscL1UgAKvydV/hz5DlBeR2suooivt1weVKRxPWlc0
 zL4KPmNuAwk3qkGPmfr0UTi27gudJLT0lfymDi/C55Pyx1xNpxNikQ1GWdwzCe79U/11
 q4T8DqVEEWqjcaSlAgXR8V/FVnpFgQB1ykQ/WwP1wfDLZrDZ4PcWOHH4VZg+4JrlYcq8
 HfTw==
X-Gm-Message-State: APjAAAXM36+608bY5QTiTmagNAESttsWuuprC0mWUIEsLBGxO0cUwfik
 9fjePBmHz9IEQ8Jsy4SI1YIdduMi
X-Google-Smtp-Source: APXvYqzSGxeWyi8aZ3GL1CFyFYTl/iVbTuR4SDTTUOJ0JxzmwmfK7pNt7X720PKtEKcyq9RCcPLDGQ==
X-Received: by 2002:a5d:51d2:: with SMTP id n18mr12722587wrv.10.1569011713074; 
 Fri, 20 Sep 2019 13:35:13 -0700 (PDT)
Received: from debian64.daheim (p4FD09E69.dip0.t-ipconnect.de.
 [79.208.158.105])
 by smtp.gmail.com with ESMTPSA id y72sm4584963wmc.26.2019.09.20.13.35.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 13:35:12 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.2)
 (envelope-from <chunkeey@gmail.com>)
 id 1iBPcV-00023F-Bt; Fri, 20 Sep 2019 22:35:11 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Sep 2019 22:35:11 +0200
Message-ID: <1650711.Cc8WsVpOxL@debian64>
In-Reply-To: <87imprcybz.fsf@husum.klickitat.com>
References: <87imprcybz.fsf@husum.klickitat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_133516_269249_16003168 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] apm821xx: for Meraki MR24 modify
 BLOCKSIZE to reduce LEB over-allocation
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
Cc: chrisrblake93@gmail.com, Russell Senior <russell@personaltelco.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

On Tuesday, September 17, 2019 6:59:28 AM CEST Russell Senior wrote:
> On Meraki MR24, the BLOCKSIZE variable is used to allocate space for the
> kernel blob. The LEB size on MR24 is 15.5k (15872 bytes). In the
> particular instance observed, it was found that reducing blocksize to
> 512 bytes resulted in 3 fewer LEBs being allocated to the kernel ubi
> volume, with no ill effects.
> 
> Signed-off-by: Russell Senior <russell@personaltelco.net>
> ---
>  target/linux/apm821xx/image/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/image/Makefile
> index 8203de39c5..1aa4e0dad3 100644
> --- a/target/linux/apm821xx/image/Makefile
> +++ b/target/linux/apm821xx/image/Makefile
> @@ -127,7 +127,7 @@ define Device/meraki_mr24
>    DEVICE_PACKAGES := kmod-spi-gpio -swconfig
>    BOARD_NAME := mr24
>    DEVICE_DTS := meraki-mr24
> -  BLOCKSIZE := 63k
> +  BLOCKSIZE := 512
>    IMAGES := sysupgrade.bin
>    DTB_SIZE := 64512
>    IMAGE_SIZE := 8191k

The value looks odd, since UBI volumes are always a multiple of the LEB size
and the documentation we have
<https://openwrt.org/docs/techref/flash.layout#discovery_how_to_find_out>
states that "The erasesize is the block size of the flash [...]".
so in that regard BLOCKSIZE could be 15872 or 16 KiB (if we would stick to
the real, raw value of the flash).

But I don't think a generated image with these parameters would boot anymore.
As the problem here is hidden in "MerakiAdd-dtb" step that is used generate the
KERNEL (for sysupgrade) relies on that  BLOCKSIZE value being a integer divisible
of the 63KiB value. Since this magic value (63KiB) is needed to place the
DTB+kernel at the correct offsets for mkmerakifw.

so, what to do? Because it's possible to get rid of the whole logic as well as the
MR24 portion of the mkmerakifw by refactoring the u-boot boot commands to just load
and boot a multi-file image. The framework is all there since the initramfs image is
already utilizing "MuImage-initramfs". This would save even more since this makes it
possible to also shrink down the DTB as well. As the "raw" information in there is 
just around 10k-15k and the rest of this is fluff. (Some of this fluff is needed by
u-boot though. As it needs some space (probably less than 128 bytes) of this area to
"add" in values for frequencies and ranges. So it can't be completely removed like
with newer u-boots).

So, Would you be willing to do this? 

Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
