Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 994548997A
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 11:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9/qlMCgTuTdw10ADUYDQUf5VcqHvZXw+SKH3eoavjwA=; b=krcER64K3aRY2M
	4BzfjOoCoqQsky3jCMGsv0s/PyBZ5KQsVg0lBN0C8uQ4XHyjnOpplh8RgNOQMe++VXvKgMPvamEhb
	ZaQTAHHukEnC3uBIRpiiNcgUVQjn0nXkFxYoJ5bVUqncKGz55X5pv2kbj8Wl13y9MHE9ExjVBG62r
	11yTKDP7lf1BeImG/u8iAcXj6n73oafjON8ahpUuRwmUt+6IiCApO65IXxLInlfNOymDiYAXnhoi4
	iqaMXTbiYCt/ZVOlRCayZnn90c75+9dgtEgnJtPnmD/s3mYyLh4GvEHTiOGchqcXHxjd17id3Zqiq
	srkeD9GpWN4wiS+lz0Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6KY-0004n6-4p; Mon, 12 Aug 2019 09:09:30 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6KJ-0004hH-8y
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 09:09:16 +0000
X-Originating-IP: 98.151.65.6
Received: from localhost.localdomain (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id E78CC40004;
 Mon, 12 Aug 2019 09:09:11 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 11 Aug 2019 23:08:33 -1000
Message-Id: <20190812090832.30165-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_020915_592312_271B0981 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] image.mk: remove device_ from manifest
 filename
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

The manifest file is based on IMG_PREFIX and PROFILE_SANITIZED, whereas
the latter takes a string like DEVICE_8dev_carambola2 and sanitizes it.
This behaviour results in a useless "device_" profile-prefix in the
device manifest filename. Now uses *subst* to remove that.

Therefore this patch results more consistent device file names:

openwrt-ath79-generic-8dev_carambola2-initramfs-kernel.bin
openwrt-ath79-generic-8dev-carambola2.manifest
openwrt-ath79-generic-8dev_carambola2-squashfs-sysupgrade.bin

instead of a single file being called

openwrt-ath79-generic-device_8dev-carambola2.manifest

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
v2: removed senseless newline - sorry

 include/image.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/image.mk b/include/image.mk
index e55ac22d0d..c6a6ab7993 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -106,7 +106,7 @@ define add_jffs2_mark
 	echo -ne '\xde\xad\xc0\xde' >> $(1)
 endef
 
-PROFILE_SANITIZED := $(call sanitize,$(PROFILE))
+PROFILE_SANITIZED := $(call sanitize,$(subst DEVICE_,,$(PROFILE)))
 
 define split_args
 $(foreach data, \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
