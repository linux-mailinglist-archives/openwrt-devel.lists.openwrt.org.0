Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D46012B5D
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 12:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bxhpgow1nIUy2Ok9heshHArQPV87tJnT/G4EpulTfgs=; b=E7v1Ag7RSIwck3StDH1Y5q9bhF
	XaxStaWXtgspzKyGILA1hmvspbvqjEozSrVa472T3VnjhKFJkMqSZURn1MDB4zd6JIwRbl3g+LcQO
	7aBCk4358pU1HgIZdtxc3lcJr90wBrCSskDU2O4Yf8hkW56iMihpIMrMBnD00ECNKmPV5Sv0vGpyU
	dUJg2NYy3ZRL6308rI2dzmI8Em/geaWpCbqVvV0D+MVhC8HDx/j9iICx9cv6LY/2WfL0nKB2jvj8X
	9UoreXX0FyKA7U2Oo2o2cmrpUb+gN5WEkMtOx9bYAVUD7RYYB4m8OEeBIOmft9B+mQF/6MAFAF2kJ
	/ROF4HGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVHr-0006jW-Of; Fri, 03 May 2019 10:19:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVHj-0006j8-Or
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 10:19:21 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6E8633D1D;
 Fri,  3 May 2019 12:19:18 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ac3ef103;
 Fri, 3 May 2019 12:19:17 +0200 (CEST)
Date: Fri, 3 May 2019 12:19:17 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20190503101917.GH346@meh.true.cz>
References: <8657fdac-f013-7025-e5f1-634665246af8@wagsky.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8657fdac-f013-7025-e5f1-634665246af8@wagsky.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_031919_960690_0293F67D 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: glinet_gl-ar750s: Use QCA9887
 firmware
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Jeff Kletsky <lede@allycomm.com> [2019-04-20 18:33:10]:

> This patch corrects the firmware selection for the ath79 AR750S
> 
> The ar71xx AR750S already uses the QCA9887 firmware.
> 
> $ fgrep -A 3 Device/gl-ar750s target/linux/ar71xx/image/generic.mk
> define Device/gl-ar750s
>   DEVICE_TITLE := GL.iNet GL-AR750S
>   DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-usb-core \
> 	kmod-usb2 kmod-usb-storage
> 
> 
> Jeff
> 
> 
> 
> From cb6e411f8d172a8dde5ca7e075cef67994ac0062 Mon Sep 17 00:00:00 2001
> From: Jeff Kletsky <git-commits@allycomm.com>
> Date: Sun, 27 Jan 2019 20:17:16 -0800
> Subject: [PATCH] ath79: glinet_gl-ar750s: Use QCA9887 firmware
> 
> The GL.iNet AR750S is based around the QCA9563
> and uses the QCA9887 firmware for operation.
> 
> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
> ---
>  target/linux/ath79/image/generic.mk | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
> index 8588e7cdf6..8e162e1d0e 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -363,7 +363,7 @@ TARGET_DEVICES += glinet_gl-ar300m-nor
>  define Device/glinet_gl-ar750s
>    ATH_SOC := qca9563
>    DEVICE_TITLE := GL.iNet GL-AR750S
> -  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
> +  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
>    IMAGE_SIZE := 16000k
>    SUPPORTED_DEVICES += gl-ar750s
>  endef
> -- 
> 2.11.0

something probably went wrong with this patch:

 ../maintainer-tools/patchwork-apply.sh 1088433
 Saved patch to OpenWrt-Devel-ath79-glinet_gl-ar750s-Use-QCA9887-firmware
 Patch is empty.  Was it split wrong?
 If you would prefer to skip this patch, instead run "git am --skip".
 To restore the original branch and stop patching run "git am --abort".
 Failed to apply patch 1088433

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
