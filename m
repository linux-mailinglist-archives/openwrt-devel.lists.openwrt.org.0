Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2433A1F6127
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 07:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RUe1p3KXuavwU3iiffrd7BAilOfsKdO6K50r2MyGoqc=; b=jjuCrLaY+rOeh7
	fPzHRY+6qK4fDTfD6fZC1DsU4ru4vUYGg0gul4mcVqPO9m2LrAYl8Sf+y76Ly6Sx7mJR/Vfm+NLlC
	0LPcXwQY1ULSUcy0Or0DY4s5mNLJ41zlyjkn/htjRXpYvA9ZLtQaGbDJBkZYW1JMCrJ/XOL+cwPUQ
	JmRr7xM/T4ZPEgMXYmd+/NJdqjRV7iLdPcQEtT3qER0SIZaxtv5ay1NpZ7U4jsGhMJj4WjddxZKo/
	ytItKV/D+GfiBC4QynwqF0h1zpt1ieFAHPFrGjIpCNlZXDkVY5aPPo44j9ivSE+qlAYhcFj06k2DT
	GdSeVeHvMJC4K206rSew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjFKK-0002RN-6h; Thu, 11 Jun 2020 05:00:32 +0000
Received: from mail.tintel.eu ([2001:41d0:a:6e77:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjFJx-0000sd-IO
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 05:00:12 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 449D540F9360;
 Thu, 11 Jun 2020 07:00:02 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id 5a9qMALlui2t; Thu, 11 Jun 2020 07:00:01 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 3DBF64483189;
 Thu, 11 Jun 2020 07:00:01 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 3DBF64483189
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1591851601;
 bh=/qHqrehzsqg5oFi22nXvUndvLX4nS6DWXeyfFNp7zo8=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=HTbiNxPc80H3amOjPIiphrNjvfDY0MKcvvXK+bXqfI9jQa4y6IKIJAPj/65ArmDyY
 4PzJm5EpVWwyIa+FUqE/EhJacyTMTr6nT5j62ITl//EG2pjjqutk5ZXmwE5o1FjnnI
 mr/2/BEJZvZDTgnauidb+qRE1maW7qNGc9QwkSsI=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id iTpOexbyegrL; Thu, 11 Jun 2020 07:00:01 +0200 (CEST)
Received: from taz.sof.bg.adlevio.net (unknown
 [IPv6:2001:67c:21bc:20:52bf:b29c:6e1e:7c70])
 by mail.tintel.eu (Postfix) with SMTP id E202040F9360;
 Thu, 11 Jun 2020 07:00:00 +0200 (CEST)
Received: (nullmailer pid 206770 invoked by uid 1000);
 Thu, 11 Jun 2020 04:59:58 -0000
From: Stijn Tintel <stijn@linux-ipv6.be>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 11 Jun 2020 07:59:55 +0300
Message-Id: <20200611045958.206718-1-stijn@linux-ipv6.be>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Rspamd-Queue-Id: E202040F9360
X-Spamd-Result: default: False [0.00 / 15.00];
 IP_WHITELIST(0.00)[2001:67c:21bc:20:52bf:b29c:6e1e:7c70];
 ASN(0.00)[asn:200533, ipnet:2001:67c:21bc::/48, country:BG]
X-Rspamd-Server: skulls
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_220009_926358_762E4EDE 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH v3 0/3] ath79: add support for D-Link
 DAP-2695-A1
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
Cc: mail@adrianschmutzler.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This series adds support for the D-Link DAP-2695-A1 to the ath79 target.
Also available in the ath79_dap-2695-a1 branch of my staging tree at [0].

Successfully tested sysupgrade from ar71xx to ath79.

As discussed on IRC, I prefer to keep the network setup identical to
ar71xx, so this wasn't changed.

Changes since v2:
* Change compatible from qca,qca9557 to qca,qca9558.
* Drop {address,size}-cells from keys.
* Rename reset@0 to just reset.
* Move empty newline before partitions node.

Changes since v1:
* Drop the commit that put D-Link images definitions in a separate file,
  to focus on getting support for the device in order rather than
  wasting time over something cosmetic.
* Drop default-state = "off" from leds, set default-state = "on" for
  power LED, add aliases indicating boot, failsafe and upgrade, add
  linux,default-trigger = "phy1tpt" to wlan2g.
* Rename wifi_2g node to be consistent with the label.
* Use gpio-keys instead of gpio-keys-polled.
* Rename button node to reset.
* Add newline before partitions node.
* Drop uboot label.
* Drop board from /etc/board.d/01_leds.
* Add ath10k-ct and firmware to DEFAULT_PACKAGES.

[0] https://git.openwrt.org/?p=openwrt/staging/stintel.git;a=summary

Stijn Tintel (3):
  mtd: enable wrgg support for ath79
  ath79: enable wrgg MTD splitter
  ath79: add support for D-Link DAP-2695-A1

 package/system/mtd/src/Makefile               |   2 +-
 target/linux/ath79/config-4.19                |   1 +
 target/linux/ath79/config-5.4                 |   1 +
 .../ath79/dts/qca9558_dlink_dap-2695-a1.dts   | 176 ++++++++++++++++++
 .../generic/base-files/etc/board.d/02_network |   6 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   4 +
 .../etc/uci-defaults/09_fix-checksum          |   8 +
 .../base-files/lib/preinit/10_fix_eth_mac.sh  |   4 +
 target/linux/ath79/image/generic.mk           |  33 ++++
 10 files changed, 238 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts

-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
