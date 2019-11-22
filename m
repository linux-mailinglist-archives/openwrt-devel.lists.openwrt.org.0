Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDA4106955
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:56:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7nooJQKh+Dyg1dv2wlQwauw7kOqESLGIDndYrLG0Tw=; b=nKKQHhmmbfKeG5
	sVmq1IEDk+Ar8/p1ThFhcaGMQ28bud5ZjjOFyvI+4TxoGBJMic94ZZUsWLp8E7WHc2ZsyXUnDtQ4o
	8BngAaGFSAM6A1gM9273V+xWEIX7g0VvG6oao1iCvzFuRmJeomSBrOatfYgaVFQ7lAvlGA/hdKkaH
	IKQiQ/z+2HjUiZoOJPgTLny7Nk7MJn3abTi71dWggicgQEpbRqGVZoIp9tFq4B47L51aXg4DWdPaC
	9SrlEjaVco5C+oPfhpcrzZHvu/raqa/9dT7b5a+UXOmZvohQbQB5Xj2Xp4D++Fk5iyJlDLtTJdomm
	Jh9R3p2xRWrg/Lh5Ry4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5fs-0006tP-Nx; Fri, 22 Nov 2019 09:56:24 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fN-0006fl-JJ
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:55:55 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id C04D74000F;
 Fri, 22 Nov 2019 09:55:47 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:38 +0100
Message-Id: <20191122095541.688125-5-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015553_775359_A2354E70 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 4/7] include/image.mk: implement SELinux
 squashfs image generation
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

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 include/image.mk | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/include/image.mk b/include/image.mk
index 8592c19b99..86b3edeb87 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -239,13 +239,26 @@ endef
 $(eval $(foreach S,$(JFFS2_BLOCKSIZE),$(call Image/mkfs/jffs2/template,$(S))))
 $(eval $(foreach S,$(NAND_BLOCKSIZE),$(call Image/mkfs/jffs2-nand/template,$(S))))
 
-define Image/mkfs/squashfs
+define Image/mkfs/squashfs-common
 	$(STAGING_DIR_HOST)/bin/mksquashfs4 $(call mkfs_target_dir,$(1)) $@ \
 		-nopad -noappend -root-owned \
 		-comp $(SQUASHFSCOMP) $(SQUASHFSOPT) \
 		-processors 1
 endef
 
+ifeq ($(CONFIG_PACKAGE_refpolicy),y)
+define Image/mkfs/squashfs
+	echo "LD_LIBRARY_PATH=\$$LD_LIBRARY_PATH:$(STAGING_DIR_HOSTPKG)/lib $(STAGING_DIR_HOSTPKG)/sbin/setfiles -r $(call mkfs_target_dir,$(1)) $(call mkfs_target_dir,$(1))/etc/selinux/targeted/contexts/files/file_contexts $(call mkfs_target_dir,$(1))" > $@.fakeroot-script
+	echo "$(Image/mkfs/squashfs-common)" >> $@.fakeroot-script
+	chmod +x $@.fakeroot-script
+	$(STAGING_DIR_HOST)/bin/fakeroot $@.fakeroot-script
+endef
+else
+define Image/mkfs/squashfs
+	$(call Image/mkfs/squashfs-common,$(1))
+endef
+endif
+
 # $(1): board name
 # $(2): rootfs type
 # $(3): kernel image
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
