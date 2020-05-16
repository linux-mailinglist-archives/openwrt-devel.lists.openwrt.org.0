Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DD91D6421
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWksnHuxqmC3J5lSJZMwVfylVjiBauzq3jLKUkdcIVA=; b=A0DricUH2Djqtg
	wxqkeG3O/HrEKwkPGaUH2Ha4RM5UAQV8OzQgrOsksdjkf4NMgrhs0gEJBZ06jNhG9UoI6bmd9/l5x
	25khhytHb/b455qEd+rEngNvO5DmpnBzGxSILmjxGooSvd4VIY2+XGK2E/eWvPjbVfMLmBC+I+6+E
	jkzS0k61QHcs3//yalAL8mqf2zn23gKVC6vhGSzhm22hRrkdJQ/Qy8NMaPQV7YNBg/Lh6cSsytZn9
	b0VOwVBOZSE6PW/4WJy73V7iTSC6P3cAioYbT7ANRlpmmnt/RgZmjvDB9OSv7hqeprRDlXbsML91n
	fH1mAeNDtiqKdKq2Kq4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja48r-0008Jk-IS; Sat, 16 May 2020 21:14:45 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48e-0008IF-UW
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:34 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 41F022572B;
 Sat, 16 May 2020 23:14:29 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:13:50 +0200
Message-Id: <c40509001d8fedcd1a1ad7ad694766cd8ac92111.1589662192.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141433_143835_FE75C84C 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH libubox] blob: make blob_parse_untrusted
 more permissive
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
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Some tools like ucert use concatenations of multiple blobs. Account for
this case by allowing the underlying buffer length to be greater than
the blog length.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 blob.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/blob.c b/blob.c
index 528e717615d6..433becb904f5 100644
--- a/blob.c
+++ b/blob.c
@@ -277,7 +277,7 @@ blob_parse_untrusted(struct blob_attr *attr, size_t attr_len, struct blob_attr *
 		return 0;
 
 	len = blob_raw_len(attr);
-	if (len != attr_len)
+	if (attr_len < len)
 		return 0;
 
 	memset(data, 0, sizeof(struct blob_attr *) * max);
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
