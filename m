Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA25135B1
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 00:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p5kT+q/OiQXEvMJOYS8xfGx4L808vvoEERePpaV3kbA=; b=EC84YJ/IX3g+//kTBl7y5l19O2
	HiP8ZtS/nFogkfN6GAW6Xzn3MFgAHXYXYhlq6v/OIlGNgsChY2ku/sNCYYThGeajVfKs8ySC9k+7m
	Sao2TcMp5mpr4Z5CA/k7IDYtg53g2mt+XeNROZ2Ft2azAAQHPdWg3jflS3M1au3soxry9vAO37Huo
	LsBlcBsGeevANkk02mHYAkPBj8dP1SchxjqnIC86JRuLtwOo0KxUGtlHvY0IK7Ag900UQ0gdI3ThQ
	lssxjubDSP/1ZM4BlNaoBQPEXTocEMYJ7LoHipp2V88/89+Yn/uvoks+RdZVFuNK8s+10m74KHJ6G
	3V1a4dYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMgon-0005pG-Hj; Fri, 03 May 2019 22:38:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMgog-0005os-W3
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 22:38:08 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 75B863524;
 Sat,  4 May 2019 00:38:04 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 3da16efa;
 Sat, 4 May 2019 00:38:03 +0200 (CEST)
Date: Sat, 4 May 2019 00:38:03 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20190503223803.GK71477@meh.true.cz>
References: <20190501174224.19089-1-tomek_n@o2.pl>
 <20190501174224.19089-7-tomek_n@o2.pl>
 <69de5f77-e694-d2bd-9c67-a94173c91243@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69de5f77-e694-d2bd-9c67-a94173c91243@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_153807_186822_B83F36D2 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 6/8] mvebu: add vendor to device names
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
Cc: openwrt-devel@lists.openwrt.org, Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hauke Mehrtens <hauke@hauke-m.de> [2019-05-04 00:00:25]:

Hi,

> On 5/1/19 7:42 PM, Tomasz Maciej Nowak wrote:
> > Replace SoC names with vendors in device names, in few cases, and add
> > vendor to developemnt boards for easier identyfying potential firmware to
> > flash.
> 
> Will sysupgrade still work after this rename? Isn't there some script
> which checks if the image is compatible with the currently installed image?

SUPPORTED_DEVICES variable is used for this, so it's probably going to work,
but if we're willing to rename it, it might be a good idea to follow the DT
compatible naming scheme as used in other targets.

So instead of this in patch 4/8:

 -  SUPPORTED_DEVICES = $$(DEVICE_DTS)
 +  SUPPORTED_DEVICES = $$(firstword $$(DEVICE_DTS))

Tomasz should be doing following:

 -  SUPPORTED_DEVICES = $$(DEVICE_DTS)
 +  SUPPORTED_DEVICES = $(subst _,$(comma),$(1))

as currently being used in apm821xx, ath79, ipq40xx, ipq806x, kirkwood, lantiq,
omap, oxnas and ramips.

So this

> > -define Device/armada-3720-db
> > +define Device/marvell-armada-3720-db

would become

> > -define Device/armada-3720-db
> > +define Device/marvell_armada-3720-db

and this

> > -TARGET_DEVICES += armada-3720-db
> > +TARGET_DEVICES += marvell-armada-3720-db

would become 

> > -TARGET_DEVICES += armada-3720-db
> > +TARGET_DEVICES += marvell_armada-3720-db
> > -SUPPORTED_DEVICES := marvell,armada-3720-db

as the SUPPORTED_DEVICES variable would be automagically set to the same value
by the code above, following the DRY principle.

If the SUPPORTED_DEVICES variable is going to change as for example here:

> > -define Device/openblocks-ax3-4
> > +define Device/plathome_openblocks-ax3-4
> >    DEVICE_DTS := armada-xp-openblocks-ax3-4
> > -  SUPPORTED_DEVICES := $(1)
> > +  SUPPORTED_DEVICES := openblocks-ax3-4
> >    BLOCKSIZE := 128k
> >    PAGESIZE := 1
> >    IMAGES += factory.img
> >    IMAGE/factory.img := append-kernel | pad-to $$(BLOCKSIZE) | append-ubi
> >    DEVICE_TITLE := Plat'Home OpenBlocks AX3
> >  endef
> > -TARGET_DEVICES += openblocks-ax3-4
> > +TARGET_DEVICES += plathome_openblocks-ax3-4

The old `openblocks-ax3-4` name has to be added by following construct:

 SUPPORTED_DEVICES += openblocks-ax3-4

in order to support the old and new naming schemes, so the SUPPORTED_DEVICES
would actually contain `plathome,openblocks-ax3-4 openblocks-ax3-4` and allow
seamless sysupgrade experience.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
