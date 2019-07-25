Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C8A74ED2
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 15:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOaDEMDE1bmW7yUqRGTtQE4lW+iFyrMdFk1/z69iXKQ=; b=G3CjMU+/sECImU
	TwbYpa57SvSfeHRtg4MuFWnjmk5VsvKwbO6r0ZeHZpA6gyxtlGHdo+mpOnYq5EW3Fuiat5jANCM8e
	ZhcnllZvY3P1nFOATrRJFAbMdW4H6k7DrtTBuXr7fv/K7L1zoiZN17WjgKeua5OfnohAdNciFOha+
	owPppv6nR8rYTMZx6f/iUf1+AgZF2zuLGYhuPgrjAE/RkopApbVSO5qcSN+OP7YsHNcMqPekqJ876
	FA8BFrbnOnF4yZ1H7BpPy0M+O4r6s3lnZdWN8ypaUJ8H8qnkEPnrPq0PI+EOgqvGcI/nKMQLnVCfB
	kx8dwTLsfnpYXzUgmpUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdTn-0000zn-Cm; Thu, 25 Jul 2019 13:08:19 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdTU-0000z4-Of
 for openwrt-devel@lists.openwrt.org; Thu, 25 Jul 2019 13:08:02 +0000
X-Originating-IP: 86.250.200.211
Received: from windsurf (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id A959620006;
 Thu, 25 Jul 2019 13:07:51 +0000 (UTC)
Date: Thu, 25 Jul 2019 15:07:50 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20190725150750.2e70a106@windsurf>
In-Reply-To: <20190325182009.67d6ebb5@windsurf>
References: <20190311162028.13172-1-thomas.petazzoni@bootlin.com>
 <20190311162028.13172-2-thomas.petazzoni@bootlin.com>
 <500817b3-9bc8-5c37-9ae0-ba787324c694@hauke-m.de>
 <20190325182009.67d6ebb5@windsurf>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_060800_963439_E2F4DA2F 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 01/11] tools/libaio: new package
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

Hello Hauke,

I'm finally getting back to this dm-verity work, and I have a question below.

On Mon, 25 Mar 2019 18:20:09 +0100
Thomas Petazzoni <thomas.petazzoni@bootlin.com> wrote:

> > > diff --git a/tools/Makefile b/tools/Makefile
> > > index 9a354f6c70..9702b4df25 100644
> > > --- a/tools/Makefile
> > > +++ b/tools/Makefile
> > > @@ -27,6 +27,7 @@ tools-y += sstrip make-ext4fs e2fsprogs mtd-utils mkimage
> > >  tools-y += firmware-utils patch-image quilt padjffs2
> > >  tools-y += mm-macros missing-macros cmake scons bc findutils gengetopt patchelf
> > >  tools-y += mtools dosfstools libressl
> > > +tools-y += libaio    
> > 
> > I would prefer if this only gets build when
> > CONFIG_TARGET_ROOTFS_SQUASHFS_HASHED is set or some other config variable.  
> 
> Sure. I was a bit confused by this to be honest. Wouldn't it be
> possible to just add "cryptsetup" to tools-y when
> CONFIG_TARGET_ROOTFS_SQUASHFS_HASHED=y, and have the other packages
> (libaio, popt, lvm2) be simply built as dependencies of cryptsetup ?
> 
> Indeed, what CONFIG_TARGET_ROOTFS_SQUASHFS_HASHED=y really needs is
> cryptsetup, the rest are mere build dependencies to build cryptsetup.

Do you have some feedback on this particular question ? Ideally, I'd
like to have just:

tools-$(CONFIG_TARGET_ROOTFS_SQUASHFS_HASHED) += cryptsetup

in tools/Makefile, but I don't know in tools/cryptsetup/Makefile how to
express the dependencies it has on other tools. I briefly looked at
other tools/*/Makefile, and couldn't spot any that has a dependency on
something else.

> > > +include $(INCLUDE_DIR)/host-build.mk
> > > +
> > > +define Host/Configure
> > > +endef    
> > 
> > Is this empty configure section needed?  
> 
> Meh, most likely not. Will fix and retest.

In fact, if you look at tools/*/Makefile, there is a common pattern of
defining Host/Configure to an empty variable:

missing-macros/Makefile:define Host/Configure
missing-macros/Makefile-endef

padjffs2/Makefile:define Host/Configure
padjffs2/Makefile-endef

scons/Makefile:define Host/Configure
scons/Makefile-endef

sdimage/Makefile:define Host/Configure
sdimage/Makefile-endef

this is probably to avoid using the default Host/Configure
implementation from include/host-build.mk. But ok, in my case, using
the default implementation from include/host-build.mk, which does
nothing if there's no configure script, should work just fine.

Thanks,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
