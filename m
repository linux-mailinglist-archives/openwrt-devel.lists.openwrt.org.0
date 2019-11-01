Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC654EC9F7
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 21:54:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YebYMJYOOBgIdY9Jr19E3UQjHWldOZaACIz2VLV0dWY=; b=dJfjwPN0pMcTn9
	jHFj9Ttr8rseWc0NzNhl12pAcsUzuFWcygiJxf1IrPwjOkBw53UUExwFE0OX0lTBh64HyMUuutDG+
	7RaaFfANCx8Eq73FWwhp3cKj6weIq7leWjKwzTWYUJQ4Vu8qub4Wy7kXDLc2rSeTIvlMwxfEILagO
	ve3y4hECTXH88k4fckHC3n0DupVSrvwfHYkzKMMjUV63OGvbB8uJG93j7K0BERttjlX1tDeUXqQgJ
	bwe022Ea+6kCmHbK9XNTHhzk7ly9l84M/p/7kpklqEITqSJZUMlRMNT4E9Q/SgLr79hl8vtfHFv6p
	oPxX5Axoj08izB8lbEdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQdwa-0003wN-HE; Fri, 01 Nov 2019 20:54:52 +0000
Received: from mout-u-107.mailbox.org ([91.198.250.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQdwU-0003um-0m
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 20:54:47 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 474ZF91kRrzKnjl;
 Fri,  1 Nov 2019 21:54:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id nlu1UyL-6c-M; Fri,  1 Nov 2019 21:54:34 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 21:54:16 +0100
Message-Id: <20191101205416.17599-4-hauke@hauke-m.de>
In-Reply-To: <20191101205416.17599-1-hauke@hauke-m.de>
References: <20191101205416.17599-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_135446_219416_748D58AD 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 4/4] usign: Activate LTO compile option
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

This decreases the size of the usign application by 16% on MIPS BE.

old:
24,597 /usr/bin/usign

new:
20,501 /usr/bin/usign

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/system/usign/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/package/system/usign/Makefile b/package/system/usign/Makefile
index 836b1524d3..ab7fda33a3 100644
--- a/package/system/usign/Makefile
+++ b/package/system/usign/Makefile
@@ -30,6 +30,9 @@ define Package/usign
   TITLE:=OpenWrt signature verification utility
 endef
 
+TARGET_CFLAGS += -flto
+TARGET_LDFLAGS += -flto=jobserver
+
 CMAKE_OPTIONS += \
 	-DUSE_LIBUBOX=on
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
