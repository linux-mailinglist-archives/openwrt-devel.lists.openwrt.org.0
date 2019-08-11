Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CC7893C7
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 22:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EkPTt/RCvf+3VthbovRCzCPbMVr16ncFkNW+RfV+xIY=; b=B1ly5vAL1ECfNZ
	LMWSLCJvs2TQ4A5Ly60uFfQxMoabZX/4MCR4CPbUmENcjEa0YXKZNB7Zyyo6FZQlNgh8wfNhBtjwf
	bXF+fbdLjNEXIV+clMoOgm2kUHiznoESTBZkbI4zCWEi+9dlTtUcGzPJDS8XYT/UPaMml7WCR6IYx
	lUnWKpT0Y+SlusAYg3VXrsGFPO1kqh8rIuOR4gV9NuULSS9CJcPfoLEuzVreJwX78B+3DUvbuug1W
	BsXRG3iPkhgz69g+WXoIuOBow305Jn6IHyyncDD4cEdX0+FDuY5dtAMp4OFTFpEykXqQQAdqB1J0I
	62ksfSLemEIRBiGsAGoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwuqc-0007w9-Ga; Sun, 11 Aug 2019 20:53:50 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwuqD-0007Ve-5W
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 20:53:27 +0000
Received: (wp-smtpd smtp.wp.pl 32084 invoked from network);
 11 Aug 2019 22:53:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565556801; bh=LuKes5DkNvpH5a+M2Aqj1eJkUJQFaybP/2ld9gsO1UE=;
 h=From:To:Cc:Subject;
 b=Ck06M6uev8x3yPe0JB991r9o7aw0Wb9utf9FbwTwJqYb1CopuwFpmB6EXMdQYtC80
 zn8K7dUREBqF1g/UrxLEEmpJJUEV4lWUf3VvchjN1JQMexIzDVhUmFtBqtrvhRQTL5
 46deWHXfAfiwhtMN93zHar1A3dnDYFpUaWkrxVjk=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Aug 2019 22:53:21 +0200
Date: Sun, 11 Aug 2019 22:39:21 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190811223921.572cda5b@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: d7fc17918d78e43fd752cdafeec66f5a
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [saPU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_135325_387752_AF4B2AC3 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v3 0/5] ath79: add support for some Netgear
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

Changes from v2:
* source DT files reformatted ('compatible' before 'model', hex
  numbers simplified, gpio hog renamed etc)
* target makefiles updated (redundant variables removed)
* startup scripts updated (do not define triggers already set by DTS)

Patch list (5):
  ath79: add LAN LEDs control bits for AR724x GPIO function pinmux
  ath79: WNR612v2: improve device support
  ath79: add support for Netgear WNR2000 v3
  ath79: add support for Netgear WNR1000 v2
  ath79: add support for Netgear WNR2200

 .../ath79/base-files/etc/board.d/01_leds      |  14 ++
 .../ath79/base-files/etc/board.d/02_network   |   3 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   3 +
 .../ath79/dts/ar7240_netgear_wnr1000-v2.dts   | 207 +++++++++++++++
 .../ath79/dts/ar7240_netgear_wnr612-v2.dts    |   2 +-
 .../ath79/dts/ar7240_netgear_wnr612-v2.dtsi   |  20 +-
 target/linux/ath79/dts/ar7240_on_n150r.dts    |   2 +-
 .../ath79/dts/ar7241_netgear_wnr2000-v3.dts   | 212 ++++++++++++++++
 .../ath79/dts/ar7241_netgear_wnr2200.dts      | 237 ++++++++++++++++++
 target/linux/ath79/dts/ar724x.dtsi            |  10 +-
 target/linux/ath79/image/generic.mk           |  14 ++
 target/linux/ath79/image/tiny-netgear.mk      |  30 ++-
 12 files changed, 744 insertions(+), 10 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar7240_netgear_wnr1000-v2.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2200.dts

-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
