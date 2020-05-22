Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F27F1DF2E2
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 01:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cJfZwVvinSV/2b/t/IQFeyQkyvRjjYv+fGi8D+YTi4M=; b=rngZvPAH4Ofv8g
	BUD04Y1YrnXkRV35E1eZ30sybqGObL5K0iL086HXDn8ujfq4SosWiy0pmPujS9+b3Es7oj8YaAYQo
	3TRO4bgZbvkLRIUFYFZkCzvCqXwxDPnmt1A4sLk9Y+OuIA5zMqdt8RC7ltrDOPEiXk1dQBvlDBcXC
	VLfkhwGVncvhXYPEJNROCG4RmxjmkF89eQA+p4YEsgxb4hLLRubyTPAQGWs+Sik1U1CYvJ+mC7Vvp
	FOaBuHHYUWFVfl7APl95FZZzca9SpO+qM9ySkSn+JJUveJ5K80vAFBp6ZYi+LQ9ivUjCWWq7xaq+Q
	51NKfucxSNjsBsfYBmxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcH0P-0003xS-Ms; Fri, 22 May 2020 23:23:09 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcH0H-0003wh-Pr
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 23:23:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id y198so5900834pfb.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 16:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1LhhzCMy4j+/t2Y0SxmjZd/7ZxvYag2B27IZGZtUSrw=;
 b=Etaexo1T8t5DHJV5rS5hppvkMzlBa0Gpgijq8n6yIOWmfv90Vkc9i51GmFBZtZbzw/
 namEeUVUKY9T2EHx4X97I+oDQlS0tOhPeF//93+CgvEBhKaFDDPoSmt/0YR2vcDg2y1r
 fFA0an+gLmTY2y5AhnQoyLFjr3vQm9Qok53FmfRe6XuHCmKnjsRGryqq5H8T8TIOVGoa
 xd28eIzoHZaPOIdcAz+hSXAyGwV5oF+denkTLSPbR8q1PWgzUVUdtjLtXjAYZN2lvrk0
 RUr7FRegILFer2jUomX4K3muHBdi8W1GcpDc0x6QiyPYbl8uQkcq0xai4tY/2EMFPlrf
 PlGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1LhhzCMy4j+/t2Y0SxmjZd/7ZxvYag2B27IZGZtUSrw=;
 b=mOwIELLASnTHCu5qOyp8iMVQSimrMkS0yZxSzqSVynxrAGi3KepLnAK2/sTlfuXAsX
 PPtorpJXfR5nlrNcog2cdzn0bO8wUWT9G63rSk4f5HgJcO/z8aQyLZd7FlptrcMP9Ol7
 /LHtKQjXcCkNimU5S7O+VUg0aeLTwT0UqQz+FnKt59cmsw5DasTz8S4zIeZNKgCBUTZR
 GRWw3Sy34gTPb5muhvR1oQOyYlW8tn+AxJSWSk0MTAiC1tmSGQ+pzIYT0/hB53p4jWrv
 2KKJWjpueRVXFVkJLQA1E80Isl4+Roo+8M6bQkjem6JFnwPcgCSjKgIWBFGtWnQfoJKk
 sijA==
X-Gm-Message-State: AOAM533gjn2ewHU6li1+8pkSfMjbYhDZtNKU7zO6W8YwX1uLEdUGG/g9
 gpcxI3Iad/VpYQ6pVKYoWGhXIhQT4kg=
X-Google-Smtp-Source: ABdhPJxk7L/C8dkA1eQ0gPS6zgrQ5x7tJ7zoSw6pqIbVdqatpmmcHbKanLIHoJkjZpiNbpJmnT1/3A==
X-Received: by 2002:a62:8f87:: with SMTP id n129mr5754219pfd.66.1590189779375; 
 Fri, 22 May 2020 16:22:59 -0700 (PDT)
Received: from mangix-trapnet.lan (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id x14sm3691069pgj.14.2020.05.22.16.22.58
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:22:58 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 May 2020 16:22:57 -0700
Message-Id: <20200522232257.69801-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_162301_890024_1495E3DF 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] xfsprogs: remove
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

Does not seem to be needed here. This will be imported into packages.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 https://github.com/openwrt/packages/pull/12256
 package/utils/xfsprogs/Makefile               | 98 -------------------
 .../xfsprogs/patches/100-no-selftest.patch    | 14 ---
 .../utils/xfsprogs/patches/110-subdirs.patch  | 12 ---
 .../xfsprogs/patches/120-disable_assert.patch | 12 ---
 ...six_memalign-instead-of-deprecated-v.patch | 26 -----
 .../patches/140-copy-file-range.patch         | 48 ---------
 6 files changed, 210 deletions(-)
 delete mode 100644 package/utils/xfsprogs/Makefile
 delete mode 100644 package/utils/xfsprogs/patches/100-no-selftest.patch
 delete mode 100644 package/utils/xfsprogs/patches/110-subdirs.patch
 delete mode 100644 package/utils/xfsprogs/patches/120-disable_assert.patch
 delete mode 100644 package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch
 delete mode 100644 package/utils/xfsprogs/patches/140-copy-file-range.patch

diff --git a/package/utils/xfsprogs/Makefile b/package/utils/xfsprogs/Makefile
deleted file mode 100644
index f717185bb6..0000000000
--- a/package/utils/xfsprogs/Makefile
+++ /dev/null
@@ -1,98 +0,0 @@
-#
-# Copyright (C) 2006-2012 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-include $(TOPDIR)/rules.mk
-
-PKG_NAME:=xfsprogs
-PKG_CPE_ID:=cpe:/a:sgi:xfsprogs
-PKG_RELEASE:=4
-PKG_VERSION:=4.11.0
-PKG_SOURCE_URL:=@KERNEL/linux/utils/fs/xfs/xfsprogs
-PKG_HASH:=c3a6d87b564d7738243c507df82276bed982265e345363a95f2c764e8a5f5bb2
-
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
-PKG_INSTALL:=1
-PKG_BUILD_PARALLEL:=1
-
-include $(INCLUDE_DIR)/package.mk
-
-define Package/xfsprogs/default
-  SECTION:=utils
-  CATEGORY:=Utilities
-  SUBMENU:=Filesystem
-  DEPENDS:=+libuuid +libpthread +librt
-  URL:=http://oss.sgi.com/projects/xfs
-endef
-
-define Package/xfs-admin
-$(call Package/xfsprogs/default)
-  TITLE:=Utilities for changing parameters of an XFS filesystems
-endef
-
-define Package/xfs-mkfs
-$(call Package/xfsprogs/default)
-  TITLE:=Utility for creating XFS filesystems
-endef
-
-define Package/xfs-fsck
-$(call Package/xfsprogs/default)
-  TITLE:=Utilities for checking and repairing XFS filesystems
-endef
-
-define Package/xfs-growfs
-$(call Package/xfsprogs/default)
-  TITLE:=Utility for increasing the size of XFS filesystems
-endef
-
-CONFIGURE_ARGS += \
-	--enable-gettext=no \
-	--enable-lib64=no \
-	--enable-blkid=no
-
-TARGET_CFLAGS += \
-	-I$(STAGING_DIR)/usr/include \
-	-D_LARGEFILE64_SOURCE \
-	-D_FILE_OFFSET_BITS=64 \
-	-D_GNU_SOURCE
-
-MAKE_FLAGS += \
-	DEBUG= Q= \
-	PCFLAGS="-Wall" \
-	PKG_PLATFORM=linux \
-	ENABLE_GETTEXT=no
-
-define Build/Compile
-	$(MAKE) -C $(PKG_BUILD_DIR)/libxfs crc32table.h CFLAGS="$(HOST_CFLAGS) -I$(PKG_BUILD_DIR)/include"
-	$(call Build/Compile/Default)
-endef
-
-define Package/xfs-admin/install
-	mkdir -p $(1)/sbin
-	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_db $(1)/sbin
-	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_admin $(1)/sbin
-endef
-
-define Package/xfs-mkfs/install
-	mkdir -p $(1)/usr/sbin
-	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/sbin/mkfs.xfs $(1)/usr/sbin
-endef
-
-define Package/xfs-fsck/install
-	mkdir -p $(1)/usr/sbin
-	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/sbin/xfs_repair $(1)/usr/sbin
-	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_db $(1)/usr/sbin
-endef
-
-define Package/xfs-growfs/install
-	mkdir -p $(1)/usr/sbin
-	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_growfs $(1)/usr/sbin
-endef
-
-$(eval $(call BuildPackage,xfs-admin))
-$(eval $(call BuildPackage,xfs-mkfs))
-$(eval $(call BuildPackage,xfs-fsck))
-$(eval $(call BuildPackage,xfs-growfs))
diff --git a/package/utils/xfsprogs/patches/100-no-selftest.patch b/package/utils/xfsprogs/patches/100-no-selftest.patch
deleted file mode 100644
index 2270166753..0000000000
--- a/package/utils/xfsprogs/patches/100-no-selftest.patch
+++ /dev/null
@@ -1,14 +0,0 @@
---- a/libxfs/Makefile
-+++ b/libxfs/Makefile
-@@ -118,9 +118,9 @@ LTLIBS = $(LIBPTHREAD) $(LIBRT)
- # don't try linking xfs_repair with a debug libxfs.
- DEBUG = -DNDEBUG
- 
--LDIRT = gen_crc32table crc32table.h crc32selftest
-+LDIRT = gen_crc32table crc32table.h
- 
--default: crc32selftest ltdepend $(LTLIBRARY)
-+default: ltdepend $(LTLIBRARY)
- 
- crc32table.h: gen_crc32table.c
- 	@echo "    [CC]     gen_crc32table"
diff --git a/package/utils/xfsprogs/patches/110-subdirs.patch b/package/utils/xfsprogs/patches/110-subdirs.patch
deleted file mode 100644
index 53a6b09ce2..0000000000
--- a/package/utils/xfsprogs/patches/110-subdirs.patch
+++ /dev/null
@@ -1,12 +0,0 @@
---- a/Makefile
-+++ b/Makefile
-@@ -46,8 +46,7 @@ HDR_SUBDIRS = include libxfs
- 
- DLIB_SUBDIRS = libxlog libxcmd libhandle
- LIB_SUBDIRS = libxfs $(DLIB_SUBDIRS)
--TOOL_SUBDIRS = copy db estimate fsck growfs io logprint mkfs quota \
--		mdrestore repair rtcp m4 man doc debian
-+TOOL_SUBDIRS = db fsck growfs io mkfs repair
- 
- ifneq ("$(PKG_PLATFORM)","darwin")
- TOOL_SUBDIRS += fsr
diff --git a/package/utils/xfsprogs/patches/120-disable_assert.patch b/package/utils/xfsprogs/patches/120-disable_assert.patch
deleted file mode 100644
index 9a970d27ae..0000000000
--- a/package/utils/xfsprogs/patches/120-disable_assert.patch
+++ /dev/null
@@ -1,12 +0,0 @@
---- a/libxfs/libxfs_priv.h
-+++ b/libxfs/libxfs_priv.h
-@@ -84,9 +84,6 @@ extern uint32_t crc32c_le(uint32_t crc,
- /* for all the support code that uses progname in error messages */
- extern char    *progname;
- 
--#undef ASSERT
--#define ASSERT(ex) assert(ex)
--
- #ifndef EWRONGFS
- #define EWRONGFS	EINVAL
- #endif
diff --git a/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch b/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch
deleted file mode 100644
index b028db1878..0000000000
--- a/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-From 930f9aa8f08759fa739dd6e615ba8b3a1890008d Mon Sep 17 00:00:00 2001
-From: Rosen Penev <rosenp@gmail.com>
-Date: Mon, 6 May 2019 13:56:13 -0700
-Subject: [PATCH] db/malloc: Use posix_memalign instead of deprecated valloc
-
-valloc is not available with uClibc-ng as well as being deprecated, which
-causes compilation errors. aligned_alloc is not available before C11 so
-used posix_memalign.'
-
-Signed-off-by: Rosen Penev <rosenp@gmail.com>
----
- db/malloc.c | 3 +--
- 1 file changed, 1 insertion(+), 2 deletions(-)
-
---- a/db/malloc.c
-+++ b/db/malloc.c
-@@ -56,8 +56,7 @@ xmalloc(
- {
- 	void	*ptr;
- 
--	ptr = valloc(size);
--	if (ptr)
-+	if(!posix_memalign(&ptr, sysconf(_SC_PAGESIZE), size))
- 		return ptr;
- 	badmalloc();
- 	/* NOTREACHED */
diff --git a/package/utils/xfsprogs/patches/140-copy-file-range.patch b/package/utils/xfsprogs/patches/140-copy-file-range.patch
deleted file mode 100644
index 076d5c95da..0000000000
--- a/package/utils/xfsprogs/patches/140-copy-file-range.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-From 8041435de7ed028a27ecca64302945ad455c69a6 Mon Sep 17 00:00:00 2001
-From: "Darrick J. Wong" <darrick.wong@oracle.com>
-Date: Mon, 5 Feb 2018 14:38:02 -0600
-Subject: [PATCH] xfs_io: fix copy_file_range symbol name collision
-
-glibc 2.27 has a copy_file_range wrapper, so we need to change our
-internal function out of the way to avoid compiler warnings.
-
-Reported-by: fredrik@crux.nu
-Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
-Reviewed-by: Eric Sandeen <sandeen@redhat.com>
-Signed-off-by: Eric Sandeen <sandeen@sandeen.net>
----
- io/copy_file_range.c | 11 ++++++++---
- 1 file changed, 8 insertions(+), 3 deletions(-)
-
---- a/io/copy_file_range.c
-+++ b/io/copy_file_range.c
-@@ -42,13 +42,18 @@ copy_range_help(void)
- "));
- }
- 
-+/*
-+ * Issue a raw copy_file_range syscall; for our test program we don't want the
-+ * glibc buffered copy fallback.
-+ */
- static loff_t
--copy_file_range(int fd, loff_t *src, loff_t *dst, size_t len)
-+copy_file_range_cmd(int fd, loff_t *src, loff_t *dst, size_t len)
- {
- 	loff_t ret;
- 
- 	do {
--		ret = syscall(__NR_copy_file_range, fd, src, file->fd, dst, len, 0);
-+		ret = syscall(__NR_copy_file_range, fd, src, file->fd, dst,
-+				len, 0);
- 		if (ret == -1) {
- 			perror("copy_range");
- 			return errno;
-@@ -130,7 +135,7 @@ copy_range_f(int argc, char **argv)
- 		copy_dst_truncate();
- 	}
- 
--	ret = copy_file_range(fd, &src, &dst, len);
-+	ret = copy_file_range_cmd(fd, &src, &dst, len);
- 	close(fd);
- 	return ret;
- }
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
