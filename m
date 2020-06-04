Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CF61EDEA7
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 09:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTbDwYKzDrgNKMEOFvsdBhSFDjGa6ZKZjLOl4SKhDJc=; b=rCFKnIiY7uwMJv
	Zp8U6XyP8PWe+j8iQgjLEXPTRttkLbJViPaFOMpJyGRXivP/VSvoCPFq6m10qQ0bzMCOFBHHjFfV5
	FlwGG9+Z3UHE1vn6cN6wYOZUnpDf1ZJbS/R8nUFCDpSyJ+O6WVhMZzpx8QB3qOUJXbnX5zCxPYgdE
	QPFegxorFIWDcv/RfdL/WVko76mcZ946xjnXqishBdxWGvPChRw0tNlP8WYPt7ZxOuFg3uTl4o73V
	Snyxl80kehrmxMhRzipRCHOnk3hj3sRVTOIImFxmpObQhz5X5T6L+MWtS0QeMGspEs3e5DOsf25fo
	pxLSHpb0fLKAOCNwgwDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkUO-00014H-PQ; Thu, 04 Jun 2020 07:40:36 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgkTB-00062a-Kh
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 07:39:24 +0000
Received: from acer ([188.192.133.27]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N1gWU-1iwSQz3rPU-0123GO; Thu, 04
 Jun 2020 09:39:14 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'DENG Qingfang'" <dengqf6@mail2.sysu.edu.cn>,
 <openwrt-devel@lists.openwrt.org>
References: <20200604043019.6413-1-dengqf6@mail2.sysu.edu.cn>
In-Reply-To: <20200604043019.6413-1-dengqf6@mail2.sysu.edu.cn>
Date: Thu, 4 Jun 2020 09:39:08 +0200
Message-ID: <004901d63a43$3e856e00$bb904a00$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJ10mZlVsnWi2B2ynaEA9nM4Cu5h6eI4VjA
Content-Language: de
X-Provags-ID: V03:K1:kiJj8TP3FLEGdtBcoWCsAm4evcAUtUL4PN7IRzfZ0nswFG6yd3E
 9sSyWhwva2rHe+JpcelNYV0CEpeLlBzOf47F4pO87gAJB1YzN/c5YaBbkohBAN8jAgJHFKX
 ftnypQnLc2lA95SNedmIBcWwMueNM3ee1bOuxFbmoV++e1GMTHAFqcN611G4ITzHuXxzuZL
 oSdDlBLzEkTSFynsKKYIQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:20IZeGbJ+mc=:EciDLAffw2ss1gTD92dABj
 YbFX8uDJlX8Zn8ZnR53+XcHuhhnf2hiB8aHWvbuqn5tV1X86zrAYltPJSanYcCbaCozyThVm7
 +0qZ0Nt7gYHfqaKhIaPx6LYu03067B06ZKsDMopi8juMue888mYdrGrdxQAr25b+35oISvV0N
 E8wQOEKM1ljMQMj5NVLzIIJW/dMrJrurk2B6ncrKSsSkhWac7cfCuKXiXf9XKi9EeZBxSBRYB
 MPAvJXeUBYKz5EIKzDa5L0nJRyHJHJ5RhT+EvVpOn9BDnjkMs6O+Dw0g4pEn8DiGZyzFDLxo6
 1R3qV+uinLDwBQLlaPwqq3cxrhOW3NOVB9uhJkrkD4CWNKpktVDH0r/IBdDlySj0Fk2KkZE/C
 n5TpJSstOwPG6ZFzhTfOuOUXGr7bqHW+fBSm4rC/nPPO5X37uO00WvG54RkaRmiKaTRwt5XCk
 9lI77fz9z+brMjNIZdtrki4sxl+zB1ZaSOT+osHO3c31aMj2yPCtoLLMoSojqvLmWT/4pe7eB
 Hk2ZieesEU/hzQcykmXD7A4SX6ucKdMRBNwJDZY4qUAevgKdPfuRmTuWlEGsF+SWOFBc76h39
 PhA8p6zAcXDwHM9yo2WBtOpxUnU9V+8kwLb40ecFvNljJ7x+k2F9JcPXSijYKkYefj+kl2gdZ
 6EO2nPWAUSoplEponi5CeKV30oP+FGk5E2Kkyd0sbtqfu79jtt2znPgwivugr8jdSgDeweVJZ
 0KGrIynYYiH60iRMT19rxmpm3+Gi5YieAVFP+QqhdbtQk7vqGjd79YAqXi5ENA0i2nNN9CPAH
 cs4oPLZtPvaChozVvCLknNh0ZLivrbJMwJGtpw8vAc8MOD8iPpOxkV9mtIXtk6xdREWjAX9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_003921_981514_0F121613 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: remove Linksys WRT and ClearFog
 Pro SUPPORTED_DEVICES
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
Cc: 'Tomasz Maciej Nowak' <tomek_n@o2.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of DENG Qingfang
> Sent: Donnerstag, 4. Juni 2020 06:30
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>; Tomasz Maciej
> Nowak <tomek_n@o2.pl>
> Subject: [OpenWrt-Devel] [PATCH] mvebu: remove Linksys WRT and
> ClearFog Pro SUPPORTED_DEVICES
> 
> A direct upgrade from previous swconfig version with incompatible settings
> to DSA will break the internet.
> Remove SUPPORTED_DEVICES so users cannot upgrade directly.

I plan to apply Paul Spooren's device rename patches for the Linksys devices
today or tomorrow, which should achieve the same for these.

Best

Adrian

> 
> Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
> ---
>  target/linux/mvebu/image/cortexa9.mk | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/target/linux/mvebu/image/cortexa9.mk
> b/target/linux/mvebu/image/cortexa9.mk
> index 4c7bbcd758..a7b1083ff6 100644
> --- a/target/linux/mvebu/image/cortexa9.mk
> +++ b/target/linux/mvebu/image/cortexa9.mk
> @@ -65,7 +65,6 @@ define Device/linksys_wrt1200ac
>    DEVICE_ALT0_MODEL := Caiman
>    DEVICE_DTS := armada-385-linksys-caiman
>    DEVICE_PACKAGES += mwlwifi-firmware-88w8864
> -  SUPPORTED_DEVICES := armada-385-linksys-caiman linksys,caiman  endef
> TARGET_DEVICES += linksys_wrt1200ac
> 
> @@ -80,7 +79,6 @@ define Device/linksys_wrt1900acs
>    DEVICE_ALT1_MODEL := Shelby
>    DEVICE_DTS := armada-385-linksys-shelby
>    DEVICE_PACKAGES += mwlwifi-firmware-88w8864
> -  SUPPORTED_DEVICES := armada-385-linksys-shelby linksys,shelby  endef
> TARGET_DEVICES += linksys_wrt1900acs
> 
> @@ -93,7 +91,6 @@ define Device/linksys_wrt1900ac
>    DEVICE_DTS := armada-xp-linksys-mamba
>    DEVICE_PACKAGES += mwlwifi-firmware-88w8864
>    KERNEL_SIZE := 3072k
> -  SUPPORTED_DEVICES := armada-xp-linksys-mamba linksys,mamba  endef
> TARGET_DEVICES += linksys_wrt1900ac
> 
> @@ -105,7 +102,6 @@ define Device/linksys_wrt1900acv2
>    DEVICE_ALT0_MODEL := Cobra
>    DEVICE_DTS := armada-385-linksys-cobra
>    DEVICE_PACKAGES += mwlwifi-firmware-88w8864
> -  SUPPORTED_DEVICES := armada-385-linksys-cobra linksys,cobra  endef
> TARGET_DEVICES += linksys_wrt1900acv2
> 
> @@ -116,7 +112,6 @@ define Device/linksys_wrt3200acm
>    DEVICE_ALT0_MODEL := Rango
>    DEVICE_DTS := armada-385-linksys-rango
>    DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-
> 88w8964
> -  SUPPORTED_DEVICES := armada-385-linksys-rango linksys,rango  endef
> TARGET_DEVICES += linksys_wrt3200acm
> 
> @@ -129,7 +124,6 @@ define Device/linksys_wrt32x
>    DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-
> 88w8964
>    KERNEL_SIZE := 3072k
>    KERNEL := kernel-bin | append-dtb
> -  SUPPORTED_DEVICES := armada-385-linksys-venom linksys,venom  endef
> TARGET_DEVICES += linksys_wrt32x
> 
> @@ -227,7 +221,6 @@ define Device/solidrun_clearfog-pro-a1
>    IMAGES := sdcard.img.gz
>    IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 |
gzip |
> append-metadata
>    DEVICE_DTS := armada-388-clearfog-pro armada-388-clearfog-base
> -  SUPPORTED_DEVICES += armada-388-clearfog armada-388-clearfog-pro
>    UBOOT := clearfog-u-boot-spl.kwb
>    BOOT_SCRIPT := clearfog
>  endef
> --
> 2.16.6
> 
> 
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
