Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72931F6128
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 07:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0H5fusvtd9F6sHT8qE5Lj62ueCsZRa9xUCe9dys5Zw=; b=HVdMGXOZKarupC
	DPbNGrHBhFgj43xqRm+apPnHNUQVJyUSwet+SMIKSoNiw1YAEaJ3Myj5SffoH2jO664Jm6et7951e
	Zy8hdQ/8Z1I7sXAZYXV104d01KQ0n2QGZ4R1BTEi+K9zH4ZVRmPmhw3RI8Kr/eSxH9pXT1GsuC6uL
	A8xPU7XQFlClJg1D9apdObXVa5KdTa/nC2a/IL5RswqcRxLzQPA5y1MDcuj1zExAA19lCBY7ve9Aj
	bxr1AmUrcnKje3ehe3RXUH6fmpDsFageGOYC1LcT9dfowghVjo+6NUSUgwOtnuohu8s20Q6FsXmgG
	v+L9Lf7eONhU+sclStXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjFKX-0002in-La; Thu, 11 Jun 2020 05:00:45 +0000
Received: from mail.tintel.eu ([51.83.127.189])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjFJx-0001IP-Ne
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 05:00:13 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 5A80C4495F85;
 Thu, 11 Jun 2020 07:00:03 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id I9tAV5ziWdY5; Thu, 11 Jun 2020 07:00:03 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id E301544881EA;
 Thu, 11 Jun 2020 07:00:02 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu E301544881EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1591851602;
 bh=XZJlcZf5YehMDdFpE1P14e6rikidVmjwEkZuR39zXbg=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=UDHhzkZh2Q0/jNKPkL4s5iA+Bic3UMkdX4tKGOtVwj7LWaZJWq1Mv1GP++eDJ4w6f
 lcv0OpNx2dYMXLDuEVv3gAmx1wrnqX08ZoNkRzVW6zQk/Lgcpx2Uy+ya3J0I25Pz0K
 qetO51U/iJ0ESEPntoU0pw6/CLOd7iFfQV46P0OY=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id 2zAf5toeXCf5; Thu, 11 Jun 2020 07:00:02 +0200 (CEST)
Received: from taz.sof.bg.adlevio.net (unknown
 [IPv6:2001:67c:21bc:20:52bf:b29c:6e1e:7c70])
 by mail.tintel.eu (Postfix) with SMTP id 8FA094495F85;
 Thu, 11 Jun 2020 07:00:02 +0200 (CEST)
Received: (nullmailer pid 206775 invoked by uid 1000);
 Thu, 11 Jun 2020 04:59:58 -0000
From: Stijn Tintel <stijn@linux-ipv6.be>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 11 Jun 2020 07:59:57 +0300
Message-Id: <20200611045958.206718-3-stijn@linux-ipv6.be>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200611045958.206718-1-stijn@linux-ipv6.be>
References: <20200611045958.206718-1-stijn@linux-ipv6.be>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 8FA094495F85
X-Spamd-Result: default: False [0.00 / 15.00];
 ASN(0.00)[asn:200533, ipnet:2001:67c:21bc::/48, country:BG];
 IP_WHITELIST(0.00)[2001:67c:21bc:20:52bf:b29c:6e1e:7c70]
X-Rspamd-Server: skulls
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_220009_929114_F71AF614 
X-CRM114-Status: UNSURE (   5.42  )
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
Subject: [OpenWrt-Devel] [PATCH v3 2/3] ath79: enable wrgg MTD splitter
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

This is required for the D-Link DAP-2695-A1.

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
