Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96930B97AC
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 21:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/hkBPDkjZMN/k8FhEtgp/Z+Ab1HSSidwve/EVwB+cVw=; b=JM3yjSjJpbVN/x+5InD1XhBCpa
	Jj1rr3f/cehlbgGi0GrrT1MRBlxJDobKeeV/ZgqLnuHdClDB9qcImqngta1hcL/3lVoarAeDAf97/
	ecF9j9r8R+BN+dwRBvlEd9FITWug7/EByZIPATcY+059VISjMp+6HiKfpB078kS8Zyo5pMy/uEfGK
	NV+1X46PFocIFUIsh5iyhvB8ufFFPiSTDyTNEgfPgP90/F2BQUqx99EA1Qr5VMFhcDYnJhJP98Ngj
	mMZ+0LN7pg2K+22oUqc869Hgaj/3q0u+HUK2zv9UurGTsM3wl9lsXT4+fx8WCVqEEk4QOHZyLJ+kc
	efsew9+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBOO1-0000qY-Ic; Fri, 20 Sep 2019 19:16:09 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBONt-0000qD-6Q
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 19:16:04 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 04D686EE0;
 Fri, 20 Sep 2019 21:15:57 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 946db469;
 Fri, 20 Sep 2019 21:15:50 +0200 (CEST)
Date: Fri, 20 Sep 2019 21:15:50 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Thomas Albers <thomas.gameiro@googlemail.com>
Message-ID: <20190920191550.GA40628@meh.true.cz>
References: <mailman.25186.1568674551.19300.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.25186.1568674551.19300.openwrt-devel@lists.openwrt.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_121601_390575_C7C4E50B 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] build: fix make kernel_menuconfig
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Thomas Albers via openwrt-devel <openwrt-devel@lists.openwrt.org> [2019-09-16 17:55:42]:

Hi,

[...]

> Use system pkg-config instead of toolchain pkg-config when the kernel 
> config scripts are compiled (see FS#2423)

[...]

> diff --git a/tools/pkg-config/files/pkg-config b/tools/pkg-config/files/pkg-config
> index 82cc74ffcb..00243e663e 100755
> --- a/tools/pkg-config/files/pkg-config
> +++ b/tools/pkg-config/files/pkg-config
> @@ -1,3 +1,7 @@
>  #!/bin/sh
>  
> -pkg-config.real --define-variable=prefix=${STAGING_PREFIX} --define-variable=exec_prefix=${STAGING_PREFIX} --define-variable=bindir=${STAGING_PREFIX}/bin $@
> +if [ -n "${STAGING_PREFIX}" ]; then
> +	pkg-config.real --define-variable=prefix=${STAGING_PREFIX} --define-variable=exec_prefix=${STAGING_PREFIX} --define-variable=bindir=${STAGING_PREFIX}/bin $@
> +else
> +	${SYSTEM_PKG_CONFIG} $@
> +fi

I've discussed this patch today on IRC and we came to the conclusion, that
it's too fragile and that it would be preferred to simply focus on fixing just
what is broken, thus just kernel_menuconfig target.

I came up with following fix[1].

1. https://git.openwrt.org/4faf5f30e4479e4f033963c70b312035fa1774ab

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
