Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7354D1A7B7
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ly79P3vW073v2FaUantNr0YSSdt7oZ2aiox+5R/VxoU=; b=Y0/6hmMxT0qGJS
	wWXZyNHviMr6z49Y82e604X9bGF8PZCN7n6h7gAyleMgYloVO0Ig0N9JEtmsVgi1ogFgzG4Bp30eG
	dEKYWO+rzM9Y07xFEMNiUcYVrCl+UuzoqlYw2PiIDltW10L12GhzMoQhwUJ90ImUCCuNnssrkB8xU
	IO0pWWABz7IZwkPQ586MsUZYWedbMtw/q+Uvz/Qxn+eBnLxeHlIDJb7b9hlibj6R8XhrfPi6KlknA
	Wo6pQ6m8boxG3KLcipMtleF8iGD0ORVWgG85atUL9f1+gc21I6qg0hBcqPx10mHwSd6u4xsgdHChK
	8Y089smOadgh+mqUeCEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQWF-0000Kk-Ar; Sat, 11 May 2019 11:50:23 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQW6-0000GI-DU
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:50:16 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 1792FA1121;
 Sat, 11 May 2019 13:50:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id iKcBdrwmIVsW; Sat, 11 May 2019 13:49:50 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:49:16 +0200
Message-Id: <20190511114918.12033-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_045015_130488_2A5B542E 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 0/2] ixp4xx: Update kernel to version 4.14
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, thess@kitschensync.net,
 kaloz@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The next OpenWrt release will only contain support for kernel 4.14, to 
still support the ixp4xx target update it to kernel 4.14.

This was only build tested, I do not have this device, could someone 
please run test it on some device and report the results back.

The patches are also available in this branch:
https://git.openwrt.org/?p=openwrt/staging/hauke.git;a=shortlog;h=refs/heads/kernel-4.14

Hauke Mehrtens (2):
  ixp4xx: Refresh kernel configuration
  ixp4xx: Update kernel to version 4.14

 target/linux/ixp4xx/Makefile                  |  2 +-
 .../linux/ixp4xx/{config-4.9 => config-4.14}  | 21 ++++++++++----
 target/linux/ixp4xx/harddisk/config-default   | 22 +++++++++------
 ...ohorent_dma_mask-for-ethernet-platfo.patch | 18 ++++++------
 ...se-parent-device-for-dma-allocations.patch |  6 ++--
 .../020-gateworks_i2c_pld.patch               |  6 ++--
 .../030-gpio_line_config.patch                |  2 +-
 .../040-arm_mach_types.patch                  |  9 +++---
 .../090-increase_entropy_pools.patch          |  4 +--
 ...00-wg302v2_gateway7001_mac_plat_info.patch |  6 ++--
 .../105-wg302v1_support.patch                 |  6 ++--
 .../110-pronghorn_series_support.patch        |  6 ++--
 .../111-pronghorn_swap_uarts.patch            |  0
 .../115-sidewinder_support.patch              |  4 +--
 .../116-sidewinder_fis_location.patch         |  8 +++---
 .../120-compex_support.patch                  |  4 +--
 .../130-wrt300nv2_support.patch               |  4 +--
 .../131-wrt300nv2_mac_plat_info.patch         |  0
 .../132-wrt300nv2_mac_fix.patch               |  0
 .../150-lanready_ap1000_support.patch         |  4 +--
 .../151-lanready_ap1000_mac_plat_info.patch   |  0
 .../160-delayed_uart_io.patch                 | 28 +++++++++----------
 .../162-wg302v1_mem_fixup.patch               |  0
 .../170-ixdpg425_mac_plat_info.patch          |  4 +--
 .../175-avila_hss_audio_support.patch         |  6 ++--
 .../180-tw5334_support.patch                  |  4 +--
 .../185-mi424wr_support.patch                 |  6 ++--
 .../190-cambria_support.patch                 |  6 ++--
 ...01-npe_driver_print_license_location.patch |  0
 ...05-npe_driver_separate_phy_functions.patch | 12 ++++----
 ...-npe_driver_add_update_link_function.patch |  2 +-
 .../207-npe_driver_multiphy_support.patch     | 18 ++----------
 .../295-latch_led_driver.patch                |  8 +++---
 .../300-avila_support.patch                   | 12 ++++----
 .../304-ixp4xx_eth_jumboframe.patch           |  6 ++--
 .../310-gtwx5717_spi_bus.patch                |  0
 .../311-gtwx5717_mac_plat_info.patch          |  0
 .../312-ixp4xx_pata_optimization.patch        |  8 +++---
 .../500-usr8200_support.patch                 |  4 +--
 .../520-tw2662_support.patch                  |  4 +--
 .../530-ap42x_support.patch                   |  4 +--
 .../600-skb_avoid_dmabounce.patch             |  4 +--
 .../900-ixp4xx-crypto-include-module.h.patch  |  0
 .../910-ixp4xx-nr_irq_lines.patch             |  0
 44 files changed, 136 insertions(+), 132 deletions(-)
 rename target/linux/ixp4xx/{config-4.9 => config-4.14} (93%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/001-arm-ixp4xx-set-cohorent_dma_mask-for-ethernet-platfo.patch (88%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/002-ixp4xx_eth-use-parent-device-for-dma-allocations.patch (94%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/020-gateworks_i2c_pld.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/030-gpio_line_config.patch (97%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/040-arm_mach_types.patch (66%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/090-increase_entropy_pools.patch (88%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/100-wg302v2_gateway7001_mac_plat_info.patch (92%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/105-wg302v1_support.patch (97%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/110-pronghorn_series_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/111-pronghorn_swap_uarts.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/115-sidewinder_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/116-sidewinder_fis_location.patch (83%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/120-compex_support.patch (97%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/130-wrt300nv2_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/131-wrt300nv2_mac_plat_info.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/132-wrt300nv2_mac_fix.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/150-lanready_ap1000_support.patch (97%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/151-lanready_ap1000_mac_plat_info.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/160-delayed_uart_io.patch (82%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/162-wg302v1_mem_fixup.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/170-ixdpg425_mac_plat_info.patch (94%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/175-avila_hss_audio_support.patch (99%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/180-tw5334_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/185-mi424wr_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/190-cambria_support.patch (99%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/201-npe_driver_print_license_location.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/205-npe_driver_separate_phy_functions.patch (89%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/206-npe_driver_add_update_link_function.patch (97%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/207-npe_driver_multiphy_support.patch (88%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/295-latch_led_driver.patch (95%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/300-avila_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/304-ixp4xx_eth_jumboframe.patch (90%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/310-gtwx5717_spi_bus.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/311-gtwx5717_mac_plat_info.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/312-ixp4xx_pata_optimization.patch (94%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/500-usr8200_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/520-tw2662_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/530-ap42x_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/600-skb_avoid_dmabounce.patch (77%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/900-ixp4xx-crypto-include-module.h.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/910-ixp4xx-nr_irq_lines.patch (100%)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
