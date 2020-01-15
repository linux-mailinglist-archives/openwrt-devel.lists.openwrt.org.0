Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD0913CD32
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 20:35:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5F6fqKrLbCVIhXBuxDxmDUmZJ4XKS9dRkMLcYmOFI+U=; b=Tqp6YckN7i51BGtWwBYcKymKS
	r8jA4oikYFNsXRUu1VQpb7MWhi++vNX7UrRin3r3DTQ3GjRi2CQEBq7Al+0gVoGOzNibR8qgYwQNM
	RSqlYypyn3brX/tHG9OpwU6hV/HFg7vNbg7RXUlQxl1732ToQZTn03iozuRignUOAIv26bRV5ht6h
	UsetmaOgyBGQPL7LmcQ+cxqgkgSprXBBBhDPGJl5PpXeNGmkO1/gDeFfiMKJpyvqVvhpPXZ7x+3Be
	H2b0oZ0sDTgyEL1E4L56Ll6cVOcD8ZG9/4Cm3QvY8ykHJrNrGqfPXt9dlhmDbu+gB1JTTkXy7iAIM
	Nc8v/8G7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iroRq-00035r-8S; Wed, 15 Jan 2020 19:35:26 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iroRO-0001iY-IB
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 19:35:02 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>) id 1iroRM-0000LU-RY
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 20:34:56 +0100
To: openwrt-devel@lists.openwrt.org
References: <20191222015147.671590-1-rosenp@gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <290178c7-b1fa-ebe8-bcca-22cf3e333863@phrozen.org>
Date: Wed, 15 Jan 2020 20:34:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191222015147.671590-1-rosenp@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_113458_754620_6F19A95D 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] perf: Add libunwind only if selected
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

On 22/12/2019 02:51, Rosen Penev wrote:
> The depends are totally wrong. libunwind does not work with powerpc and
> i386 as it needs glibc.
> 
> Instead of duplicating the platforms, just change the dependency.
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>

Merged, thanks !

> ---
>   package/devel/perf/Makefile | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/package/devel/perf/Makefile b/package/devel/perf/Makefile
> index 6f31c826e5..aa5fb16f60 100644
> --- a/package/devel/perf/Makefile
> +++ b/package/devel/perf/Makefile
> @@ -10,7 +10,7 @@ include $(INCLUDE_DIR)/kernel.mk
>   
>   PKG_NAME:=perf
>   PKG_VERSION:=$(LINUX_VERSION)
> -PKG_RELEASE:=2
> +PKG_RELEASE:=3
>   
>   PKG_USE_MIPS16:=0
>   PKG_BUILD_PARALLEL:=1
> @@ -26,7 +26,7 @@ include $(INCLUDE_DIR)/package.mk
>   define Package/perf
>     SECTION:=devel
>     CATEGORY:=Development
> -  DEPENDS:= +libelf +libdw +(mips||mipsel||powerpc||i386||x86_64||arm||aarch64):libunwind +libpthread +librt +objdump @!IN_SDK @!TARGET_arc770 @KERNEL_PERF_EVENTS
> +  DEPENDS:= +libelf +libdw +PACKAGE_libunwind:libunwind +libpthread +librt +objdump @!IN_SDK @!TARGET_arc770 @KERNEL_PERF_EVENTS
>     TITLE:=Linux performance monitoring tool
>     VERSION:=$(LINUX_VERSION)-$(PKG_RELEASE)
>     URL:=http://www.kernel.org
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
