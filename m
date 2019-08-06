Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EBE8304F
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 13:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SeVctMLSQvBeN7wJalOVSx335yXCtEl2GFgakjDvLrY=; b=q26x/YC8eR+nWK
	HrFMSMxnqwtKyHMa00UrVKj2grUu28QURigJwYDvFdFet1AWivuYyTdBxFtZl9t4Wgut6+MiEkf1r
	1q4dXG1GfOVKKSx4qiGj2hK8PQRGYDmq+5CmVYGZsbcC+XMZdlpM7Fcm1pSvc3Gb5tM9gdu/8XQGF
	0oHj+P5ab/PJ+FSrJZseD1FuajrjNWzu+glR3ML58pI3QBaToSyGo5tCvCdlaBsvC229pCq7F0XsH
	5JpDTthccHvGJA96Glcw11yamxXrfjZ3DpEUNJEtkkDBxP8D5Lu7zwS2oJjGYc4MeSqSLW/QozP82
	6pPp3I1Yep2as3Q966JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxOD-0006Xc-EN; Tue, 06 Aug 2019 11:12:25 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxNA-00060D-Gf
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 11:11:23 +0000
Received: (wp-smtpd smtp.wp.pl 40292 invoked from network);
 6 Aug 2019 13:11:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565089877; bh=d0E6RhXHKRc21BYEdY8kC/GHZYZyaF1ZX3kwGHfCi1Q=;
 h=From:To:Subject;
 b=W15fGUGMwl4rjvs2d6Kq6FtSAfIcvcc9uKxZkNk5Hzqb/5Uc0rym/o1kCC/9QkNxR
 h5gErvD3HD0ANMHCpQez2/udAwTuNw5HxyySXljnyeGSjqQeCBfhoXxfuBp3IaykA1
 QMBujz/wYebFPKPTtnxWWjgTMSsdqRRMNsG55xkg=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Aug 2019 13:11:17 +0200
Date: Tue, 6 Aug 2019 12:51:53 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190806125153.07c9b005@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 768f3d7af654c88f17339935bf7b9919
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [AePU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_041120_733825_72BAFC94 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 0/7] ath79: add support for some Netgear WNR
 routers
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

This patchset enables ath79 target for following Netgear ar724x-based
routers currently supported by ar71xx:
* Netgear WNR1000v2 (tiny, 4_32)
* Netgear WNR2000v3 (tiny, 4_32)
* Netgear WNR2200 (generic, 8_64 + USB)

and improves existing support for:
* Netgear WNR612v2 (tiny, 4_32)

The goal was to provide full functionality in ath79, on a par with
ar71xx target. The only minor change is renaming 'netgear:amber:test'
LED to 'netgear:amber:power' where applicable (apparently no one
defines them as 'test' nowadays).
Patched images were successfully flashed to respective devices and
are confirmed to work.

Patch #1 adds DT flags to control network LEDs and clocks - in ar71xx
these get disabled at setup phase in mach-*.c files. Now ath79 target
can do this as well and provide sysfs access to LAN/WAN amber and green
diodes.

Patch #6 changes USB power pin definition to follow Birger Koblitz's
gpio_hog work. No problems on WNR2200 with this one.

Patch #7 is optional, it changes WPS button on WNR2000v3 (the only one
connected to SoC GPIO) from polled to interrupt-driven. Again, no
problems were encountered with this setup - button is working OK.

Patch list (7):
  ath79: add LAN LEDs control bits for AR724x GPIO function pinmux
  ath79: WNR612v2: improve device support
  ath79: add support for Netgear WNR2000 v3
  ath79: add support for Netgear WNR1000 v2
  ath79: add support for Netgear WNR2200
  ath79: WNR2200: use gpio_hog instead of gpio-export for USB power
  ath79: WNR2000v3: change WPS button to interrupt-driven GPIO key

 .../ath79/base-files/etc/board.d/01_leds      |  28 +++
 .../ath79/base-files/etc/board.d/02_network   |   3 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   3 +
 .../ath79/dts/ar7240_netgear_wnr1000-v2.dts   | 207 +++++++++++++++
 .../ath79/dts/ar7240_netgear_wnr612-v2.dtsi   |  20 +-
 .../ath79/dts/ar7241_netgear_wnr2000-v3.dts   | 212 ++++++++++++++++
 .../ath79/dts/ar7241_netgear_wnr2200.dts      | 237 ++++++++++++++++++
 target/linux/ath79/dts/ar724x.dtsi            |  10 +-
 target/linux/ath79/image/generic.mk           |  16 ++
 target/linux/ath79/image/tiny-netgear.mk      |  34 ++-
 10 files changed, 762 insertions(+), 8 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar7240_netgear_wnr1000-v2.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2200.dts

-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
