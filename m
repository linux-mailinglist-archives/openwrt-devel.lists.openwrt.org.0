Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EFE1E88D9
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 22:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iU9rXweMJxtwEuSdCg4gJT57DGwRgiIrovZm38VZhpc=; b=A9fy/K3vbxz98N
	7KbY8rxhytGnwdI1X5spxh/IM8yLg5bhn4M1aakdhaUEpNSFuPJERsV+esyWx+lBDtS1wR6hYV19K
	iHNgbQSbJt13JyNLTiG3zalpHHMIWQmSkStZCK8aGs6xN3QZaTICWQDnzOFznEw2XwI44gfBw1grs
	1oUhb4lIIExkfADjZW+iOtvBY+mKT1AK0IxwbUga07SoYAkS5KQLB8yaDqegC52NaC6+wbVc1AKzv
	CrMHoRcCH/m6Fbcy0JWyxfkTX2y230slhm0BschlvhK1fNS9LSBPdrmZxnPaxW1Qq7s877C0+2Hz7
	kTE1OvSx8AuElnMMz9ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jelZe-0007kD-Nz; Fri, 29 May 2020 20:25:50 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jelZY-0007jk-L4
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 20:25:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id x6so5261562wrm.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 29 May 2020 13:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zQi6x2fUZVWJhSnNDE+tZ8oUfMdayweyCbvqjSUvoQ8=;
 b=mn7OnlaMZ81RzvO8A2ZX9I7ksCqMChLVq45OsUycdh7OpqBkHcDWot6Ts+TMSkH1cz
 RDQAlWBeAkb8rvEboK4dXnrbiWivYofg69FCw+k730N5WNSVdkQxnhBAWS/Z2ENfGG3b
 l38hQ+JSI2QV9WP7eZz32b9EEQm2VeJA/W7h8TELYQYBa5dWnpK1+i533QFKeFAtwqmn
 vjzRlMrcXahaxBAHsFgjVRxzh8xnANst4xRpF/sqLnOBUOxLLOIAn3f6Rp4CoDfG3gwL
 WlKVLoC72oQlUtRucnHIJYJy4riTcR/2dWHjykzj2xu212fVmiE30vgcDq/aKRYlqQF4
 1txw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zQi6x2fUZVWJhSnNDE+tZ8oUfMdayweyCbvqjSUvoQ8=;
 b=fCPb3Lr3roBLvIwzEKqQRH3Oo8GWF2att8PK+FgP2EoRxOTnBnkIYQhCXP5Fe5aa45
 5EZVK+YLBGDrp9OtqLkKB081LXrP40f/G8kVDiKj530TwRQEJf1x4Wvj/5MnkJGx3aPK
 1j40nY7aUt+I4AUt6NTaE6J0WqkQsBLQ87no+d2Hr1l9v5bwExgpF22Gq2Sfqmw7cDBO
 h8a7ax8YkbW21fmr9ltCa+FVDOr1lESl0cLRFHZyA2gOcD/edH5f+qFuFAuPWKBJ2FmA
 4HiqPbOE3M2qqWQp8md2iQnm3L5LY4YF+sSxYQs0emUbBkMltNzf/yE+YeTGTvNxpvow
 DYyg==
X-Gm-Message-State: AOAM532QqhXzZiXZXXwE9liiTr0W5Au2B2eG0rKZNU5i+F6YQg3ge64r
 A9FC4j3X0TmZxiVrZHmvdPA=
X-Google-Smtp-Source: ABdhPJx1K0gh5c5Ip+PS1WmPnHpBcNq0mLeNH0qYwps5TIIgDNKtVtU3qMcngU6SMeSFHxkr+47tfw==
X-Received: by 2002:a5d:6cc1:: with SMTP id c1mr10653080wrc.144.1590783942429; 
 Fri, 29 May 2020 13:25:42 -0700 (PDT)
Received: from debian64.daheim (pd9e29533.dip0.t-ipconnect.de.
 [217.226.149.51])
 by smtp.gmail.com with ESMTPSA id q15sm11934753wrf.87.2020.05.29.13.25.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 13:25:41 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.93)
 (envelope-from <chunkeey@gmail.com>)
 id 1jelZV-000JBI-8x; Fri, 29 May 2020 22:25:41 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Matthias Schiffer <mschiffer@universe-factory.net>
Date: Fri, 29 May 2020 22:25:41 +0200
Message-ID: <4387301.q58QSLrZPZ@debian64>
In-Reply-To: <4a068b9d-1c65-496e-b367-ba1b22920284@universe-factory.net>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <013d01d635e0$f9f72b40$ede581c0$@adrianschmutzler.de>
 <4a068b9d-1c65-496e-b367-ba1b22920284@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_132544_689996_8A07C72F 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 mail@adrianschmutzler.de, 'Sungbo Eo' <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Friday, 29 May 2020 21:32:59 CEST Matthias Schiffer wrote:
> On 5/29/20 7:45 PM, mail@adrianschmutzler.de wrote:
> >>> Consequently, having it set anyway is misleading, so this drops all
> >>> cases.
> >>
> >> Well, I can tell you where it matters for devices.
> >>
> >> You'll have to look at this:
> >>
> >> <https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=include/target.
> >> mk;h=9bd4c14936c1438df2be87e5697f5f5568699d2b;hb=HEAD#l54>
> >>
> >> |# Add device specific packages (here below to allow device type set
> >> |from subtarget) DEFAULT_PACKAGES +=
> >> $(DEFAULT_PACKAGES.$(DEVICE_TYPE))
> >>
> >> So, the MBL gets "DEFAULT_PACKAGES.nas" (block-mount fdisk lsblk
> >> mdadm) over "DEFAULT_PACKAGES.router" (dnsmasq iptables ip6tables ppp
> >> ppp-mod-pppoe firewall odhcpd-ipv6only odhcp6c kmod-ipt-offload) which
> >> makes much more sense for other devices as well.
> > 
> > Hi Christian,
> > 
> > that's exactly my point. Since this is target.mk as far as I can tell this selection does not work when DEVICE_TYPE is set within the device definition, but only when it's set in the (sub)target Makefile. As I understand it (and tested with make menuconfig), DEFAULT_PACKAGES is a per-target variable, and thus the DEVICE_TYPE from within the device definition will never be applied, and DEFAULT_PACKAGES.router will be used anyway for these devices.
> > 
> > Or am I completely misled here?
> 
> I believe you are right, it seems DEVICE_TYPE is not evaluated when set in
> a device definition.
True, question is then, should this really be called "DEVICE"_TYPE?
It's not like other DEVICE_* variables (DEVICE_NAME, DEVICE_PACKAGES or DEVICE_DTS).
Because the "targets" of ath79/ipq40xx/etc... wouldn't work if they all had to share
a single, common DEVICE_NAME/_DTS/_PACKAGE.

As for the MBLs, if I got this all correctly, that DEVICE_TYPE could be simply moved
to the apm821xx/sata target.mk
---
--- a/target/linux/apm821xx/image/Makefile
+++ b/target/linux/apm821xx/image/Makefile
@@ -251,7 +251,6 @@ define Device/wd_mybooklive
   DEVICE_VENDOR := Western Digital
   DEVICE_MODEL := My Book Live Series (Single + Duo)
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport kmod-usb-storage kmod-fs-vfat wpad-basic
-  DEVICE_TYPE := nas
   DEVICE_DTS := wd-mybooklive
   SUPPORTED_DEVICES += mbl wd,mybooklive-duo
   BLOCKSIZE := 1k
--- a/target/linux/apm821xx/sata/target.mk
+++ b/target/linux/apm821xx/sata/target.mk
@@ -1,5 +1,6 @@
 BOARDNAME := Devices which boot from SATA (NAS)
 FEATURES += ext4 usb ramdisk squashfs rootfs-part boot-part
+DEVICE_TYPE := nas
 DEFAULT_PACKAGES += badblocks block-mount e2fsprogs kmod-hwmon-drivetemp \
 		    kmod-dm kmod-md-mod partx-utils mkf2fs f2fsck
 
---
And it would work as expected, right?

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
