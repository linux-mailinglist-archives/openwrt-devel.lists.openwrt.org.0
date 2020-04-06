Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EE419EF40
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 04:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cTlrwXzpuLh0X+eIsNRfHxyxQb03p7k4ahVpFkY3eoA=; b=Ls0zdZguAIzjih
	f+Ga/RVXhmvjYoKiYOwPxS1M4eYuYI9a8kR0z7Yf3sweHBCS0dmJAeI5/n87I/g27xIKh9J5tkrXM
	AhmpGoqKZg6IER4xR3NNDOxIqUgcCWUGhvsJZyIoIqbY6b/zt52Rs+oE02HEOQwazu690eEJsuhTV
	gytC0Z+uhRZmVmW3oq+kXnluJ7kn/blPzw0hRRgX6+0oz/luMjSVrCk8HMCV2UvcS5JmaOWD5MurW
	PiEW+35RVD7TAmAYNSKwYJh7eJ/tK7o0nRNStOVW8iov5HABma8Pozu2vqBH92r8v+sEhJc1T2s3z
	xTKVTFUrPC+awtCIV0Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLH6U-0006Gu-Bd; Mon, 06 Apr 2020 02:03:10 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLH6H-00069Y-Bm
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 02:02:59 +0000
Received: by mail-pj1-x1043.google.com with SMTP id nu11so5795310pjb.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 19:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W6oqsBH+zxowKrBWBeQ+yhOvFhLvCrncMdnQhcIej9A=;
 b=Cv74ZMJ7Sf2SEc7MWwEE9Cjm8PAn8WX0pt31ztBGSt7hijmxfz0oMAOzkU/KwhYWNH
 1oLlDOQm9XD6tbccDcY87DpaUJWl0Qd+bdBu4KHRRnB/CAEIkJW9KHK4fe0d7pj+MkEr
 8hWQwH0Fhj5KF26psVx1BGapaevZ8N4dL22QZaFnJERBkD6Z79tRR1htalBodP2pAKoF
 QyOvpT0/NDCdGYWpQVmwIpE8pZOkPUrKDNd0UHMLdmcGGy7VIpgtPRnzB3FhtIRfXsU9
 ctuLuiNdnDWfOU+nexiHTovaf6L1b9F2+Lyc4ch0tW/d+EKA0lN80juosZaDiYkjC04U
 Gd2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W6oqsBH+zxowKrBWBeQ+yhOvFhLvCrncMdnQhcIej9A=;
 b=IbvKyT+YedMD9icRjrornGaU9+tjNuF2fuxbLW2k1HWMjYIgLXdYEuHhUsJ9FA/6NL
 Lai8kgDe3SEIC1NofC47Aho/8efsprYnvrVMgg4J4hRpPNwfhHcOFshD7KPkKb1JBrUu
 qr4xjkRrsOo/yb9PunNLHDzmqQ2G5iq/4eGGLfSFFdq7nlAboZ7fme6JLRhpDY5qfZ/Y
 b8p2out8ME+dtZXvKDeTgink5VhksqN2WmJZ4k+jI8sH1LV/AF/MzV1TX61lNcBre4xr
 hDV5AUcTdii1e/WxegrgSBFqSoop9D3QXbKGRhRZ7OXJ11aO+KzVdF9dUztDhrnp2McI
 KA/w==
X-Gm-Message-State: AGi0PuZhObSdawDPh/sJ8WaS5TyImfwxqvhIia0NOaQmnTCz0MvOyCpS
 oI0GumoAK4TQkjhzU1OEk0vLVUfg
X-Google-Smtp-Source: APiQypIVHthWdRfNH4aqbxY4j+Z2quzaIZAP85KJP7Eo3B9ue/1GvYjMnrxloDL7LO4QRpw6fMFxVw==
X-Received: by 2002:a17:902:fe06:: with SMTP id
 g6mr18411330plj.263.1586138575490; 
 Sun, 05 Apr 2020 19:02:55 -0700 (PDT)
Received: from mangix-trapnet.lan (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id b17sm10536666pff.81.2020.04.05.19.02.53
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 19:02:54 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Apr 2020 19:02:51 -0700
Message-Id: <20200406020251.3865-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_190257_417694_A7BF4AA0 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] xfsprogs: update to 5.5
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

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/xfsprogs/Makefile               | 57 +++++++++----------
 .../xfsprogs/patches/100-no-selftest.patch    | 14 -----
 .../utils/xfsprogs/patches/110-subdirs.patch  | 12 ++--
 .../xfsprogs/patches/120-disable_assert.patch |  8 +--
 ...six_memalign-instead-of-deprecated-v.patch |  2 +-
 .../patches/140-copy-file-range.patch         | 48 ----------------
 package/utils/xfsprogs/patches/140-mman.patch | 13 +++++
 7 files changed, 50 insertions(+), 104 deletions(-)
 delete mode 100644 package/utils/xfsprogs/patches/100-no-selftest.patch
 delete mode 100644 package/utils/xfsprogs/patches/140-copy-file-range.patch
 create mode 100644 package/utils/xfsprogs/patches/140-mman.patch

diff --git a/package/utils/xfsprogs/Makefile b/package/utils/xfsprogs/Makefile
index f717185bb6..335c8f7119 100644
--- a/package/utils/xfsprogs/Makefile
+++ b/package/utils/xfsprogs/Makefile
@@ -8,15 +8,16 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=xfsprogs
-PKG_CPE_ID:=cpe:/a:sgi:xfsprogs
-PKG_RELEASE:=4
-PKG_VERSION:=4.11.0
-PKG_SOURCE_URL:=@KERNEL/linux/utils/fs/xfs/xfsprogs
-PKG_HASH:=c3a6d87b564d7738243c507df82276bed982265e345363a95f2c764e8a5f5bb2
+PKG_VERSION:=5.5.0
+PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
+PKG_SOURCE_URL:=@KERNEL/linux/utils/fs/xfs/xfsprogs
+PKG_HASH:=cfbb0b136799c48cb79435facd0969c5a60a587a458e2d16f9752771027efbec
+
 PKG_INSTALL:=1
 PKG_BUILD_PARALLEL:=1
+PKG_CPE_ID:=cpe:/a:sgi:xfsprogs
 
 include $(INCLUDE_DIR)/package.mk
 
@@ -24,8 +25,8 @@ define Package/xfsprogs/default
   SECTION:=utils
   CATEGORY:=Utilities
   SUBMENU:=Filesystem
-  DEPENDS:=+libuuid +libpthread +librt
-  URL:=http://oss.sgi.com/projects/xfs
+  DEPENDS:=+libuuid +libpthread
+  URL:=https://xfs.org/
 endef
 
 define Package/xfs-admin
@@ -49,46 +50,40 @@ $(call Package/xfsprogs/default)
 endef
 
 CONFIGURE_ARGS += \
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
+	--disable-gettext \
+	--disable-blkid \
+	--disable-readline \
+	--disable-editline \
+	--disable-termcap \
+	--disable-lib64 \
+	--disable-librt \
+	--disable-ubisan \
+	--disable-addrsan \
+	--disable-threadsan \
+	--disable-scrub \
+	--disable-libicu
+
+TARGET_CFLAGS += -DHAVE_MAP_SYNC
 
 define Package/xfs-admin/install
-	mkdir -p $(1)/sbin
+	$(INSTALL_DIR) $(1)/sbin
 	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_db $(1)/sbin
 	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_admin $(1)/sbin
 endef
 
 define Package/xfs-mkfs/install
-	mkdir -p $(1)/usr/sbin
+	$(INSTALL_DIR) $(1)/usr/sbin
 	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/sbin/mkfs.xfs $(1)/usr/sbin
 endef
 
 define Package/xfs-fsck/install
-	mkdir -p $(1)/usr/sbin
+	$(INSTALL_DIR) $(1)/usr/sbin
 	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/sbin/xfs_repair $(1)/usr/sbin
 	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_db $(1)/usr/sbin
 endef
 
 define Package/xfs-growfs/install
-	mkdir -p $(1)/usr/sbin
+	$(INSTALL_DIR) $(1)/usr/sbin
 	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_growfs $(1)/usr/sbin
 endef
 
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
index 53a6b09ce2..ad57d608ec 100644
--- a/package/utils/xfsprogs/patches/110-subdirs.patch
+++ b/package/utils/xfsprogs/patches/110-subdirs.patch
@@ -1,12 +1,12 @@
 --- a/Makefile
 +++ b/Makefile
-@@ -46,8 +46,7 @@ HDR_SUBDIRS = include libxfs
- 
+@@ -62,8 +62,7 @@ HDR_SUBDIRS = include libxfs
+ LIBFROG_SUBDIR = libfrog
  DLIB_SUBDIRS = libxlog libxcmd libhandle
  LIB_SUBDIRS = libxfs $(DLIB_SUBDIRS)
--TOOL_SUBDIRS = copy db estimate fsck growfs io logprint mkfs quota \
--		mdrestore repair rtcp m4 man doc debian
+-TOOL_SUBDIRS = copy db estimate fsck fsr growfs io logprint mkfs quota \
+-		mdrestore repair rtcp m4 man doc debian spaceman
 +TOOL_SUBDIRS = db fsck growfs io mkfs repair
  
- ifneq ("$(PKG_PLATFORM)","darwin")
- TOOL_SUBDIRS += fsr
+ ifeq ("$(ENABLE_SCRUB)","yes")
+ TOOL_SUBDIRS += scrub
diff --git a/package/utils/xfsprogs/patches/120-disable_assert.patch b/package/utils/xfsprogs/patches/120-disable_assert.patch
index 9a970d27ae..237c837216 100644
--- a/package/utils/xfsprogs/patches/120-disable_assert.patch
+++ b/package/utils/xfsprogs/patches/120-disable_assert.patch
@@ -1,12 +1,12 @@
 --- a/libxfs/libxfs_priv.h
 +++ b/libxfs/libxfs_priv.h
-@@ -84,9 +84,6 @@ extern uint32_t crc32c_le(uint32_t crc,
+@@ -85,9 +85,6 @@ struct iomap;
  /* for all the support code that uses progname in error messages */
  extern char    *progname;
  
 -#undef ASSERT
 -#define ASSERT(ex) assert(ex)
 -
- #ifndef EWRONGFS
- #define EWRONGFS	EINVAL
- #endif
+ /*
+  * We have no need for the "linux" dev_t in userspace, so these
+  * are no-ops, and an xfs_dev_t is stored in VFS_I(ip)->i_rdev
diff --git a/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch b/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch
index b028db1878..a9ab4d3223 100644
--- a/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch
+++ b/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch
@@ -14,7 +14,7 @@ Signed-off-by: Rosen Penev <rosenp@gmail.com>
 
 --- a/db/malloc.c
 +++ b/db/malloc.c
-@@ -56,8 +56,7 @@ xmalloc(
+@@ -44,8 +44,7 @@ xmalloc(
  {
  	void	*ptr;
  
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
diff --git a/package/utils/xfsprogs/patches/140-mman.patch b/package/utils/xfsprogs/patches/140-mman.patch
new file mode 100644
index 0000000000..936d3cc29e
--- /dev/null
+++ b/package/utils/xfsprogs/patches/140-mman.patch
@@ -0,0 +1,13 @@
+--- a/io/mmap.c
++++ b/io/mmap.c
+@@ -11,6 +11,10 @@
+ #include "init.h"
+ #include "io.h"
+ 
++#ifndef MAP_SYNC
++#define MAP_SYNC 0
++#endif
++
+ static cmdinfo_t mmap_cmd;
+ static cmdinfo_t mread_cmd;
+ static cmdinfo_t msync_cmd;
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
