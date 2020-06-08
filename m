Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6391F16BC
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 12:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5TIf5vA93Tf5YFZNWv7f+7ay1vWZB8kZ45QCyZnae+s=; b=KYlCtz7s2EmIjXivL7HKtOfky0
	tmXi4Qd3XIwOk764FaL00iLdZLuBDvtuD4AeaLUhhRCD+a42ofOJXJNAnuV0ROrGAjfYNCJjVYLsZ
	BzpzGAvtrRpJDPp6O5wiIxRiKDarVYZI496E9nXh6jfSoAAKz8ekGzGq58UBGN8H9NRDJvu0dOmfq
	AhDjdkOZ5xoFMLRs+gYhM8SwswbHJguHuB6Att0rNyHa7/5ia4PovI/99Nzwhtbt4gt+ckoVsIVyZ
	SFPaZ+vFtw7jIobqfTRAIjABl68puh8LlkS1HgfMbUCDQsaUXEhkoZv9vb51mYGiVy9qiFeIHO2PO
	tVuQnVOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiF47-0000ca-LJ; Mon, 08 Jun 2020 10:31:39 +0000
Received: from mail.tintel.eu ([2001:41d0:a:6e77:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiF3z-0000aq-JS
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 10:31:33 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 548A644881E6
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:22:57 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id stsHuOPv7Ghw for <openwrt-devel@lists.openwrt.org>;
 Mon,  8 Jun 2020 12:22:56 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id DA4EA44881D1
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:22:55 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu DA4EA44881D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1591611775;
 bh=R33tfzMAplzfHRGsfy7BI4g+/kcq+TtnX2o619aqV2o=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=KDnNq9zwDR+0kB+utP4QbP/xq4ylutay0GDjkQ2/AQj01q8zVHmayKNn0lAnZYgFh
 gQ+mxg1UGOYsYa/mQKww15eZJ9SH5BymSxTH8+6PkchcW7weLpM+KmjsDUXkf2ZGV4
 nXXrfYJiC5lQMpf6JFu4dayP7wWp7REpd60Z2BY0=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id 2nkrlcrwIwG8 for <openwrt-devel@lists.openwrt.org>;
 Mon,  8 Jun 2020 12:22:55 +0200 (CEST)
Received: from taz.sof.bg.adlevio.net (unknown
 [IPv6:2001:67c:21bc:20:52bf:b29c:6e1e:7c70])
 by mail.tintel.eu (Postfix) with SMTP id 6D1914482B6A
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:01:46 +0200 (CEST)
Received: (nullmailer pid 1196139 invoked by uid 1000);
 Mon, 08 Jun 2020 09:36:31 -0000
From: Stijn Tintel <stijn@linux-ipv6.be>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jun 2020 12:36:29 +0300
Message-Id: <20200608093631.1196081-3-stijn@linux-ipv6.be>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200608093631.1196081-1-stijn@linux-ipv6.be>
References: <20200608093631.1196081-1-stijn@linux-ipv6.be>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 6D1914482B6A
X-Spamd-Result: default: False [0.00 / 15.00];
 ASN(0.00)[asn:200533, ipnet:2001:67c:21bc::/48, country:BG];
 IP_WHITELIST(0.00)[2001:67c:21bc:20:52bf:b29c:6e1e:7c70]
X-Rspamd-Server: skulls
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_033131_939206_680175F1 
X-CRM114-Status: UNSURE (   5.50  )
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
Subject: [OpenWrt-Devel] [PATCH 2/4] ath79: enable wrgg MTD splitter
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

This is required for the D-Link DAP-2695.

Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
---
 target/linux/ath79/config-4.19 | 1 +
 target/linux/ath79/config-5.4  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/target/linux/ath79/config-4.19 b/target/linux/ath79/config-4.19
index cfa0ebd759..81fd017aba 100644
--- a/target/linux/ath79/config-4.19
+++ b/target/linux/ath79/config-4.19
@@ -171,6 +171,7 @@ CONFIG_MTD_SPLIT_LZMA_FW=y
 CONFIG_MTD_SPLIT_SEAMA_FW=y
 CONFIG_MTD_SPLIT_TPLINK_FW=y
 CONFIG_MTD_SPLIT_UIMAGE_FW=y
+CONFIG_MTD_SPLIT_WRGG_FW=y
 CONFIG_MTD_VIRT_CONCAT=y
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEED_PER_CPU_KM=y
diff --git a/target/linux/ath79/config-5.4 b/target/linux/ath79/config-5.4
index 80f7209b5b..b458edce1e 100644
--- a/target/linux/ath79/config-5.4
+++ b/target/linux/ath79/config-5.4
@@ -178,6 +178,7 @@ CONFIG_MTD_SPLIT_LZMA_FW=y
 CONFIG_MTD_SPLIT_SEAMA_FW=y
 CONFIG_MTD_SPLIT_TPLINK_FW=y
 CONFIG_MTD_SPLIT_UIMAGE_FW=y
+CONFIG_MTD_SPLIT_WRGG_FW=y
 CONFIG_MTD_VIRT_CONCAT=y
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEED_PER_CPU_KM=y
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
