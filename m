Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E746D2F8C0
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 May 2019 10:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jFCFkZDEast/kvFQHmtfkuHfBERmuOE5ksakgm71IdQ=; b=QXTVHDYv4m4tfG
	iGlB7u1lAvqInypVFMXKP33wHYt7myP8GquV9gJ44vBEAM/hI7AH7lpACDlLGTr6niizPCETIy3jT
	tJDGURGNm+sh4KM5zPrS3DpTvjUC3cgAnaxGsBzCKe9EBXNlc79cJ9hjpdUdDOGNWl5Q6lJq0LeLt
	gEp3qF8Mz4lH2v6wIFX4HiT9b04A3/JtoMfQjfsEy/Rfb1aUbHJrf45aHIOVTAPw6h5Z8SnJVE2TQ
	SYw9GiLzuPoD+TPtxGSUFKZze0PjE5s691UZpCCDaSqMOH/2bPfETYtp2uWTmBq/KYbcYPEpPLwIT
	AIkKaWGRfBszQ4ZU30jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWGn0-0002U7-9v; Thu, 30 May 2019 08:51:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWGmv-0002Tv-0G
 for openwrt-devel@bombadil.infradead.org; Thu, 30 May 2019 08:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8eZwZjMFp6Hfw7/KyS+MUbkadjL5NW/+XvzlnHFiPok=; b=1zEJme5NvBKpeDc0uQfYZqeCbg
 4MAX9sjYWSjV8U5Pkd/Akny8bt/dgXIurbjiuvcZSVTts62vF+wXvvjwMLWA8pK7QcXKssEZP7h2l
 cDaz+KW1RcH4JM51A+2b4doQyphMXwLMFaa2ZttAuAYlMxOVLJ54D3Z9XgsarkYlAqPBAQGgIqjS0
 O77aSLAEK0eKkzPlTJ75XWbEc4i5HbVs/E6ak1qUVyek1SO6nfofxkufW7RskM5fTX0liEPFokPZb
 +6EtwVxgT63vwUsBaV/6eSxfwyF9kZGitp38/xOoTnZrnKIzte9sSoTugrBdtyEi6mL1JdOlrl2ue
 LgifKeTw==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWGmr-0005Hp-EE
 for openwrt-devel@lists.openwrt.org; Thu, 30 May 2019 08:51:50 +0000
X-Originating-IP: 95.90.180.177
Received: from localhost.localdomain (ip5f5ab4b1.dynamic.kabel-deutschland.de
 [95.90.180.177]) (Authenticated sender: mail@aparcar.org)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 7F9D21C0004;
 Thu, 30 May 2019 08:51:14 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 30 May 2019 10:50:51 +0200
Message-Id: <20190530085050.19061-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_045149_578655_C3DB641E 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] procd: fixup double negative docker
 detection
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Double `!!` results in false positives, making the snapshot unusable as
procd won't mount essential things on *non virtial machines*.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 container.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/container.h b/container.h
index dd2e432..3c388ce 100644
--- a/container.h
+++ b/container.h
@@ -20,7 +20,7 @@
 
 static inline bool is_container() {
 	struct stat s;
-	return !!getenv("container") || !!stat("/.dockerenv", &s);
+	return !!getenv("container") || !stat("/.dockerenv", &s);
 }
 
 #endif
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
