Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB0A1CF4DC
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 14:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZdmhTu2C64op2ERGM3w5TG5QicOlzBNppufhNsYfMA=; b=FMKSKqGmTv+g3r
	FgQYI+D056cqLNIqeXjbeWTXOHpjn0QXIfmrKuSx2IB7F4zP97Z12dKduimP6SMy6lC+kwxY2PyJp
	wqlBqpCEn8LRScecXEaWr3mE8Htj85F050YHAnSOU7Tdhkvw5CqW4bODFpNOZXIIy74cT2HlwcZ1g
	3a9FYky1nfgkmKZUJOGO9SMPNMtCx6E3lwWLUP/HeYCRvPsF76BXVECCVzdb+vgHGgoa5IkjmAd9H
	Jyyj+sI1wchiZQRCkTzSkkNKWsonMrQOhh4K7oXmy2tclgwidud73TEWJtLVAKuu41oXFX566PRjD
	HthXs/yDY4X1x14SI/lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUPo-000420-8f; Tue, 12 May 2020 12:53:44 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUPi-00041f-CN
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 12:53:39 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 74FEFFBC9E; Tue, 12 May 2020 14:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1589288003;
 bh=7fK+5i2uwnfn4C+4AvSnjKiYANRDCR2GMrijL1r9wKU=;
 h=Date:From:Subject:To:In-Reply-To:References:From;
 b=TBPauGMQsjlhInehNO7JDkgXmsWpDTR7bIMVzOj/NRLKORgS8UVv2j0Fy7UUuXAD/
 DE9/zzsPwUAivt/5gtk6jWxD5o8t8aWFa6GaTMvqbZv5qJqrwf4oApCVhIZFwhhZxL
 EIlCIQogULx4EYZxTjVpuCNKCLhg7bQ/KTG8jQ/8=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from [10.0.0.5] (213.219.166.32.adsl.dyn.edpnet.net [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id 4FE28FAC28
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 May 2020 14:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1589288002;
 bh=7fK+5i2uwnfn4C+4AvSnjKiYANRDCR2GMrijL1r9wKU=;
 h=Date:From:Subject:To:In-Reply-To:References:From;
 b=Dojj2vUzo2wk/xBCOrsezARny/KN2TMMAt9izefJWUoyTxXOLs4FflO/iUKDpvg9w
 QxEqEZ1h2606VSi00QvCmt8GVTtfskgm0DFp79gqZgarA1l3AH4GL3+vyp9fnE/xzA
 702Pq4MXpi5YkqMyAxvRFhWvws+rL2Aka47QvFcc=
Date: Tue, 12 May 2020 14:53:15 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Message-Id: <RGY7AQ.6L62V3KCGE1C@volatilesystems.org>
In-Reply-To: <20200512100520.3150-1-foss@volatilesystems.org>
References: <20200512100520.3150-1-foss@volatilesystems.org>
X-Mailer: geary/3.36.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_055338_560434_1591E191 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] mt7621: add kmod-mt7603 to DIR-860L B1
 DEVICE_PACKAGES
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



Op dinsdag 12 mei 2020 om 12u05 schreef Stijn Segers 
<foss@volatilesystems.org>:
> The DIR-860L B1 has an MT7603 radio but was missing the corresponding 
> kmod-mt7603 module in DEVICE_PACKAGES.
> Add this so it gets included by default, even when the kmod gets set 
> to [m].
> 

Nevermind me... This device has an MT7602 radio, not MT7603...

Stijn

> Signed-off-by: Stijn Segers <foss@volatilesystems.org>
> ---
>  target/linux/ramips/image/mt7621.mk | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/ramips/image/mt7621.mk 
> b/target/linux/ramips/image/mt7621.mk
> index 082bb31b79..f16bf2a5bd 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -227,7 +227,7 @@ define Device/dlink_dir-860l-b1
>    DEVICE_VENDOR := D-Link
>    DEVICE_MODEL := DIR-860L
>    DEVICE_VARIANT := B1
> -  DEVICE_PACKAGES := kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport 
> wpad-basic
> +  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 kmod-usb3 
> kmod-usb-ledtrig-usbport wpad-basic
>    SUPPORTED_DEVICES += dir-860l-b1
>  endef
>  TARGET_DEVICES += dlink_dir-860l-b1
> --
> 2.20.1
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
