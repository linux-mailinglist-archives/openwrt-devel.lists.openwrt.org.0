Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D85D6086
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 12:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=141aUIsI9FaJ9renz4sDP/B4CBXO7crwEjNRAHUXl0Y=; b=niEI/SKsXBwpf4
	4u85vrVSpVsZ8m3Fnsq31JOosCrZ6wt5qKDsmnWiFGbRZYNjtlCfZdaGfPWcgyrQEEsngVOgSj1OZ
	q7ty0WxEr4keMubRmemTdDRT9NJ0PAtSQO/7ppUVXPFopDyxUSM7tpE8WiLIfBCpujPlov0NofmZ2
	YUEsIjrl3HKHGZ3+6+nwinBI0rUVxq9hhCtaaBEIPRZMRLaBT0eczgiWrd1NaOiDWVNEio/cWtw3T
	DrGDndmgZU1wYO63KTCYcO4wYwhjBqqocGMzqVTriuGzdKZNK+2j6KIFp4hxtwjme++Qpv6OJpbmm
	YGIj4ArBmKZQcQMlN+Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxt4-0004jW-1g; Mon, 14 Oct 2019 10:47:38 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxsb-0004TZ-7B
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 10:47:11 +0000
Received: from dbauer-t470.tu-darmstadt.de (unknown
 [IPv6:2001:41b8:83c:fa01:5d47:84e4:b335:6505])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id C789B22BA2
 for <openwrt-devel@lists.openwrt.org>; Mon, 14 Oct 2019 12:47:06 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 14 Oct 2019 12:47:01 +0200
Message-Id: <20191014104701.207324-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_034709_404477_FFEE2898 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: correct ar71xx boardname for UniFi
 AC Lite
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

This corrects the additional boardname for the image metadata to the one
used in ar71xx. The previously present additional entry was never used
on a running system.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ath79/image/generic-ubnt.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 984b18ccae..801b0128ac 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -221,7 +221,7 @@ endef
 define Device/ubnt_unifiac-lite
   $(Device/ubnt_unifiac)
   DEVICE_MODEL := UniFi AC-Lite
-  SUPPORTED_DEVICES += ubnt-unifiac-lite
+  SUPPORTED_DEVICES += unifiac-lite
 endef
 TARGET_DEVICES += ubnt_unifiac-lite
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
