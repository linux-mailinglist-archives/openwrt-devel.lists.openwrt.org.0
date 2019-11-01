Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D072DEC9F8
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 21:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=viy+0qQI+8vYPHPx8jMj9qeivYBDguhcj9fTcQx9oGM=; b=XtgNT9ZyO/tyUh
	G3RMMw4eN1q1c5Pp3xUCBkn5R4JIYSpIlYaS+4AknfFLuej7xwMuugfDjtxT+2p5JuI8wXiScuIiP
	RMRi2D/oOIrcLbs0TajeZjJb0rPBncBUkhdlnoyaO/S8up4VphoVAsm4W9/YT/bOtPSIdfO6CdLNB
	p52t+wv+0W9DDyuOYXzNbLWdnmnMJE5UMOMiJGP3NlWvEfh9ubTnYnjLN0Zc56hlGiVzb9PrdFyyP
	03tSHLpa8vIC98x6bxckmDu2tL33qU8+8HWUIQbtt1SSgzQusqQ07qZOMpTWQg7w8t3XQipM8bTkg
	FPKZ5jEGElF4mC2KpKZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQdwt-00044V-W5; Fri, 01 Nov 2019 20:55:12 +0000
Received: from mout-u-107.mailbox.org ([91.198.250.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQdwU-0003ur-0l
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 20:54:47 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 474ZF850zzzKnL3;
 Fri,  1 Nov 2019 21:54:36 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id LX-xhRzg9xUC; Fri,  1 Nov 2019 21:54:34 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 21:54:15 +0100
Message-Id: <20191101205416.17599-3-hauke@hauke-m.de>
In-Reply-To: <20191101205416.17599-1-hauke@hauke-m.de>
References: <20191101205416.17599-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_135446_221868_0CB8CF28 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 3/4] swconfig: Activate LTO compile option
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This decreases the size of the swconfig application by 25% on MIPS BE.

old:
16,916 /sbin/swconfig

new:
12,565 /sbin/swconfig

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/config/swconfig/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/package/network/config/swconfig/Makefile b/package/network/config/swconfig/Makefile
index 8b1d6cd64a..4d3e572d82 100644
--- a/package/network/config/swconfig/Makefile
+++ b/package/network/config/swconfig/Makefile
@@ -23,6 +23,9 @@ define Package/swconfig
   TITLE:=Switch configuration utility
 endef
 
+TARGET_CFLAGS += -flto
+TARGET_LDFLAGS += -flto=jobserver
+
 TARGET_CPPFLAGS := \
 	-D_GNU_SOURCE \
 	-I$(STAGING_DIR)/usr/include/libnl-tiny \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
