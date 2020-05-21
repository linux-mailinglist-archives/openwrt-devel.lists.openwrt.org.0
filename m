Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F39351DC80E
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 09:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9hWnHNx5EjMACGOuO/cNgJZQJorHxoQtxJHgk4J7WDk=; b=QT7qTu/+GIYJCy
	RZCeClwtuspwa9g2HIwxaT/WJW40/hJNB/VwS74OWti3ertWEi463ZCu0rtJtxN4D7HM7xV4avPj2
	Wn9f4jBtnbT9vVwGcT79gR/6H06NgWLYwufbneuS3uyGX1CdlmCw5w3o2iqODvRfz3P87E0z/B0oW
	NxU+uZv57r5FwDQsS00jgHxeE+TYYNNr4p/MtZ/YqfQ1uBg0kqxKKcJw2YITRMLMo0h/zPIUUIlck
	Lv6Xh4tYvF0wke14UUzmlrzwS+p8Kn/OZQkcp2fOwmrz1EWWcVNU4qVnsuhbHiM+kamb8yaN0/HMa
	CPs7/vZ5Qh1vTQeUUdyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbg4r-0007rO-Th; Thu, 21 May 2020 07:57:17 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbg4l-0007pk-KZ
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 07:57:13 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300e53f0e53003117d8640668d861.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0e:5300:3117:d864:668:d861])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id D4C2B236E3
 for <openwrt-devel@lists.openwrt.org>; Thu, 21 May 2020 09:56:45 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 May 2020 09:56:36 +0200
Message-Id: <20200521075636.43856-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_005711_823058_AE64D8F2 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] hostapd: add WEP as queryable build feature
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

Commit 472fd98c5b12 ("hostapd: disable support for Wired Equivalent
Privacy by default") made support for WEP optional.

Expose the WEP support to LuCi or other userspace tools using the
existing interface. This way they are able to remove WEP from the
available ciphers if hostapd is built without WEP support.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../network/services/hostapd/src/src/utils/build_features.h   | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/package/network/services/hostapd/src/src/utils/build_features.h b/package/network/services/hostapd/src/src/utils/build_features.h
index abebecb570..b28ff6fa9f 100644
--- a/package/network/services/hostapd/src/src/utils/build_features.h
+++ b/package/network/services/hostapd/src/src/utils/build_features.h
@@ -38,6 +38,10 @@ static inline int has_feature(const char *feat)
 #ifdef CONFIG_SUITEB192
 	if (!strcmp(feat, "suiteb192"))
 		return 1;
+#endif
+#ifdef CONFIG_WEP
+	if (!strcmp(feat, "wep"))
+		return 1;
 #endif
 	return 0;
 }
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
