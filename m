Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D251118CBC5
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 11:37:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mO2Xfe9XR/JkO6jVlYUGQjKrqaQJ0czTZCVyXKA5wwc=; b=O5Hl3XQ7/xBfAn
	o8VXEnLglBG//X161raamapuVMcpt38UZBOS342zJDPTGW0KmLF9yAOL5xz1vD5aGgcZXKLZSVh8z
	kFPMJmRnvMACbYJldZvMJGATYkD7GievFeAvytabtceBhbWDYAh8fZM8OGPC1WCil486U62ugJ0me
	BAwGwTQIBSerfgkkzzqjK382gfidBBRjlpkA+8s4YTJ4Yh21dAtGJNbyPBlDG4xci/dtwivs6DJEa
	UfR7AwagTd9SnubCXCNAz27x06y2TxWRvVZg7eO7QOIqo1PiTI9ynICVka8YTGeeV1yAhnbR5QV+y
	6f+Nud4zXN66KGJ9iFQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFF1a-0003Kz-Ry; Fri, 20 Mar 2020 10:37:10 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFF1T-0003JX-U9
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 10:37:05 +0000
X-Originating-IP: 72.234.241.177
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0C01FFF813;
 Fri, 20 Mar 2020 10:36:56 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 00:10:53 -1000
Message-Id: <20200320101059.19793-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_033704_107343_0D87194A 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/6] x86: switch to generic image generation
 code
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch is a rebased and improved version of Tomasz Maciej Nowak
patch[0]. Tomasz code left untouched and only changed where needed for
the rebase.

Additionally some small improvements from Alexander Couzens where
added in patch 4 (use qemu-image command from image-commands.mk)

The last two patches are added to keep consistency with current
behaviour.

[0]: https://patchwork.ozlabs.org/cover/1024165/

Paul Spooren (6):
  x86/grub2: move grub2 image creation to package
  x86: switch image generation to new code
  x86: remove obsolete legacy profiles
  x86: use qemu-image command from image-commands.mk
  x86: allow non gzipped images
  scripts: fixup qemustart for new x86 image names

 config/Config-images.in                       |  18 +-
 include/image-commands.mk                     |   7 +
 include/image.mk                              |   1 -
 package/boot/grub2/Makefile                   |  31 +++
 .../boot/grub2/files}/grub-early.cfg          |   0
 scripts/qemustart                             |   2 +-
 target/linux/x86/64/profiles/000-Generic.mk   |  15 --
 target/linux/x86/Makefile                     |   4 +-
 .../linux/x86/generic/profiles/000-Generic.mk |  19 --
 .../linux/x86/geode/profiles/000-Generic.mk   |  20 --
 target/linux/x86/geode/profiles/100-Geos.mk   |  19 --
 target/linux/x86/geode/target.mk              |   2 +-
 target/linux/x86/image/64.mk                  |   5 +
 target/linux/x86/image/Makefile               | 202 +++++++-----------
 target/linux/x86/image/generic.mk             |   8 +
 target/linux/x86/image/geode.mk               |  16 ++
 target/linux/x86/image/grub-iso.cfg           |   2 +-
 .../linux/x86/image/{grub.cfg => grub-pc.cfg} |   4 +-
 target/linux/x86/image/legacy.mk              |   8 +
 .../linux/x86/legacy/profiles/000-Generic.mk  |  18 --
 20 files changed, 167 insertions(+), 234 deletions(-)
 rename {target/linux/x86/image => package/boot/grub2/files}/grub-early.cfg (100%)
 delete mode 100644 target/linux/x86/64/profiles/000-Generic.mk
 delete mode 100644 target/linux/x86/generic/profiles/000-Generic.mk
 delete mode 100644 target/linux/x86/geode/profiles/000-Generic.mk
 delete mode 100644 target/linux/x86/geode/profiles/100-Geos.mk
 create mode 100644 target/linux/x86/image/64.mk
 create mode 100644 target/linux/x86/image/generic.mk
 create mode 100644 target/linux/x86/image/geode.mk
 rename target/linux/x86/image/{grub.cfg => grub-pc.cfg} (57%)
 create mode 100644 target/linux/x86/image/legacy.mk
 delete mode 100644 target/linux/x86/legacy/profiles/000-Generic.mk

-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
