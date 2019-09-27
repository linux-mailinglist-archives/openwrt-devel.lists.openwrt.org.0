Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E43C09A1
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Sep 2019 18:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aVxDRKjLxt0C4ufQqC8n0fHHAxfvrCiXRGCQTW2f1IA=; b=PiNwdfxwx37geD
	txhGnROF7uPpCZllaShYPxIrsQyQmoMKOMwvijChtLeeviVpc0HNTSpAqzsh/Pt5a3xvqHdAuyAn9
	irAmsZNaHM69OrrfCauISl0/4QAoAPHUogvzQ5jS7EBopBt0x0K1daQAePxXI1qWu28vlaLYqbIkC
	LtMivCv5X+CghC8JkQMFLIW06McbuO6nJnKA5+5x8X2o0Bnmc7r77dpa/LxvG6peVZkIWIQ+jOy5V
	T1xBQfZiri51LM4rJu4Db3GgG6tq8v2URHHv8LCjki8mMzzv/jTJLFUau6i/mm8E66oR/SuMl5SC5
	zO87Ho4+VckxCwdjRKFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDtBe-0000Fq-Ev; Fri, 27 Sep 2019 16:33:42 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDtBY-0000FQ-7S
 for openwrt-devel@lists.openwrt.org; Fri, 27 Sep 2019 16:33:38 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 35D2C3CB8B;
 Fri, 27 Sep 2019 09:33:34 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 27 Sep 2019 09:33:21 -0700
Message-Id: <20190927163322.10386-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_093336_270847_C4BC2B3A 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/1] ath79: Restore GL.iNet GL-AR300M-Lite
 first-boot connectivity
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

NB: What is described here may also impact other single-port, ath79 devices

    There are over 40 such devices that appear to use "eth0" as their only
    Ethernet port in target/linux/ath79/base-files/etc/board.d/02_network


TL;DR

  * Single-port ath79 devices may be unreachable on first boot

  * Attempts at disabling the "unused" GMAC1 as a solution were unsuccessful
    * If there is a way to disable GMAC1, it seems a preferred solution

  * This patch, or its replacement, should be applied to `master`
    as well as `openwrt-19.07` as both contain the interface reversal



commit 8dde11d521, ath79: dts: drop "simple-mfd" for gmacs in SoC dtsi
reversed the assignment of eth0 and eth1 on many ath79 devices.

In the case of the single-port GL-AR300M-Lite, this resulted in an
inability to connect to the device after a clean flash[1] or after
regeneration of /etc/config/network.

This patch manages the change by modifying 02_network to use the
now-labeled eth1 for the "LAN" interface on configuration of
/etc/config network

As I understand the QCA9531, it has two GMACs:

* GMAC0
  * Base address of 0x19000000
  * Can be connected to FE PHY 0 or FE PHY 5 of the 5-port, integral switch
    (or, if in SW_ONLY_MODE is set, is not connected)
  * Is referenced as `eth0: eth@19000000` in ath79.dtsi

* GMAC1
  * Base address of 0x1a000000
  * Is connected "directly" to the integral switch
  * Is referenced as `eth1: eth@1a000000` in ath79.dtsi

Prior to commit 8dde11d521, the kernel designation of the interfaces
was consistent with the naming in the DTSI:

  /sys/devices/platform/ahb/19000000.eth/net/eth0
  /sys/devices/platform/ahb/1a000000.eth/net/eth1

Builds prior to this commit were tested at the time to provide
first-boot connectivity and that has been subsequently confirmed.

After commit 8dde11d521, the kernel names are reversed (as suggested
by the commit message):

  /sys/devices/platform/ahb/19000000.eth/net/eth1
  /sys/devices/platform/ahb/1a000000.eth/net/eth0

The SoC's GMAC1 is now associated with the kernel's "eth0".

In the case of the GL-AR300M-Lite, testing of "official" snapshots as
well as local `master` builds indicated that the populated port was that
which the kernel now identified with "eth1" -- GMAC0

This is consistent with observations that "old" firmware for the
device connected through "eth0" and "new" firmware, through "eth1".

As suggested by Alberto Bursi in the linked thread, one approach to
resolution would be to disable the "unused" interface, GMAC1. This
would have the additional advantage of removing the unconnected
interface from the kernel and end-user visibility. By disabling GMAC1,
it was expected that GMAC0 would be identified by the kernel as "eth0"
as the sole Ethernet interface visible.

&eth1 {
       status = "disabled";
};

This, unfortunately, resulted in the Ethernet driver unable to connect
to the assigned phy 4, with no Ethernet interface created and

kern.info kernel: [    0.495579] libphy: Fixed MDIO Bus: probed
kern.err kernel: [    0.846986] ag71xx 19000000.eth: Could not connect to PHY device. Deferring probe.
kern.err kernel: [    1.216982] ag71xx 19000000.eth: Could not connect to PHY device. Deferring probe.
kern.err kernel: [    1.556969] ag71xx 19000000.eth: Could not connect to PHY device. Deferring probe.
kern.err kernel: [    4.681196] ag71xx 19000000.eth: Could not connect to PHY device. Deferring probe.
kern.err kernel: [    5.057462] ag71xx 19000000.eth: Could not connect to PHY device. Deferring probe.

appearing in the logs. Thinking that it was related to switch initialization

&mdio1 {
       status = "okay";
};

was tested, and found to have the same, unsucessful result.

If there are suggestions as to how to disable the "unused" GMAC, yet
preserve the ability to access the phy, I would evaulate them.

Jeff




[1] https://forum.openwrt.org/t/how-do-i-flash-gl-ar300-lite/44802




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
