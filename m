Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA101F16BD
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 12:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4N59kchhWuC/wPFYPL+0Okb1UBlP76IE2C3Aq9sQgRk=; b=HotfBeAocdWVYL
	KVuEV5mPw8WvB9uZj7sBzeiUVAwTZT/NlyMjYU9ce/sDC978lrB7nfgAK+xlYLu4PkJaD7QAm3UOF
	yCNBBiQ6FIrKLKmZEc3DYPWIcrwpLE+4X6nVuCjSOydm5vAKPQs7gCHbFdcin+O8eY8R+RP2uwLgw
	dRdM0I1ShBtj2ROgtzo19EwPNXTp2yaENAmXYIPfcSKvQxnTgDnzHciZnGW/Ke9qXhjr6Ae94yZav
	5lr0HUo+KgGCODqmtMPfuFxN1xm2fmnlJoQYkJTQOaPqMRhb7sPdztVe6qSXyDl1KVuDPv/rKzT5p
	MV/BXSvJtdYioIb7wlyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiF4J-0000ln-BG; Mon, 08 Jun 2020 10:31:51 +0000
Received: from mail.tintel.eu ([2001:41d0:a:6e77:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiF3z-0000ao-JU
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 10:31:33 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 373034483172
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:22:57 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id V1A-O5OL7jyn for <openwrt-devel@lists.openwrt.org>;
 Mon,  8 Jun 2020 12:22:56 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 34D334495F93
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:22:56 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 34D334495F93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1591611776;
 bh=1gqLKX53wlXPaAVc+JOBbujxrn3I6Zn//lCupl8yejw=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=i6XIYp9fqATZNr5Gfa89tLtIQGQPRd9UBc2d2LPGZQ05rJfJJ77xSVUfLxQ/6EvpF
 lK3DDKoIRBj2KWwdbfd+Tu+typdXHVaXkIe7gxZqGNxwhNlNZBcOQIWZPqbcs6bISI
 ukpTTWHdOeLtc21yhwd6xZpIBjDz5IVPIEGEpvuc=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id kAedV5V_BvQh for <openwrt-devel@lists.openwrt.org>;
 Mon,  8 Jun 2020 12:22:55 +0200 (CEST)
Received: from taz.sof.bg.adlevio.net (unknown
 [IPv6:2001:67c:21bc:20:52bf:b29c:6e1e:7c70])
 by mail.tintel.eu (Postfix) with SMTP id 6F8964483172
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:01:45 +0200 (CEST)
Received: (nullmailer pid 1196134 invoked by uid 1000);
 Mon, 08 Jun 2020 09:36:31 -0000
From: Stijn Tintel <stijn@linux-ipv6.be>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jun 2020 12:36:27 +0300
Message-Id: <20200608093631.1196081-1-stijn@linux-ipv6.be>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Rspamd-Queue-Id: 6F8964483172
X-Spamd-Result: default: False [0.00 / 15.00];
 ASN(0.00)[asn:200533, ipnet:2001:67c:21bc::/48, country:BG];
 IP_WHITELIST(0.00)[2001:67c:21bc:20:52bf:b29c:6e1e:7c70]
X-Rspamd-Server: skulls
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_033131_935648_9E69E30C 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH 0/4] ath79: add support for D-Link
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This series adds support for the D-Link DAP-2695-A1 to the ath79 target.
Also available in my staging tree at [0].

Successfully tested sysupgrade from ar71xx to ath79.

[0] https://git.openwrt.org/?p=openwrt/staging/stintel.git;a=summary


Stijn Tintel (4):
  mtd: enable wrgg support for ath79
  ath79: enable wrgg MTD splitter
  ath79: use separate file for generic D-Link images
  ath79: add support for D-Link DAP-2695-A1

 package/system/mtd/src/Makefile               |   2 +-
 target/linux/ath79/config-4.19                |   1 +
 target/linux/ath79/config-5.4                 |   1 +
 .../ath79/dts/qca9558_dlink_dap-2695-a1.dts   | 172 ++++++++++++++++++
 .../generic/base-files/etc/board.d/01_leds    |   5 +
 .../generic/base-files/etc/board.d/02_network |   6 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   4 +
 .../etc/uci-defaults/09_fix-checksum          |   8 +
 .../base-files/lib/preinit/10_fix_eth_mac.sh  |   5 +
 target/linux/ath79/image/Makefile             |   1 +
 target/linux/ath79/image/generic-dlink.mk     | 147 +++++++++++++++
 target/linux/ath79/image/generic.mk           | 115 ------------
 13 files changed, 355 insertions(+), 116 deletions(-)
 create mode 100644 target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts
 create mode 100644 target/linux/ath79/image/generic-dlink.mk

-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
