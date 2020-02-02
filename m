Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C1C14FEC4
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 19:32:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CxkQlzaXIjrQBdm/VWRgMPiSALF+hag92nQvouSLkws=; b=PpcRhyGz3JSyrWkqxvYetOcvJ
	VyQ1n0eUWUupOkO1Lhnuk1CG5PtlDZ1fFVWZ5LN1kp432fTnHGdkDCeAdMGpZ9YOMAeVPkr8QNytX
	+RLhMq4ZhwO1hfJ8OBD7+9W4dH/XECaDPs1CF+F/2UlWQPBFQXCFb48gDKB3Z1WF3Eo+0C6ZUP5TV
	2fB7furM6DEPda9brnwsphCZPD1du5bnHr4zZNO3wdP/vQ6rcYmgFou4fUYq67CrKcUHciH600pU3
	but1+j4tzhGI2hZuIED9rjTpFlhrG/rVabcMj9to4qVSeVZfz9DV9kdudOzUwZGyzyg+u9+1UgYMP
	vntO3G0Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyK2J-0001y1-Ll; Sun, 02 Feb 2020 18:31:59 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyK2B-0001xc-5m
 for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 18:31:53 +0000
Received: by mail-lj1-x242.google.com with SMTP id h23so12261392ljc.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 02 Feb 2020 10:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=l1wHlNUBgXQTkfY3Y/po+kmLrYVb1kQ9dN0XIaDiS4I=;
 b=mOaDJSG/2wGRW3Kx9WIUXtUT2+k/16rl/GyfVMZZ9Qp/JEFxMu9gy1vN9wu0RlnLst
 nVOOFqBjUfDuVYz3oZAk9OFzKqhETy8+XHkudEsc0azsWjZQw5m3YbICJCTr9IW4U5ls
 HIye/7jN6KkXsqNv9IvZQWwYBMicLZ23mGNW0aVa2G5Dc0LUOUdPW1jSsTiqILd6rBT6
 1V0rHTGuB2Cf55znOYy5+rY3h+fn1gGkTeAHLdg9IiysN/XeFnqxf6EOoXOHqqLUlvW+
 54UG1+6xwn3IExP3rzn8vKOnLQE9z1LKZ0oyYAsExdaKreZQUA6tDUHpo/3vxjGN9tyY
 jghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=l1wHlNUBgXQTkfY3Y/po+kmLrYVb1kQ9dN0XIaDiS4I=;
 b=Qmjwb8CUBu0uplOCntDdUrgJNp3JDZQhDIS5qAZG+faaqnJm7jdfVNIfh1BLHZmfpl
 g2D7soR+za1PQ6P7peBUZTkvDY73OB+B0QSd/tPQHmduzxYbZ5Db3tVC9AClKVMvpz6V
 +qGYdvuLJT2MbGrGZcoox46xkqlVyrHUe7ExtJoIRxVwdjVLRjVEJRb7L+i1wOq3EHIr
 y32Enie2L6WcnyR+xv7xVobPY3tIcFCYPVGmw3/7YdOX+yoSiA8sug9GiMG9c5OWciYu
 MLmEXJUwcB/3Ogx24M7GGzlnfLal6V/X++Xch06Yq09zh9E7C4g72azINZwicBRrAobR
 5u1Q==
X-Gm-Message-State: APjAAAWmPa1PgKkZwKc9cNoUBlc32Z0CXR2Ry7rCM53DsLTd6abatBmw
 3NarNin7blCH75aianxK5xqE2fi+
X-Google-Smtp-Source: APXvYqyCe0Odj1kjk8xLiWGyWza7hpwhTbXHe4GzNurRwqaYvKKrSH7ra1OjaTLHmnu1CdnIBbHRAw==
X-Received: by 2002:a2e:7d0c:: with SMTP id y12mr11909824ljc.39.1580668307379; 
 Sun, 02 Feb 2020 10:31:47 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id q10sm8537058ljj.60.2020.02.02.10.31.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 Feb 2020 10:31:46 -0800 (PST)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20200202124828.2100-1-freifunk@adrianschmutzler.de>
 <a49ff1f2-a4ac-df8d-14be-4e9d3e111eee@gmail.com>
 <00fe01d5d9ed$171fe360$455faa20$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <385356a9-1a7e-7492-c9d6-863489cc9029@gmail.com>
Date: Sun, 2 Feb 2020 19:31:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <00fe01d5d9ed$171fe360$455faa20$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_103151_222282_4D042D84 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: introduces KERNEL_LZMA variable
 for common build sequence
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

Hi Adrian,

On 02.02.2020 18:20, mail@adrianschmutzler.de wrote:
> Hi Piotr,
> 
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of Piotr Dymacz
>> Sent: Sonntag, 2. Februar 2020 18:02
>> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
>> devel@lists.openwrt.org
>> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: introduces KERNEL_LZMA
>> variable for common build sequence
>> 
>> Hi Adrian,
>> 
>> On 02.02.2020 13:48, Adrian Schmutzler wrote:
>> > This introduce a variable KERNEL_LZMA to replace the frequently used
>> > sequence "kernel-bin | append-dtb | lzma", similar to the KERNEL_DTB
>> > variable in ramips target.
>> 
>> So in results we will have:
>> 
>> ramips: KERNEL_DTB   = kernel-bin | append-dtb | lzma
>>   ath79: KERNEL_LZMA := kernel-bin | append-dtb | lzma
>> 
>> Is there any reason to use different var name in ath79?
> 
> In ath79 we have some cases where gzip is used instead of lzma, e.g.
> https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/image/common-tp-link.mk#L42

Plus some where no compression is used.

> Thus, if we use KERNEL_DTB for the case with lzma, it would be misleading, as the name only tells us about the DTB.

One code base, two variables with same values using different names?
That looks wrong to me.

> So, we could either just use " KERNEL_DTB  := kernel-bin | append-dtb ", which is too short to be helpful IMO, or use a more indicative name for the VARIABLE, which I thought I found. Actually, I would consider it more correct to change the name for ramips, too.

'KERNEL_DTB := kernel-bin | append-dtb' would cover almost everything, 
including KERNEL_INITRAMFS, but I agree that wouldn't help much.

> We could also use KERNEL_DTB_LZMA of course, but I do not think this will really bring a benefit.

"There are only two hard things in Computer Science: cache invalidation 
and naming things." :)

I care more about consistency in naming variables carrying same values 
than the name itself.

-- 
Cheers,
Piotr

> 
> Best
> 
> Adrian
> 
>> 
>> Also, see: https://chris.beams.io/posts/git-commit/#imperative
>> 
>> --
>> Cheers,
>> Piotr
>> 
>> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>> > ---
>> >   target/linux/ath79/image/Makefile           |  5 +++--
>> >   target/linux/ath79/image/common-mikrotik.mk |  4 ++--
>> >   target/linux/ath79/image/common-tp-link.mk  | 14 ++++++--------
>> >   target/linux/ath79/image/generic-tp-link.mk |  5 ++---
>> >   target/linux/ath79/image/generic-ubnt.mk    |  2 +-
>> >   target/linux/ath79/image/generic.mk         | 10 +++++-----
>> >   6 files changed, 19 insertions(+), 21 deletions(-)
>> >
>> > diff --git a/target/linux/ath79/image/Makefile
>> > b/target/linux/ath79/image/Makefile
>> > index a28658ec0b..71ffa4b429 100644
>> > --- a/target/linux/ath79/image/Makefile
>> > +++ b/target/linux/ath79/image/Makefile
>> > @@ -52,6 +52,7 @@ define Build/relocate-kernel
>> >   	rm -rf $@.relocate
>> >   endef
>> >
>> > +KERNEL_LZMA := kernel-bin | append-dtb | lzma
>> >
>> >   define Device/Default
>> >     DEVICE_DTS_DIR := ../dts
>> > @@ -59,8 +60,8 @@ define Device/Default
>> >     PROFILES = Default
>> >     MTDPARTS :=
>> >     BLOCKSIZE := 64k
>> > -  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma
>> > -  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | uImage lzma
>> > +  KERNEL := $(KERNEL_LZMA) | uImage lzma  KERNEL_INITRAMFS :=
>> > + $(KERNEL_LZMA) | uImage lzma
>> >     COMPILE :=
>> >     SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
>> >     IMAGES := sysupgrade.bin
>> > diff --git a/target/linux/ath79/image/common-mikrotik.mk
>> > b/target/linux/ath79/image/common-mikrotik.mk
>> > index 292237c76a..6531619fe9 100644
>> > --- a/target/linux/ath79/image/common-mikrotik.mk
>> > +++ b/target/linux/ath79/image/common-mikrotik.mk
>> > @@ -2,6 +2,6 @@ define Device/mikrotik
>> >   	DEVICE_VENDOR := MikroTik
>> >   	DEVICE_PACKAGES := rbextract rbcfg
>> >   	LOADER_TYPE := elf
>> > -	KERNEL := kernel-bin | append-dtb | lzma | loader-kernel
>> > -	KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | loader-
>> kernel
>> > +	KERNEL := $(KERNEL_LZMA) | loader-kernel
>> > +	KERNEL_INITRAMFS := $(KERNEL_LZMA) | loader-kernel
>> >   endef
>> > diff --git a/target/linux/ath79/image/common-tp-link.mk
>> > b/target/linux/ath79/image/common-tp-link.mk
>> > index a9fccd0fe6..abce4095c4 100644
>> > --- a/target/linux/ath79/image/common-tp-link.mk
>> > +++ b/target/linux/ath79/image/common-tp-link.mk
>> > @@ -14,8 +14,8 @@ define Device/tplink-v1
>> >     TPLINK_HWREV := 0x1
>> >     TPLINK_HEADER_VERSION := 1
>> >     LOADER_TYPE := gz
>> > -  KERNEL := kernel-bin | append-dtb | lzma
>> > -  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma |
>> > tplink-v1-header
>> > +  KERNEL := $(KERNEL_LZMA)
>> > +  KERNEL_INITRAMFS := $(KERNEL_LZMA) | tplink-v1-header
>> >     IMAGES += factory.bin
>> >     IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade | append-
>> metadata
>> >     IMAGE/factory.bin := tplink-v1-image factory @@ -26,8 +26,7 @@
>> > define Device/tplink-nolzma
>> >     LOADER_FLASH_OFFS := 0x22000
>> >     COMPILE := loader-$(1).gz
>> >     COMPILE/loader-$(1).gz := loader-okli-compile
>> > -  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c49 |
>> \
>> > -	loader-okli $(1) 7680
>> > +  KERNEL := $(KERNEL_LZMA) | uImage lzma -M 0x4f4b4c49 | loader-okli
>> > + $(1) 7680
>> >     KERNEL_INITRAMFS := kernel-bin | append-dtb | gzip | tplink-v1-header
>> >   endef
>> >
>> > @@ -63,7 +62,7 @@ endef
>> >
>> >   define Device/tplink-safeloader
>> >     $(Device/tplink-v1)
>> > -  KERNEL := kernel-bin | append-dtb | lzma | tplink-v1-header -O
>> > +  KERNEL := $(KERNEL_LZMA) | tplink-v1-header -O
>> >     IMAGE/sysupgrade.bin := append-rootfs | tplink-safeloader sysupgrade
>> | \
>> >       append-metadata | check-size $$$$(IMAGE_SIZE)
>> >     IMAGE/factory.bin := append-rootfs | tplink-safeloader factory @@
>> > -71,7 +70,7 @@ endef
>> >
>> >   define Device/tplink-safeloader-uimage
>> >     $(Device/tplink-safeloader)
>> > -  KERNEL := kernel-bin | append-dtb | lzma | uImageArcher lzma
>> > +  KERNEL := $(KERNEL_LZMA) | uImageArcher lzma
>> >   endef
>> >
>> >   define Device/tplink-safeloader-okli @@ -80,6 +79,5 @@ define
>> > Device/tplink-safeloader-okli
>> >     LOADER_FLASH_OFFS := 0x43000
>> >     COMPILE := loader-$(1).elf
>> >     COMPILE/loader-$(1).elf := loader-okli-compile
>> > -  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c49 |
>> \
>> > -	loader-okli $(1) 12288
>> > +  KERNEL := $(KERNEL_LZMA) | uImage lzma -M 0x4f4b4c49 | loader-okli
>> > + $(1) 12288
>> >   endef
>> > diff --git a/target/linux/ath79/image/generic-tp-link.mk
>> > b/target/linux/ath79/image/generic-tp-link.mk
>> > index f1a603dc6d..30e6f979c4 100644
>> > --- a/target/linux/ath79/image/generic-tp-link.mk
>> > +++ b/target/linux/ath79/image/generic-tp-link.mk
>> > @@ -203,9 +203,8 @@ define Device/tplink_archer-d50-v1
>> >     TPLINK_FLASHLAYOUT := 8Mqca
>> >     TPLINK_HWREVADD := 0x00000000
>> >     TPLINK_HVERSION := 3
>> > -  KERNEL := kernel-bin | append-dtb | lzma
>> > -  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | \
>> > -	tplink-v2-header -s -V "ver. 1.0"
>> > +  KERNEL := $(KERNEL_LZMA)
>> > +  KERNEL_INITRAMFS := $(KERNEL_LZMA) | tplink-v2-header -s -V "ver.
>> 1.0"
>> >     IMAGES := sysupgrade.bin
>> >     IMAGE/sysupgrade.bin := tplink-v2-image -s -V "ver. 2.0" | append-
>> metadata | \
>> >   	check-size $$$$(IMAGE_SIZE)
>> > diff --git a/target/linux/ath79/image/generic-ubnt.mk
>> > b/target/linux/ath79/image/generic-ubnt.mk
>> > index ffae83eda5..bbacd393cb 100644
>> > --- a/target/linux/ath79/image/generic-ubnt.mk
>> > +++ b/target/linux/ath79/image/generic-ubnt.mk
>> > @@ -220,7 +220,7 @@ define Device/ubnt_routerstation_common
>> >     IMAGES := factory.bin
>> >     IMAGE/factory.bin := append-rootfs | pad-rootfs | mkubntimage | \
>> >   	check-size $$$$(IMAGE_SIZE)
>> > -  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
>> > +  KERNEL := $(KERNEL_LZMA) | pad-to $$(BLOCKSIZE)
>> >     KERNEL_INITRAMFS := kernel-bin | append-dtb
>> >   endef
>> >
>> > diff --git a/target/linux/ath79/image/generic.mk
>> > b/target/linux/ath79/image/generic.mk
>> > index 1bc7b2d68e..7555ce4024 100644
>> > --- a/target/linux/ath79/image/generic.mk
>> > +++ b/target/linux/ath79/image/generic.mk
>> > @@ -105,7 +105,7 @@ define Device/adtran_bsap1880
>> >     SOC := ar7161
>> >     DEVICE_VENDOR := Adtran/Bluesocket
>> >     DEVICE_PACKAGES += -swconfig -uboot-envtools fconfig
>> > -  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
>> > +  KERNEL := $(KERNEL_LZMA) | pad-to $$(BLOCKSIZE)
>> >     KERNEL_INITRAMFS := kernel-bin | append-dtb
>> >     IMAGE_SIZE := 11200k
>> >     IMAGES += kernel.bin rootfs.bin
>> > @@ -151,7 +151,7 @@ define Device/avm_fritz300e
>> >     SOC := ar7242
>> >     DEVICE_VENDOR := AVM
>> >     DEVICE_MODEL := FRITZ!WLAN Repeater 300E
>> > -  KERNEL := kernel-bin | append-dtb | lzma | eva-image
>> > +  KERNEL := $(KERNEL_LZMA) | eva-image
>> >     KERNEL_INITRAMFS := $$(KERNEL)
>> >     IMAGE_SIZE := 15232k
>> >     IMAGE/sysupgrade.bin := append-kernel | pad-to 64k | \ @@ -166,7
>> > +166,7 @@ define Device/avm_fritz4020
>> >     DEVICE_VENDOR := AVM
>> >     DEVICE_MODEL := FRITZ!Box 4020
>> >     IMAGE_SIZE := 15232k
>> > -  KERNEL := kernel-bin | append-dtb | lzma | eva-image
>> > +  KERNEL := $(KERNEL_LZMA) | eva-image
>> >     KERNEL_INITRAMFS := $$(KERNEL)
>> >     IMAGE/sysupgrade.bin := append-kernel | pad-to 64k | \
>> >   	append-squashfs-fakeroot-be | pad-to 256 | append-rootfs |
>> > pad-rootfs | \ @@ -712,7 +712,7 @@ define Device/jjplus_ja76pf2
>> >     IMAGES := kernel.bin rootfs.bin
>> >     IMAGE/kernel.bin := append-kernel
>> >     IMAGE/rootfs.bin := append-rootfs | pad-rootfs
>> > -  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
>> > +  KERNEL := $(KERNEL_LZMA) | pad-to $$(BLOCKSIZE)
>> >     KERNEL_INITRAMFS := kernel-bin | append-dtb
>> >     IMAGE_SIZE := 16000k
>> >     SUPPORTED_DEVICES += ja76pf2
>> > @@ -992,7 +992,7 @@ define Device/pisen_wmb001n
>> >     COMPILE/loader-$(1).bin := loader-okli-compile
>> >     COMPILE/loader-$(1).uImage := append-loader-okli $(1) | pad-to 64k |
>> lzma | \
>> >   	uImage lzma
>> > -  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma -M
>> > 0x4f4b4c49
>> > +  KERNEL := $(KERNEL_LZMA) | uImage lzma -M 0x4f4b4c49
>> >     IMAGES += factory.bin
>> >     IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | pisen_wmb001n-
>> factory $(1)
>> >   endef
>> >
>> 
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
