Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAAA18A326
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 20:29:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIcJPWMUG2a6dpeNSqDkoUMt2P4mHWOVWRGWdA88+pk=; b=mDWdC9G622BW03
	sVwOUddPBrmkz3PwHTFklB+Q/HZ1tptjDQtZi7z2IpKaNZ6fKEGEo4HanxxQczGbA9fwJbHKeWjPH
	yz4fBg5tZTpOWQv9LxNDHXWRe0BJd2mBYFzCfAfV8BjEfPIfb8lA6I2HlQ1ct/aRru5V+9c+nh2II
	yT1O4J3YwGqKLX1qNBNp6o3WzmZq2AQ6LGWUbnB1VKxyClrimfImfkEK4wOQQzTvBex8Je5jVMqlg
	zo5Xc3svMb54wvoioLIfBCxIOWReqq8p53cvaMI20JCR2ZjL2rxtVcb9VOg1IihhJvQ0O9VY1dkYW
	SCGLR+jGIhKLz4tif7HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEeNI-0008Kg-TW; Wed, 18 Mar 2020 19:29:08 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEeNA-0008Ji-Os
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 19:29:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584559736;
 bh=OjxNIYnSjqmh0WYlPT8PD2jpwdJEoZTx1zzK3AW3ItQ=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=SiEyjdzP9PFcUWRaTm95+56ZxXARHQHemZAcBIXjxzxSR+5YUrOUV3VJ9hAfMC1fr
 WaFZLdJS99UZqU0e3HgSv2kRz0ySGumAj0N3/R/7IYo464HshsJKex8DGQwe8P8TIn
 ViVEoma/vVj9uyQlFLAUMjU0npEVmuH/2ACRXdqY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.67.170]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Msq2E-1jYWhr3Ci8-00tBzG; Wed, 18
 Mar 2020 20:28:55 +0100
Date: Wed, 18 Mar 2020 20:28:54 +0100
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200318192853.GA3656@darth.lan>
Mail-Followup-To: openwrt-devel@lists.openwrt.org,
 Jeffery To <jeffery.to@gmail.com>
References: <20200317142713.13667-1-jeffery.to@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317142713.13667-1-jeffery.to@gmail.com>
X-Provags-ID: V03:K1:3aTUmsliMWYs0m5/gPn0e8Tpx70qvAxvNL6qPj0E8FpIZ/F+ZYU
 YKDSvqDKjeYEhdqVroNnOUL2/M5GuymgBsrAErv1LW+UaLDm1zc1vQHHkNAFg7SSByuYPAi
 sdpHPLaSu0ubNbSmHnaFbgJAXjwJEYnE9DEf7vrzHz7ievPBUWGegEGIBmIQBimoc7dZ0rD
 e07zk/4JkQUB8nrntpzYg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2Jr4YUxDDSM=:AxkbHrYlQiX/M6F8/ho/25
 CNm8Jh5KRN9caMPovB01KQUFV5g0LpOUiktgxRXJwVSFj8pPkR+mimsdVZ54nIm5XxcZIOmoz
 LEDVUDO65qlLj2pP9OA2uiQvrcjRmyUUidhPaKIkPXIAi4Svnrco1UXzwVOz9MMSVRMKefOv2
 6tB7tLok1RrWrT26qNDDzUOB5G1QfUKd1mcm1VeVuUfjpRI7Bg2kIu2PyvIl+YXuM5u0ARwQZ
 S+eU7rXttDyjn0b3E/1FSWph7DiDEsWHZZfqjYhZweezEPhhRTm33MpWycck3oGVi9Za0EXSh
 Vn6IkUvRWXcpPMZ1vMDIzKcFpsmvluylOpVcGLNETz/kOeAtg+I//bV43D1/1u4hwUNBqupBo
 FZbPllP1nFsIDrLceOgJQOKrntttXI1U3vOu8hSKsxfAQ2ETgO1NS+WlRwjb8wY+K0+xpoyUU
 nyxqp0fi49UTkjECQsplAwDYsRHqKvCUd/VqZhL2ssLuycMAGyzY97ROZaqb+nXaZL9o/DrzQ
 1y+IgUoWixZHYc4nmZCX9mUAMMG6L6byu9S+ocx64L5GIXt0bxv6+IFNHe7ANHUaCRqz5HziD
 3W7Q2JkR6xpNDbRsuAHuTlTLAVUTs7TXi+Kw2X8CjfYTqWddDIHWN041Ra3wJlyfpxiwqdFdg
 7WKQkYWMiSN2QW4DiT1YvU3GCSQZQBIMd59LorYgWGNpaLzB+kJR1GCDoJI3CcD0lzQDyEdwG
 1afwJNMcmE2J6EUIs8Y7P5+3M5n63foka+wB3LLO6kQLPmg/LjaZdZz/yaWORYMQbpViYdXbn
 mOajYO4EN2881HiAFGIyGVLNJ68cP3wKd94SwYhIfMdGIAA2gGs+kXBgv1SyBV4WxN3uVh3wl
 YcsP+2gbpmAMMut3RWMwik2hB88p4Dp1Q9sawdcvy2abM32VY8yIpuuZMG5ttrWYVA69YNkrF
 zjgAXC6y5qBB8U9NH3joPgxZAsr9+OlwslRBX+ObzVa0LADvEmexqhx+JyDOzfL2nHRZ/7LWl
 my3GhMOx0YsLKOFhzdyy4ZBUEpgV+6r3Ngh5mm+JbDIAP8Wq85s8NfOB30gMe1ZddRq/G8S8s
 E027qVSo0n7ZXM5pdsYudIOhmv6bqu7BYmwqWoaQhZEZZJDAqRQRihGqvO6Q93W3m1xTQVqXA
 e8qA+5q+DTMuDR3LNvrQp2XFYszZj1mxKEfOvrGY+uusY57w6qDEYFno9ySWk9opngYCgnSdw
 p0sL6exHpL4y1vDzR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_122901_140300_33AA3D1D 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sebastian_ml[at]gmx.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] cryptodev-linux: Fix error when
 compiling with 5.4 kernel
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
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Mar 17, 2020 at 10:27:13PM +0800, Jeffery To wrote:
> Currently, cryptodev-linux fails to compile with a
> '"crypto_givcipher_type" undefined' error for targets on the 5.4 kernel,
> e.g. armvirt[1].
>
> This backports an upstream patch[2] that fixes this error.
>
> [1]: https://downloads.openwrt.org/snapshots/faillogs/aarch64_generic/base/cryptodev-linux/compile.txt
> [2]: https://github.com/cryptodev-linux/cryptodev-linux/commit/f971e0cd4a0ebe59fb2e8e17240399bf6901b09b
>
> Signed-off-by: Jeffery To <jeffery.to@gmail.com>

Acked-by: Sebastian Kemper <sebastian_ml@gmx.net>

Hi all,

Please include this. With kernel 5.4 cryptodev currently fails on the
bots. And when cryptodev fails then openssl fails as well and so on and
so forth.

Thanks!
Seb

> ---
>  package/kernel/cryptodev-linux/Makefile       |  2 +-
>  ...x-module-loading-with-Linux-v5.0-rc5.patch | 50 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 1 deletion(-)
>  create mode 100644 package/kernel/cryptodev-linux/patches/010-Fix-module-loading-with-Linux-v5.0-rc5.patch
>
> diff --git a/package/kernel/cryptodev-linux/Makefile b/package/kernel/cryptodev-linux/Makefile
> index da18c714b0..9bea63ebd1 100644
> --- a/package/kernel/cryptodev-linux/Makefile
> +++ b/package/kernel/cryptodev-linux/Makefile
> @@ -11,7 +11,7 @@ include $(INCLUDE_DIR)/kernel.mk
>
>  PKG_NAME:=cryptodev-linux
>  PKG_VERSION:=1.10
> -PKG_RELEASE:=1
> +PKG_RELEASE:=2
>
>  PKG_SOURCE_URL:=https://codeload.github.com/$(PKG_NAME)/$(PKG_NAME)/tar.gz/$(PKG_NAME)-$(PKG_VERSION)?
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
> diff --git a/package/kernel/cryptodev-linux/patches/010-Fix-module-loading-with-Linux-v5.0-rc5.patch b/package/kernel/cryptodev-linux/patches/010-Fix-module-loading-with-Linux-v5.0-rc5.patch
> new file mode 100644
> index 0000000000..5909f6dfb3
> --- /dev/null
> +++ b/package/kernel/cryptodev-linux/patches/010-Fix-module-loading-with-Linux-v5.0-rc5.patch
> @@ -0,0 +1,50 @@
> +From f971e0cd4a0ebe59fb2e8e17240399bf6901b09b Mon Sep 17 00:00:00 2001
> +From: "Derald D. Woods" <woods.technical@gmail.com>
> +Date: Sun, 10 Feb 2019 13:22:19 -0600
> +Subject: [PATCH] Fix module loading with Linux v5.0-rc5
> +
> +This commit fixes this module load error:
> +[...]
> +[   29.112091] cryptodev: loading out-of-tree module taints kernel.
> +[   29.128906] cryptodev: Unknown symbol crypto_givcipher_type (err -2)
> +[   29.188842] cryptodev: Unknown symbol crypto_givcipher_type (err -2)
> +modprobe: can't load module cryptodev (extra/cryptodev.ko): unknown symbol in module, or unknown parameter
> +[...]
> +
> +Upstream Linux support for unused GIVCIPHER, and others, was dropped here:
> +
> +c79b411eaa72 (crypto: skcipher - remove remnants of internal IV generators)
> +
> +Signed-off-by: Derald D. Woods <woods.technical@gmail.com>
> +---
> + cryptlib.c | 9 +++++++--
> + 1 file changed, 7 insertions(+), 2 deletions(-)
> +
> +diff --git a/cryptlib.c b/cryptlib.c
> +index 6e66698..4a87037 100644
> +--- a/cryptlib.c
> ++++ b/cryptlib.c
> +@@ -38,7 +38,9 @@
> + #include "cryptodev_int.h"
> + #include "cipherapi.h"
> +
> ++#if (LINUX_VERSION_CODE < KERNEL_VERSION(5, 0, 0))
> + extern const struct crypto_type crypto_givcipher_type;
> ++#endif
> +
> + static void cryptodev_complete(struct crypto_async_request *req, int err)
> + {
> +@@ -157,8 +159,11 @@ int cryptodev_cipher_init(struct cipher_data *out, const char *alg_name,
> +
> + #if (LINUX_VERSION_CODE >= KERNEL_VERSION(4, 8, 0))
> + 		tfm = crypto_skcipher_tfm(out->async.s);
> +-		if ((tfm->__crt_alg->cra_type == &crypto_ablkcipher_type) ||
> +-		    (tfm->__crt_alg->cra_type == &crypto_givcipher_type)) {
> ++		if ((tfm->__crt_alg->cra_type == &crypto_ablkcipher_type)
> ++#if (LINUX_VERSION_CODE < KERNEL_VERSION(5, 0, 0))
> ++		    || (tfm->__crt_alg->cra_type == &crypto_givcipher_type)
> ++#endif
> ++							) {
> + 			struct ablkcipher_alg *alg;
> +
> + 			alg = &tfm->__crt_alg->cra_ablkcipher;
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
