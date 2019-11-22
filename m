Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A01D106964
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AISOcjWOOl8vEaJgf+uRGIBU40G+n0b51oEx4at9ABI=; b=TcvNwYk2m5lgZF
	TrhADbSpl2nhJ7Sfouis1f3GZja6Tk8h2bl4C9B0fvdDqjLWmgkEHhqkCJHiUjqwK4j5Md6XDUlyl
	1OcOYtBAe3zNdeKRPkB0Yhke0ZBmCWM4f1JJfuDxHFhQMSYkvUngCiYPnMmu/iqJ1SCSKGNdqgrGr
	hT8FaIrubzUz8XKmct8Civk2z7rU8z/C7v3R/3Rm9JUWCtcmsaNrZB0ZmG8STJW3CoOG7Thb/Twb7
	nmOM18NPoym5rtALo5GVDZBw/Y7o3Ks1BSBD5rTly7h6AFPFIQMrufVYmrlayvSp3PjLBhTH/lyTh
	xpJcHoxARlsTj+Zt2OBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5iA-0001LI-UG; Fri, 22 Nov 2019 09:58:46 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fd-0006rV-N5
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:14 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id E5BCE60006;
 Fri, 22 Nov 2019 09:55:58 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:46 +0100
Message-Id: <20191122095556.688191-2-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015609_939294_265DA5C0 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH packages 01/11] libs/pcre: add host variant
 of libpcre
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is needed to build the host variant of libselinux.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 libs/pcre/Makefile | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/libs/pcre/Makefile b/libs/pcre/Makefile
index 720142332..29fda6749 100644
--- a/libs/pcre/Makefile
+++ b/libs/pcre/Makefile
@@ -51,6 +51,17 @@ define Package/libpcrecpp
   DEPENDS:=+libpcre $(CXX_DEPENDS)
 endef
 
+include $(INCLUDE_DIR)/host-build.mk
+
+HOST_CONFIGURE_ARGS += \
+	--enable-utf8 \
+	--enable-unicode-properties \
+	--enable-pcre16 \
+	--with-match-limit-recursion=16000 \
+	--enable-cpp
+
+$(eval $(call HostBuild))
+
 TARGET_CFLAGS += $(FPIC)
 
 CONFIGURE_ARGS += \
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
