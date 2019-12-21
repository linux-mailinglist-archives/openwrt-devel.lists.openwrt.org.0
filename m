Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5173712894D
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Dec 2019 14:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gtwabiMXSzilyYeyup8P7uBUNmMZe/sdNocqK2rW8Wg=; b=LP2yKBE6v4iepv
	nVScVqkiPOAYlLMQC47xfNKL+RXpVlxVCH67kRXQiYeMrWC70WFp3uyZ+zX3DWiWgqmXHJLX3CJjq
	BJ8m8JulItHAKFBmKjRa0/FiGwySpC9+Y30N1U1yvSoMjTr+f1lWU9vvO8My22isxDad89jGYmWxe
	9ZX4ss1eX9Fj0EReaFZqkrnW+FQeaSwylFChOvzgjmGT7ZnEo695CyCw5e4X0yUSyOEBwbcHLFNvJ
	+wUzU6s02G1nP7fHSplaYgc6+sxhHrdsnCt3FGOfC7+8Rkh5zMj49tk55YXZoNLI0ST8vDTLFxI7b
	gfWfXe0u2Gw4a61WU97A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iifFt-0002sv-Ng; Sat, 21 Dec 2019 13:57:17 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iifFH-0002Sk-QW
 for openwrt-devel@lists.openwrt.org; Sat, 21 Dec 2019 13:56:43 +0000
Received: (wp-smtpd smtp.wp.pl 15958 invoked from network);
 21 Dec 2019 14:56:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1576936593; bh=sI7tIty/T+Qn+SXVuv45FYnujYH1frauHQOeZ09qbqU=;
 h=From:To:Cc:Subject;
 b=T3pT6Ge8A/dPiLXRTj0OdXhrw+cetLokugmTmbr9bHBnBcf8DCc+zNCzawMvmpFcR
 /TIVkq9J0FC4aMNbCAzAqoT+teUocA0RyNtNi3aTqF6msR3NcZ4WWFbDvmlpsW3FPK
 wEZyGFNw2duhqaEkhZbSCIYmsKG9kHvw0b1Mv/ic=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 21 Dec 2019 14:56:33 +0100
Date: Sat, 21 Dec 2019 14:50:41 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191221145041.3e272a8b@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: e4fc48491ee98f7e6e947275792b2ef1
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [8fMh]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_055640_220582_17AA0999 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.10 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 0/3] ath79: add support for QCA9563-based
 Netgear WNDR routers
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


(resent due to me being lazy and using reply-to, apologies and pls
ignore previous thread)

This patchset introduces support for two Netgear dual-band routers
based on the same PCB (29764821) with QCA9563 SoC, AR9580 5GHz chip,
128 MiB RAM, 2 MiB SPI-NOR + 128 MiB SPI-NAND flash:
* Netgear WNDR4300 v2
* Netgear WNDR4500 v3

WNDR4300v2 has been tested successfully with this patchset applied
to master branch. Since I have no access to 4500v3, configuration
for this device is based on information provided by various websites,
including abandoned ar71xx patch https://patchwork.ozlabs.org/patch/809227/

Note: technical wikis claim device is running CPU @ 750 MHz, while on my
WNDR4300v2 both u-boot and OpenWrt report CPU clock value of 775 MHz.

MAC address printed on device label is for LAN interface (ART offset 0x0).

Patch #1 is a prerequisite and allows to unmask certain pins for
ath9k-compatible wireless chips using Device Tree definition. Parameter
is labelled "qca,gpio-mask" and accepts u32 value (see *_GPIO_MASK
constants in ath9k/reg.h file). One of main reasons for blocking access
to these pins is that they provide only one-way communication (in or out).
Here - setting new mask to 0xf6ff (default one is 0xf4ff) enables RFKILL
button wired to input pin 9.

Patch list (3):
  mac80211: ath9k: add GPIO mask dts property
  ath79: add support for Netgear WNDR4300 v2
  ath79: add support for Netgear WNDR4500 v3

 package/boot/uboot-envtools/files/ath79       |   2 +
 .../patches/ath/553-ath9k_of_gpio_mask.patch  |  25 ++
 .../linux/ath79/dts/qca9563_netgear_wndr.dtsi | 262 ++++++++++++++++++
 .../ath79/dts/qca9563_netgear_wndr4300-v2.dts |  19 ++
 .../ath79/dts/qca9563_netgear_wndr4500-v3.dts |  41 +++
 target/linux/ath79/image/nand.mk              |  22 ++
 .../ath79/nand/base-files/etc/board.d/01_leds |   4 +-
 .../nand/base-files/etc/board.d/02_network    |   8 +-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   8 +-
 9 files changed, 386 insertions(+), 5 deletions(-)
 create mode 100644 package/kernel/mac80211/patches/ath/553-ath9k_of_gpio_mask.patch
 create mode 100644 target/linux/ath79/dts/qca9563_netgear_wndr.dtsi
 create mode 100644 target/linux/ath79/dts/qca9563_netgear_wndr4300-v2.dts
 create mode 100644 target/linux/ath79/dts/qca9563_netgear_wndr4500-v3.dts

-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
