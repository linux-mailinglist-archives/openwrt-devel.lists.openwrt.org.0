Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A4B12DF71
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 17:22:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9mAGcAv6kaUZnQM4I6yoqSDiPyobhuMWmPcbylA3zrE=; b=IvoOSCGl+0aku7
	6rUWYceIRRLd2Hd93B9n0k3DL62Zia0T61iFNyrxDPSHjC/k2u/GE0f673J681JzeYKIw2O2rkSPT
	/cuYgoGOaPD6t8rjjdG706msFvSThsGXvgbCdNRlI6OxdgkC7jXracGVUeI8y933W/9XjjUlYcEvF
	eZAW3f0V2DTR+QGTyy5D3bVc4V4A6citLBksZe51CpdX5gfDTiB8EqT/+d04rU+s/uSSpvlh74VSu
	guMJJ3sDzNUyFUSYDDzI5cGCYfCa7erMnwPZQQGe+S0e4YQEkgATRuTsG0ygIFD13t74snUuu9jFb
	ZNK2AUq/Bw3W7dVZja8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imglM-000732-7q; Wed, 01 Jan 2020 16:22:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imglE-00072V-Ck
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 16:22:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so37264780wrh.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Jan 2020 08:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PjG3GELR91q3x9VoBZp/gZLLWasS3v1pqF7yLnd3DTo=;
 b=RKt14o4Yo9ANGemXBHRMEIQUGzT2e6aVROjuhb4cabM0Msckl2DCm3978D4TjjAqXH
 FwMO94CrgXpS0l/QQOsGgfcClLHXpuTZHYRCH90Dms3m/XIEq/Gan8KBnZwl6oOYqtyN
 GQBGmKznnlVRt2uL+0LAS/hspbOj9/y2TLlimvrgjRIzPNktPhUnkKlnB1FbEcBA0my0
 T56+sVvQygoMOLNyri1p8d1ucqXsTGNXB/2cu0cfeG4r+r67dXaMnsrx2eHvbVoMV1Xk
 x3J8J5cCHgjjvwfSkIwOUqAHM0nRAz4Dr5SmtvmKBXv7ywfsEXUexAZB9GdWtL6OdY2U
 O5Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PjG3GELR91q3x9VoBZp/gZLLWasS3v1pqF7yLnd3DTo=;
 b=T+6OsdLHGpaFFA/2fjmRtWTZ2PweW54QWi2zKGorFYXkRlEsXT5/66pnED9WrrWG1j
 mdcMoJ2awV7fa3wQynzHFvOyVt2PXB89sDSiGpgmhe+zOFW0hAhpoGPT+KvGhEwRc93A
 TZPufrKezPHiIjnI4GY5HRCkUGJNeyZo5GTKs6K+76brKi9PjBDJkAkLICCqpU9dQ3EW
 XWCzMeeI3Rs2PdC2eafJ0C/meEhNKDiEKLER2yWoX8yVgZuxVkYurHAqCYKmXsGxKmtP
 /qaNsCh2dRmAlsEPqxV8pQWf6i5i52T7EA0v0xhJTIdN5lhu5dVS2Ym5y5hqhZaaJAsx
 //Sw==
X-Gm-Message-State: APjAAAVbbuaGJoCOMPGUUEnhEKg65U3l2b7RGMQTktNA6/IIhfL3hgeb
 ZE2KK0GN4UwvBnyBXXvWHsR6HR9l
X-Google-Smtp-Source: APXvYqwSc43JLo5IBncRO5pyD/F7VLorlZPFX6/Qmgib9z3cTJMg8DRlNvZ4S2aRG5mBGnIYmQeWfA==
X-Received: by 2002:a05:6000:12:: with SMTP id
 h18mr73614000wrx.87.1577895731744; 
 Wed, 01 Jan 2020 08:22:11 -0800 (PST)
Received: from localhost.localdomain (ip-78-102-138-110.net.upcbroadband.cz.
 [78.102.138.110])
 by smtp.gmail.com with ESMTPSA id o194sm5957038wme.45.2020.01.01.08.22.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 08:22:11 -0800 (PST)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Jan 2020 17:22:01 +0100
Message-Id: <20200101162201.10715-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_082216_459679_7A84A86E 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe.schlehofer[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] e2fsprogs: update to version 1.45.4
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

Removed backported patch

Release notes: http://e2fsprogs.sourceforge.net/e2fsprogs-release.html#1.45.4

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 package/utils/e2fsprogs/Makefile              |   6 +-
 .../100-CVE-2019-5094-libsupport.patch        | 203 ------------------
 2 files changed, 3 insertions(+), 206 deletions(-)
 delete mode 100644 package/utils/e2fsprogs/patches/100-CVE-2019-5094-libsupport.patch

diff --git a/package/utils/e2fsprogs/Makefile b/package/utils/e2fsprogs/Makefile
index b2b6ea31ea..3ba77abc7a 100644
--- a/package/utils/e2fsprogs/Makefile
+++ b/package/utils/e2fsprogs/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=e2fsprogs
-PKG_VERSION:=1.44.5
-PKG_RELEASE:=2
+PKG_VERSION:=1.45.4
+PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@KERNEL/linux/kernel/people/tytso/e2fsprogs/v$(PKG_VERSION)/
-PKG_HASH:=ba5eb3069d69160d96818bb9700de9ab5a8458d9add1fd85d427c0000d34c5b9
+PKG_HASH:=65faf6b590ca1da97440d6446bd11de9e0914b42553740ba5d9d2a796fa0dc02
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=NOTICE
diff --git a/package/utils/e2fsprogs/patches/100-CVE-2019-5094-libsupport.patch b/package/utils/e2fsprogs/patches/100-CVE-2019-5094-libsupport.patch
deleted file mode 100644
index c69f465052..0000000000
--- a/package/utils/e2fsprogs/patches/100-CVE-2019-5094-libsupport.patch
+++ /dev/null
@@ -1,203 +0,0 @@
-From 09fe1fd2a1f9efc3091b4fc61f1876d0785956a8 Mon Sep 17 00:00:00 2001
-From: Theodore Ts'o <tytso@mit.edu>
-Date: Sun, 1 Sep 2019 00:59:16 -0400
-Subject: libsupport: add checks to prevent buffer overrun bugs in quota code
-
-A maliciously corrupted file systems can trigger buffer overruns in
-the quota code used by e2fsck.  To fix this, add sanity checks to the
-quota header fields as well as to block number references in the quota
-tree.
-
-Addresses: CVE-2019-5094
-Addresses: TALOS-2019-0887
-Signed-off-by: Theodore Ts'o <tytso@mit.edu>
-(cherry picked from commit 8dbe7b475ec5e91ed767239f0e85880f416fc384)
----
- lib/support/mkquota.c      |  1 +
- lib/support/quotaio_tree.c | 71 ++++++++++++++++++++++++++++++----------------
- lib/support/quotaio_v2.c   | 28 ++++++++++++++++++
- 3 files changed, 76 insertions(+), 24 deletions(-)
-
---- a/lib/support/mkquota.c
-+++ b/lib/support/mkquota.c
-@@ -671,6 +671,7 @@ errcode_t quota_compare_and_update(quota
- 	err = qh.qh_ops->scan_dquots(&qh, scan_dquots_callback, &scan_data);
- 	if (err) {
- 		log_debug("Error scanning dquots");
-+		*usage_inconsistent = 1;
- 		goto out_close_qh;
- 	}
- 
---- a/lib/support/quotaio_tree.c
-+++ b/lib/support/quotaio_tree.c
-@@ -540,6 +540,17 @@ struct dquot *qtree_read_dquot(struct qu
- 	return dquot;
- }
- 
-+static int check_reference(struct quota_handle *h, unsigned int blk)
-+{
-+	if (blk >= h->qh_info.u.v2_mdqi.dqi_qtree.dqi_blocks) {
-+		log_err("Illegal reference (%u >= %u) in %s quota file",
-+			blk, h->qh_info.u.v2_mdqi.dqi_qtree.dqi_blocks,
-+			quota_type2name(h->qh_type));
-+		return -1;
-+	}
-+	return 0;
-+}
-+
- /*
-  * Scan all dquots in file and call callback on each
-  */
-@@ -558,7 +569,7 @@ static int report_block(struct dquot *dq
- 	int entries, i;
- 
- 	if (!buf)
--		return 0;
-+		return -1;
- 
- 	set_bit(bitmap, blk);
- 	read_blk(dquot->dq_h, blk, buf);
-@@ -580,23 +591,12 @@ static int report_block(struct dquot *dq
- 	return entries;
- }
- 
--static void check_reference(struct quota_handle *h, unsigned int blk)
--{
--	if (blk >= h->qh_info.u.v2_mdqi.dqi_qtree.dqi_blocks)
--		log_err("Illegal reference (%u >= %u) in %s quota file. "
--			"Quota file is probably corrupted.\n"
--			"Please run e2fsck (8) to fix it.",
--			blk,
--			h->qh_info.u.v2_mdqi.dqi_qtree.dqi_blocks,
--			quota_type2name(h->qh_type));
--}
--
- static int report_tree(struct dquot *dquot, unsigned int blk, int depth,
- 		       char *bitmap,
- 		       int (*process_dquot) (struct dquot *, void *),
- 		       void *data)
- {
--	int entries = 0, i;
-+	int entries = 0, ret, i;
- 	dqbuf_t buf = getdqbuf();
- 	__le32 *ref = (__le32 *) buf;
- 
-@@ -607,22 +607,40 @@ static int report_tree(struct dquot *dqu
- 	if (depth == QT_TREEDEPTH - 1) {
- 		for (i = 0; i < QT_BLKSIZE >> 2; i++) {
- 			blk = ext2fs_le32_to_cpu(ref[i]);
--			check_reference(dquot->dq_h, blk);
--			if (blk && !get_bit(bitmap, blk))
--				entries += report_block(dquot, blk, bitmap,
--							process_dquot, data);
-+			if (check_reference(dquot->dq_h, blk)) {
-+				entries = -1;
-+				goto errout;
-+			}
-+			if (blk && !get_bit(bitmap, blk)) {
-+				ret = report_block(dquot, blk, bitmap,
-+						   process_dquot, data);
-+				if (ret < 0) {
-+					entries = ret;
-+					goto errout;
-+				}
-+				entries += ret;
-+			}
- 		}
- 	} else {
- 		for (i = 0; i < QT_BLKSIZE >> 2; i++) {
- 			blk = ext2fs_le32_to_cpu(ref[i]);
- 			if (blk) {
--				check_reference(dquot->dq_h, blk);
--				entries += report_tree(dquot, blk, depth + 1,
--						       bitmap, process_dquot,
--						       data);
-+				if (check_reference(dquot->dq_h, blk)) {
-+					entries = -1;
-+					goto errout;
-+				}
-+				ret = report_tree(dquot, blk, depth + 1,
-+						  bitmap, process_dquot,
-+						  data);
-+				if (ret < 0) {
-+					entries = ret;
-+					goto errout;
-+				}
-+				entries += ret;
- 			}
- 		}
- 	}
-+errout:
- 	freedqbuf(buf);
- 	return entries;
- }
-@@ -642,6 +660,7 @@ int qtree_scan_dquots(struct quota_handl
- 		      int (*process_dquot) (struct dquot *, void *),
- 		      void *data)
- {
-+	int ret;
- 	char *bitmap;
- 	struct v2_mem_dqinfo *v2info = &h->qh_info.u.v2_mdqi;
- 	struct qtree_mem_dqinfo *info = &v2info->dqi_qtree;
-@@ -655,10 +674,14 @@ int qtree_scan_dquots(struct quota_handl
- 		ext2fs_free_mem(&dquot);
- 		return -1;
- 	}
--	v2info->dqi_used_entries = report_tree(dquot, QT_TREEOFF, 0, bitmap,
--					       process_dquot, data);
-+	ret = report_tree(dquot, QT_TREEOFF, 0, bitmap, process_dquot, data);
-+	if (ret < 0)
-+		goto errout;
-+	v2info->dqi_used_entries = ret;
- 	v2info->dqi_data_blocks = find_set_bits(bitmap, info->dqi_blocks);
-+	ret = 0;
-+errout:
- 	ext2fs_free_mem(&bitmap);
- 	ext2fs_free_mem(&dquot);
--	return 0;
-+	return ret;
- }
---- a/lib/support/quotaio_v2.c
-+++ b/lib/support/quotaio_v2.c
-@@ -175,6 +175,8 @@ static int v2_check_file(struct quota_ha
- static int v2_init_io(struct quota_handle *h)
- {
- 	struct v2_disk_dqinfo ddqinfo;
-+	struct v2_mem_dqinfo *info;
-+	__u64 filesize;
- 
- 	h->qh_info.u.v2_mdqi.dqi_qtree.dqi_entry_size =
- 		sizeof(struct v2r1_disk_dqblk);
-@@ -185,6 +187,32 @@ static int v2_init_io(struct quota_handl
- 			 sizeof(ddqinfo)) != sizeof(ddqinfo))
- 		return -1;
- 	v2_disk2memdqinfo(&h->qh_info, &ddqinfo);
-+
-+	/* Check to make sure quota file info is sane */
-+	info = &h->qh_info.u.v2_mdqi;
-+	if (ext2fs_file_get_lsize(h->qh_qf.e2_file, &filesize))
-+		return -1;
-+	if ((filesize > (1U << 31)) ||
-+	    (info->dqi_qtree.dqi_blocks >
-+	     (filesize + QT_BLKSIZE - 1) >> QT_BLKSIZE_BITS)) {
-+		log_err("Quota inode %u corrupted: file size %llu; "
-+			"dqi_blocks %u", h->qh_qf.ino,
-+			filesize, info->dqi_qtree.dqi_blocks);
-+		return -1;
-+	}
-+	if (info->dqi_qtree.dqi_free_blk >= info->dqi_qtree.dqi_blocks) {
-+		log_err("Quota inode %u corrupted: free_blk %u; dqi_blocks %u",
-+			h->qh_qf.ino, info->dqi_qtree.dqi_free_blk,
-+			info->dqi_qtree.dqi_blocks);
-+		return -1;
-+	}
-+	if (info->dqi_qtree.dqi_free_entry >= info->dqi_qtree.dqi_blocks) {
-+		log_err("Quota inode %u corrupted: free_entry %u; "
-+			"dqi_blocks %u", h->qh_qf.ino,
-+			info->dqi_qtree.dqi_free_entry,
-+			info->dqi_qtree.dqi_blocks);
-+		return -1;
-+	}
- 	return 0;
- }
- 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
