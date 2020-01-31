Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7755A14F03B
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 16:57:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RmmXRVvb3/8RJYZhs1VjvPjraHiwwymterEFw8wyiI=; b=Kv8wJJP+f16mbj
	UCo5IKP5jOWwGlHVvvw3GhQElbyIGQWyUOUewLeVrBMcNi8vgSwkyrZ3AwXnhaaqxGuRPRLE3N8WU
	EXR21GOY4FF2eQDvXMtLbF8y4yeRm/Ft3IBHLr/P+wEHV8g5I3MReKzVOqcHXzYQd9RqPIweTO1Hf
	9C8tx6MrYI+BHTjzmcK+21/4XkgILp73bCET+ZGOWQbudxGsi77Pvz6hI/jbMZ2J3b8ebC3735HwJ
	mEKdH07wEVQ1StDvLMVPoODSRbAR6btLCq1gwZd7XtmiEaVQlXjjRkSzV0OMPwgXuMiS3qXP1zTS7
	8ZwymZIrXmB87rcjao7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYfQ-0003os-AQ; Fri, 31 Jan 2020 15:57:12 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYfH-0003oU-L5
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 15:57:05 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M1HuU-1j0IU41xTW-002ka0; Fri, 31
 Jan 2020 16:56:58 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-4-tomek_n@o2.pl>
In-Reply-To: <20200131154620.25773-4-tomek_n@o2.pl>
Date: Fri, 31 Jan 2020 16:56:58 +0100
Message-ID: <010201d5d84f$117d2d90$347788b0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIg9Z1HjtTSr13X0aN4mb1BSdO/fgEITCZSp2ZvhTA=
X-Provags-ID: V03:K1:vWAiZb0csZD6eGvneVqJQwDWfyzD5AiEuWPlHFt+CV9lE8vinr6
 An1+SQM2S5JLBwrBXLeSuLX7asJRwGGpuZh0XGkYJtWt/OQW8pFwLLpg9Y+QVs/OnNyxEMq
 aWat/LiQ8JA+9eXhp9qq/CKc9e2RkOoEl5THS9buYKHKg+UZ/iEo6WOlMIegZTiH/RQddho
 1gbmHFO3ro35JzVuz55qw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qudtiNWZWYA=:Jr+h4srHgr5BqDWVpXuyUE
 TGOcRt0N8PWPG5fmcqQIr/XEogVm8vvgDQrakjAuBjy2e5747yMpFxwvDzXQU5hyft8I/4Axw
 9HJvz23Tpm0XanoxbKrXcPcLQ7kh+LzSAwT25/mk90ato4s6JAR8lmldHMSw2Drj5xvXX60Mp
 THuuUUiN6HpNZ9bok3950LZjxsZyhi0eH1VFgKXLP5gWnsP+LUwK9E0LfvkeejkprC4ARwZQG
 raEhTy2cl2859gIo2OsGMg0eTCcXqJgGzRpugrMpKjDl7xeoauN6hHlJ7sKd/Tm4Lpfbmgs6/
 ZncIU6qVs+Y0IWkGG2i1ErBSozb8glJ+rUICwJ2fR4BctF53xKWP4B+CRxDMcY4jv+GrepZAe
 b1bW3QQqOW9Uaq1CcDiJ4Epyae0PhsYiEWwtIT06j+FGBGqZObXxZZToxwP4QKpWvqbRf3O2C
 7D8Hbs7Fk0rhdLaPtcyM5T3/RVZlyoiUB+89BNsyiv96qak4ti1qJMgqe9SZzC/Et2PuLTSu0
 mPmzeM05QbGe7A+u2HuM3ndRSigdwz7/GrTwaX7nSv3NbXfU5aK0vOHB+xwh+c3so4a61xD1t
 cPtxDfuwx0LlSuiUpEKvsm5+cQpjGxRv3TEOwzY5ZKOC5RApsIa5ESHh3I6MRtBGlrZ/NjRuB
 kmiZAeJ9lgRnPW/yA74dHvGnLujTxr3bNV/Gu0bmcXqTi/AnxceUVU0kfkLqDJmNsyLQOgVs2
 r8u5P40ixE75spwkiPf11bei/2OdwTC0/LsoDnyUKdgHdqiRAtGr/1jByX4nnugg6lnblcHkA
 0XxEzYST8tkZkoId+LCYWu8OJCaeuF2mIsW15gFlokmxmoF+jXIga628djoN2QUkSw0OWV4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_075703_986659_2C22D57A 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 3/8] mvebu: image: drop empty variables
 from default profile
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Tomasz Maciej Nowak
> Sent: Freitag, 31. Januar 2020 16:46
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 3/8] mvebu: image: drop empty variables from
> default profile
> 
> These variables are already initialized within DEVICE_VARS. Just move
> DEVICE_VARS to make sure they are set before default profile.

I've just played around with this in ath79 for some other reason, and found that
DEVICE_VARS _won't_ set the variables to empty values. It will just make sure
that the variables can be _set_ per device (e.g. DEVICE_DTS_DIR vs. DTS_DIR). If
you do not set the variable for one device, it will just have the value from the
previous device(!).
So, setting the variables to "" in the default definition actually makes sure
that they really are zero for those devices where they are not set. (Of course,
typically those are the devices where they aren't evaluated anyway.)

Best

Adrian



> 
> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
> ---
>  target/linux/mvebu/image/Makefile | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/target/linux/mvebu/image/Makefile
> b/target/linux/mvebu/image/Makefile
> index aeabffdca2..d9e4b1acce 100644
> --- a/target/linux/mvebu/image/Makefile
> +++ b/target/linux/mvebu/image/Makefile
> @@ -75,6 +75,7 @@ define Build/uDPU-firmware
>  	(cd $@-fw; $(TAR) -cvzf $(KDIR_TMP)/$(IMAGE_PREFIX)-firmware.tgz .)
>  endef
> 
> +DEVICE_VARS += BOOT_SCRIPT UBOOT
>  define Device/Default
>    PROFILES := Default
>    DEVICE_DTS = $$(SOC)-$(lastword $(subst _, ,$(1)))
> @@ -86,10 +87,7 @@ define Device/Default
>    IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
>    SUPPORTED_DEVICES = $(subst _,$(comma),$(1))
>    UBINIZE_OPTS := -E 5
> -  UBOOT :=
> -  BOOT_SCRIPT :=
>  endef
> -DEVICE_VARS += BOOT_SCRIPT UBOOT
> 
>  define Device/Default-arm64
>    BOOT_SCRIPT := generic-arm64
> --
> 2.25.0
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
