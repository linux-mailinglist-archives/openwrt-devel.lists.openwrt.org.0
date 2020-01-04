Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F537130277
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 14:07:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffUYBzHWb9DwHvQRkwMd/+GHGXzHVFtNKP7dv60hoq8=; b=gxHn1JK0O/BlYy
	3WAA7touFW4Cvgxy+tI5o1czeB5T76I50viZjElcYcy6Ohg9apOOkT1c7u2jP/PuInpg8ALwVQGve
	xnUyJ9RdOM352I4YPJw6sZQgTWA7Y5cKho94l160hSmAKYwV9s1WdXU7yA7/VQeXhmpCbfeECHa1N
	NCsXJTARcZV/rVP549JlaYUJciA4vITXslHKgOQM4Gq7PDelFOho7cZJmFDrByI8QR7ljBHdJ8wJs
	7gWck16av5OrhYeZwdHyvT5gZEHRrnkZUq5nP8OFgJoVTtARCD2wwSw7j8bDgoQqvfFVIYZVUPOC5
	4iLYrKxwi5V8genpIiXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inj93-0006u0-W3; Sat, 04 Jan 2020 13:07:09 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inj8y-0006tX-DM
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 13:07:05 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1inj8p-0002V4-Gb; Sat, 04 Jan 2020 14:06:56 +0100
Date: Sat, 4 Jan 2020 15:06:38 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Message-ID: <20200104130638.GD1301@makrotopia.org>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
 <20191122095541.688125-2-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122095541.688125-2-thomas.petazzoni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_050704_450741_B658B83B 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/7] package/utils/busybox: add optional
 selinux support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Thomas,

On Fri, Nov 22, 2019 at 10:55:35AM +0100, Thomas Petazzoni wrote:
> Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> ---
>  package/utils/busybox/Makefile | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/package/utils/busybox/Makefile b/package/utils/busybox/Makefile
> index c0f3007e5d..bad4598525 100644
> --- a/package/utils/busybox/Makefile
> +++ b/package/utils/busybox/Makefile
> @@ -17,7 +17,7 @@ PKG_SOURCE_URL:=https://www.busybox.net/downloads \
>  		http://sources.buildroot.net
>  PKG_HASH:=d0f940a72f648943c1f2211e0e3117387c31d765137d92bd8284a3fb9752a998
>  
> -PKG_BUILD_DEPENDS:=BUSYBOX_CONFIG_PAM:libpam
> +PKG_BUILD_DEPENDS:=BUSYBOX_CONFIG_PAM:libpam BUSYBOX_CONFIG_SELINUX:libselinux
>  PKG_BUILD_PARALLEL:=1
>  PKG_CHECK_FORMAT_SECURITY:=0
>  
> @@ -45,7 +45,7 @@ define Package/busybox
>    MAINTAINER:=Felix Fietkau <nbd@nbd.name>
>    TITLE:=Core utilities for embedded Linux
>    URL:=http://busybox.net/
> -  DEPENDS:=+BUSYBOX_CONFIG_PAM:libpam +BUSYBOX_CONFIG_NTPD:jsonfilter
> +  DEPENDS:=+BUSYBOX_CONFIG_PAM:libpam +BUSYBOX_CONFIG_NTPD:jsonfilter +BUSYBOX_CONFIG_SELINUX:libselinux
>    MENU:=1
>  endef
>  
> @@ -76,6 +76,9 @@ LDLIBS += $(call BUSYBOX_IF_ENABLED,PAM,pam pam_misc pthread)
>  ifeq ($(CONFIG_USE_GLIBC),y)
>    LDLIBS += $(call BUSYBOX_IF_ENABLED,NSLOOKUP_OPENWRT,resolv)
>  endif
> +ifeq ($(CONFIG_BUSYBOX_CONFIG_SELINUX),y)
> +  LDLIBS += selinux sepol
> +endif

also here, it would be better to have a build-variant of busybox with
has selinux enabled instead of a buildroot compile option.


Cheers


Daniel

>  
>  TARGET_CFLAGS += -flto
>  TARGET_LDFLAGS += -flto=jobserver -fuse-linker-plugin
> -- 
> 2.23.0
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
