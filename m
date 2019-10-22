Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F5AE0271
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 13:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KifHris8ZIw/QGC4kYDSsk/u+QF+rRyDaJ+EvZXXMzc=; b=usWOkAmJaZBIy8J+u2bOLlg7Q
	yatzzvuQmIs65pwvHWA8TM4tLSIOXbLqNMTKYxLmCPpQ8nUIFvTwk1JH8VpmLE/Y2dsiVw6nfjnx3
	+/Waz+kUkb4P+smCqbqMmmH+wG3kBgwMeKYyytmI2nfoyQD9FnextRZlRFvqiy4ijnHQwQoU6uMOm
	tR3pqOlWu97D5Lck4LxIMIbz6b0vZ1BdHVdzzo3NfRiNVHMg/bDXUZoJTJGr3aw4RU6H/RcylkqrT
	5Adw9UUFux/kWXsCeFH7rz8f40s+A9UK0uLMAFWu5yIuW8R73w1AUcP9RsJV68J64vaOyCUIv+NfB
	cvJKfILDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMrxG-00022R-Hk; Tue, 22 Oct 2019 11:03:58 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMrx8-00021w-Uq
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 11:03:53 +0000
Received: from [46.183.103.8] (helo=[172.18.152.140])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMrx6-0006ar-Pv; Tue, 22 Oct 2019 13:03:48 +0200
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
From: John Crispin <john@phrozen.org>
Message-ID: <14db3d4e-ca02-132c-95dc-f2f1846b1c33@phrozen.org>
Date: Tue, 22 Oct 2019 13:03:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_040351_157347_D4F556AC 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ath79: tidy up and fix IMAGE_SIZE
 for Ubiquiti devices
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

On 06/08/2019 15:10, Adrian Schmutzler wrote:
> This addresses IMAGE_SIZE inconsistencies in generic_ubnt.mk by:
> 
> 1. (cosmetical) Move IMAGE_SIZE out of top definition ("ubnt"),
>     since despite two all subdefinition have different values.
> 2. (change) Fix IMAGE_SIZE for ubnt-xm and ubnt-bz (7552k->7488k).
> 3. (cosmetical) Move IMAGE_SIZE of ubnt-wa devices to parent node
>     since all have same size (it is defined in parent DTSI ...).
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

series no longer applies I am afraid, could you rebase/send them please ?
	John

> ---
>   target/linux/ath79/image/generic-ubnt.mk | 9 ++++-----
>   1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
> index 6db083861f..0dfde6915d 100644
> --- a/target/linux/ath79/image/generic-ubnt.mk
> +++ b/target/linux/ath79/image/generic-ubnt.mk
> @@ -36,7 +36,6 @@ endef
>   define Device/ubnt
>     DEVICE_VENDOR := Ubiquiti
>     DEVICE_PACKAGES := kmod-usb-core kmod-usb2
> -  IMAGE_SIZE := 7552k
>     UBNT_BOARD := XM
>     UBNT_VERSION := 6.0.0
>     IMAGES += factory.bin
> @@ -47,6 +46,7 @@ endef
>   define Device/ubnt-xm
>     $(Device/ubnt)
>     DEVICE_PACKAGES += kmod-usb-ohci rssileds
> +  IMAGE_SIZE := 7448k
>     UBNT_TYPE := XM
>     UBNT_CHIP := ar7240
>     ATH_SOC := ar7241
> @@ -55,6 +55,7 @@ endef
>   
>   define Device/ubnt-bz
>     $(Device/ubnt)
> +  IMAGE_SIZE := 7448k
>     UBNT_TYPE := BZ
>     UBNT_CHIP := ar7240
>     ATH_SOC := ar7241
> @@ -62,6 +63,7 @@ endef
>   
>   define Device/ubnt-wa
>     $(Device/ubnt)
> +  IMAGE_SIZE := 15744k
>     UBNT_TYPE := WA
>     UBNT_CHIP := ar934x
>     UBNT_BOARD := WA
> @@ -71,6 +73,7 @@ endef
>   
>   define Device/ubnt-xw
>     $(Device/ubnt)
> +  IMAGE_SIZE := 7552k
>     UBNT_TYPE := XW
>     UBNT_CHIP := ar934x
>     UBNT_BOARD := XM
> @@ -128,7 +131,6 @@ define Device/ubnt_lap-120
>     DEVICE_MODEL := LiteAP ac
>     DEVICE_VARIANT := LAP-120
>     DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
> -  IMAGE_SIZE := 15744k
>     IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
>   endef
>   TARGET_DEVICES += ubnt_lap-120
> @@ -137,7 +139,6 @@ define Device/ubnt_nanobeam-ac
>     $(Device/ubnt-wa)
>     DEVICE_MODEL := NanoBeam AC
>     DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
> -  IMAGE_SIZE := 15744k
>     IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
>   endef
>   TARGET_DEVICES += ubnt_nanobeam-ac
> @@ -146,7 +147,6 @@ define Device/ubnt_nanostation-ac
>     $(Device/ubnt-wa)
>     DEVICE_MODEL := Nanostation AC
>     DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
> -  IMAGE_SIZE := 15744k
>     IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
>   endef
>   TARGET_DEVICES += ubnt_nanostation-ac
> @@ -155,7 +155,6 @@ define Device/ubnt_nanostation-ac-loco
>     $(Device/ubnt-wa)
>     DEVICE_MODEL := Nanostation AC loco
>     DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
> -  IMAGE_SIZE := 15744k
>     IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
>   endef
>   TARGET_DEVICES += ubnt_nanostation-ac-loco
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
