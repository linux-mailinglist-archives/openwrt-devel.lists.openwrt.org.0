Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B327D9832F
	for <lists+openwrt-devel@lfdr.de>; Wed, 21 Aug 2019 20:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MSCDd3pfhOBtkQTs7ln/tCAkiVtkmZ7XIFjAJwzkpNI=; b=JvA77W2vVAhKW6RUkrXONrR7j
	QeRBtGdHIsDsj6KRU5kAGU1R851RLiyuLiw74sURScTmPfVxm6sDiPaR9n6eF9wjCDuTSonMFL5wL
	dv5Czw3nQvfNOPwh3NJ3VVGMSOtVulTw0Iz47W/tuoplg2xrfH/O8/05IDXXleiG3oHvBhQ9GJMHw
	l3Knkl74fx4xZK+VGoitAO62E4guhjc314vMFp5lyvh06opsN04qROVzdaYafA82BGRem7r3qfRj0
	ln4p1iwugRIVI6zJlwZQAaEVQFb6U/rkqpgfnvQ9+vgS0IYInPb2aac0zHNjUcr6IrCrzDaQyePzg
	hwLOufHOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VUn-0002yw-NW; Wed, 21 Aug 2019 18:38:09 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::8])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VRr-0006td-2y
 for openwrt-devel@lists.openwrt.org; Wed, 21 Aug 2019 18:35:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1566412500;
 s=strato-dkim-0002; d=heimpold.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=ZaNlJlLkaekCxkCjK8JTLB/BYMD8gmt0ou1A3aVRfPo=;
 b=ki80BGdE2l92RS2v7CSryv6iVeht1F2hfhlVBavQaM8TFjhAKbiaAoCmMK5mmUfidN
 l2CZclI9ziTj5zopJKIpc5K71uP6SfNwxOkSgKmj+9Y2+2u8oCQvlfsyvSt+Zp6fhzyh
 kDArw0vWRntaj/Kr/zEjpUyj95g9u82PsdbxSdHuA3XLbk281IupbsDp9J/eTtIvDThz
 58V/hmsTCA+5JwO5nSeq+f9OUzEZVAzS49+nKaaBiejtklMnptPWrzf3Z6LmUH2UKzg/
 WpLX4yV2JAoJ1ZTZr+SrUlfm0q0YqdfUQ6b7zB0ClwBAPnJVVQlO1iR61z7gLSqiMdf2
 nrkw==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGbO3oK8Gj1q7zlYITk"
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr
 by smtp.strato.de (RZmta 44.26.1 DYNA|AUTH)
 with ESMTPSA id g06df7v7LIYwzmc
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 21 Aug 2019 20:34:58 +0200 (CEST)
Received: from kerker.localnet (kerker.mhei.heimpold.itr [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id CB51F1537AE;
 Wed, 21 Aug 2019 20:34:57 +0200 (CEST)
From: Michael Heimpold <mhei@heimpold.de>
To: wigyori@uid0.hu
Date: Wed, 21 Aug 2019 20:34:28 +0200
Message-ID: <2371323.9LdJS25nyt@kerker>
In-Reply-To: <20190731214247.11683-1-mhei@heimpold.de>
References: <20190731214247.11683-1-mhei@heimpold.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113507_755106_4E4D37D7 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:8 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] uboot-mxs: bump to v2019.07
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
Content-Type: multipart/mixed; boundary="===============5890379087617762335=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5890379087617762335==
Content-Type: multipart/signed; boundary="nextPart23752875.L1GZ3gWKhO"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart23752875.L1GZ3gWKhO
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi wigyori,

Am Mittwoch, 31. Juli 2019, 23:42:45 CEST schrieb Michael Heimpold:
> Also update the U-Boot BSP patch for I2SE Duckbill devices.
> 
> Run tested on I2SE Duckbill and Olimex OLinuXino Maxi boards.

any objections on this patch?

Regards,
mhei

> 
> Signed-off-by: Michael Heimpold <mhei@heimpold.de>
> ---
>  package/boot/uboot-mxs/Makefile                     |  4 ++--
>  .../uboot-mxs/patches/001-add-i2se-duckbill.patch   | 13 +++++++------
>  2 files changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/package/boot/uboot-mxs/Makefile
> b/package/boot/uboot-mxs/Makefile index c4485f5b3d..da98496895 100644
> --- a/package/boot/uboot-mxs/Makefile
> +++ b/package/boot/uboot-mxs/Makefile
> @@ -8,10 +8,10 @@
>  include $(TOPDIR)/rules.mk
>  include $(INCLUDE_DIR)/kernel.mk
> 
> -PKG_VERSION:=2019.01
> +PKG_VERSION:=2019.07
>  PKG_RELEASE:=1
> 
> -PKG_HASH:=50bd7e5a466ab828914d080d5f6a432345b500e8fba1ad3b7b61e95e60d51c22
> +PKG_HASH:=bff4fa77e8da17521c030ca4c5b947a056c1b1be4d3e6ee8637020b8d50251d0
> 
>  include $(INCLUDE_DIR)/u-boot.mk
>  include $(INCLUDE_DIR)/package.mk
> diff --git a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
> b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch index
> 9acb6a508d..e0ac283827 100644
> --- a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
> +++ b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
> @@ -1,4 +1,4 @@
> -From 6af0148a38b23ba761905f98a7211fab986033ce Mon Sep 17 00:00:00 2001
> +From 85d7689cbd3a8162153f445a0656d57122c58d90 Mon Sep 17 00:00:00 2001
>  From: Michael Heimpold <mhei@heimpold.de>
>  Date: Thu, 13 Sep 2018 21:40:19 +0200
>  Subject: [PATCH] arm: mxs: add support for I2SE's Duckbill boards
> @@ -32,9 +32,9 @@ Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
>   board/i2se/duckbill/Makefile    |  10 ++
>   board/i2se/duckbill/duckbill.c  | 186 ++++++++++++++++++++++++++++++++
>   board/i2se/duckbill/iomux.c     | 156 +++++++++++++++++++++++++++
> - configs/duckbill_defconfig      |  38 +++++++
> + configs/duckbill_defconfig      |  39 +++++++
>   include/configs/duckbill.h      | 179 ++++++++++++++++++++++++++++++
> - 8 files changed, 595 insertions(+)
> + 8 files changed, 596 insertions(+)
>   create mode 100644 board/i2se/duckbill/Kconfig
>   create mode 100644 board/i2se/duckbill/MAINTAINERS
>   create mode 100644 board/i2se/duckbill/Makefile
> @@ -471,10 +471,10 @@ index 0000000000..1db3c52c34
>  +}
>  diff --git a/configs/duckbill_defconfig b/configs/duckbill_defconfig
>  new file mode 100644
> -index 0000000000..f92a67d53d
> +index 0000000000..9dea20a87d
>  --- /dev/null
>  +++ b/configs/duckbill_defconfig
> -@@ -0,0 +1,38 @@
> +@@ -0,0 +1,39 @@
>  +CONFIG_ARM=y
>  +CONFIG_ARCH_MX28=y
>  +CONFIG_SYS_TEXT_BASE=0x40002000
> @@ -483,14 +483,15 @@ index 0000000000..f92a67d53d
>  +CONFIG_SPL_LIBGENERIC_SUPPORT=y
>  +CONFIG_TARGET_DUCKBILL=y
>  +CONFIG_SPL_SERIAL_SUPPORT=y
> -+CONFIG_SPL=y
>  +CONFIG_NR_DRAM_BANKS=1
> ++CONFIG_SPL=y
>  +CONFIG_BOOTDELAY=1
>  +CONFIG_SYS_CONSOLE_IS_IN_ENV=y
>  +CONFIG_VERSION_VARIABLE=y
>  +# CONFIG_DISPLAY_BOARDINFO is not set
>  +CONFIG_ARCH_MISC_INIT=y
>  +# CONFIG_SPL_FRAMEWORK is not set
> ++CONFIG_SPL_TEXT_BASE=0x00001000
>  +CONFIG_HUSH_PARSER=y
>  +CONFIG_CMD_BOOTZ=y
>  +# CONFIG_CMD_ELF is not set


--nextPart23752875.L1GZ3gWKhO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEuqZVIsj+7B0PnIAhlIIjA3pZHn8FAl1djrQACgkQlIIjA3pZ
Hn91WBAAlJg8WkFnS+uvIrkFiXLuuTY9oS6xrHxBaGud4zAr/mT0nt0fVguj0A72
mKC9qi6BJcCVV8QLFo99dm5MybwrYGejqvNalwvhJ49oIjR8reoqEktdm5HEqRKF
bEDDiolQMA8zb8JPZrSq5cGWLW42POntFiweym60ngH2V+od28gQ5Of8Kk+tXdhx
7uXHqyhx2txYEMDZxAHjfdXjq/2wELA6PNhyqZiKvI2FY/YkhlFqE7io+bqWs6ii
vMSH5Z9t5n4FjgkrjWBM1iFXF+ytqv2bZV8o04i/F0/wO+zkAoaz8fQXgjqwJUUg
XejdDmiYOEDkd5db2sTWzrVPZD3OE5HKsQR2vkRK4hLV2ZfhYDgpQXZQYnu2anL3
syJMXpTCk6X4YoV+4k1shqQVuBbCL+zFIGiNVNWxTtu/4cuQ60Ut1ND3WPMkSTRI
9EFRL+czYodUJACu6vr+wF3KWmLCgY6cG1dFURrEamWilzzm+Pw3Z2iWMVfmatqM
h43+aGC6IQ+qmXlSlPCrv5h7UF8pGYjM4V+tzePL4xoc6EJFBu+PWobfcTD1+tno
YxLr0oCymo56qvRkOab4Ye3XrsYSJSwhamSmbnULpRXTTrO/0oG/kPiZiJfHsbz6
6NJYjVhF55KGew7lzP9PvRyM4LUalT+GDV3vb5Ru27rmFdV6G3c=
=TgPT
-----END PGP SIGNATURE-----

--nextPart23752875.L1GZ3gWKhO--





--===============5890379087617762335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5890379087617762335==--




