Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6E98B359
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 11:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OnXws1WAVZENHBZIcb/lG8x//qjCejZMMnryfTHIFv4=; b=UY6+y1qQi+cHgU
	xDsAyTf4I9XXKfMVS48+5DL4BNVMM2S0gXZsMphTlJ5HXRwlvt2QClOkDUP5fJ+pcrDAMq9XrrglA
	fCQIonkQ33EjRqh7egWFjWlsI3m2ukJ0fg1Tz3VOLaYISPtBJPWBxFPTSVgTNtmUKhzaOCzETbKUf
	Q6+BDi+rtJ89HIIGwhFmVgvL4dJE3HzQNASg0LF2EdrrUVnnqn5Rl3daNnqRpqW764IBVBqkpjcCu
	ubG9qvAJhSrluKbbGVXqq+JFn96r5KWbvxUYjVdDIN1HTuUDmsbMi6QLzUALKa2pX4rA5UlgSISpn
	Bz37bu9lJFjW1qIKIFhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxSlM-0001V5-7L; Tue, 13 Aug 2019 09:06:40 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxSku-0001Tq-Nk
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 09:06:14 +0000
Received: (wp-smtpd smtp.wp.pl 1297 invoked from network);
 13 Aug 2019 11:06:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565687167; bh=XMID2mX479+mdeSHOiRUhDxgHeY2Fqx+wdzj4Kg2wIg=;
 h=From:To:Cc:Subject;
 b=U/MIyDmNOyp+DpQiIkJb9gJUJaOICNvC++lRnLN5pqstU5NDu52jmLgO6wSkYWDnt
 ArHNJor/P76el7nn+E1KDC/dStDwXmepaCKY4uQXQlHcfZcTajDhSIOihNuoFkSorO
 pTK8hftMz+BE29E2EZKET0qAE/E4TOG+L0+KT4cg=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 13 Aug 2019 11:06:07 +0200
Date: Tue, 13 Aug 2019 10:46:58 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190813104658.17f88b71@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 435c96fcfcec6d3d4fa47c6a016e0c5f
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [ARN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_020613_292162_0114697B 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v4 0/5] ath79: add support for some Netgear
 WNR routers
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
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

For all above routers, MAC address printed on device label is for
LAN interface (eth1, ART offset 0x6).

The goal was to provide full functionality in ath79, on a par with
ar71xx target. The only minor change is renaming 'netgear:amber:test'
LED to 'netgear:amber:power' where applicable (apparently no one
defines them as 'test' nowadays).
Patched images were successfully flashed to respective devices and
are confirmed to work.

Patch #1 is a prerequisite. It adds DT flags to control network LEDs
and clocks - in ar71xx these get disabled at setup phase in mach-*.c
files. Now ath79 target can do this as well and provide sysfs access
to LAN/WAN amber and green diodes.

Changes from v3:
* dts: 'mtd-cal-data' removed
* dts: extra spaces removed
* dts: 'usb-power' changed to 'usb_power'

Patch list (5):
  ath79: add LAN LEDs control bits for AR724x GPIO function pinmux
  ath79: WNR612v2: improve device support
  ath79: add support for Netgear WNR2000 v3
  ath79: add support for Netgear WNR1000 v2
  ath79: add support for Netgear WNR2200

 .../ath79/base-files/etc/board.d/01_leds      |  14 ++
 .../ath79/base-files/etc/board.d/02_network   |   3 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   3 +
 .../ath79/dts/ar7240_netgear_wnr1000-v2.dts   | 206 +++++++++++++++
 .../ath79/dts/ar7240_netgear_wnr612-v2.dts    |   2 +-
 .../ath79/dts/ar7240_netgear_wnr612-v2.dtsi   |  20 +-
 target/linux/ath79/dts/ar7240_on_n150r.dts    |   2 +-
 .../ath79/dts/ar7241_netgear_wnr2000-v3.dts   | 211 ++++++++++++++++
 .../ath79/dts/ar7241_netgear_wnr2200.dts      | 236 ++++++++++++++++++
 target/linux/ath79/dts/ar724x.dtsi            |  10 +-
 target/linux/ath79/image/generic.mk           |  14 ++
 target/linux/ath79/image/tiny-netgear.mk      |  30 ++-
 12 files changed, 741 insertions(+), 10 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar7240_netgear_wnr1000-v2.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2200.dts

-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
