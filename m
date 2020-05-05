Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B7B1C5C6B
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 17:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aPJZAwbDkVetFSh086ybHFwh85DNNbM3e2gO0OdHVuk=; b=U62sUiV7tH0EOayf8BcW+5Khh
	29KmA1O3yqHqYmR3h7OsbL8YZD88Nce7LIpuDSKzonAjg8lxqTqiowPKccnjaphlkWCHueoJ4l/6r
	4ijgT7HOPGNTM4wbJEkuZCtoNswb89MItANhhDGzRcEYNEUfEhiagbRitnWWVpH323tod6XomRAO+
	6h1fjgkZvaYc/SuALIqj2LdBGN81cDZQNko/dpLC3PSA5EEMsEhpmImydAVQCd8GtHxQip3UsMOv1
	9MQSJ/3mVlXS1SKY7W4V0KCsHI4iOiQPR68YbgSOvqsm6utIaIxiKMLKvVcWVY1qO5i+/GVN1MhKR
	0ql7m7S+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVznq-00009k-G6; Tue, 05 May 2020 15:48:14 +0000
Received: from mout-p-103.mailbox.org ([80.241.56.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzne-0008PV-PP
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 15:48:04 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-103.mailbox.org (Postfix) with ESMTPS id 49GkdT2rMczKmgG;
 Tue,  5 May 2020 17:47:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1588693675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dM4/Nlgc5GKaNEsURR7UVi+fEahK0d2x+6e1U0DFh7c=;
 b=lSb4juFIRtYqCZomkf6u1izC3Dqnnlaln0xv62LN7XUFYy3SRLTEiICdPh3tGtuVNtu5Cp
 9WppQU3Z6RuqY3nBaNBUdaUY+1Z2UFAHIwvW2Duo5zyuWA+CRNHgEC0JQxbts2LzGD+LNT
 /Bxqv3X+GxsATiSYtUFl0pKyoqLzk/hVA34GzkpNCRwhUWhZry263OUx0ZfOhU7Tu45WOO
 ymxXQYnVDwYl/twNWbA76CwuyazOxHpDlpQb2u+fBp26tc5PB9NF3N+DJ0pZY0tyPAs0Na
 emSAMmZ4oU2EmLlZpelmdd4ficEleKibPR2H6pdQijwENttSSDx+kxWdyIrGNw==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id 3AyGj96HTFTy; Tue,  5 May 2020 17:47:53 +0200 (CEST)
To: Florian Eckert <fe@dev.tdt.de>, Eckert.Florian@googlemail.com,
 john@phrozen.org
References: <20200504102629.18746-1-fe@dev.tdt.de>
From: mans0n <mans0n@gorani.run>
Message-ID: <2211bdaa-cb84-3e08-cae6-552a5b162355@gorani.run>
Date: Wed, 6 May 2020 00:47:45 +0900
MIME-Version: 1.0
In-Reply-To: <20200504102629.18746-1-fe@dev.tdt.de>
Content-Language: en-US
X-Rspamd-Queue-Id: EDA2E1742
X-Rspamd-Score: -3.53 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_084803_032590_78EA388B 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.241.56.161 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: add kmod-ledtrig-mtd as a
 kernel module
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Florian,

Actually I was preparing the same patch just a moment ago, and found out 
that LEDS_TRIGGER_MTD is a bool, not tristate.

On 2020-05-04 19:26, Florian Eckert wrote:
> Not every target needs this LED trigger. Therefore this trigger can be
> installed as kernel module.
> 
> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> ---
> 
> This is a followup patch form the discussion:
> https://patchwork.ozlabs.org/project/openwrt/patch/20181129132538.20179-3-fe@dev.tdt.de/#2043062
> 
>   package/kernel/linux/modules/leds.mk | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
> 
> diff --git a/package/kernel/linux/modules/leds.mk b/package/kernel/linux/modules/leds.mk
> index 59ea6edbcd..fa9756ff39 100644
> --- a/package/kernel/linux/modules/leds.mk
> +++ b/package/kernel/linux/modules/leds.mk
> @@ -131,6 +131,21 @@ endef
>   $(eval $(call KernelPackage,ledtrig-oneshot))
>   
>   
> +define KernelPackage/ledtrig-mtd
> +  SUBMENU:=$(LEDS_MENU)
> +  TITLE:=LED MTD (NAND/NOR) Trigger
> +  KCONFIG:=CONFIG_LEDS_TRIGGER_MTD
> +  FILES:=$(LED_TRIGGER_DIR)/ledtrig-mtd.ko
> +  AUTOLOAD:=$(call AutoLoad,50,ledtrig-mtd)
> +endef
> +
> +define KernelPackage/ledtrig-mtd/description
> + Kernel module that allows LEDs to be controlled by MTD activity.
> +endef
> +
> +$(eval $(call KernelPackage,ledtrig-mtd))
> +
> +
>   define KernelPackage/leds-pca963x
>     SUBMENU:=$(LEDS_MENU)
>     TITLE:=PCA963x LED support
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
