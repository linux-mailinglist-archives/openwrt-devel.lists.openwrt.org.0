Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0179E1F16BE
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 12:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2mwXPVr3ECLKRgwoRAUdi0rXRwh1MOulDDMZUbfErxQ=; b=mp938qVQvN7EYvA8N6zPmaohmt
	l7QUyDYZ4JXI5NUNh4A9qWqda3Lz5oe7gB3vjDAeQwWUbligp5gCtxdgSto/ldYgfJcB4NQWaUwNz
	29nx8MwfEuI8Ntus4EZk9uWGL+62iECKYNZCSCHkN5YLY0J2AgJZh3uOsOeBXQDwoKAtNs5LCjEFs
	QjCPWHTnRW32XXxxLGpFGCPP/GUnxH7ymkU3XcAxCJS2tTZ4/uTAo5R5Fy17S6+gU7rfMSLqRbZ+Q
	08Dlc+IbBm+1Xs1jn4eSYZhurY767jFGOb/X9sBb78KnqkoVzQkrAhLfP44dfHvTVbLiLabFTB5UH
	H3XIy7sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiF4V-00012H-I1; Mon, 08 Jun 2020 10:32:03 +0000
Received: from mail.tintel.eu ([51.83.127.189])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiF3z-0000as-JT
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 10:31:34 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 0DFF540000E9
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:22:57 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id dfUTCpX2x64q for <openwrt-devel@lists.openwrt.org>;
 Mon,  8 Jun 2020 12:22:56 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 30B454495F91
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:22:56 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 30B454495F91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1591611776;
 bh=FVifDDN42dgO+9VLPIrTi7V5PK64Hs5UxG6BqS0bBR8=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=T9ou3XMhvvx2yD5DrFa2EpZZ9z5NtNsugySkvdqlzEr1RNSfZO0dvqQeaRZ5Rh9WX
 gqFmZU7sbEq6egNUey2SAgSiYIFw3QL5C+/oxS/ptYmuj6yn2LHyKmE2TWh8usRi0Z
 7P9T/tbNsgJvC7ByPSBxduatlqlsZx7/VKDJG/mQ=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id 5JBGPsSsusv2 for <openwrt-devel@lists.openwrt.org>;
 Mon,  8 Jun 2020 12:22:56 +0200 (CEST)
Received: from taz.sof.bg.adlevio.net (unknown
 [IPv6:2001:67c:21bc:20:52bf:b29c:6e1e:7c70])
 by mail.tintel.eu (Postfix) with SMTP id F29B64482B65
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:01:45 +0200 (CEST)
Received: (nullmailer pid 1196137 invoked by uid 1000);
 Mon, 08 Jun 2020 09:36:31 -0000
From: Stijn Tintel <stijn@linux-ipv6.be>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jun 2020 12:36:28 +0300
Message-Id: <20200608093631.1196081-2-stijn@linux-ipv6.be>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200608093631.1196081-1-stijn@linux-ipv6.be>
References: <20200608093631.1196081-1-stijn@linux-ipv6.be>
MIME-Version: 1.0
X-Rspamd-Queue-Id: F29B64482B65
X-Spamd-Result: default: False [0.00 / 15.00];
 ASN(0.00)[asn:200533, ipnet:2001:67c:21bc::/48, country:BG];
 IP_WHITELIST(0.00)[2001:67c:21bc:20:52bf:b29c:6e1e:7c70]
X-Rspamd-Server: skulls
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_033131_943734_6BBB960C 
X-CRM114-Status: UNSURE (   7.20  )
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
Subject: [OpenWrt-Devel] [PATCH 1/4] mtd: enable wrgg support for ath79
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

This is required for the D-Link DAP-2695-A1.

Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
---
 package/system/mtd/src/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/system/mtd/src/Makefile b/package/system/mtd/src/Makefile
index e504a04478..6da31a04a4 100644
--- a/package/system/mtd/src/Makefile
+++ b/package/system/mtd/src/Makefile
@@ -8,7 +8,7 @@ obj.wrg = wrg.o md5.o
 obj.wrgg = wrgg.o md5.o
 obj.tpl = tpl_ramips_recoveryflag.o
 obj.ar71xx = trx.o $(obj.seama) $(obj.wrgg)
-obj.ath79 = $(obj.seama)
+obj.ath79 = $(obj.seama) $(obj.wrgg)
 obj.gemini = $(obj.wrgg)
 obj.brcm = trx.o
 obj.bcm47xx = $(obj.brcm)
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
