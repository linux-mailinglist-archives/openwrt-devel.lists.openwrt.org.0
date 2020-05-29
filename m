Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022001E89F1
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 23:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sj4F3ng9vUmG6XjMzxDyNFWzyr8nNOlmnje7wMoATjg=; b=u7If7PVp4Ogfjr
	nW+nf1Bor02YyMcYYUe8hlSIptQ4mfYJRdgR/o8fKgaDbywG1iSodSnIcgdrxJAjPOb/ogWV3lHjG
	XWHAe2aCmNXJ45eo4H9c4Bh/Tc27llisUFwxFyT2BIrl+SN9Ugs5DRzDYqPFOdeZmu3Ism3V/fmMQ
	M+uT0TxK0B+5AJScEuq4/qZ7nb3CBAcRxF3jpJ7H5ZPJCH9sxMfAdPLmZxwNKiFcWAgLF7L6fqUy5
	K74oUMRFGUGb1tquKylwXEkfQai5K+zr6oShF4eKwpwCxyoMsnMhbZofGWOzcqwdHji+Urbq8EQc5
	GaaVPBapfJwdIbXMeIZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemTo-0002aH-FM; Fri, 29 May 2020 21:23:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemTi-0002Zp-HM
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 21:23:48 +0000
Received: by mail-wm1-x342.google.com with SMTP id r15so5482196wmh.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 29 May 2020 14:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qCje+g61N7KLK/OGzvI6HfWrgbG+68dwOBj6lkSvKfQ=;
 b=AQO1BZWQAGR+QrtvV3jHN/vjlAgkZEcxlW251HiacnMLkD2TV5sXrf2Kwi/7Ghgqof
 LGED3jFI0i8exDJz1DiRXJhWhK9BDs0TklaglP0fbBPcPOfT1upprVBqGdvAPLLFHnvZ
 U0baWOVWC6aleV4Vx/OjunugjMkJtRYAQH62VwwtaFoHMC6LQHquiaIxFUqigeyeUm7M
 TiZxoEh09SGW5nmUlNZQc9flGYI72qDvJLKhVjsrmK1SgJYAj5Kx8LEySwr6sxIYAYnQ
 GCk3pdGxZDjQxheYKQKpdrP8+22zPdV/GKITM6S6QQYH+mkjNje9Na2GzNJFOkqaMw02
 zWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qCje+g61N7KLK/OGzvI6HfWrgbG+68dwOBj6lkSvKfQ=;
 b=oaBzrGhlmD+ny6NAbq2/HcN3FgiT/eKx78ZPyLG35mIpyDeLKjVA8ri4HnWd+A3iB6
 LsC07m2bj3MdIgzoKwkXOGZjjF/H6qd1Hu28AFKAspixeOhwFvxiV6SFiNWVgm/kRGlD
 44nwDKEeRJRoog3l2x3ZHIMi+xqWjHd45K4XuNhQkWxVw4yslcGR4MXudpGx46c76rYj
 nEnWX/6x2U3X609+0Yrdeh5grOvLnL0L6TR4MO4lVHr4Qv2r9KhkE/LeI7Enfkh6ME3v
 UxVLXzb/Km+lie5xjy9L5tiLYjOJLn+j8bOiOMf01/dPUrY6Oh3UQrFPpmA0CsJQQwzI
 F+0g==
X-Gm-Message-State: AOAM530PHWDwHutn9PK+4V5DZTEjkZ63XU3w7byR+HWtOiwEn+PwyRM9
 pxWEE6sUjDOtsoGDXR+E22c=
X-Google-Smtp-Source: ABdhPJycS/3jFTLZa602BsB8Fha5afHXEdFMrS89ONzyVBvy3if0t4ObbhdldxKvtnoyn4IZXGsHTg==
X-Received: by 2002:a7b:c096:: with SMTP id r22mr10267349wmh.92.1590787424738; 
 Fri, 29 May 2020 14:23:44 -0700 (PDT)
Received: from debian64.daheim (pd9e29533.dip0.t-ipconnect.de.
 [217.226.149.51])
 by smtp.gmail.com with ESMTPSA id n23sm986639wmc.21.2020.05.29.14.23.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 14:23:44 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.93)
 (envelope-from <chunkeey@gmail.com>)
 id 1jemTf-000Jl9-FS; Fri, 29 May 2020 23:23:43 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: mail@adrianschmutzler.de
Date: Fri, 29 May 2020 23:23:43 +0200
Message-ID: <2860968.e1FBM0hkmB@debian64>
In-Reply-To: <01b601d635f8$3b0ede40$b12c9ac0$@adrianschmutzler.de>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <4387301.q58QSLrZPZ@debian64>
 <01b601d635f8$3b0ede40$b12c9ac0$@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_142346_574089_198298C1 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chunkeey[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] treewide: drop DEVICE_TYPE when
 used as device variable
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
Cc: 'Linus Walleij' <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org,
 'Matthias Schiffer' <mschiffer@universe-factory.net>,
 'Sungbo Eo' <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Friday, 29 May 2020 22:32:10 CEST mail@adrianschmutzler.de wrote:
> > > > Or am I completely misled here?
> > >
> > > I believe you are right, it seems DEVICE_TYPE is not evaluated when
> > > set in a device definition.
> > True, question is then, should this really be called "DEVICE"_TYPE?
> > It's not like other DEVICE_* variables (DEVICE_NAME, DEVICE_PACKAGES or
> > DEVICE_DTS).
> > Because the "targets" of ath79/ipq40xx/etc... wouldn't work if they all had to
> > share a single, common DEVICE_NAME/_DTS/_PACKAGE.
> > 
> > As for the MBLs, if I got this all correctly, that DEVICE_TYPE could be simply
> > moved to the apm821xx/sata target.mk
> > ---
> > --- a/target/linux/apm821xx/image/Makefile
> > +++ b/target/linux/apm821xx/image/Makefile
> > @@ -251,7 +251,6 @@ define Device/wd_mybooklive
> >    DEVICE_VENDOR := Western Digital
> >    DEVICE_MODEL := My Book Live Series (Single + Duo)
> >    DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport kmod-
> > usb-storage kmod-fs-vfat wpad-basic
> > -  DEVICE_TYPE := nas
> >    DEVICE_DTS := wd-mybooklive
> >    SUPPORTED_DEVICES += mbl wd,mybooklive-duo
> >    BLOCKSIZE := 1k
> > --- a/target/linux/apm821xx/sata/target.mk
> > +++ b/target/linux/apm821xx/sata/target.mk
> > @@ -1,5 +1,6 @@
> >  BOARDNAME := Devices which boot from SATA (NAS)  FEATURES += ext4
> > usb ramdisk squashfs rootfs-part boot-part
> > +DEVICE_TYPE := nas
> >  DEFAULT_PACKAGES += badblocks block-mount e2fsprogs kmod-hwmon-
> > drivetemp \
> >  		    kmod-dm kmod-md-mod partx-utils mkf2fs f2fsck
> > 
> > ---
> > And it would work as expected, right?
> > 
> > Cheers,
> > Christian
> > 
> 
> Yes, in this case this would work as expected after change. Of course, this assumes that future additions to the subtarget would be "NAS-devices" as well.
> 
> > True, question is then, should this really be called "DEVICE"_TYPE?
> 
> That's exactly the question we are discussing in 3/3 of this series which went to the openwrt-devel, I only Cc-ed you for the 1/3.

Ah ok, that might explain more than you think. I got hit by a bug interaction
with debian's cyrus-imap in my mail setup: Well, thankfully it's fixed now:
<https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=960558>. I know that I
got sliently dropped from various MLs, since the mailsystem generated a ton
of bounces all at once. Sorry!

> I personally tend towards dropping DEVICE_TYPE entirely and separate the
> selection of different subsets for DEFAULT_PACKAGES from providing a config
> option for packages like busybox.

Ok, I guess it's time to say farewell to DEVICE_TYPE then...

The nice thing about DEVICE_TYPE was that it automatically included
a bunch of generally useful packages. On the other hand, if these would all
become default, then there will be more "-$package" showing up in
DEVICE_PACKAGES variables and possibly heated commit wars about whenever a
package should be included or dropped (but that's already happening right
now too).

I liked the idea of the DEVICE_TYPE variable though. But yes, it doesn't
really work the way its named. For this to have any merrit, DEVICE_TYPE
would need to stop meddling with DEFAULT_PACKAGES and add the selected
packages with something like a second "DEVICE_PACKAGES"... and hope that
TARGET_PER_DEVICE_ROOTFS can enforce the barriers between the devices
(well, sadly it can't do that 100%).

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
