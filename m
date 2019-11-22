Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2017106958
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:56:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CO1tDj1zvk2fpfWr1L1eIflVh0vlEfVXQeU/fpces0Q=; b=i39y3yfjpB54wN
	zhpt6RsRf2z4QTkk3wa5msX/ryT7GL8KvZZeRZGl0+FMavFA9XhYVbNovY/jay/x2L8XSSowpNwHB
	P9lR+FgVzVLga5SIqxScOOlj5yWfcAuc/cLg8Uq3Zo5/IkG5qr6he0Vn8Cc1bPh7Lk4UE13XIZ9bn
	cUXorZ/LTRfP3pDaaRHGdrNBXsKkxFk66ZifpZtUol4nVShq6HtqjLWVmik0x5MxNtd9AJBZBo9cb
	IaeydxzaVcd8mYtIp1Y28nScZdFc9Fso5P/YWCOY+i64sGCbd1xdpD7ndHHKR2dv9OU2cJfKZuM+h
	01YVMN31dh50osEm9JoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5gF-0007ST-Jw; Fri, 22 Nov 2019 09:56:47 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fR-0006fr-AY
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:55:59 +0000
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 5EB18100010;
 Fri, 22 Nov 2019 09:55:49 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:41 +0100
Message-Id: <20191122095541.688125-8-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015557_523177_200D9EDB 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 7/7] tools/squashfs4: enable xattr support
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

xattr support in mksquashfs is needed to be able to store SELinux
security contexts.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 tools/squashfskit4/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/squashfskit4/Makefile b/tools/squashfskit4/Makefile
index 4808c5607f..a54d86be4d 100644
--- a/tools/squashfskit4/Makefile
+++ b/tools/squashfskit4/Makefile
@@ -22,7 +22,7 @@ define Host/Compile
 	$(MAKE) -C $(HOST_BUILD_DIR)/squashfs-tools \
 		XZ_SUPPORT=1 \
 		LZMA_XZ_SUPPORT=1 \
-		XATTR_SUPPORT= \
+		XATTR_SUPPORT=1 \
 		LZMA_LIB="$(STAGING_DIR_HOST)/lib/liblzma.a" \
 		EXTRA_CFLAGS="-I$(STAGING_DIR_HOST)/include" \
 		mksquashfs unsquashfs
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
