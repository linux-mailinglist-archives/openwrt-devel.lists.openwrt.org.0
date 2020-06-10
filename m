Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EF71F5CB0
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 22:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xTYx7ihyn17nT2BZpIka9PM0rsLzJJRGfBLg2TYvkrE=; b=POP4pbF6x6+kCr
	oCqSWI19mTNZZcQrdW+LviPhv8b2VnJiUodW9sRHwn6htPgerleRdnA5NzGKL0gue5br84Dtc+mkJ
	+64g8Ut96uRSZsRyNE7uIzKiNOhWpYwkP5kydO6LtlRcXrgzCFu16wONGqtIl/KbqN5ReuvTyHuw/
	KhMGcIju/zYg/MycOJBWi1Ke/vFxYMkzJ+Bz+cx1qU61OWBC+Cv3XGdMgPHT0aCnrZltogYiGKEYq
	ppfsKLy2eUB8Q4xmMr/u4P74aheEHhSINwRPFjf0wtvoQ16R4feq/0VBEWwFShz2yxy4eavQXZxux
	6VYXQ5dgLkgLPGhMFVrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj78T-0006jz-DZ; Wed, 10 Jun 2020 20:15:45 +0000
Received: from mail.tintel.eu ([2001:41d0:a:6e77:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj77v-0004hM-JI
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 20:15:14 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 3E4E14495F91;
 Wed, 10 Jun 2020 22:15:04 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id yvcgYza9Kxax; Wed, 10 Jun 2020 22:15:03 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id AAB634495F8E;
 Wed, 10 Jun 2020 22:15:03 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu AAB634495F8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1591820103;
 bh=SJZa8txEKu7tAzwFVjxSXHWuLDejZOYouWOfa79uVDs=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=tXANM+mTZmdfCodAbAIxIOmaqcrQzarQtn9bMwVPfD2jwDuQU0o2GZ9eEQwdxgABh
 jQDm7KB43MLobmpZTLLKaNyTkbL6aJr7d5zU879indYaX7v4jdTYzvVQNXIWCk2N/X
 vlqG7H8zqZNzMlRu029FWJb5t5awflKbkI1ZFUFY=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id PaWnaYA15sQx; Wed, 10 Jun 2020 22:15:03 +0200 (CEST)
Received: from taz.sof.bg.adlevio.net (unknown
 [IPv6:2001:67c:21bc:20:52bf:b29c:6e1e:7c70])
 by mail.tintel.eu (Postfix) with SMTP id 4459644881EA;
 Wed, 10 Jun 2020 22:15:03 +0200 (CEST)
Received: (nullmailer pid 4175407 invoked by uid 1000);
 Wed, 10 Jun 2020 20:15:02 -0000
From: Stijn Tintel <stijn@linux-ipv6.be>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 10 Jun 2020 23:14:59 +0300
Message-Id: <20200610201502.4175358-1-stijn@linux-ipv6.be>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Rspamd-Queue-Id: 4459644881EA
X-Spamd-Result: default: False [0.00 / 15.00];
 ASN(0.00)[asn:200533, ipnet:2001:67c:21bc::/48, country:BG];
 IP_WHITELIST(0.00)[2001:67c:21bc:20:52bf:b29c:6e1e:7c70]
X-Rspamd-Server: skulls
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_131511_784200_398822AA 
X-CRM114-Status: UNSURE (   7.92  )
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
Subject: [OpenWrt-Devel] [PATCH v2 0/3] ath79: add support for D-Link
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
 .../ath79/dts/qca9558_dlink_dap-2695-a1.dts   | 178 ++++++++++++++++++
 .../generic/base-files/etc/board.d/02_network |   6 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   4 +
 .../etc/uci-defaults/09_fix-checksum          |   8 +
 .../base-files/lib/preinit/10_fix_eth_mac.sh  |   4 +
 target/linux/ath79/image/generic.mk           |  33 ++++
 10 files changed, 240 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts

-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
