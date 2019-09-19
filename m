Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C889FB82E9
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Sep 2019 22:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IDqwqFlBl+GFSIFLH5eD39e5HrCq4BSDAhYwc6wYcNk=; b=T6h7eCH/1+D0YH
	QwGiwqfO7F0EdYVUjh6iWRYxfezLELMlw09AzUBXLIMSRmhGMRFCRHey289n6wjVZU6GvDB3en1HZ
	hUErzQ1OTmG77N3L089zBjCPCdVMJnG7s9wCnuduheG8pxk+YqSmkPSFMCpMBHLNzfrMQ5Yloke0U
	yQx9TzecWkPDxRLqG8rivh61wz5B5pzjoacHev++WquAGzpao1LEbs/03k5NuykvGxiOYPTINEiE+
	15/Pc9PkD8AVsqm63XtJn0jP2vNMKzGwOSsXTMqhFW7gMmb8jIwp0K+jWanLXjNy0I0C+bixNPA+b
	UZ1Hf0Vd5fhqEN5NT9Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB3Mb-0003rL-Uf; Thu, 19 Sep 2019 20:49:18 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB3MR-0003qu-Re
 for openwrt-devel@lists.openwrt.org; Thu, 19 Sep 2019 20:49:09 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id D0CB653039;
 Thu, 19 Sep 2019 22:49:03 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id Goe_f-CSN7Wz; Thu, 19 Sep 2019 22:49:01 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Sep 2019 22:48:50 +0200
Message-Id: <20190919204850.27113-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_134908_051236_ABC0FBCF 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH procd] system: Fix possible integer overflows
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This multiplication was done on 32 bit integers before, explicitly cast
them to 64 bit values before to make sure the multiplication is done on
64 bit numbers.

Coverity: #1412417, #1412410, #1412409, #1412411, #1412424, #1412407
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 system.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/system.c b/system.c
index 4068e64..751a016 100644
--- a/system.c
+++ b/system.c
@@ -254,15 +254,21 @@ static int system_info(struct ubus_context *ctx, struct ubus_object *obj,
 	blobmsg_close_array(&b, c);
 
 	c = blobmsg_open_table(&b, "memory");
-	blobmsg_add_u64(&b, "total",    info.mem_unit * info.totalram);
-	blobmsg_add_u64(&b, "free",     info.mem_unit * info.freeram);
-	blobmsg_add_u64(&b, "shared",   info.mem_unit * info.sharedram);
-	blobmsg_add_u64(&b, "buffered", info.mem_unit * info.bufferram);
+	blobmsg_add_u64(&b, "total",
+			(uint64_t)info.mem_unit * (uint64_t)info.totalram);
+	blobmsg_add_u64(&b, "free",
+			(uint64_t)info.mem_unit * (uint64_t)info.freeram);
+	blobmsg_add_u64(&b, "shared",
+			(uint64_t)info.mem_unit * (uint64_t)info.sharedram);
+	blobmsg_add_u64(&b, "buffered",
+			(uint64_t)info.mem_unit * (uint64_t)info.bufferram);
 	blobmsg_close_table(&b, c);
 
 	c = blobmsg_open_table(&b, "swap");
-	blobmsg_add_u64(&b, "total",    info.mem_unit * info.totalswap);
-	blobmsg_add_u64(&b, "free",     info.mem_unit * info.freeswap);
+	blobmsg_add_u64(&b, "total",
+			(uint64_t)info.mem_unit * (uint64_t)info.totalswap);
+	blobmsg_add_u64(&b, "free",
+			(uint64_t)info.mem_unit * (uint64_t)info.freeswap);
 	blobmsg_close_table(&b, c);
 #endif
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
