Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB3910AF22
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 12:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e1AQKq8YSnUdDHV9UHBCtp+lkFHdC6obIXdRj1XLwR4=; b=TvpHpPtAbiIcubnRUhTx2UupXF
	3OqCr8jVITZhWjcZBqRHYCaxcAGjlr6MdICJIZ3MAuUKlvoKyKYaomYglr7mcdtS3Bqf1TPYH4uzv
	oGjMFdOSURbjBfms08nhd4xqlDe5Mew3c+r6notZbTne1M5RTZiXHKntcCMZnJJg+BzlM36BabOXm
	XKD2o66EUdhwpTfyT14Ucgbt8tOAD9sec/kP5ApQNorGijC5ivjQAoXnYy47P/5FZeb2/m11k9rpS
	7abc8mRyJWbbaR32dZ1az9ZjoDcldxiao76rnfwI9kbfmGtI2SJNkoK+UZO+myzyZ1epUkE5RSpsw
	XML3oerA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZvxI-0004ce-IS; Wed, 27 Nov 2019 11:58:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvx6-0004c3-Nc
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 11:57:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 85ABC353F;
 Wed, 27 Nov 2019 12:57:45 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id eae1eb2e;
 Wed, 27 Nov 2019 12:57:35 +0100 (CET)
Date: Wed, 27 Nov 2019 12:57:35 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Message-ID: <20191127115735.GC37269@meh.true.cz>
References: <20191126234302.GR1344@shell.armlinux.org.uk>
 <20191126225009.dopGQ1344@shell.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
 <20191127085045.GA37269@meh.true.cz>
 <20191127103510.GD25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127103510.GD25745@shell.armlinux.org.uk>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_035748_924830_D3A8A708 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] kernel: add backported
 phy/phylink/sfp patches
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Russell King - ARM Linux admin <linux@armlinux.org.uk> [2019-11-27 10:35:10]:

> It makes it very difficult to understand.  For example, where is the
> kernel + kmod package version/release set 

from kmod-libphy_4.19.85-1_aarch64_cortex-a53.ipk/control.tar.gz/control:

 Package: kmod-libphy
 Version: 4.19.85-1
 Depends: kernel (=4.19.85-1-f24e301be88eb921523d0eb26012ec0f)

I'm interested how the Version: is set:

 $ git grep Version: include/
 include/package-dumpinfo.mk:)Version: $(VERSION)

So then I need to know how the VERSION is set:

 $ git grep VERSION.*:.*= include/kernel*
 include/kernel.mk:    VERSION:=$(LINUX_VERSION)$(if $(PKG_VERSION),+$(PKG_VERSION))-$(if $(PKG_RELEASE),$(PKG_RELEASE),$(LINUX_RELEASE))

So from above it's PKG_RELEASE or LINUX_RELEASE now:

 $ git grep -E '(PKG_RELEASE|LINUX_RELEASE)' include/kernel*
 include/kernel-version.mk:LINUX_RELEASE?=1

So in order to bump the release in the 4.19.85-1 from 1 to 2 I would probably
need to set LINUX_RELEASE:=2 somewhere in the Make files or provide it to Make
via commandline, as `make ... LINUX_RELEASE=2`.

> > AFAIK Jonas plans to borrow few SFP modules and test this on his ClearFog PRO
> > and he is eventually going to merge this as well.
> 
> Surely only one person should be merging this?

I'm not implying that, but Jonas is already involved and has access to the
actual hardware, so it makes sense to let him test and merge it.

> > > 5) the final patch, which isn't in mainline, and probably needs further
> > >    work - should that go in target/linux/generic/hack-4.19 ? 
> > 
> > If you're talking here about 1/4, then this one is probably just fine as it
> > is.
> 
> I'm talking about 4/4, the "work around Nokia GPON module's TX_FAULT
> assertion" patch.

Hm, I'm puzzled 4/4 is "kernel: add uDPU update patches" and grep nokia fails.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
