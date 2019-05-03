Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF6C12DDF
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 14:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gBKh4OS+UVHRj1MPwCxkH2X/xLoPv4Xbz5pJLlA+/FQ=; b=e+BNlk8gLxz10rOvEL5oexeXFU
	sgNBKlMAvgdPoLfebG1TssUHfwVsia4XZ0wEszVPdh5gGtwFSzAfCZLVDvggxYnQyC6Ce+Chi4n88
	CWR06aXHVnY2Nf9HcGtv+50YC4oZYayRlpB3ANKG5wIoPsHQYVo75bKE2z/HA9JBsnjKrpdCb4/YT
	tZs4lKx0UKdyxt1tNvByN90hjtiYjGGCT1zcqQp0VklS3YEmF4yw4pN3pVdvB2uqwBr+u549SE7xm
	+F6nsgaawIsbfi4pQGHHb4gxD++11fcQqOv4JqkeYvuWiJV/j+eGKX/D581gfWBJCuIbIFDCwoFgW
	XPsnHDKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXYC-00022F-NW; Fri, 03 May 2019 12:44:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXY5-00021i-2i
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 12:44:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 80AC5465C;
 Fri,  3 May 2019 14:44:18 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 81123360;
 Fri, 3 May 2019 14:44:17 +0200 (CEST)
Date: Fri, 3 May 2019 14:44:17 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Josef Schlehofer <josef.schlehofer@nic.cz>
Message-ID: <20190503124417.GD71477@meh.true.cz>
References: <20190419230505.29593-1-josef.schlehofer@nic.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190419230505.29593-1-josef.schlehofer@nic.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_054421_275338_D5A5FF11 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: add kmod-i2c-mux-pca954x for
 Turris Omnia
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

Josef Schlehofer <josef.schlehofer@nic.cz> [2019-04-20 01:05:05]:

Hi,

> The driver is for the I2C mux.
> Schematic available at https://doc.turris.cz/doc/_media/rtrom01-schema.pdf
> 
> Signed-off-by: Josef Schlehofer <josef.schlehofer@nic.cz>
> ---
>  target/linux/mvebu/image/cortex-a9.mk | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
> index 66cf54f9c5..f6d63fa786 100644
> --- a/target/linux/mvebu/image/cortex-a9.mk
> +++ b/target/linux/mvebu/image/cortex-a9.mk
> @@ -163,7 +163,7 @@ define Device/turris-omnia
>    DEVICE_PACKAGES :=  \
>      mkf2fs e2fsprogs kmod-fs-vfat kmod-nls-cp437 kmod-nls-iso8859-1 \
>      wpad-basic kmod-ath9k kmod-ath10k-ct ath10k-firmware-qca988x-ct \
> -    partx-utils
> +    partx-utils kmod-i2c-core kmod-i2c-mux kmod-i2c-mux-pca954x

is there any reason for adding explicit kmod-i2c-core and kmod-i2c-mux
dependencies?

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
