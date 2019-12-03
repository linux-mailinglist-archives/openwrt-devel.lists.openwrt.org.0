Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 382D710FD95
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 13:26:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zP8V1UJSdPGp+3WNlmubyb1+TETN/XdRfaGpW+GCgUk=; b=i0hTRpudKpXBdpxsbg2PgaQd5C
	F810NGEdk1MtCn33uMgSfpPoPdHbV4wxTtHdBTmhdWqvWioV+49Rsv5iIITqQLlEfDLgju1SGANjj
	KJJYvyenmhyML7+vveRy4eD0DusHgDTJ+oKAFwKZpA6hhK4FE1Lv2DR6j25kz6O73o8f/5+NqWoOR
	egdbIN4WO7/scctSwoJKYkr6nnH903KUFNNPM/Q25TfQnG2atB3VeVl7n15FShuS1m2l/BX+sS74N
	Hn7Fkh5F4Q7LF98icCrdx4nxa0hjBezy4m68ztdoq7TMWI0k7bzXLb6eKiY9T4MSGCiIAmcPpREdj
	Mxlxc1bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7GD-00073J-9t; Tue, 03 Dec 2019 12:26:33 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7Fw-0006vk-4p
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 12:26:17 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 352BF3416;
 Tue,  3 Dec 2019 13:26:13 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ed780b92;
 Tue, 3 Dec 2019 13:26:03 +0100 (CET)
Date: Tue, 3 Dec 2019 13:26:03 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <20191203122602.GD8181@meh.true.cz>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
 <2e4672f9-0fe3-b8cf-7322-df64cd552ff5@linux-ipv6.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e4672f9-0fe3-b8cf-7322-df64cd552ff5@linux-ipv6.be>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_042616_360668_64068C39 
X-CRM114-Status: UNSURE (   5.18  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>, pozega.tomislav@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Stijn Tintel <stijn@linux-ipv6.be> [2019-12-03 14:03:16]:

> I've addressed this and added the MAC label in my staging tree:
> https://git.openwrt.org/?p=openwrt/staging/stintel.git;a=shortlog;h=refs/heads/lbe-5ac-gen2

Note, that this commit:

 ath79: move IMAGE/factory.bin to Device/ubnt-wa

should be probably:

 ath79: remove wrong IMAGE/factory.bin from ubnt-wa devices

      (and use default and correct one from ubnt)

because following:

 IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split

is in essence:

  define Device/Default
   IMAGE/sysupgrade.bin = append-kernel | pad-to $$$$(BLOCKSIZE) | \
          append-rootfs | pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
  endef

  + | mkubntimage-split
  = append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE) | mkubntimage-split

where ubnt has following:

  define Device/ubnt
    IMAGE/factory.bin := append-kernel | pad-to $$$$(BLOCKSIZE) | \
          append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | mkubntimage-split
  endef

  = append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | pad-rootfs |                  | check-size $$$$(IMAGE_SIZE) | mkubntimage-split

                                                                          ^------ append-metadata missing

so using IMAGE/factory.bin from ubnt (default) is probably the correct way,
because having OpenWrt specific metadata in the factory images doesn't make
any sense.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
