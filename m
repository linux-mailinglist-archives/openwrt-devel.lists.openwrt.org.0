Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EF61D67D2
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 13:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/GyTLqqi6galZb8pddUtWkIth2AJk4utl+gwzfO5+Q=; b=VHMKXYq4xmKoug
	do67DaGxa+PBmUVFQXNuRUETEt7aWS0c2ngdwtLMmELkXuSMWYECIcODavTu/xSFsgF0f4UeUMh5g
	+cBwhLUVCOPvlqPNN2m1jN2DOklIdx5gxdYtRIzTtoQ5IUfd5tTwIXUpou27h8YNbgBxiEmbidDYm
	qySNxY0ywFD/NM7O5OITj70G7uijOgV8Q7SBTxtJ83oBUGB60uX5DyyM/V5u8Cq6gJtphBi7sMIqQ
	kmY4AszAkJ/FtYZWcyzSEzbnSTIG02Lp3wGjtvFogtHTrBiKidSjPz29Oq/daMi8+2iza/VkX3tuk
	Aa53b4/ll3Dmzr6gDcmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaHpu-000690-77; Sun, 17 May 2020 11:52:06 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaHpl-00067e-1x
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 11:51:58 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 081DB25781;
 Sun, 17 May 2020 13:51:53 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 May 2020 13:51:41 +0200
Message-Id: <56454cd29972c9d31b8eca798db340d48c8b4148.1589716209.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589396871.git.mschiffer@universe-factory.net>
References: <cover.1589396871.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_045157_251893_90E9D535 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 2/4] build: add zstd support to
 pack/unpack functions
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

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 include/download.mk | 1 +
 include/unpack.mk   | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/include/download.mk b/include/download.mk
index 14d68bf8f5e9..9c8ada052b04 100644
--- a/include/download.mk
+++ b/include/download.mk
@@ -50,6 +50,7 @@ endef
 dl_pack/bz2=bzip2 -c > $(1)
 dl_pack/gz=gzip -nc > $(1)
 dl_pack/xz=xz -zc -7e > $(1)
+dl_pack/zst=zstd -T0 --ultra -20 -c > $(1)
 dl_pack/unknown=$(error ERROR: Unknown pack format for file $(1))
 define dl_pack
 	$(if $(dl_pack/$(call ext,$(1))),$(dl_pack/$(call ext,$(1))),$(dl_pack/unknown))
diff --git a/include/unpack.mk b/include/unpack.mk
index 6141b1c7225d..5bb27d41c9a9 100644
--- a/include/unpack.mk
+++ b/include/unpack.mk
@@ -31,6 +31,10 @@ ifeq ($(strip $(UNPACK_CMD)),)
       EXT:=$(call ext,$(PKG_SOURCE:.$(EXT)=))
       DECOMPRESS_CMD:=xzcat $(DL_DIR)/$(PKG_SOURCE) |
     endif
+    ifeq (zst,$(EXT))
+      EXT:=$(call ext,$(PKG_SOURCE:.$(EXT)=))
+      DECOMPRESS_CMD:=zstdcat $(DL_DIR)/$(PKG_SOURCE) |
+    endif
     ifeq ($(filter tgz tbz tbz2 txz,$(EXT1)),$(EXT1))
       EXT:=tar
     endif
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
