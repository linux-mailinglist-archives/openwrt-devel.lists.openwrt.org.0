Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EF12A95C
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 13:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y8Zse8JTqRVW/iz+aMxVDnptjLjVe8wjzdONHeDActo=; b=AVA9BfZm39JQ0oOThZ+Gr+VzT
	M4JHRzHwhNV1ZikjjnLoPF7HvSuKmdcT4WwF8pEcpPJMiMRkUKR2D1upDAHz0VQtUHyoWkgOf/vvI
	VGQIHssVZkvBa/BMWq7WHYvon2MhiPAcpQY85lVO+q9VOppa1wICTbap0UYc+zovbVuXCRN7Cbwb+
	yyc+p4ow9/nwx7bJXJ1ECSPoY6RE6zcTOiJlsJmSGiFU497oGwfsogStQ24ExhYPOFQlaj8HkaULl
	Fig1aHIFepPy6Qgpypvgr/KrKgj427yoRN/OqrR4ke9d4u6d13gyrPf0fShmjjEei+79RER/PNZ5z
	7/8NKZzEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUr8U-0005tV-Jt; Sun, 26 May 2019 11:16:18 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUr8O-0005sc-Ax
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 11:16:13 +0000
Received: by mail-lf1-x143.google.com with SMTP id r15so618999lfm.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 May 2019 04:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cNMMzBUEkEo0/fWDyQMvrw8nZr7RuQM9jAcoVoOBg6c=;
 b=XAt/ggIO+oEpzDMmK1rzElKcLJpFl6J/gKxRG/Anlqcs/cGw0TGKMx5OyqzYb4HqSr
 lqs8rTwqnbC8ZxrobBTFtWnCjABU65VqlmzP4aIspWGoc5dykcs1iZP6cOQp33DrsBBF
 vchwpaikg7+fpTYLSybHZI+EYXrxuJW6dbiMssvyZd+ekEidy3DQOPeEpU4qSikHL9zc
 OcrOBSgA2yvcBSvL0qAmr8pEVti2qc/DNjRNmZgDYgzAHbqbLILVE3QK5JTDx2fpw8NR
 rCFqjWTbE+lh1wyUQAJgvYGwRD3N4E1Y/xEWZK2yhaeYlBUypZDKKhHiJ2Y1hct5tOHr
 EXfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cNMMzBUEkEo0/fWDyQMvrw8nZr7RuQM9jAcoVoOBg6c=;
 b=Em5cqq8JJlNdT4VDBtwXC4dqp0qpyCDtU0piyxGb06IuJrpWKV1+upBNReDKkQY4ia
 Nmt+uJh4NK7tZkJLO4wBrXL5D9O3BFFaLnc+HnjNlyckEvzDoomwlvPEYWHJOG2RiX4l
 Dn9z25HMFn3wvfu0KSen39wdyXt7v+UXoMt95Pt+X1vWbQqCbSh8QhlUfNyv8dihKwhL
 1LCX5KHR/R1HGiXWTqK3ehllVoCjrjeZRj5HB123oNNJhrTxsOM0GRZFGYF6e2zzui2T
 CE7MBWcR0VBEYPdwOEh1QbSHjgsWBUcialf4/sjCZ/xQIi38PaRz/rWC6SkVeiJpT7nX
 3CTA==
X-Gm-Message-State: APjAAAXRLM99yDzr2W2kDJ8wyad6dKKfLZf6+VDfU0S5j99Qcg/K9ImW
 0fuy0vjpKuL89tsqb56uFfZmiTC5
X-Google-Smtp-Source: APXvYqyeoXsEQBYmnL1P7nH1umTIC56iRHfGL4UaC9q5EIJ+ciMKwJEc+QL6WEBAImhLCDzJ3qF6Yw==
X-Received: by 2002:a19:760e:: with SMTP id c14mr40763838lff.48.1558869365002; 
 Sun, 26 May 2019 04:16:05 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id q12sm1632008lfo.42.2019.05.26.04.16.03
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 04:16:04 -0700 (PDT)
To: Linus Walleij <linus.walleij@linaro.org>, Roman Yeryomin
 <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
References: <20190524163150.9982-1-linus.walleij@linaro.org>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <c3c52c87-d738-8596-5b95-418a051f8239@gmail.com>
Date: Sun, 26 May 2019 13:16:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190524163150.9982-1-linus.walleij@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_041612_410431_B862A6E5 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] gemini: Make root filesystem writeable
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 24.05.2019 18:31, Linus Walleij wrote:
> The squashfs+jffs2 root filesystem only came up as read-only
> and the config would not take:
> 
> [   25.600237] mount_root: Could not open mtd device: /dev/mtd4
> [   25.634674] mount_root: reading rootfs_data failed
> [   25.665346] mount_root: Could not open mtd device: /dev/mtd3
> [   25.699802] mount_root: reading rootfs failed
> [   25.726426] mount_root: mounting /dev/root
> 
> Well that is not very strange since the whole firmware partition
> is made read-only in the device tree. Let's fix that by augmenting
> the OpenWrt patch.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Sounds good, but your .patch file does not follow OpenWrt's quilt setup
rules. Please check:
https://openwrt.org/docs/guide-developer/build-system/use-patches-with-buildsystem#prepare_quilt_configuration

If your just copied a patch from some git tree, please refresh it. See
inline comments below.


> ---
>   ...-DIR-685-partition-table-for-OpenWrt.patch | 19 +++++++++++++------
>   1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch b/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch
> index bb4076558df4..4be6545186c0 100644
> --- a/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch
> +++ b/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch
> @@ -1,7 +1,7 @@
> -From 854934b0ce8e758ce581f5ddbc30e618ab46fbdb Mon Sep 17 00:00:00 2001
> +From ea99e7570882df53478f9b5fa5886a6e92fc2c7f Mon Sep 17 00:00:00 2001
>   From: Linus Walleij <linus.walleij@linaro.org>
>   Date: Mon, 11 Mar 2019 15:44:29 +0100
> -Subject: [PATCH 2/2] ARM: dts: Augment DIR-685 partition table for OpenWrt
> +Subject: [PATCH] ARM: dts: Augment DIR-685 partition table for OpenWrt
>   
>   Rename the firmware partition so that the firmware MTD
>   splitter will do its job, drop the rootfs arguments as
> @@ -9,9 +9,11 @@ the MTD splitter will set this up automatically.
>   
>   Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>   ---
> - arch/arm/boot/dts/gemini-dlink-dir-685.dts | 5 +++--
> - 1 file changed, 3 insertions(+), 2 deletions(-)
> + arch/arm/boot/dts/gemini-dlink-dir-685.dts | 6 +++---
> + 1 file changed, 3 insertions(+), 3 deletions(-)
>   
> +diff --git a/arch/arm/boot/dts/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
> +index 50ff65d95f26..4ae0bb95be20 100644

This should not appear in a patch.


>   --- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
>   +++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
>   @@ -20,7 +20,7 @@
> @@ -23,7 +25,7 @@ Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>    		stdout-path = "uart0:19200n8";
>    	};
>    
> -@@ -286,7 +286,8 @@
> +@@ -286,9 +286,9 @@
>    				 * this is called "upgrade" on the vendor system.
>    				 */
>    				partition@40000 {
> @@ -31,5 +33,10 @@ Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>   +					compatible = "wrg";
>   +					label = "firmware";
>    					reg = <0x00040000 0x01f40000>;
> - 					read-only;
> +-					read-only;
>    				};
> + 				/* RGDB, Residental Gateway Database? */
> + 				partition@1f80000 {
> +--
> +2.20.1
> +

Same here

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
