Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D16A19A5B0
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 08:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XJ4Bq8szWuPATCJaxKSnhzF3Dyh6kKhD62G4X1AoF8k=; b=VspS6MdNe+Yw9rMAKUDYf+okH
	V/SJHUMCSxR+aRc9iPMRfdNdp+7PnkuMDUsUXuBrJryG/oQYsGqiYD7RjLQmtLUDqgyS+z2gpU6MG
	PXp4IHeOSqdP15fuTXV+gf7mmmo2GhWZwXboQlnWxeu+6yusUqAyugnQM6hLdIGNZsm6X8/BW4zhl
	HFQ7RnuUGYK7JyxE+vkup8kIhAG9hH9wGja/beBydDlXLoMaIbM3l9FwUpxHbq0THG0A6hZvt4Fag
	rPvBrC8IJ1vDztRpDJsal4A993Ba5zjNADkIwBgCD8xPW4bshL5PQeAj9BBzgvs/2v23UMG7YbjXW
	jQaoDd/xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJXI8-0007DK-EM; Wed, 01 Apr 2020 06:56:00 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXI0-0007Cg-5x
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 06:55:53 +0000
Received: by mail-lj1-x242.google.com with SMTP id b1so4024685ljp.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Mar 2020 23:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tpECKAgJAreLzD31HNsOCvnWBB6TyCWGqwjNqd+NpMA=;
 b=C82rVB0IoWMPwKvvXZkVv5oKLnf/hQq/aECoXInFWaWI1BfMDVmwEhcqDXIz+lO3ye
 tL6NTax1NJ+mThQ7K7IX1x8GvPGyYimE/uXn0k1QTUjdnNdxmvNvEQAueHKOx1AQEiaX
 uimnZTpLHsB+n74F+J2fSF/n2z8UeNlEsk+ymE1Y2mhApqt84rrjTJqorJkFkdcNm5Rv
 CTT4SENzRCuAwo+ECeeBIozocwv2s3+F78h7dFiNKORAXDxhpy1LqvQyBqDQousfznBW
 hj20nHpm3UcyqG+ezG0D7M0okduIf4mGbdI7w535Br+5WG45Ek6vn44gqG5XKvLjwaoJ
 URmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tpECKAgJAreLzD31HNsOCvnWBB6TyCWGqwjNqd+NpMA=;
 b=ZZWrp4k9d3ogGwQzfrDaLNIsbZcsyQDLWH//IQDGwql8LnjwM6Z/cpLeF2eG1tI5jq
 csAdB7K6yQuq8Lzm6O0l+q0uxflD8Zb/zi2w6oXfnc5h8IZgFym6ue7qLiiOBvx3wSaf
 TIwR3sGfxJnbVddV2hV6U2SRyB5E5nXWnUGfL6XDB/b/gPc8F5JA3VogIRJIxxcDuvMJ
 miNNgjgOQLhhkkP6AydQrHWs34V43MHm/V3s4UlxxephTrKh5MH0yolLxiREXAt+IByv
 iwU4yianp7PZnWQJa0lluzZUaSs28GjUnFXJN+JHZU40QJphHQ6X9e9IYpaB+ItsR53P
 VFsg==
X-Gm-Message-State: AGi0PuYfgpCzSk4RzOrh3kiVOUwVUDv7MmVopd4JOb+GYGc/DXaeYm2J
 GkzD4NL9N545HvMrY5uZc0MUYY6S
X-Google-Smtp-Source: APiQypLkN5jMbWNWKSyUweehxgJbbdtSxwrRG+6G7s12cLRb6GFOtRCxQADlMGfNcb7Te3FNP6ziqA==
X-Received: by 2002:a2e:7a0a:: with SMTP id v10mr12589388ljc.143.1585724147749; 
 Tue, 31 Mar 2020 23:55:47 -0700 (PDT)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id 8sm872911lfk.64.2020.03.31.23.55.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 Mar 2020 23:55:47 -0700 (PDT)
To: Paul Spooren <mail@aparcar.org>, openwrt-devel@lists.openwrt.org
References: <20200331232009.1948083-1-mail@aparcar.org>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <427c8bc6-3313-e334-f346-73d6dcfe04c5@gmail.com>
Date: Wed, 1 Apr 2020 08:55:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200331232009.1948083-1-mail@aparcar.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_235552_300540_C12F6715 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu/cortexa9: use Linksys codename as
 PROFILE
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
Cc: Daniel Golle <daniel@makrotopia.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Paul,

On 01.04.2020 01:20, Paul Spooren wrote:
> The PROFILE names of mvebu/cortexa9/Linksys devices are based on the
> consumer names (like linksys_wrt1200ac) instead of the vendor codenames
> (like linksys_caiman) which are however used in the rest of the build
> system (plathform.sh, bootcount, 01_leds).
> 
> A running device is not able to know the profile used for its firmware
> creation as `/tmp/sysinfo/board_name` points to the device tree
> identifier (equal to Linksys codename) and `/tmp/sysinfo/model` is not
> deterministically *convertible* to the PROFILE name.
> 
> The introduction of ALT titles (4ee3cf2b5a) allows to store consumer
> names and make them available in the `menuconfig` so the profile name is
> transparent to regular users.
> 
> This patch changes the mvebu/cortexa9/Linksys PROFILES to use the device
> tree identifier aka Linksys codename as PROFILE name and uses the
> consumer name as ALT title.

What about firmware filenames? Wouldn't this change confuse people 
searching for firmware files by device model name?

Your change switch this from 'manufacturer_model' approach to 
'manufacturer_manufacturer-codename'. Does Linksys ever mention that 
codenames on their website, in marketing materials, etc.?

-- 
Cheers,
Piotr

> 
> Device tree identifier and PROFILE are now identical except for a `,`
> replacement with `_`, which is due to Makefile naming limitations.
> 
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
> This is just a first step, we should follow the device tree identifier
> for all other PROFILE as well.
> 
>   target/linux/mvebu/image/cortexa9.mk | 56 ++++++++++++++--------------
>   1 file changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/target/linux/mvebu/image/cortexa9.mk b/target/linux/mvebu/image/cortexa9.mk
> index 85bfa94dbd..53fc7c84b3 100644
> --- a/target/linux/mvebu/image/cortexa9.mk
> +++ b/target/linux/mvebu/image/cortexa9.mk
> @@ -42,80 +42,80 @@ define Device/linksys
>     KERNEL_SIZE := 6144k
>   endef
>   
> -define Device/linksys_wrt1200ac
> +define Device/linksys_caiman
>     $(call Device/linksys)
> -  DEVICE_MODEL := WRT1200AC
> +  DEVICE_MODEL := Caiman
>     DEVICE_ALT0_VENDOR := Linksys
> -  DEVICE_ALT0_MODEL := Caiman
> +  DEVICE_ALT0_MODEL := WRT1200AC
>     DEVICE_DTS := armada-385-linksys-caiman
>     DEVICE_PACKAGES += mwlwifi-firmware-88w8864
>     SUPPORTED_DEVICES := armada-385-linksys-caiman linksys,caiman
>   endef
> -TARGET_DEVICES += linksys_wrt1200ac
> +TARGET_DEVICES += linksys_caiman
>   
> -define Device/linksys_wrt1900acs
> +define Device/linksys_shelby
>     $(call Device/linksys)
> -  DEVICE_MODEL := WRT1900ACS
> -  DEVICE_VARIANT := v1
> +  DEVICE_MODEL := Shelby
> +  DEVICE_ALT0_VENDOR := Linksys
> +  DEVICE_ALT0_MODEL := WRT1900ACS
> +  DEVICE_ALT0_VARIANT := v1
>     DEVICE_ALT0_VENDOR := Linksys
>     DEVICE_ALT0_MODEL := WRT1900ACS
>     DEVICE_ALT0_VARIANT := v2
> -  DEVICE_ALT1_VENDOR := Linksys
> -  DEVICE_ALT1_MODEL := Shelby
>     DEVICE_DTS := armada-385-linksys-shelby
>     DEVICE_PACKAGES += mwlwifi-firmware-88w8864
>     SUPPORTED_DEVICES := armada-385-linksys-shelby linksys,shelby
>   endef
> -TARGET_DEVICES += linksys_wrt1900acs
> +TARGET_DEVICES += linksys_shelby
>   
> -define Device/linksys_wrt1900ac
> +define Device/linksys_mamba
>     $(call Device/linksys)
> -  DEVICE_MODEL := WRT1900AC
> -  DEVICE_VARIANT := v1
> +  DEVICE_MODEL := Mamba
>     DEVICE_ALT0_VENDOR := Linksys
> -  DEVICE_ALT0_MODEL := Mamba
> +  DEVICE_ALT0_MODEL :=  WRT1900AC
> +  DEVICE_ALT0_VARIANT := v1
>     DEVICE_DTS := armada-xp-linksys-mamba
>     DEVICE_PACKAGES += mwlwifi-firmware-88w8864
>     KERNEL_SIZE := 3072k
>     SUPPORTED_DEVICES := armada-xp-linksys-mamba linksys,mamba
>   endef
> -TARGET_DEVICES += linksys_wrt1900ac
> +TARGET_DEVICES += linksys_mamba
>   
> -define Device/linksys_wrt1900acv2
> +define Device/linksys_cobra
>     $(call Device/linksys)
> -  DEVICE_MODEL := WRT1900AC
> -  DEVICE_VARIANT := v2
> +  DEVICE_MODEL := Cobra
>     DEVICE_ALT0_VENDOR := Linksys
> -  DEVICE_ALT0_MODEL := Cobra
> +  DEVICE_ALT0_MODEL := WRT1900AC
> +  DEVICE_ALT0VARIANT := v2
>     DEVICE_DTS := armada-385-linksys-cobra
>     DEVICE_PACKAGES += mwlwifi-firmware-88w8864
>     SUPPORTED_DEVICES := armada-385-linksys-cobra linksys,cobra
>   endef
> -TARGET_DEVICES += linksys_wrt1900acv2
> +TARGET_DEVICES += linksys_cobra
>   
> -define Device/linksys_wrt3200acm
> +define Device/linksys_rango
>     $(call Device/linksys)
> -  DEVICE_MODEL := WRT3200ACM
> +  DEVICE_MODEL := Rango
>     DEVICE_ALT0_VENDOR := Linksys
> -  DEVICE_ALT0_MODEL := Rango
> +  DEVICE_ALT0_MODEL := WRT3200ACM
>     DEVICE_DTS := armada-385-linksys-rango
>     DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
>     SUPPORTED_DEVICES := armada-385-linksys-rango linksys,rango
>   endef
> -TARGET_DEVICES += linksys_wrt3200acm
> +TARGET_DEVICES += linksys_rango
>   
> -define Device/linksys_wrt32x
> +define Device/linksys_venom
>     $(call Device/linksys)
> -  DEVICE_MODEL := WRT32X
> +  DEVICE_MODEL := Venom
>     DEVICE_ALT0_VENDOR := Linksys
> -  DEVICE_ALT0_MODEL := Venom
> +  DEVICE_ALT0_MODEL := WRT32X
>     DEVICE_DTS := armada-385-linksys-venom
>     DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
>     KERNEL_SIZE := 3072k
>     KERNEL := kernel-bin | append-dtb
>     SUPPORTED_DEVICES := armada-385-linksys-venom linksys,venom
>   endef
> -TARGET_DEVICES += linksys_wrt32x
> +TARGET_DEVICES += linksys_venom
>   
>   define Device/marvell_a370-db
>     $(Device/NAND-512K)
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
