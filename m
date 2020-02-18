Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6BA1620BC
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Feb 2020 07:16:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TB+JLmegCBOSZg2gkY8Ji3lalwiAXYiOUuWDgvP2p4I=; b=bInNHw1AFBxSb1
	Clx4BVTEkPzYa3rwtSwK0wLE6NogdPieO+viaTsohf6xgI+J3OFphpnx2OdKMUuOnl5LAElqM/LIf
	fdmo5yQeeX7+8YN1AymltP4hPzLzuiJoVkKnhV3M7lK0fVOVZfvVeYpbI9UpgnbD6Cs9LrH/VTTud
	cmThcVEFHJRhw6fCeiDnF+Y8UAamvd9mQ2K7e0iCq4hufGhNim4I4IXFcWZ0uuPm7SSNCl5+ME1dJ
	IXoKWTwU/MJM9uKL61ffbIr82Qg7CW1WSpsJDsfCnT7RwTW3W6srNXoO7TYTdQ72z1JGAuOPE2hTI
	IOX3bz5H18cYV+2x8CmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3wBG-00012D-Jh; Tue, 18 Feb 2020 06:16:26 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3wB8-00011r-Vg
 for openwrt-devel@lists.openwrt.org; Tue, 18 Feb 2020 06:16:20 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id D8338A611AA; Mon, 17 Feb 2020 22:16:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.3
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 78B6BA610EA;
 Mon, 17 Feb 2020 22:16:10 -0800 (PST)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Feb 2020 22:16:10 -0800
Message-ID: <87v9o41kut.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_221619_059566_EA61192B 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] dnsmasq: fix uci-defaults script to exit 0
 so it is cleaned up
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


A file, package/network/services/dnsmasq/files/50-dnsmasq-migrate-resolv-conf-auto.sh,
was added in commit 6a2855212096d2c486961a0841b037bae4b75de7, but it
does not exit in a way that tells the uci-defaults mechanism that it
succeeded, and so it is not cleaned up after running successfully. Add
an exit 0 to the end to correct that.

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 .../dnsmasq/files/50-dnsmasq-migrate-resolv-conf-auto.sh        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/package/network/services/dnsmasq/files/50-dnsmasq-migrate-resolv-conf-auto.sh b/package/network/services/dnsmasq/files/50-dnsmasq-migrate-resolv-conf-auto.sh
index c78faa112d..480e2df471 100755
--- a/package/network/services/dnsmasq/files/50-dnsmasq-migrate-resolv-conf-auto.sh
+++ b/package/network/services/dnsmasq/files/50-dnsmasq-migrate-resolv-conf-auto.sh
@@ -4,3 +4,5 @@
 	uci set dhcp.@dnsmasq[0].resolvfile="/tmp/resolv.conf.d/resolv.conf.auto"
 	uci commit dhcp
 }
+
+exit 0
-- 
2.25.0


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
