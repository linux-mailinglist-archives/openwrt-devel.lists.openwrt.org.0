Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7CBD9C0C
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 22:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d+6Ka8QZdTrBguC+UVlX+Fj+fkARv0vWA5gsS4d8Z4Y=; b=hMY8xSw51lzg6e
	eaCUqEgBJEBqGnQWuMjYD9OzTho8g56Lb8jMDMpGtzWFcgQwopZCVaQY6cTSa/n/FcB78JXLWEBwm
	a55AZ+TlSz0AdqpcqCvdc9Xec2EnoGy5y1uwcFyQveux5HdMbjVnW0lSLbbVYWNc+k5ew0DlPzx2j
	5Lo7y74EB7WU92pARIbHZ7qYQPRpucNdrNAb8ZZtcXMpHsMRSebpRZCkZSK5Vq1BOgrUGrOhA0DOn
	vw05RR2hUWmQ5tB2EniEg5lP1wfeYVxyFEqQVVX9FCoqXi9JZ7TZfPnD54YerQz5rm33TQA86/p5G
	Yf8HMZdqUvrR+CIHrrDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKqKf-0002JV-Jd; Wed, 16 Oct 2019 20:55:45 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKqKW-0002H7-4h
 for openwrt-devel@lists.openwrt.org; Wed, 16 Oct 2019 20:55:38 +0000
Received: (wp-smtpd smtp.wp.pl 1963 invoked from network);
 16 Oct 2019 22:55:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1571259329; bh=butcVAayrE9kzajxQTwCdcqh0PobYMGmcRl2Jq6b1S0=;
 h=From:To:Cc:Subject;
 b=xjv3PZ7H9guP06pjjZbl5oKoZh4JNHDOROyrmLdGyDMmBiVQQ3OBaXkwexK9RsFgV
 YAvRRxg09JcEONLQKVegU+IzMEUhTOeHT3HhntNM3tSgTUSFMpRN8TuC/cLGkgHmZg
 5FDOgr/NdiODi9Rqdc8Jr6+5eunFw+pzJKzAdIeE=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 16 Oct 2019 22:55:29 +0200
Date: Wed, 16 Oct 2019 12:37:22 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191016123722.70774de1@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 4479cda1f0a54f9609b8ab020e22fc4d
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000002 [0ZGV]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_135536_731135_84C9C6AA 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v5 0/5] ath79: add support for some Netgear
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
* Netgear WNR2200 (generic, 8_64 and 16_64, USB)

and improves existing support for:
* Netgear WNR612v2 (tiny, 4_32)

For all above routers, MAC address printed on device label is for
LAN interface (eth1, ART offset 0x6).

The goal was to provide full functionality in ath79, on a par with
ar71xx target. WNR2200 with 16 MiB flash is the only new device added.
The other changes are minor ones, like renaming 'netgear:amber:test'
LED to 'netgear:amber:power' where applicable (apparently no one
defines them as 'test' nowadays).
Patched images were successfully flashed to respective devices and
are confirmed to work.

Patch #1 is a prerequisite. It adds DT flags to control network LEDs
and clocks - in ar71xx these get disabled at setup phase in mach-*.c
files. Now ath79 target can do this as well and provide sysfs access
to LAN/WAN amber and green diodes.

Changes from v4:
* 01_leds: green WAN LED initialization is already in DTS - skipped
* dts: GPIO keys connected to Wifi chip renamed to ath9k-keys
* dts: GPIO chip is already enabled, no need to set it to 'okay'
* dts: label-mac-device introduced and set according to device label
* dts: wnr2000v3: remove debounce-interval for IRQ gpio-keys (WPS)
* makefile: wnr2200: remove kmod-usb-core from DEVICE_PACKAGES
* wnr2200: support 8 and 16 MiB flash models

Patch list (5):
  ath79: add LAN LEDs control bits for AR724x GPIO function pinmux
  ath79: WNR612v2: improve device support
  ath79: add support for Netgear WNR2000 v3
  ath79: add support for Netgear WNR1000 v2
  ath79: add support for Netgear WNR2200

 .../ath79/base-files/etc/board.d/01_leds      |  14 ++
 .../ath79/base-files/etc/board.d/02_network   |   4 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
 .../ath79/dts/ar7240_netgear_wnr1000-v2.dts   | 203 +++++++++++++++++
 .../ath79/dts/ar7240_netgear_wnr612-v2.dts    |   2 +-
 .../ath79/dts/ar7240_netgear_wnr612-v2.dtsi   |  23 +-
 target/linux/ath79/dts/ar7240_on_n150r.dts    |   2 +-
 .../ath79/dts/ar7241_netgear_wnr2000-v3.dts   | 207 ++++++++++++++++++
 .../ath79/dts/ar7241_netgear_wnr2200-16m.dts  |  34 +++
 .../ath79/dts/ar7241_netgear_wnr2200-8m.dts   |  34 +++
 .../ath79/dts/ar7241_netgear_wnr2200.dtsi     | 207 ++++++++++++++++++
 target/linux/ath79/dts/ar724x.dtsi            |  10 +-
 target/linux/ath79/image/generic.mk           |  32 +++
 target/linux/ath79/image/tiny-netgear.mk      |  30 ++-
 14 files changed, 795 insertions(+), 11 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar7240_netgear_wnr1000-v2.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2200-16m.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2200-8m.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2200.dtsi

-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
