Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1210C611F7
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jul 2019 17:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0SeuuifgG87vLuU/XV4Ab5brOtNTJghHQz9/xRyWL4=; b=krdoKIyKsJGxR7
	NEw+t+w1hZtKc55UNknzGO7mtMQ3M7rarzGEKBPq+qj3YRduKT6YzyKiNWxOeBNHelaOs7Q3TxHBJ
	y85Oc/nkd7BTqU5knZwC4sLPgK8N+mMzf8I/L5ZNoAR/mUX9L0YltQkOEPXPnJr7iBeToTtUDu4o9
	JKN3XhAtNhHYwvW7hA+MFMzevjcrccQSWxGxXa+0ufpUrrTC8hTpHtqigCG1c4uj+7g02BrdXRqkl
	bkvvV+DbaU8Ay+0o9xKhwVnArh9RjLo4A0DMpq1NlsOIuL8bohyJ+8pmE39AqXhxkmvGf1aGnvEyG
	2ZlRXX1WSf9suueJ2+jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjmsO-0003rE-9F; Sat, 06 Jul 2019 15:45:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjms7-0003Tq-AT
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jul 2019 15:45:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so3542465wrr.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jul 2019 08:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zv/7T0/iDpNmXM+S+P9wHe9I3XPY/7qUzIDw5OqAfrw=;
 b=h3GFMtUHMN8kz1qGs/8grFRnEsiMYgh5z2wFj0Ae0Bw+1mfn13pZBpfhoGjp1fKnuV
 D3auaJl6KjE6PE/Rzx/XJijTEmHwdnOCrOqtGMeuQu9CZNW7lWbjvB8CeI5s/bDs4DIv
 l5+5oAuSSSYp1z+wsbRoqsy2tRYfgkWehVcR0LqpvkYVXIbpBsSLlkYvEQd5ydcYQCm2
 cqgDIjbDnlfWFlV12Cm5n1aPcRwgaZu2yC+659xatIyDUqlFKIDUryxtrg+osU3FwdYG
 tRo5O4QdWiEA9uXSZW5OjkOyx2pKWCG7s8ca8887kWWFVwXXh3wk5ZcpU4oOTCtL6tfu
 eRxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zv/7T0/iDpNmXM+S+P9wHe9I3XPY/7qUzIDw5OqAfrw=;
 b=nzu85Piw3ED9x7xvUA2XtDDOKJbdqyO/m7hut3c06ogynRyimdL511/mfKzdhA+4Dm
 WoGHpvhC9P1u3o0tCNGyIzE2Iiuba8kOGx09FV5bMSF8dsd8SOnbJuGwBbHmw5pwnuyg
 bXjXxHHwyT0tFeRqCGVkVOm5+mxyjPwOBYSFjISO5ZlZS9VMzTqMW63MFGy6mMxA1YRK
 Y7LBwOsFkqwdxGElUH/MyOabAuc9EF3LHFjaBVU6AAiTEY5Dq7u5RX4ex7zCEGWjprhe
 Lleu0KXPKY9Js1OXhocVirrHPkzppdZf3mhp8YgBgHcvGkezbrdU3Y9KCnCl1bp/OjwN
 SbWQ==
X-Gm-Message-State: APjAAAVxI2CJDMBQ70pz/v9c1ELk0vvH+vMRItZWJ4L/Z4Lei2KIA/Fx
 L1/jBZ7urbhzoW3XEg3oEQM=
X-Google-Smtp-Source: APXvYqxLOcq7RHhZsKQjTYRz59G2Q9cqcC/iVMc+eQ/7X14TuwWSx8oVDbZ18nhG4K2ZhCG4e4ZD6w==
X-Received: by 2002:adf:e8cb:: with SMTP id k11mr9215076wrn.244.1562427905441; 
 Sat, 06 Jul 2019 08:45:05 -0700 (PDT)
Received: from debian64.daheim (p5B0D755A.dip0.t-ipconnect.de. [91.13.117.90])
 by smtp.gmail.com with ESMTPSA id
 a12sm11602923wrr.70.2019.07.06.08.45.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 06 Jul 2019 08:45:04 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hjms3-0006ba-T3; Sat, 06 Jul 2019 17:45:03 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 06 Jul 2019 17:45:03 +0200
Message-ID: <3107719.WGKQvLnyPJ@debian64>
In-Reply-To: <20190630150756.12439-1-linus.walleij@linaro.org>
References: <20190630150756.12439-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_084507_374226_79127EFE 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: Re: [OpenWrt-Devel] [PATCH] gemini: Add StorLink SL93512r images
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sunday, June 30, 2019 5:07:56 PM CEST Linus Walleij wrote:
> This adds image generation for the StorLink reference design
> SL93512r. This board is now supported upstream in kernel
> v4.19.
> 
> As this image structure is identical to SQ201 and Raidsonic,
> we simply refer to this as "storlink-reference" from now on.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

The buildbots are currently in a bit of a pickle:
<http://phase1.builds.lede-project.org/builders/gemini%2Fgeneric>

The gemini-target is failing for some time now.

This is due to this error (see patch):
https://patchwork.ozlabs.org/patch/1128185/

but also:

cp ./ImageInfo-storlink_sl93512r /home/luser/owrt/test-chunkeey-20190705-170344/gemini-generic/build_dir/target-arm_fa526_musl_eabi/linux-gemini/tmp/openwrt-gemini-storlink_sl93512r-squashfs-factory.bin.tmp/ImageInfo
cp: cannot stat './ImageInfo-storlink_sl93512r': No such file or directory

This is because the script "Build/storlink-default-images" expects to have
a "target/linux/gemini/image/ImageInfo-storlink_sl93512r".

@Linus: Can you please make a patch that adds the missing file?

Regards,
Christian

> ---
>  target/linux/gemini/image/Makefile | 24 +++++++++++++++++-------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
> index 5901bbf0c9b2..7b5faa04fd0e 100644
> --- a/target/linux/gemini/image/Makefile
> +++ b/target/linux/gemini/image/Makefile
> @@ -74,14 +74,15 @@ define Build/wiligear-image
>  	mv $@.new $@
>  endef
>  
> -# Create the special NAS4220B and Itian Square One SQ201 image
> -# format with the squashfs and overlay inside the "rd.gz" file.
> +# Create the default image format used by the StorLink reference design
> +# SL93512r, Raidsonic NAS4220B and Itian Square One SQ201
> +# with the squashfs and overlay inside the "rd.gz" file.
>  # We pad it out to 6144K which is the size of the initramfs partition.
>  #
>  # The "application" partition is just blank. You can put anything
>  # there when using OpenWRT. We just use that to create the
>  # "sysupgrade" firmware image.
> -define Build/nas4220b-sq201-images
> +define Build/storlink-default-images
>  	mkdir -p $@.tmp
>  
>  	mv $@ $@.tmp/rd.gz
> @@ -162,15 +163,16 @@ define Device/dlink_dns-313
>  endef
>  TARGET_DEVICES += dlink_dns-313
>  
> -define Device/itian-raidsonic
> +# Default images setup used by the StorLink reference designs
> +define Device/storlink-reference
>  	IMAGES := factory.bin
>  	IMAGE/factory.bin := append-rootfs | pad-rootfs | pad-to 6144k | \
> -		nas4220b-sq201-images $(1)
> +		storlink-default-images $(1)
>  	DEVICE_PACKAGES := $(GEMINI_NAS_PACKAGES)
>  endef
>  
>  define Device/itian_sq201
> -	$(Device/itian-raidsonic)
> +	$(Device/storlink-reference)
>  	DEVICE_TITLE := ITian Square One SQ201
>  	DEVICE_DTS := gemini-sq201
>  	DEVICE_PACKAGES += kmod-rt61-pci kmod-usb2-pci
> @@ -178,13 +180,21 @@ endef
>  TARGET_DEVICES += itian_sq201
>  
>  define Device/raidsonic_ib-4220-b
> -	$(Device/itian-raidsonic)
> +	$(Device/storlink-reference)
>  	DEVICE_TITLE := Raidsonic NAS IB-4220-B
>  	DEVICE_DTS := gemini-nas4220b
>  	DEVICE_TYPE := nas
>  endef
>  TARGET_DEVICES += raidsonic_ib-4220-b
>  
> +define Device/storlink-sl93512r
> +	$(Device/storlink-reference)
> +	DEVICE_TITLE := StorLink SL93512r
> +	DEVICE_DTS := gemini-sl93512r
> +endef
> +TARGET_DEVICES += storlink_sl93512r
> +
> +
>  # The wiliboard images need some changes to be functional and buildable.
>  #
>  # The dts would need to use the ecoscentric,redboot-fis-partitions partition
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
